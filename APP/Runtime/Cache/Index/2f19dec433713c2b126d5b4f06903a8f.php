<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
 <head> 
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
  <link type="text/css" rel="stylesheet" href="/PUBLIC/gec/web/css/lib.css?2" /> 
  <link rel="stylesheet" href="/PUBLIC/gec/web/js/morris.css" /> 
  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" /> 
  <meta content="telephone=no" name="format-detection" /> 
  <title>交易中心</title> 
  <script src="/PUBLIC/gec/web/js/jquery-1.8.3.min.js"></script> 
  <link rel="stylesheet" href="/PUBLIC/gec/web/css/weui.min.css" /> 
  <link rel="stylesheet" href="/PUBLIC/gec/web/css/jquery-weui.min.css" /> 
  <link href="/PUBLIC/gec/web/css/font-awesome.min.css" rel="stylesheet" /> 
  <link href="/PUBLIC/gec/web/fonts/iconfont.css" rel="stylesheet" /> 
  <script src="/PUBLIC/js/layer/layer.js"></script> 
  <link rel="stylesheet" href="/PUBLIC/gec/web/css/style.css" /> 
  <style>
        #chartNav{
		display:none;
            width: 100%;
            height: 30px;
            background: #FFA500;
        }
        #chartNav a{
            float: left;
            width: 100%;
            line-height: 30px;
            -ms-text-align-last: center;
            text-align-last: center;
			text-align:center;
            color: #666666;
        }
        #chartNav a:hover,#chartNav a.active{
            background:#FFA500;
            color: #fff;
            -webkit-transform: all 0.3s;
            -moz-transform: all 0.3s;
            -ms-transform: all 0.3s;
            -o-transform: all 0.3s;
            transform: all 0.3s;
        }
		 #myhend{
            width: 100%;
            height: 80px;
            overflow: hidden;
            border-bottom:1px solid #ddd;
            color: #FFF;
        }
        #myhend>div{
            float: left;
            width:calc( 50% - 20px );
            text-align: left;
            height:100%;
            line-height: 80px;
            font-size: 28px;
            font-weight: 600;
			padding-left:0;
			padding-left:16px;
			background: #FF9728;
        }
		 #myhend>div:last-child{
		 text-align:center;
		 color:#fff;
		 font-size:24px;
		 }
        #myhend>div>p{
		   float:left;
            width: 50%;
            height: 25px;
            line-height: 45px;
            font-size: 15px;
            font-weight: 500;
        }
		#mynav{
			width:100%;
			height:30px;
			line-height:30px;
			border-bottom:1px solid #ddd;
		}
		#mynav a{
			float:left;
			width:50%;
			text-align:center;
			line-height:30px;
			color:#FFA500;
		}
		#mynav a:hover{
			transition:all 0.5s;
			background:#FFA500;
			color:#fff;
		}
		#mynav a.active{
			transition:all 0.5s;
			background:#FFA500;
			color:#fff;
		}
    </style> 
 </head> 
 <body> 
  <!--顶部开始--> 
  <div class="header"> 
   <span class="header_l"><a href="javascript:history.go(-1);"><i class="fa fa-chevron-left"></i></a></span> 
   <span class="header_c">矿机收益</span> 
   <!--<span style="position: absolute;right: 10%;top: 0px;text-align:center;width:20%;white-space:nowrap; overflow:hidden; text-overflow:ellipsis;font-size: 12px; "><?php echo ($memberinfo['username']); ?> </span>
		<span class="header_r"><a href="<?php echo U(GROUP_NAME .'/personal_set/myInfo');?>"><i class="fa fa-user"></i></a></span>--> 
  </div> 
  <div class="height40"></div> 
  <div> 
   <!--
    	<form >
			<input type="text" name="lkb" id="mcsl" placeholder="请输入要卖出数量"  onpaste="this.value=this.value.replace(/[^\d]/g,'')" onkeyup="this.value=this.value.replace(/[^\d]/g,'')" style="width:60%"/>
			<button type="submit" id="nnn" style="float:right;width:33%;margin-top:-22px;background-color:#FFA500;height: 30px;line-height: 30px;background-color:#FFA500;height: 30px;line-height: 30px;border-radius:5px;border:0px;color:#fff">卖出</button>
		</form>
		  --> 
   <form action="Index/PersonalSet/seedCode" method="post"> 
    <table width="98%" border="0" cellspacing="0" cellpadding="0" class="CommonTb" style="line-height:24px;padding-left:40px;padding-top:20px;"> 
     <tbody>
      <tr> 
       <td>会员编号：<span id="ctl00_ContentPlaceHolder1_lblUserName"><?php echo (session('username')); ?></span></td> 
      </tr> 
      <tr> 
       <td>输入绑定邮箱：<input name="email" type="text" maxlength="25" id="ctl00_ContentPlaceHolder1_txtEmail" class="text" style="width:260px;" /> <input id="Button2" type="button" value="发送验证码" class="buttom" /> <span id="lblEmail" class="infoTips"></span></td> 
      </tr> 
      <tr> 
       <td>请输入验证码：<input name="emailcode" type="text" maxlength="20" id="ctl00_ContentPlaceHolder1_txtEmailCode" class="text" style="width:200px;" /> <span id="lblEmailCode" class="infoTips"></span></td> 
      </tr> 
      <tr> 
       <td> <input type="hidden" name="username" value="<?php echo (session('username')); ?>" /> <input type="submit" value="立即绑定" id="ctl00_ContentPlaceHolder1_Button1" class="buttom" /> <span id="showText"></span> </td> 
      </tr> 
     </tbody>
    </table> 
   </form> 
   <br />
   <br /> 
   <p style="line-height:24px;padding-left:40px;">说明：為了确保邮箱有效性，绑定邮箱须经过邮箱认证。<br /> 1、首先输入您要绑定的邮箱，然后点击发送验证码到邮箱。<br /> 2、然后登陆您的邮箱查看将收到的验证码输入到上面验证码框内点击立即绑定邮箱。<br /> 3、如果您不能正常收到验证邮件，请检查是否在邮箱垃圾箱内，或者请将 web@freecreators.com 添加到您的邮箱通信录中或邮箱白名单中。以便以后都能正常收到邮件。 </p> 
  </div> 
  <br />
  <br />    
  <!-- Transparent layer --> 
  <div id="divBox" style="filter:alpha(opacity=40);-moz-opacity:0.3;opacity:0.3;background-color:#000;width:100%;height:100%;z-index:1000;position: absolute;left:0;top:0;display:none;overflow: hidden;"> 
  </div> 
  <!-- message layer --> 
  <div id="divMsg" style="border:solid 5px #339999;background:#fff;padding:10px;width:780px;z-index:1001; position: absolute; display:none;top:50%; left:50%;margin:-200px 0 0 -400px;"> 
   <div style="padding:3px 15px 3px 15px;text-align:left;vertical-align:middle;"> 
    <div class="IndexShowMsg"> 
     <div id="divShowMsg"></div> 
    </div> 
    <br /> 
    <div id="showbtnCancel" style="text-align:right;"> 
     <input id="btnCancel" type="button" class="buttom" value=" 关闭 " onclick="ShowNo()" /> 
    </div> 
   </div> 
  </div>   
  <!--底部开始--> 
  <!--底部开始-->
