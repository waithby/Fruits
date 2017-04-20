<template>
    <div>	
	    <header class="mui-bar mui-bar-nav">
			<a class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left" href="http://localhost:8080/#/myself/login"></a>
			<h1 class="mui-title">注册</h1>
		</header>
		<div class="mui-content" id="top">
			<div class="mui-content-padded" id="box" style="margin: 0px;">
				<form class="mui-input-group">
			        <div class="mui-content-padded" style="margin: 5px;text-align: center;">
				        <div class="mui-input-row" id="input">
							<input type="text" id="phone" class="mui-input-clear" v-model="phone" placeholder="请输入您的手机号">
					        <button id='alertBtn' type="button" class="mui-btn mui-btn-blue mui-btn-outlined" @click="getNum">获取验证码</button>
					        <div id="info"></div>
						</div>
						<div class="mui-input-row">
							<input type="text" class="mui-input-clear" v-model="code" placeholder="请输入您的验证码">
						</div>
						<div class="mui-input-row">
							<input type="password" class="mui-input-clear" v-model="psw" placeholder="请设定您的密码">
						</div>
						<div class="mui-input-row">
							<input type="password" class="mui-input-clear" v-model="check" placeholder="请再次输入您的密码">
						</div>
						<div class="mui-input-row">
							<input type="text" class="mui-input-clear" v-model="num" placeholder="注册邀请码(选填)">
						</div>
	                    <div class="mui-content" id="two">
						    <div class="mui-content-padded">
						        <router-link to="/" class="mui-btn mui-btn-success mui-btn-block" id="back" @click="register">返回</router-link>
						        <button type="button" class="mui-btn mui-btn-block" id="gogogo" @click="register">注册</button>
						        <router-view></router-view>
						    </div>
					    </div>
					</div>	
				</form>
			</div>
		</div>
		<div class="modal" id="delivery-date" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		    <div class="modal-dialog" role="document">
		        <div class="modal-content" style="opacity:1;">
		            <div class="modal-header">
		                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true" @click='close'>×</span></button>
		                <span class="modal-title" id="myModalLabel">请输入图片上的验证码</span>
		            </div>
		            <div class="codewrap">
		                <p class="tc mt15">
		                	<input type="text" id="value1" placeholder="请输入验证码" style="font-size:14px;text-indent:0;"/>
		                	<input type="text" id='value2' @click="random" v-model="arrString" style="width:70px;" readonly="readonly"/>
		                </p>
		                <p class=" tc mt15"> <a class="btn_green" id="btnSumitVCode" @click='submit' style="display:block;width:100px;height:30px;background:#008842;color:#fff;line-height:30px;border-radius:2px;margin:0 auto">提交</a></p>
		            </div>
		        </div>
		    </div>
        </div>
        <div class="layermmain">
           <div class="section">
           	<div class="layermchild  layermanim" style="text-align: center;">
           		<div class="layermcont">{{value}}</div>
           	    <div class="layermbtn"><span type="1" @click='sure'>确定</span></div>
           	</div>
           </div>
        </div>
	</div>
</template>
<script type="text/javascript">
	import { mapGetters, mapActions} from 'vuex'
	import $ from 'jquery'
//	import api from '../../../js/api.js'
	export default {
		data: function(){
			console.log(this)
			return {
				phone:'',
				code: '',
				psw:'',
				check:'',
				num:'',
				value:'手机号不能为空！'
				}
		},
        computed:{
         arrString:function(){
         	if(this.$store.state.random==''){
         		this.$store.dispatch("random")
         	}
         	return this.$store.state.random
         }
       },
		methods:{
			...mapActions(["register"]),
			submit(){
				if($('#value1').val()==''){
					this.value="验证码不能为空！"
					$('.layermmain').show();
				}else if($('#value1').val()==$('#value2').val()){
					$('#value1').val('')
					$('#delivery-date').hide()
				}else if($('#value1').val()!=$('#value2').val()){
					this.value="验证码不正确！"
					$('.layermmain').show();
				}
			},
			close(){
				$('#delivery-date').hide()
			},
			sure(){
				try {
					$('.layermmain').hide()
				}catch(error) {
                     alert(error)
                 }
			},
			getNum(){
				try {
					var phone = this.phone;
					if(phone.length==11){			        
				        if(phone==""){
				        	    $('.layermmain').show();
				        }else{
				                 $('#delivery-date').show();
				        }        
					   this.$store.dispatch("random")
					}else if(phone.length!=''&&phone.length!=11){
					   this.value="您输入的手机号有误！"
					   $('.layermmain').show();
					}else if(phone==''){
						this.value="手机号不能为空";
						$('.layermmain').show();
					}
				}catch(error) {
                     alert(error)
                 }
			},
			random(){
			    try {
					this.$store.dispatch("random")
				}catch(error) {
                     alert(error)
                 }
			},
            register() {
                try {
                	console.log(this.phone)
                   this.value=!this.phone?'手机号不能为空':!this.code?'验证码不能为空':!this.psw?'密码不能为空':!this.check?'重复密码不能为空':this.psw!=this.check?'前后两次密码不一致':''
                   console.log(this.value)
                   if(this.value!=''){
                   	  $('.layermmain').show();
                   }else{
                   	 var message={phone:this.phone,code:this.code,psw:this.psw,check:this.check,num:this.num}
                   	 console.log(message,666)
                     this.$store.dispatch("message",message)
                     this.$store.dispatch("send",message)
                     this.$router.push({path:'/login'})
                     alert('注册成功')
                   }
                 }catch(error) {
                     alert(error)
                 }
            }
		}
	}
</script>
<style lang="css">
@import url("../../../css/registerComponen.css");
</style>