<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>节点列表</title>
<link rel="stylesheet" href="__PUBLIC__/Css/public.css" />
<link rel="stylesheet" href="__PUBLIC__/Css/node.css" />
<script type="text/javascript" src="__PUBLIC__/Js/jquery-1.7.2.min.js"></script>
<script type="text/javascript">
	$(function() {
		$('input[level=1]').click(function(){
			var inputs = $(this).parents('.app').find('input');
			$(this).attr('checked') ? inputs.attr('checked','checked') : inputs.removeAttr('checked');
		})

		$('input[level=2]').click(function(){
			var inputs = $(this).parents('dl').find('input');
			$(this).attr('checked') ? inputs.attr('checked','checked') : inputs.removeAttr('checked');
		})

		$('input[level]:gt(0)').click(function(){
			$('input[level]:eq(0)').attr('checked','checked');
		})

	});
</script>
</head>

<body>
	<div id="wrap">
		<a href="<?php echo U(GROUP_NAME.'/Rbac/role');?>" class="add-app">返回</a>
		<form action="<?php echo U(GROUP_NAME.'/Rbac/setAccess');?>" method="post">
			<?php if(is_array($node)): foreach($node as $key=>$app): ?><div class="app">
					<p>
						<strong><?php echo ($app["title"]); ?></strong>
						<input type="checkbox" level="1" name="access[]" value="<?php echo ($app["id"]); ?>_1"  <?php if($app["access"]): ?>checked="checked"<?php endif; ?>/>
					</p>
				

				<?php if(is_array($app['child'])): foreach($app['child'] as $key=>$action): ?><dl>
						<dt>
							<strong><?php echo ($action["title"]); ?></strong>
							<input type="checkbox" level="2" name="access[]" value="<?php echo ($action["id"]); ?>_2" <?php if($action["access"]): ?>checked="checked"<?php endif; ?> />
						</dt>
					
					<?php if(is_array($action['child'])): foreach($action['child'] as $key=>$method): ?><dd>
							<span><?php echo ($method["title"]); ?></span>
							<input type="checkbox" level="3" name="access[]" value="<?php echo ($method["id"]); ?>_3" <?php if($method["access"]): ?>checked="checked"<?php endif; ?>/>
						</dd><?php endforeach; endif; ?>
					</dl><?php endforeach; endif; ?>
				</div><?php endforeach; endif; ?>
	</div>
	<input type="hidden" name="rid" value="<?php echo ($rid); ?>"/>
	<input type="submit" value="保存修改" style="display: block;margin: 20px auto;cursor: pointer;"/>
	</form>
</body>
</html>