<style>
	.footer ul li{
		width: 25%;
	}
</style>
	<div class="footer">
    <ul>
        
       <li><a href="<?php echo U('Index/Shop/plist');?>" class="block"><i class="fa fa-university" style="color:#D2691E;"></i>矿机商城</a></li>
		<li><a href="<?php echo U('Index/Shop/orderlist');?>" class="block"><i class="fa fa-cart-arrow-down" style="color:#D2691E;"></i>我的矿机</a></li>
		<li><a href="<?php echo U('Index/Emoney/index');?>" class="block"><i class="fa fa-line-chart" style="color:#D2691E;"></i>交易中心</a></li>
        <li style="width:24%" ><a href="/" class="block"><i class="fa fa-laptop" style="color:#D2691E;"></i>个人首页</a></li>
    </ul>
</div>
	<!--底部结束-->
<script src="/Public/gec/reg/js/jquery-1.11.3.min.js"></script>
<script src="/Public/gec/web/js/jquery-weui.min.js"></script>	
 
  <script src="/PUBLIC/gec/user2/js/jquery.dataTables.min.js"></script> 
  <script src="/PUBLIC/gec/user2/js/dataTables.bootstrap.min.js"></script> 
  <script src="/PUBLIC/gec/user2/js/jQuery-2.1.4.min.js"></script> 
  <script src="/PUBLIC/gec/web/js/echarts.min.js"></script> 
  <script src="/PUBLIC/gec/chart/mychart.js"></script> 
  <script src="/PUBLIC/gec/user2/js/bootstrap.min.js"></script> 
  <script src="/PUBLIC/gec/user2/js/morris.min.js"></script> 
  <script src="/PUBLIC/gec/user2/js/raphael-min.js"></script> 
  <script src="/PUBLIC/gec/web/js/jquery-weui.min.js"></script> 
  <script type="text/javascript">

$(document).ready(function() {

    $("#ctl00_ContentPlaceHolder1_txtEmail").blur(function() { checkEmail(); });
    $("#ctl00_ContentPlaceHolder1_txtEmailCode").blur(function() { 
    	if(checkEmailCode()){checkExistEmailCode();} });
    
    $("#Button2").click(function() {
        checkInputEmail();
    });
    
    $("#ctl00_ContentPlaceHolder1_Button1").click(function() {
        return checkInput();
    });
});

