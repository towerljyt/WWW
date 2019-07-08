<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link type="text/css" rel="stylesheet" href="/Public/gec/web/css/lib.css?2">
   <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1, minimum-scale=1.0"/>
   <meta content="telephone=no" name="format-detection">
    <title>充值管理</title>
    <script src="/Public/gec/web/js/jquery-1.8.3.min.js"></script>
    <link rel="stylesheet" href="/Public/gec/web/css/weui.min.css"/>
    <link rel="stylesheet" href="/Public/gec/web/css/jquery-weui.min.css">
    <link href="/Public/gec/web/css/font-awesome.min.css" rel="stylesheet">
    <link href="/Public/gec/web/fonts/iconfont.css" rel="stylesheet">
    <script src="/Public/js/layer/layer.js"></script>
</head>
<body>
    <!--顶部开始-->
    <header class="header">
        <span class="header_l"><a href="javascript:history.go(-1);"><i class="fa fa-chevron-left"></i></a></span>
        <span class="header_c">充值管理</span>
	<!--	<span style="position: absolute;right: 10%;top: 0px;text-align:center;width:20%;white-space:nowrap; overflow:hidden; text-overflow:ellipsis;font-size: 12px; "><?php echo ($memberinfo['username']); ?> </span>
		<span class="header_r"><a href="<?php echo U(GROUP_NAME .'/personal_set/myInfo');?>"><i class="fa fa-user"></i></a></span>-->
    </header>
    <div class="height40;"></div>
    <!--顶部结束-->
    <!--列表开始-->
	
	<form action='' method="POST" style="font-size:14px; margin-bottom:30px;" id="myform" target="_blank">
		<ul style="width: 80%;margin-left: 10%;color: #000;padding-top:50px" >

			
           <!-- <li style="height: 30px;line-height: 30px;margin-top: 5px;width:100%">
            	<span style="display:inline-block;width:33%;">充值金额：</span>
           		<input type="radio" name="pay_type" value="1" checked="checked">微信&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="radio" name="pay_type" value="2">支付宝
            </li>-->
			
			
             <li style="height: 30px;line-height: 30px;margin-top: 5px;width:100%; display:none;">
            	<span style="display:inline-block;width:33%;">支付宝账号：</span>
                
               
           		<select name="pay_type" style="border:1px solid #eeeeee; height:30px; width:62%">
                	
                <?php if($recharge_type == 1): ?><option value="1004">微信扫码</option>
                <?php elseif($recharge_type == 2): ?>
                 	<option value="1003">支付宝扫码</option><?php endif; ?>
               </select>
            </li>
            
            <li style="height: 30px;line-height: 30px;margin-top: 5px;width:100%"><span style="display:inline-block;width:33%;">支付宝账号：</span>
            	<input type="text" value="18071908595" id="copy-num" name="" style="height: 30px;line-height: 30px;width: 45%;border-radius: 5px;border: 1px solid #eeeeee;padding-left: 5px; background:#ccc; color:#ffffff;" readonly/>
           	    <span class="" onclick="jsCopy()" style="cursor:pointer; padding:7px 5px; color:#ffffff; background:#06F; border-radius:4px; width:20%; margin:0 auto;">复制</span>
           
            </li>
            
            
            
			<li style="height: 30px;line-height: 30px;margin-top: 5px;width:100%"><span style="display:inline-block;width:33%;">转&nbsp;账&nbsp;金&nbsp;额：</span><input type="text" id="rmb" name="rmb"  placeholder="请输入：100"style="height: 30px;line-height: 30px;width: 62%;border-radius: 5px;border: 1px solid #eeeeee;padding-left: 5px"/></li>
			
			
			
			<!--<li style="height: 30px;line-height: 30px;margin-top: 5px;width:100%"><span style="display:inline-block;width:33%;">备注：</span><input type="text" placeholder="备注:请填写你的会员编号" name="note" id="note" style="height: 30px;line-height: 30px;width: 62%;border-radius: 5px;border: 1px solid #eeeeee;padding-left: 5px">-->
			</li>
			<?php if($type == 1004): ?><li style=" margin-top: 5px;width:100%;" class="wxpay">
                    <span style="display:inline-block;width:33%;">微信二维码：</span>
                    <img src="/Public/wxpay.png" width="150">
				</li>
            <?php elseif($type == 1003): ?>
            	 <li style=" margin-top: 5px;width:100%;" class="alipay">
                     <span style="display:inline-block;width:33%;">备&nbsp;注&nbsp;参&nbsp;考：</span>
                     <img src="/Public/alipay.png" width="150">
				</li><?php endif; ?>
            
             <li style="height: 30px;line-height: 30px;margin-top: 5px;width:100%; color:#F00;font-weight:bold; font-size:16px;">
             	<span style="display:inline-block;width:33%; ">账&nbsp;&nbsp;户&nbsp;&nbsp;名：</span>刘兴强  支付后矿机立马到账！
                             </li>
             <li style="height: 30px;line-height: 30px;margin-top: 5px;width:100%; color:#F00;font-weight:bold; font-size:16px;">
             	<span style="display:inline-block;width:33%; ">特别提醒：</span>转账必须备注你的会员编号
             
			</li>
             
            <li>
            
			 <input type="button"  class="btn_submit_my" value="点此提交订单后手动转账" style="width: 100%;height: 30px;line-height: 30px;border-radius: 5px;border: 0px; background-color:#FF8201;margin-top: 5px;color: #FFFFFF;-webkit-appearance: none;"/></li>
		</ul>
	</form>
	
		
	
	
	<!--<div style="text-align:right; width:80%; margin:0 auto;"><a href='<?php echo U("Index/Index/recharge_list");?>'><input type="button" value="充值记录>>" style="padding:5px 10px; background:#06F; color:#ffffff; border-radius:4px; border:0px;"></a></div>-->

	<p style="width:80%; margin:20px auto; color:#F00;">
    	
    		抢购须知：<?php echo C('recharge_note');?>
    
    </p>

