<template>
    <div id="listen">	
	    <header class="mui-bar mui-bar-nav"></header>
		<div class="mui-content" id="top">
			<div class="mui-content-padded" id="box" style="margin: 0px;">
				<form class="mui-input-group">
					<div class="mui-input-row">
						<input type="text" class="mui-input-clear" v-model="userPhone" placeholder="请输入您的用户名">
					</div>
					<div class="mui-input-row">
						<input type="text" class="mui-input-clear" v-model="userPsw" placeholder="请输入您的密码">
					</div>
					<div class="mui-input-row">
						<input type="text" class="mui-input-clear" v-model="checkPsw" placeholder="请再次验证码">
					</div>
				</form>						
                    <div class="mui-content" id="two">
                    	<a href="">忘记密码?</a>
					    <div class="mui-content-padded">
					        <button type="button" class="mui-btn mui-btn-block" @click="userSignins">登录</button>
						    <router-link to="register" class="mui-btn mui-btn-success mui-btn-block" id="register">立即注册</router-link>
						    <router-view></router-view>
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
	export default {
		data: function(){
			return {
				userPhone:'',
				userPsw: '',
				checkPsw:'',
				value:'用户名不能为空！',
				}
		},
        computed:{
         phoneNum:function(){
         	return this.$store.state.phoneNum
         }
       },
       updated(){
       	        try {
					this.$store.dispatch("change")
				}catch(error) {
                     alert(error)
                 }
       },
		methods:{
			...mapActions(["login"]),
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
			getNum() {
				try {
					var phone = this.phone;
					if(phone.length==11){
					   this.$store.dispatch("getNum",phone)
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
					this.$store.myStore.dispatch("random")
				}catch(error) {
                     alert(error)
                 }
			},
            userSignins(){
                try {
                   this.value=!this.userPhone?'手机号不能为空':this.userPhone.length!=11?'您的用户名有误':!this.userPsw?'密码不能为空':!this.checkPsw?'验证码不能为空':''
                   console.log(this.value)
                   if(this.value!=''){
                   	  $('.layermmain').show();
                   }else{
                   	 var message={phone:this.userPhone,psw:this.userPsw}
                     this.$store.dispatch("userSignin",message)
                     console.log(this)
                     if(this.phoneNum){
                       this.$router.push({path:'/'})
                     }else if(!this.phoneNum){
                     	alert('用户不存在或密码错误，请注册')
                     	this.$router.push({path:'/register'})
                     }
                   }
                 }catch(error) {
                     alert(error)
                 }
            }
		}
	}
</script>