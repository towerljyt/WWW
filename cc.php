<?php
/*
 * 防CC攻击郁闷到死，不死版。
 *
 * 如果每秒内网站刷新次数超过2次，延迟5秒后访问。
 */

$cc_min_nums = '1';                    //次，刷新次数
$cc_url_time = '5';                    //秒，延迟时间
$cc_log = 'cc_log.txt';                //启用本行为记录日志
$cc_forward = 'http://localhost';    //释放到URL

//--------------------------------------------

//返回URL
$cc_uri = $_SERVER['REQUEST_URI']?$_SERVER['REQUEST_URI']:($_SERVER['PHP_SELF']?$_SERVER['PHP_SELF']:$_SERVER['SCRIPT_NAME']);
$site_url = 'http://'.$_SERVER ['HTTP_HOST'].$cc_uri;

//启用session
if( !isset( $_SESSION ) ) session_start();
$_SESSION["visiter"] = true;
if ($_SESSION["visiter"] <> true){

 header("Location: ".$cc_forward);
 exit;
}

$timestamp = time();
$cc_nowtime = $timestamp ;
if ($_SESSION['cc_lasttime']){
 $cc_lasttime = $_SESSION['cc_lasttime'];
 $cc_times = $_SESSION['cc_times'] + 1;
 $_SESSION['cc_times'] = $cc_times;
}else{
 $cc_lasttime = $cc_nowtime;
 $cc_times = 1;
 $_SESSION['cc_times'] = $cc_times;
 $_SESSION['cc_lasttime'] = $cc_lasttime;
}

//获取真实IP
if (isset($_SERVER)){
 $real_ip = $_SERVER['HTTP_X_FORWARDED_FOR'];
}else{
 $real_ip = getenv("HTTP_X_FORWARDED_FOR");
}

//print_r($_SESSION);

//释放IP
if (($cc_nowtime - $cc_lasttime)<=0){
 if ($cc_times>=$cc_min_nums){       
 if(!empty($cc_log))    cc_log(get_ip(), $real_ip, $cc_log, $cc_uri);    //产生log
 
 //printf('您的刷新过快，请稍后。');
 header("Location: ".$cc_forward);
 exit;
 }
}else{
 $cc_times = 0;
 $_SESSION['cc_lasttime'] = $cc_nowtime;
 $_SESSION['cc_times'] = $cc_times;
}

//记录cc日志
function cc_log($client_ip, $real_ip, $cc_log, $cc_uri){   
 $temp_time = date("Y-m-d H:i:s", time());
 
 $temp_result = "[".$temp_time."] [client ".$client_ip."] ";   
 if($real_ip) $temp_result .= " [real ".$real_ip."] ";
 $temp_result .= $cc_uri . "\r\n";
 
 $handle = fopen ("$cc_log", "rb");
 $oldcontent = fread($handle,filesize("$cc_log"));
 fclose($handle);
 
 $newcontent = $temp_result . $oldcontent;
 $fhandle=fopen("$cc_log", "wb");
 fwrite($fhandle,$newcontent,strlen($newcontent));
 fclose($fhandle);
}

//获取在线IP
function get_ip() {
 global $_C;
 
 if(empty($_C['client_ip'])) {
 if(getenv('HTTP_CLIENT_IP') && strcasecmp(getenv('HTTP_CLIENT_IP'), 'unknown')) {
 $client_ip = getenv('HTTP_CLIENT_IP');
 } elseif(getenv('HTTP_X_FORWARDED_FOR') && strcasecmp(getenv('HTTP_X_FORWARDED_FOR'), 'unknown')) {
 $client_ip = getenv('HTTP_X_FORWARDED_FOR');
 } elseif(getenv('REMOTE_ADDR') && strcasecmp(getenv('REMOTE_ADDR'), 'unknown')) {
 $client_ip = getenv('REMOTE_ADDR');
 } elseif(isset($_SERVER['REMOTE_ADDR']) && $_SERVER['REMOTE_ADDR'] && strcasecmp($_SERVER['REMOTE_ADDR'], 'unknown')) {
 $client_ip = $_SERVER['REMOTE_ADDR'];
 }
 $_C['client_ip'] = $client_ip ? $client_ip : 'unknown';
 }
 return $_C['client_ip'];
}
?>