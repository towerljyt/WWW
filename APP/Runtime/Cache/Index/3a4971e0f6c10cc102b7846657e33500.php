<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link type="text/css" rel="stylesheet" href="/Public/gec/web/css/lib.css?2">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1, minimum-scale=1.0"/>
	<meta content="telephone=no" name="format-detection">
	<title>个人中心</title>	
    <link rel="stylesheet" href="/Public/gec/web/css/weui.min.css"/>
	<link rel="stylesheet" href="/Public/gec/web/css/jquery-weui.min.css">
	<link href="/Public/gec/web/css/font-awesome.min.css" rel="stylesheet">
	<link href="/Public/gec/web/fonts/iconfont.css" rel="stylesheet">
	<script src="/Public/gec/web/js/layer.js"></script>
	<link rel="stylesheet" href="/Public/gec/web/css/stylef.css"/>
	<link rel="icon" href="/Public/gec/images/log.ico">
	

</head>

<body>
<!--顶部开始-->
<!--顶部开始-->
<div class="header">
    <span class="header_l"><a href="javascript:history.go(-1);"><i class="fa fa-chevron-left"></i></a></span>
    <span class="header_c">网站公告</span>

		<!--<span style="position: absolute;right: 10%;top: 0px;text-align:center;width:20%;white-space:nowrap; overflow:hidden; text-overflow:ellipsis;font-size: 12px; "><?php echo ($memberinfo['username']); ?> </span>
		<span class="header_r"><a href="<?php echo U(GROUP_NAME .'/personal_set/myInfo');?>"><i class="fa fa-user"></i></a></span>-->
</div>
<div class="height40"></div>
<!--顶部结束-->
<!--顶部结束-->
<style>
	.anchorjs-icon img{ width:100% !important;}

</style>


<div class="inner-block" style="padding:0 3px;">
    <div class="inbox">
    		 
    	 	<div class="col-md-8 compose-right">
					<div class="inbox-details-default">
					<div class="grid_3 grid_4">
			
	     <div class="bs-example">
		    <table class="table">
		      <tbody>
		     
			  <tr>
		          <td align=center><h3 id="h3-bootstrap-heading"><?php echo ($new["title"]); ?></h3></td>
		          
		        </tr>

				
		
			
			 
			 
		        <tr>
		          <td><h5 id="h5-bootstrap-heading">
				  
				 <span class="anchorjs-icon"><?php echo (stripcslashes($new["content"])); ?></span></h5></td>
		        
		        </tr> 
		       
		      </tbody>
		    </table>
								  
<div style="text-align:center; margin-top:30px;">
<input id="btnback" class="buttom" onclick="javascript:window.history.go(-1)" type="button"value="返 回" style=" width:80%; border-radius:4px; padding:5px 10px; border:0px; background:#72ABE8; color:#ffffff;"/>
</div>



	     </div>
	  </div>

	  
	  
	  
				      
					  

					  

           
	
	
			
			
			
			
			
			
			
			
			
			
			
					</div>
				</div>
    	
          <div class="clearfix"> </div>     
   </div>
</div>
		
		
<!--底部开始-->
<style>
	.footer ul li{
		width: 25%;
	}
</style>
	<div class="footer">
    <ul>
        
       <li><a href="<?php echo U('Index/Shop/plist');?>" class="block"><i class="fa fa-university" style="color:#72ABE8;"></i>矿机商城</a></li>
		<li><a href="<?php echo U('Index/Shop/orderlist');?>" class="block"><i class="fa fa-cart-arrow-down" style="color:#72ABE8;"></i>我的矿机</a></li>
		<li><a href="<?php echo U('Index/Emoney/index');?>" class="block"><i class="fa fa-line-chart" style="color:#72ABE8;"></i>交易中心</a></li>
        <li style="width:24%" ><a href="/" class="block"><i class="fa fa-laptop" style="color:#72ABE8;"></i>个人首页</a></li>
    </ul>
</div>
	<!--底部结束-->
<script src="/Public/gec/reg/js/jquery-1.11.3.min.js"></script>
<script src="/Public/gec/web/js/jquery-weui.min.js"></script>