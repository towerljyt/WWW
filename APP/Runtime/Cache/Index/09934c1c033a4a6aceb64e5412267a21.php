<?php if (!defined('THINK_PATH')) exit();?>  <head>

  <link rel="stylesheet" type="text/css" href="/Public/gec/web/css/li.css">
    <link rel="stylesheet" type="text/css" href="/Public/gec/web/css/index.css">
	<link href="/Public/gec/web/css/public.css" rel="stylesheet">
</head>
<!DOCTYPE html>
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
<div id="app" class="container">
    <div data-v-6248d0b3="" class="main-container">
        <div data-v-6248d0b3="" class="vux-header">
            <div class="vux-header-left">
                <a data-v-6248d0b3="" href="<?php echo U('Index/new/news');?>" class="system-setting">
                    <i data-v-6248d0b3="" class="iconfont icon-email"><?php echo ($w_read); ?></i>

                </a>

            
	</a>
				
            </div>
            <h1 class="vux-header-title"><span>我的</span></h1>

            <div class="vux-header-right">
                <a data-v-6248d0b3="" href="<?php echo U('Index/PersonalSet/myInfo');?>" class="system-setting">
                    <i data-v-6248d0b3="" class="iconfont icon-shezhi"></i>
                </a>
				
            </div>
        </div>
        <div data-v-6248d0b3="" class="user-header" style="height: 200px; position: relative; overflow: hidden;">
            <svg xmlns="http://www.w3.org/2000/svg" version="1.1" width="375" height="137" id="blurred_vbbfqi9jb" class="vux-bg-blur" viewBox="0 0 375 137" preserveAspectRatio="none" style="opacity: 1;">
                <filter id="blur_vbbfqi9jb">
                    <feGaussianBlur in="SourceGraphic" stdDeviation="40"></feGaussianBlur>
                </filter>
                <image x="0" y="0" width="375" height="137" externalresourcesrequired="true" href="/Public/gec/web/img/logon.png" style="filter:url(#blur_vbbfqi9jb)" preserveAspectRatio="none">
                </image>
            </svg>
            <p data-v-6248d0b3="" class="center">
                <img style="border-radius: 50%;" onclick="main.go(this)" data-href="<?php echo U('Index/PersonalSet/myInfo');?>" data-v-6248d0b3="" src="/Public/gec/web/img/logon.png">
            </p>
                        <div data-v-6248d0b3="" class="user-info">
                <h3 data-v-6248d0b3="">我的级别：(<span style="color: green"><?php echo group($minfo['level']);?></span>)
                    <!--<span data-v-6248d0b3="">
                        <i data-v-6248d0b3="" class="iconfont icon-xingbienan"
                           style="color: rgb(0, 174, 255);"></i>
                    </span>-->
                    <span data-v-6248d0b3="">
                        <!--<i data-v-6248d0b3="" class="iconfont icon-huiyuan1"></i>-->
                        <!--<i data-v-6248d0b3="" class="iconfont icon-lv #$data['level'] "></i>-->
                    </span>
                </h3>
				            <p style="overflow: hidden;text-overflow: ellipsis;white-space: nowrap;font-size:14px; padding-left:7%;">我的姓名：<span style="font-size:16px;"><?php echo ($minfo["truename"]); ?></span></p>


                <p data-v-6248d0b3="" class="computer-level"></p>
            </div>
        </div>
        <div data-v-6248d0b3="" class="new-user-info-container">
            <!--<div data-v-6248d0b3="" class="new-user-info" style="background-color: rgb(251, 249, 254);">
                <a data-v-6248d0b3="" href="https://eco.944888.net/index.html#/attention?type=0" class=""><span
                        data-v-6248d0b3="">1</span>

                    <p data-v-6248d0b3="">关注</p>
                </a>
                <a data-v-6248d0b3="" href="https://eco.944888.net/index.html#/attention?type=1" class=""><span
                        data-v-6248d0b3="">1</span>

                    <p data-v-6248d0b3="">粉丝</p>
                </a>
                <a data-v-6248d0b3="" href="javascript:;"><span data-v-6248d0b3="">2</span>

                    <p data-v-6248d0b3="">交易</p>
                </a>
                <a data-v-6248d0b3="" href="javascript:;"><span data-v-6248d0b3="">50.0%</span>

                    <p data-v-6248d0b3="">好评</p>
                </a>
            </div>-->
            <!--<div data-v-6248d0b3="" class="user-money" style="background-color: rgb(251, 249, 254);">
                <div data-v-6248d0b3="" style="width: 100%">
                    总资产
                    <p data-v-6248d0b3="">10.400</p>
                </div>
            </div>-->
            <div data-v-6248d0b3="" class="user-money" style="background: #f1f1f1;">
                <div data-v-6248d0b3="">
                    可用(TTC)
                    <p data-v-6248d0b3=""><?php echo (four_number($minfo["jinbi"])); ?></p>
                </div>
                <div data-v-6248d0b3="">
                    总资产(TTC)
                    <p data-v-6248d0b3=""><?php echo (four_number($minfo["jinbi"])); ?></p>
                </div>
                <div data-v-6248d0b3="">
                    冻结(TTC)
                    <p data-v-6248d0b3=""><?php echo (four_number($minfo["qjinbi"])); ?></p>
                </div>
            </div>
        </div>
        <div data-v-6248d0b3="" class="weui-grids my-grid">
            <a data-v-6248d0b3="" href="<?php echo U('Index/Shop/orderlist');?>" class="weui-grid">
                <div class="weui-grid__icon">
                    <!--<i data-v-6248d0b3="" class="iconfont icon-machine"></i>-->
                    <img src="/Public/gec/web/img/icon/product.png">
                </div>
                <p class="weui-grid__label"><span>我的矿机</span></p>
            </a>
            <a data-v-6248d0b3="" href="<?php echo U('Index/Emoney/myjiaoyi');?>" class="weui-grid">
                <div class="weui-grid__icon">
                    <img src="/Public/gec/web/img/icon/order.png">
                    <!--<i data-v-6248d0b3="" class="iconfont icon-jiaoyi-jiaoyizhong"></i>-->
                </div>
                <p class="weui-grid__label"><span>我的交易</span></p>
            </a>
            <a data-v-6248d0b3="" href="<?php echo U('Index/Account/myAccount');?>" class="weui-grid">
                <div class="weui-grid__icon">
                    <!--<i data-v-6248d0b3="" class="iconfont icon-wodetuandui1"></i>-->
                    <img src="/Public/gec/web/img/icon/team.png">
                </div>
                <p class="weui-grid__label"><span>我的团队</span></p>
            </a>
			
						            <a data-v-6248d0b3="" href="<?php echo U('Index/Financial/kzlist');?>" class="weui-grid">
                <div class="weui-grid__icon">
                    <!--<i data-v-6248d0b3="" class="iconfont icon-fujinshangjia2"></i>-->
                    <img src="/Public/gec/web/img/icon/merchant.png">
                </div>
                <p class="weui-grid__label"><span>工会收益</span></p>
            </a>
            <a data-v-6248d0b3="" href="<?php echo U('Index/Financial/kglist');?>" class="weui-grid">
                <div class="weui-grid__icon">
                    <!--<i data-v-6248d0b3="" class="iconfont icon-shouyi4"></i>-->
                    <img src="/Public/gec/web/img/icon/money.png">
                </div>
                <p class="weui-grid__label"><span>收支明细</span></p>
            </a>
            <a data-v-6248d0b3="" href="<?php echo U('Account/tuiguangma');?>" class="weui-grid">
                <div class="weui-grid__icon">
                    <!--<i data-v-6248d0b3="" class="iconfont icon-zhaomuhui"></i>-->
                    <img src="/Public/gec/web/img/icon/tuiguang.png">
                </div>
                <p class="weui-grid__label"><span>团队招募</span></p>
            </a>
            <a data-v-6248d0b3="" href="<?php echo U('Index/PersonalSet/updatePass');?>" class="weui-grid">
                <div class="weui-grid__icon">
                    <!--<i data-v-6248d0b3="" class="iconfont icon-paihangbang6"></i>-->
                    <img src="/Public/gec/web/img/icon/paihangbang.png">
                </div>
                <p class="weui-grid__label"><span>密码管理</span></p>
            </a>
            <a data-v-6248d0b3="" href="<?php echo U('Index/new/news');?>" class="weui-grid">
                <div class="weui-grid__icon">
                    <!--<i data-v-6248d0b3="" class="iconfont icon-5"></i>-->
                    <img src="/Public/gec/web/img/icon/new.png">
					
                </div>
				
                <p class="weui-grid__label"><span>入门指南</span></p>
				
            </a>
            <a data-v-6248d0b3="" href="<?php echo U('Index/msg/addmsg');?>" class="weui-grid">
                <div class="weui-grid__icon">
                    <!--<i data-v-6248d0b3="" class="iconfont icon-kefu6"></i>-->
                    <img src="/Public/gec/web/img/icon/custom.png">
                </div>
                <p class="weui-grid__label"><span>客服中心</span></p>
            </a>
            <a data-v-6248d0b3="" href="<?php echo U('Index/Financial/kslist');?>" class="weui-grid">
                <div class="weui-grid__icon">
                    <!--<i data-v-6248d0b3="" class="iconfont icon-fujinshangjia2"></i>-->
                    <img src="/Public/gec/web/img/icon/merchant.png">
                </div>
                <p class="weui-grid__label"><span>矿机收益</span></p>
            </a>
            <a data-v-6248d0b3="" href="<?php echo U('Index/Index/jihuo');?>" class="weui-grid">
                <div class="weui-grid__icon">
                    <img src="/Public/gec/web/img/icon/tuichu000.png">
                </div>
                <p class="weui-grid__label"><span>账号激活</span></p>
            </a>
			<a data-v-6248d0b3="" href="<?php echo U('Index/Index/logout');?>" class="weui-grid">
                <div class="weui-grid__icon">
                    <!--<i data-v-6248d0b3="" class="iconfont icon-fujinshangjia2"></i>-->
                    <img src="/Public/gec/web/img/icon/tuichu000.png">
                </div>
                <p class="weui-grid__label"><span>安全退出</span></p>
            </a>
			
	

        </div>
    </div>


