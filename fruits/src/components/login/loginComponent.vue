<template>
    <div>	
	    <header class="mui-bar mui-bar-nav"></header>
		<div class="mui-content" id="top">
			<div class="mui-content-padded" id="box" style="margin: 0px;">
				<form class="mui-input-group">
					<div class="mui-input-row">
						<input type="text" class="mui-input-clear" placeholder="请输入您的用户名">
					</div>
					<div class="mui-input-row">
						<input type="text" class="mui-input-clear" placeholder="请输入您的密码">
					</div>
					<div class="mui-input-row">
						<input type="text" class="mui-input-clear" placeholder="请再次验证码">
					</div>
				</form>						
                    <div class="mui-content" id="two">
                    	<a href="">忘记密码?</a>
					    <div class="mui-content-padded">
					        <button type="button" class="mui-btn mui-btn-block">登录</button>
					          <button type="button" class="mui-btn mui-btn-success mui-btn-block">立即注册</button>
					    </div>
				    </div>
			</div>
		</div>
	</div>
</template>
	
	
	
module.exports = LoginComponent;