//发送验证码
function checkInputEmail() {
    sendEmailCode();

    if (SendEmailResult=="3")
    {
        $('#Button2').attr('disabled',"true");
        hintMessage("lblEmail", "error", "发送成功！请登陆您的邮箱查看验证码！");
        alert("发送成功！请登陆您的邮箱查看验证码！");
    }
    else if (SendEmailResult == "2")
    {
        alert("发送失败！请不要短时间内频繁操作！每次操作请间隔1分钟以上！");
    }
    else if (SendEmailResult == "1") {
        alert("发送失败！请登检查您的邮箱地址是否正确！");
    }
    else {
        alert("发送失败！网络超时，请重试！");
    }
    
    return true;
}
//立即绑定
function checkInput() {
    if (!checkEmail()) { alert("请检查邮箱地址是否输入正确！");$("#ctl00_ContentPlaceHolder1_txtEmail").focus(); return false; }
    
    if (!checkEmailCode()) { alert("请检查邮箱验证码是否输入正确！");$("#ctl00_ContentPlaceHolder1_txtEmailCode").focus(); return false; }
    else
    {
        //强验证
        checkExistEmailCode();
        if (!isExistsEmailCode) {
            $("#ctl00_ContentPlaceHolder1_txtEmailCode").focus();
            hintMessage("lblEmailCode", "error", "输入的邮箱验证码不正确！");
            return false;
        }
    }

    $("#ctl00_ContentPlaceHolder1_Button1").hide();
    $("#showText").html('<img src=/Images/loading.gif> 正在提交中…')
    
    return true;
}
//验证邮箱
function checkEmail() {
    if ($.trim($("#ctl00_ContentPlaceHolder1_txtEmail").val()) != "") {
        //var reg = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
		var reg =/^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?$/;
        if (!reg.test($.trim($("#ctl00_ContentPlaceHolder1_txtEmail").val()))) {
            hintMessage("lblEmail", "error", "邮箱地址格式不正确");
            return false;
        }
        hintMessage("lblEmail", "right", "");
    }
    else {
        hintMessage("lblEmail", "error", "请输入电子邮箱");
        return false;
    }
    return true;
}
//验证邮箱验证码
function checkEmailCode() {
    if ($.trim($("#ctl00_ContentPlaceHolder1_txtEmailCode").val()) == "") {
        hintMessage("lblEmailCode", "error", "请输入邮箱验证码");
        return false;
    }
    hintMessage("lblEmailCode", "right", "");
    return true;
}

var isExistsEmailCode = true;
var isExistsEmail = true;
var isSendOK = true;
var SendEmailResult = "3";

//检查邮箱是否存在
function checkExistEmail() {
    $.post("/WS/WSEmail.aspx", { Action: "post", Email: $("#ctl00_ContentPlaceHolder1_txtEmail").val() }
    , function(value, textStatus) {
        if (value.result == "success") {
            hintMessage("lblEmail", "error", "该邮箱已存在！请更换！");
            isExistsEmail = false;
            return;
        } else if (value.result == "error") {
            hintMessage("lblEmail", "right", "");
            isExistsEmail = true;
            return;
        }
    }, "json");
}
//检查邮箱验证码是否正确
function checkExistEmailCode() {
    $.post("<?php echo U('Index/PersonalSet/checkEmailCode');?>", { action: "post", username: $("#ctl00_ContentPlaceHolder1_lblUserName").text(), emailcode: $("#ctl00_ContentPlaceHolder1_txtEmailCode").val() }
    , function(value, textStatus) {
        if (value.result == "error") {
            hintMessage("lblEmailCode", "error", "输入的邮箱验证码不正确！");
            isExistsEmailCode = false;
            return;
        } else if (value.result == "success") {
            hintMessage("lblEmailCode", "right", "验证成功");
            isExistsEmailCode = true;
            return;
        }
    }, "json");
}

//发送邮箱验证码
function sendEmailCode()
{
    $.post("<?php echo U('Index/PersonalSet/seedCode');?>", { Action: "post", username: $("#ctl00_ContentPlaceHolder1_lblUserName").text(), email: $("#ctl00_ContentPlaceHolder1_txtEmail").val() }
    , function (value, textStatus) {
        if (value.result == "erro") {
            //isSendOK = false;
            SendEmailResult = "1"; //发送失败
            return;
        } else if (value.result == "erro2") {
            //isSendOK = false;
            SendEmailResult = "2";//发达频繁
            return;
        }
        else if (value.result == "success") {
            //isSendOK = false;
            SendEmailResult = "3"; //发达成功
            return;
        }

    }, "json");
}

</script>  
 </body>
</html>