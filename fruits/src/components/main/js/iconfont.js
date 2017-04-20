;(function(window) {

  var svgSprite = '<svg>' +
    '' +
    '<symbol id="icon-gouwuche" viewBox="0 0 1024 1024">' +
    '' +
    '<path d="M529.78217 48.576307c-246.72 0-446.726246 200.000102-446.726246 446.709965 0 246.709965 200.006246 446.708941 446.726246 446.708941 246.721024 0 446.72727-199.999078 446.72727-446.708941C976.50944 248.577434 776.503296 48.576307 529.78217 48.576307zM408.385536 724.046438c-18.950349 0-34.317005-15.361843-34.317005-34.314547 0-18.95465 15.366554-34.317619 34.317005-34.317619 18.954445 0 34.317005 15.362867 34.317005 34.317619C442.703462 708.684595 427.339981 724.046438 408.385536 724.046438zM618.101248 733.695181c-26.059571 0-47.186534-21.126144-47.186534-47.185715 0-26.058445 21.12809-47.180595 47.186534-47.180595 26.060595 0 47.18551 21.123072 47.18551 47.180595C665.286758 712.569037 644.160819 733.695181 618.101248 733.695181zM827.649126 316.21591c0 13.335757-11.555635 24.146944-25.809818 24.146944l-81.197557 0-92.148429 261.262336c-3.498803 10.746778-13.894042 17.305088-24.741478 16.469094-0.674406 0.052224-1.354957 0.101274-2.046669 0.101274L354.153156 618.195558c-13.877658 0-25.126298-10.814259-25.126298-24.148992l0-7.469112c0-13.334733 11.24864-24.150016 25.126298-24.150016l229.050895 0 12.21673-34.625638L312.42409 527.8018c-13.336269 0-24.148992-10.810163-24.148992-24.147968l0-7.467065c0-13.337805 10.812723-24.148992 24.148992-24.148992l302.330807 0c0.109466 0 0.216986 0.016384 0.324403 0.017408l11.920998-33.794662L286.686884 438.26052c-13.338317 0-24.148992-10.811187-24.148992-24.147968l0-7.469112c0-13.335757 10.810675-24.147968 24.148992-24.147968l359.982147 0 28.983296-82.167398c3.146752-9.680486 11.899494-15.965594 21.52919-16.505958 1.252557-0.17705 2.522522-0.296755 3.827302-0.296755l100.829468 0c14.254182 0 25.809818 10.810163 25.809818 24.147968L827.648106 316.215942z"  ></path>' +
    '' +
    '</symbol>' +
    '' +
    '<symbol id="icon-gouwuche2" viewBox="0 0 1024 1024">' +
    '' +
    '<path d="M767.06828 766.074649 383.346875 766.074649c-27.38572 0-51.461045-18.137079-59.015092-44.459584l-116.169813-404.748301L64.091714 316.866764l0-122.796744 190.325743 0c27.38572 0 51.461045 18.137079 59.015092 44.459584l24.02723 83.712587 520.570189 0c19.243273 0 37.372166 9.021467 48.976458 24.370037 11.604292 15.349593 15.341407 35.251875 10.095939 53.765531l-90.962711 321.035714C818.654168 747.837286 794.530748 766.074649 767.06828 766.074649zM429.602362 643.277906l291.046702 0 56.169277-198.23897-404.113851 0L429.602362 643.277906z"  ></path>' +
    '' +
    '<path d="M449.069739 894.490368m-62.930261 0a61.497 61.497 0 1 0 125.860523 0 61.497 61.497 0 1 0-125.860523 0Z"  ></path>' +
    '' +
    '<path d="M701.0681 894.490368m-62.930261 0a61.497 61.497 0 1 0 125.860523 0 61.497 61.497 0 1 0-125.860523 0Z"  ></path>' +
    '' +
    '</symbol>' +
    '' +
    '</svg>'
  var script = function() {
    var scripts = document.getElementsByTagName('script')
    return scripts[scripts.length - 1]
  }()
  var shouldInjectCss = script.getAttribute("data-injectcss")

  /**
   * document ready
   */
  var ready = function(fn) {
    if (document.addEventListener) {
      if (~["complete", "loaded", "interactive"].indexOf(document.readyState)) {
        setTimeout(fn, 0)
      } else {
        var loadFn = function() {
          document.removeEventListener("DOMContentLoaded", loadFn, false)
          fn()
        }
        document.addEventListener("DOMContentLoaded", loadFn, false)
      }
    } else if (document.attachEvent) {
      IEContentLoaded(window, fn)
    }

    function IEContentLoaded(w, fn) {
      var d = w.document,
        done = false,
        // only fire once
        init = function() {
          if (!done) {
            done = true
            fn()
          }
        }
        // polling for no errors
      var polling = function() {
        try {
          // throws errors until after ondocumentready
          d.documentElement.doScroll('left')
        } catch (e) {
          setTimeout(polling, 50)
          return
        }
        // no errors, fire

        init()
      };

      polling()
        // trying to always fire before onload
      d.onreadystatechange = function() {
        if (d.readyState == 'complete') {
          d.onreadystatechange = null
          init()
        }
      }
    }
  }

  /**
   * Insert el before target
   *
   * @param {Element} el
   * @param {Element} target
   */

  var before = function(el, target) {
    target.parentNode.insertBefore(el, target)
  }

  /**
   * Prepend el to target
   *
   * @param {Element} el
   * @param {Element} target
   */

  var prepend = function(el, target) {
    if (target.firstChild) {
      before(el, target.firstChild)
    } else {
      target.appendChild(el)
    }
  }

  function appendSvg() {
    var div, svg

    div = document.createElement('div')
    div.innerHTML = svgSprite
    svgSprite = null
    svg = div.getElementsByTagName('svg')[0]
    if (svg) {
      svg.setAttribute('aria-hidden', 'true')
      svg.style.position = 'absolute'
      svg.style.width = 0
      svg.style.height = 0
      svg.style.overflow = 'hidden'
      prepend(svg, document.body)
    }
  }

  if (shouldInjectCss && !window.__iconfont__svg__cssinject__) {
    window.__iconfont__svg__cssinject__ = true
    try {
      document.write("<style>.svgfont {display: inline-block;width: 1em;height: 1em;fill: currentColor;vertical-align: -0.1em;font-size:16px;}</style>");
    } catch (e) {
      console && console.log(e)
    }
  }

  ready(appendSvg)


})(window)