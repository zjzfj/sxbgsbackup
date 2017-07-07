<?php

function convertip($ip) {
$dat_path = '/home/jessi40/public_html/aiens/blog/data/area.Dat';
if(!preg_match("/^(\d{1,2}|1\d\d|2[0-4]\d|25[0-5])\.(\d{1,2}|1\d\d|2[0-4]\d|25[0-5])\.(\d{1,2}|1\d\d|2[0-4]\d|25[0-5])\.(\d{1,2}|1\d\d|2[0-4]\d|25[0-5])$/",$ip)) {
return 'IP Address Error';
}
if(!$fd = @fopen($dat_path,'rb')){
return 'IP date file not exists or access denied';
}
$ip = explode('.',$ip);
$ipNum = $ip[0] * 16777216 +$ip[1] * 65536 +$ip[2] * 256 +$ip[3];
$DataBegin = fread($fd,4);
$DataEnd = fread($fd,4);
$ipbegin = implode('',unpack('L',$DataBegin));
if($ipbegin <0) $ipbegin += pow(2,32);
$ipend = implode('',unpack('L',$DataEnd));
if($ipend <0) $ipend += pow(2,32);
$ipAllNum = ($ipend -$ipbegin) / 7 +1;
$BeginNum = 0;
$EndNum = $ipAllNum;
while($ip1num>$ipNum ||$ip2num<$ipNum) {
$Middle= intval(($EndNum +$BeginNum) / 2);
fseek($fd,$ipbegin +7 * $Middle);
$ipData1 = fread($fd,4);
if(strlen($ipData1) <4) {
fclose($fd);
return 'System Error';
}
$ip1num = implode('',unpack('L',$ipData1));
if($ip1num <0) $ip1num += pow(2,32);
if($ip1num >$ipNum) {
$EndNum = $Middle;
continue;
}
$DataSeek = fread($fd,3);
if(strlen($DataSeek) <3) {
fclose($fd);
return 'System Error';
}
$DataSeek = implode('',unpack('L',$DataSeek.chr(0)));
fseek($fd,$DataSeek);
$ipData2 = fread($fd,4);
if(strlen($ipData2) <4) {
fclose($fd);
return 'System Error';
}
$ip2num = implode('',unpack('L',$ipData2));
if($ip2num <0) $ip2num += pow(2,32);
if($ip2num <$ipNum) {
if($Middle == $BeginNum) {
fclose($fd);
return 'Unknown';
}
$BeginNum = $Middle;
}
}
$ipFlag = fread($fd,1);
if($ipFlag == chr(1)) {
$ipSeek = fread($fd,3);
if(strlen($ipSeek) <3) {
fclose($fd);
return 'System Error';
}
$ipSeek = implode('',unpack('L',$ipSeek.chr(0)));
fseek($fd,$ipSeek);
$ipFlag = fread($fd,1);
}
if($ipFlag == chr(2)) {
$AddrSeek = fread($fd,3);
if(strlen($AddrSeek) <3) {
fclose($fd);
return 'System Error';
}
$ipFlag = fread($fd,1);
if($ipFlag == chr(2)) {
$AddrSeek2 = fread($fd,3);
if(strlen($AddrSeek2) <3) {
fclose($fd);
return 'System Error';
}
$AddrSeek2 = implode('',unpack('L',$AddrSeek2.chr(0)));
fseek($fd,$AddrSeek2);
}else {
fseek($fd,-1,SEEK_CUR);
}
while(($char = fread($fd,1)) != chr(0))   
$ipAddr2 .= $char;
$AddrSeek = implode('',unpack('L',$AddrSeek.chr(0)));
fseek($fd,$AddrSeek);
while(($char = fread($fd,1)) != chr(0))   
$ipAddr1 .= $char;
}else {
fseek($fd,-1,SEEK_CUR);
while(($char = fread($fd,1)) != chr(0))   
$ipAddr1 .= $char;
$ipFlag = fread($fd,1);
if($ipFlag == chr(2)) {
$AddrSeek2 = fread($fd,3);
if(strlen($AddrSeek2) <3) {
fclose($fd);
return 'System Error';
}
$AddrSeek2 = implode('',unpack('L',$AddrSeek2.chr(0)));
fseek($fd,$AddrSeek2);
}else {
fseek($fd,-1,SEEK_CUR);
}
while(($char = fread($fd,1)) != chr(0)){
$ipAddr2 .= $char;
}
}
fclose($fd);
if(preg_match('/http/i',$ipAddr2)) {
$ipAddr2 = '';
}
$ipaddr = "$ipAddr1 $ipAddr2";
$ipaddr = preg_replace('/CZ88.Net/is','',$ipaddr);
$ipaddr = preg_replace('/^s*/is','',$ipaddr);
$ipaddr = preg_replace('/s*$/is','',$ipaddr);
if(preg_match('/http/i',$ipaddr) ||$ipaddr == '') {
$ipaddr = 'Unknown';
}
return $ipaddr;
}
function findstr($str,$substr)   
{
$m = strlen($str);
$n = strlen($substr );
if ($m <$n) return false ;
for ($i=0;$i <=($m-$n+1);$i ++){
$sub = substr( $str,$i,$n);
if ( strcmp($sub,$substr) == 0) return true;
}
return false ;
}
;echo '   
'
?>