</div>
<div class="zhul" style="padding-bottom:5px;margin-bottom:80px">
    <table style="width: 90%;margin-left: 5%;color: #333333;margin-top: 20px;border-collapse:collapse;">
        <thead style="font-size: 12px; ">
		
            <tr style="height: 35px;line-height: 35px;">
				<th  style="border-bottom:2px solid #ddd ">充值RMB</th>
				<!--<th style="border-bottom:2px solid #ddd ">获得</th>-->
                <th style="border-bottom:2px solid #ddd ">支付方式</th>
                <th style="border-bottom:2px solid #ddd ">状态</th>
                <th style="border-bottom:2px solid #ddd ">充值时间</th>
               
            </tr>

        </thead>
        <tbody style="font-size: 12px;text-align: center">
			
 <?php if(is_array($list)): foreach($list as $key=>$v): ?><tr style="text-align:center">
                <td><?php echo ($v["rmb"]); ?></td>
                <!--<td><?php echo ($v["gbc"]); ?></td>-->
             <td>
             
             
             
                <?php if($v['pay_type'] == 1004): ?>微信扫码
                <?php elseif($v['pay_type'] == 1003): ?>
                	手动转账    
                <?php elseif($v['pay_type'] == 1005): ?>
                	网银支付
                <?php elseif($v['pay_type'] == 992): ?>
                	支付宝手机端
                <?php elseif($v['pay_type'] == 1007): ?>
               	 微信手机端
                <?php elseif($v['pay_type'] == 1009): ?>
                	钱包扫码
                <?php elseif($v['pay_type'] == 1010): ?>
                	京东扫码<?php endif; ?>
                </td>
                <td>
                	 <?php if($v['status'] == 0): ?>未支付
                     <?php elseif($v['status'] == 1): ?>
                   		已支付
                     <?php elseif($v['status'] == 2): ?>
                        支付失败<?php endif; ?>
                
                
                </td>
               <td><?php echo (date('Y-m-d H:i:s',$v["add_time"])); ?></td>
            </tr><?php endforeach; endif; ?> 			
			
			
        </tbody>
    </table>
    
<div class="page"><?php echo ($page); ?></div>    
    
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


<!-- Panel popup   提示框开始-->
<link rel="stylesheet" type="text/css" href="/public/ajaxsubmit/css/zip.css">
<div id="modal-panel" class="popup-basic bg-none mfp-with-anim mfp-hide" style="max-width:70%"></div>
<!-- End: Main -->
<!--<script type="text/javascript" src="/public/ajaxsubmit/js/jquery-1.11.1.min.js"></script>-->
<script type="text/javascript" src="/public/ajaxsubmit/js/jquery-ui.min.js"></script>
<script type="text/javascript" src="/public/ajaxsubmit/js/zip.js"></script>
<script type="text/javascript">

    jQuery(document).ready(function () {
        Core.init()
    });

    $(".btn_submit").on("click", function () {

	    event.preventDefault();
	    var btn_submit = $(this);
	    var form = btn_submit.closest("form");
      var btn_text=btn_submit.text();
      if(btn_submit.attr('reminder')){
        if(!confirm(btn_submit.attr('reminder'))){
          return ;
        }
      }
	 if (form.hasClass("is_submit")) return false;
      var formData = new FormData(form[0]);

	    $.ajax({
	        url: this.title,
	        type: "post",
	        data: formData,
          async: false,
          cache: false,
          contentType: false,
          processData: false,
	        beforeSend: function () {
	            btn_submit.text("处理中...").addClass("disabled");
	        },
	        success: function (data) {
                if(data.url){
				    $.alert(data.info);
				    setTimeout(function(){location.href=data.url}, 2000);
	            }else{
					$.alert(data.info);
                }
                btn_submit.text(btn_text).removeClass('disabled');
	        }
	    });
  	});


</script>
<!-- END: PAGE SCRIPTS 提示框结束-->

<script type="text/javascript">
function jsCopy(){
                    var e=document.getElementById("copy-num");//对象是copy-num1
                    e.select(); //选择对象
                    document.execCommand("Copy"); //执行浏览器复制命令
                    
					layer.msg('复制成功');	
					
       }
	
	
</script>

<script type="text/javascript">
	$(".btn_submit_my").click(function(){
		
			$.ajax({
				url:'<?php echo U("Index/Index/recharge_post");?>',
				type:'POST',
				data:$("#myform").serialize(),
				dataType:'json',
				success:function(json){
						layer.msg(json.info);	
						if(json.result ==1){
							window.location.href=json.url;
							//window.open(json.url, "_blank");
						}
					
					
				},
				error:function(){
						alert("网络故障");	
				}
					
				
				
			})	
		
	})


</script>












</body>
</html>