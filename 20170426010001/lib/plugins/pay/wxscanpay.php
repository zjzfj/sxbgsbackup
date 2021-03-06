<?php

if (!defined('ROOT')) exit('Can\'t Access !');
$payment_lang = ROOT . '/lang/' . config::get('lang_type') . '/pay/wxscanpay.php';
if (file_exists($payment_lang)) {
    global $_LANG;
    include_once($payment_lang);
}
if (isset($set_modules) && $set_modules == TRUE) {
    $i = isset($modules) ? count($modules) : 0;
    $modules[$i]['code'] = basename(__FILE__, '.php');
    $modules[$i]['desc'] = 'wxscanpay_desc';
    $modules[$i]['is_cod'] = '0';
    $modules[$i]['is_online'] = '1';
    $modules[$i]['author'] = 'CmsEasy';
    $modules[$i]['website'] = 'http://mp.weixin.qq.com';
    $modules[$i]['version'] = '1.0.0';
    $modules[$i]['config'] = array(
        array('name' => 'APPID', 'type' => 'text', 'value' => ''),
        array('name' => 'MCHID', 'type' => 'text', 'value' => ''),
        array('name' => 'KEY', 'type' => 'text', 'value' => ''),
        array('name' => 'APPSECRET', 'type' => 'text', 'value' => ''),
    );
    return;
}

require_once(ROOT . "/lib/plugins/wxpay/lib/log.php");
require_once(ROOT . "/lib/plugins/wxpay/lib/WxPay.Config.php");
require_once(ROOT . "/lib/plugins/wxpay/lib/WxPay.Api.php");
require_once(ROOT . "/lib/plugins/wxpay/lib/WxPay.NativePay.php");
require_once(ROOT . "/lib/plugins/wxpay/lib/WxPay.Notify.php");


class wxscanpay
{
    function __construct()
    {
        $logHandler= new CLogFileHandler(ROOT."/cache/data/".date('Y-m-d').'.log');
        Log::Init($logHandler, 15);

        $pay = pay::getInstance()->getrow(array('pay_code'=>'wxscanpay'));
        Log::DEBUG('pay:'.var_export($pay,true));
        $payment = unserialize_config($pay['pay_config']);

        WxPayConfig::$APPID = $payment['APPID'];
        WxPayConfig::$MCHID = $payment['MCHID'];
        WxPayConfig::$KEY = $payment['KEY'];
        WxPayConfig::$APPSECRET = $payment['APPSECRET'];
    }

    function get_code($order, $payment)
    {


        $notify = new NativePay();
        //var_dump($notify);exit;
        $url1 = $notify->GetPrePayUrl($order['ordersn']);
        //var_dump($url1);
        $str = '<img alt="扫码支付" src="'.url('tool/qrcode/data/'.urlencode($url1)).'" style="width:150px;height:150px;"/>';
        return $str;
    }

    function notify(){

        $notify = new NativeNotifyCallBack();
        $notify->Handle(true);
    }

    function respond()
    {
        if($_GET['subject']){
            $order_sn = str_replace($_GET['subject'], '', $_GET['oid']);
            $order_sn = intval($order_sn);
            $_GET['trade_no'] = $_GET['oid'];
            pay::changeorders($order_sn, $_GET);

            return true;
        }
    }
}