<script>
    $(function () {
        $(".weui-tabbar__item").removeClass('weui-bar__item_on');
        $(".weui-tabbar__item").each(function () {
            var current = window.location.href;
            if (current == $(this).attr('href')) {
                $(this).addClass('weui-bar__item_on');
            }
        })
    })
</script></div>
<script src="/static/js/main.js"></script>
<div class="weui-loading_toast vux-loading" id="weui_loading" style="display: none;">
    <div class="weui-mask_transparent"></div>
    <div class="weui-toast">
        <i class="weui-loading weui-icon_toast"></i>
        <p class="weui-toast__content">加载中</p>
    </div>
</div>
<div class="vux-toast" id="weui_toast" style="display: none;">
    <div class="weui-mask_transparent"></div>
    <div class="weui-toast weui-toast_success" style="width: 7.6em;">
        <i class="weui-icon-success-no-circle weui-icon_toast"></i>

        <p class="weui-toast__content"></p>
    </div>
</div>
<div class="vux-x-dialog" id="weui_dialog" style="display: none;">
    <div class="weui-mask"></div>
    <div class="weui-dialog">
        <div class="weui-dialog__bd">
            <div></div>
        </div>
        <div class="weui-dialog__ft">
            <a href="javascript:;" class="weui-dialog__btn weui-dialog__btn_default">取消</a>
            <a href="javascript:;" class="weui-dialog__btn weui-dialog__btn_primary">确定</a>
        </div>
    </div>
</div>
<div class="vux-alert" id="weui_alert" style="display: none;">
    <div class="vux-x-dialog">
        <div class="weui-mask"></div>
        <div class="weui-dialog">
            <div class="weui-dialog__hd"><strong class="weui-dialog__title"></strong></div>
            <div class="weui-dialog__bd alert-content">
            </div>
            <div class="weui-dialog__ft">
                <a href="javascript:;" class="weui-dialog__btn weui-dialog__btn_primary">确定</a>
            </div>
        </div>
    </div>
</div>

</body>

    
        
</div>
	    	<div class="height55"></div>

<!--底部开始-->

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


	<!--底部结束-->
	<script src="/Public/web/js/jquery-weui.min.js"></script>
		<p style="display:none;">

</p>

</body>
</html>