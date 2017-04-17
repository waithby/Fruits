<template>
    <div>	
	    <header class="mui-bar mui-bar-nav">
			<a class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left"></a>
			<h1 class="mui-title">注册</h1>
		</header>
		<div class="mui-content" id="top">
			<div class="mui-content-padded" id="box" style="margin: 0px;">
				<form class="mui-input-group">
			        <div class="mui-content-padded" style="margin: 5px;text-align: center;">
				        <div class="mui-input-row" id="input">
							<input type="text" id="phone" class="mui-input-clear" v-model="phone" placeholder="请输入您的手机号">
					        <button id='alertBtn' type="button" class="mui-btn mui-btn-blue mui-btn-outlined">获取验证码</button>
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
						        <button type="button" class="mui-btn mui-btn-block">返回</button>
						          <button type="button" class="mui-btn mui-btn-success mui-btn-block" @click="register">注册</button>
						    </div>
					    </div>
					</div>	
				</form>
			</div>
		</div>
	</div>
</template>
<script type="text/javascript">
	import {mapActions} from "vuex";
	export default {
		data: function(){
			return {
				phone:18312718104,
				code: 'Tom',
				psw:123456,
				check:123456,
				num:123456
				}
		},
//	    computed: {
//          countAnother: function () {  // 获取state
//          return this.$store.getters.countAnother;
//          }
//      }, 
		methods:{
			...mapActions(["register"]),
            register() {
                try {
                	var message={phone:this.phone,code:this.code,psw:this.psw,check:this.check,num:this.num}
                     this.$store.dispatch("message",message)
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