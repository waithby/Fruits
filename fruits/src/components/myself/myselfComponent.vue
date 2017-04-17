<template>
    <div>	
	    <header class="mui-bar mui-bar-nav">
			<a class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left"></a>
			<h1 class="mui-title">注册登录</h1>
		</header>
		<div class="mui-content" id="top">
		</div>
		<router-link to="register">注册</router-link> 
		<router-link to="login">登录</router-link> 
		<router-view></router-view>
	</div>
</template>
