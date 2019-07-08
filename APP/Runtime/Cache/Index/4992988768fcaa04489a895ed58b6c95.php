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
	
	

</head>

<div class="listBoxGen">
        <div class="listBoxTitleGen"><div class="showTitle">绑定安全邮箱</div></div>
            <div class="listBoxContentGen">
                
	            
<script type="text/javascript">

$(document).ready(function() {

    $("#ctl00_ContentPlaceHolder1_txtEmail").blur(function() { checkEmail(); });
    $("#ctl00_ContentPlaceHolder1_txtEmailCode").blur(function() { 
    	if(checkEmailCode()){checkExistEmailCode();} });
    
    $("#Button2").click(function() {
    	alert("请检查邮箱地址是否输入正确！");
        checkInputEmail();
    });
    
    $("#ctl00_ContentPlaceHolder1_Button1").click(function() {
        return checkInput();
    });
});

//发送验证码
function checkInputEmail() {

    if (!checkEmail()) { 
    	alert("请检查邮箱地址是否输入正确！");
    	$("#ctl00_ContentPlaceHolder1_txtEmail").focus(); 
    	return false; 
	}
    
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
<form action="Index/PersonalSet/seedCode" method="post">
<table width="98%" border="0" cellspacing="0" cellpadding="0" class="CommonTb" style="line-height:24px;padding-left:40px;padding-top:20px;">
  <tr>
    <td>会员编号：<span id="ctl00_ContentPlaceHolder1_lblUserName"><?php echo (session('username')); ?></span></td>
  </tr>
  <tr>
    <td>输入绑定邮箱：<input name="email" type="text" maxlength="25" id="ctl00_ContentPlaceHolder1_txtEmail" class="text" style="width:260px;" /> 
        <input id="Button2" type="button" value="发送验证码" class="buttom" />
        <span id="lblEmail" class="infoTips"></span></td>
  </tr>
    <tr>
        <td>请输入验证码：<input name="emailcode" type="text" maxlength="20" id="ctl00_ContentPlaceHolder1_txtEmailCode" class="text" style="width:200px;" /> <span id="lblEmailCode" class="infoTips"></span></td>
    </tr>
  <tr>
    <td>
    	<input type="hidden" name="username" value="<?php echo (session('username')); ?>" />
    	<input type="submit" value="立即绑定" id="ctl00_ContentPlaceHolder1_Button1" class="buttom" />
        <span id="showText"></span>
    </td>
  </tr>
</table>
</form>
<br /><br />

<p style="line-height:24px;padding-left:40px;">说明：為了确保邮箱有效性，绑定邮箱须经过邮箱认证。<br />
1、首先输入您要绑定的邮箱，然后点击发送验证码到邮箱。<br />
2、然后登陆您的邮箱查看将收到的验证码输入到上面验证码框内点击立即绑定邮箱。<br />
3、如果您不能正常收到验证邮件，请检查是否在邮箱垃圾箱内，或者请将 web@freecreators.com 添加到您的邮箱通信录中或邮箱白名单中。以便以后都能正常收到邮件。
</p>


            </div>
            <br /><br />
        </div>
	</div>
</div>

<!-- Transparent layer --> 
<div id="divBox" style="filter:alpha(opacity=40);-moz-opacity:0.3;opacity:0.3;background-color:#000;width:100%;height:100%;z-index:1000;position: absolute;left:0;top:0;display:none;overflow: hidden;">
</div>
<!-- message layer --> 
<div id="divMsg" style="border:solid 5px #339999;background:#fff;padding:10px;width:780px;z-index:1001; position: absolute; display:none;top:50%; left:50%;margin:-200px 0 0 -400px;"> 
    <div style="padding:3px 15px 3px 15px;text-align:left;vertical-align:middle;" > 
        <div class="IndexShowMsg"> 
            <div id="divShowMsg"></div>
            
        </div> 
        <br/>
        <div id="showbtnCancel" style="text-align:right;"> 
            <input id="btnCancel" type="button" class="buttom" value=" 关闭 " onclick="ShowNo()" /> 
        </div> 
    </div> 
</div> 

    </form>
</body>
</html>