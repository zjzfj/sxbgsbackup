<?php defined('ROOT') or exit('Can\'t Access !'); ?>
<?php
if(config::get(serverlistp)=='right'){
$_serverlistpcss='left';
$_float = 'right:0;';
$_float1 = 'left:-160px;';
}elseif(config::get(serverlistp)=='left'){
$_serverlistpcss='right';
$_float = 'left:0;';
$_float1 = 'right:-160px;';
}else{
$_serverlistpcss='left';
}
?>



<style type="text/css">
.izl-rmenu{position:fixed; <?php echo $_float;?> margin-right:20px; bottom:0px; padding-bottom:0px;  z-index:999; }
.izl-rmenu .sbtn{width:72px; height:73px; margin-bottom:1px; cursor:pointer; position:relative;}



.izl-rmenu .btn-qq{background:url(<?php echo $skin_path;?>/images/servers/metro_color/r_qq.png) 0px 0px no-repeat; background-color:#6da9de;color:#FFF;}
.izl-rmenu .btn-qq:hover{background-color:#488bc7;color:#FFF;}
.izl-rmenu .btn-qq .qq{background-color:#488bc7; position:absolute; width:160px; <?php echo $_float1;?> top:0px; line-height:73px; color:#FFF; font-size:18px; text-align:center; display:none;}
.izl-rmenu .btn-qq a {color:#FFF;font-size:14px;}

.izl-rmenu .btn-wx{background:url(<?php echo $skin_path;?>/images/servers/metro_color/r_wx.png) 0px 0px no-repeat; background-color:#78c340;}
.izl-rmenu .btn-wx:hover{background-color:#58a81c;}
.izl-rmenu .btn-wx .pic{position:absolute; <?php echo $_float1;?> top:0px; display:none;width:160px;height:160px;}

.izl-rmenu .btn-phone{background:url(<?php echo $skin_path;?>/images/servers/metro_color/r_phone.png) 0px 0px no-repeat; background-color:#fbb01f;}
.izl-rmenu .btn-phone:hover{background-color:#ff811b;}
.izl-rmenu .btn-phone .phone{background-color:#ff811b; position:absolute; width:160px; <?php echo $_float1;?> top:0px; line-height:73px; color:#FFF; font-size:18px; text-align:center; display:none;}

.izl-rmenu .btn-ali{background:url(<?php echo $skin_path;?>/images/servers/metro_color/r_ali.png) 0px 0px no-repeat; background-color:#B8860B;}
.izl-rmenu .btn-ali:hover{background-color:#808000;}
.izl-rmenu a.btn-ali,.izl-rmenu a.btn-ali:visited{background:url(<?php echo $skin_path;?>/images/servers/metro_color/r_ali.png) 0px 0px no-repeat; background-color:#B8860B; text-decoration:none; display:block;}

.izl-rmenu .btn-msn{background:url(<?php echo $skin_path;?>/images/servers/metro_color/r_msn.png) 0px 0px no-repeat; background-color:#FF4500;}
.izl-rmenu .btn-msn:hover{background-color:#A52A2A;}
.izl-rmenu a.btn-msn,.izl-rmenu a.btn-msn:visited{background:url(<?php echo $skin_path;?>/images/servers/metro_color/r_msn.png) 0px 0px no-repeat; background-color:#FF4500; text-decoration:none; display:block;}

.izl-rmenu .btn-wangwang{background:url(<?php echo $skin_path;?>/images/servers/metro_color/r_wangwang.png) 0px 0px no-repeat; background-color:#FFD700;}
.izl-rmenu .btn-wangwang:hover{background-color:#DAA520;}
.izl-rmenu a.btn-wangwang,.izl-rmenu a.btn-wangwang:visited{background:url(<?php echo $skin_path;?>/images/servers/metro_color/r_wangwang.png) 0px 0px no-repeat; background-color:#FFD700; text-decoration:none; display:block;}


.izl-rmenu .btn-skype{background:url(<?php echo $skin_path;?>/images/servers/metro_color/r_skype.png) 0px 0px no-repeat; background-color:#FF69B4;}
.izl-rmenu .btn-skype:hover{background-color:#8B008B;}
.izl-rmenu a.btn-skype,.izl-rmenu a.btn-skype:visited{background:url(<?php echo $skin_path;?>/images/servers/metro_color/r_skype.png) 0px 0px no-repeat; background-color:#FF69B4; text-decoration:none; display:block;}

.izl-rmenu .btn-web{background:url(<?php echo $skin_path;?>/images/servers/metro_color/r_web.png) 0px 0px no-repeat; background-color:#008a46;}
.izl-rmenu .btn-web:hover{background-color:#00663a;}
.izl-rmenu a.btn-web,.izl-rmenu a.btn-web:visited{background:url(<?php echo $skin_path;?>/images/servers/metro_color/r_web.png) 0px 0px no-repeat; background-color:#008a46; text-decoration:none; display:block;}


.izl-rmenu .btn-top{background:url(<?php echo $skin_path;?>/images/servers/metro_color/r_top.png) 0px 0px no-repeat; background-color:#666666; display:none;}
.izl-rmenu .btn-top:hover{background-color:#444;}
</style>

<script language="javascript" type="text/javascript">
$(function(){
var tophtml="<div id=\"izl_rmenu\" class=\"izl-rmenu\"><div class=\"sbtn btn-qq\"><div class=\"qq\"><?php if(config::get('qq1')) { ?><a rel=\"nofollow\" target=\"_blank\" href=\"tencent://Message/?Uin=<?php echo get('qq1');?>&websiteName=<?php echo get('site_url');?>=&Menu=yes\"><?php echo get(qq1name);?></a><?php } ?><?php if(config::get('qq2')) { ?><br /><a rel=\"nofollow\" target=\"_blank\" href=\"tencent://Message/?Uin=<?php echo get('qq2');?>&websiteName=<?php echo get('site_url');?>=&Menu=yes\"><?php echo get(qq2name);?></a><?php } ?><?php if(config::get('qq3')) { ?><br /><a rel=\"nofollow\" target=\"_blank\" href=\"tencent://Message/?Uin=<?php echo get('qq3');?>&websiteName=<?php echo get('site_url');?>=&Menu=yes\"><?php echo get(qq3name);?></a><?php } ?><?php if(config::get('qq4')) { ?><br /><a rel=\"nofollow\" target=\"_blank\" href=\"tencent://Message/?Uin=<?php echo get('qq4');?>&websiteName=<?php echo get('site_url');?>=&Menu=yes\"><?php echo get(qq4name);?></a><?php } ?><?php if(config::get('qq5')) { ?><br /><a rel=\"nofollow\" target=\"_blank\" href=\"tencent://Message/?Uin=<?php echo get('qq5');?>&websiteName=<?php echo get('site_url');?>=&Menu=yes\"><?php echo getg(qq5name);?></a><?php } ?></div></div><?php if(config::get('wangwang')) { ?><a rel=\"nofollow\" href=\"http://amos.im.alisoft.com/msg.aw?v=2&uid=<?php echo config::get('wangwang');?>&site=cntaobao&s=1&charset=utf-8\" target=\"_blank\" class=\"sbtn btn-wangwang\"></a><?php } ?><?php if(config::get('ali')) { ?><a rel=\"nofollow\" target=\"_blank\" href=\"http://web.im.alisoft.com/msg.aw?v=2&uid=<?php echo config::get('ali');?>&site=cnalichn&s=10\" class=\"sbtn btn-ali\"></a><?php } ?><?php if(config::get('skype')) { ?><a rel=\"nofollow\" target=\"_blank\" href=\"skype:<?php echo config::get('skype');?>?call\" target=\"_blank\" class=\"sbtn btn-skype\"></a><?php } ?><?php if(config::get('msn')) { ?><a rel=\"nofollow\" target=\"_blank\" href=\"msnim:add?contact=<?php echo config::get('msn');?>\" class=\"sbtn btn-msn\"></a><?php } ?><div class=\"sbtn btn-wx\"><img class=\"pic\" src=\"<?php echo get('weixin_pic');?>\" onclick=\"window.location.href=\'http:\'\"/></div><?php if((config::get(webserver)=='open')) { ?><a rel=\"nofollow\" target=\"_blank\" href=\"<?php echo $base_url;?>/celive/\" class=\"sbtn btn-web\"></a><?php } ?><div class=\"sbtn btn-phone\"><div class=\"phone\"><?php echo get('tel');?></div></div><div class=\"sbtn btn-top\"></div></div>";
$("#top").html(tophtml);
$("#izl_rmenu").each(function(){
$(this).find(".btn-qq").mouseenter(function(){
$(this).find(".qq").fadeIn("fast");
});
$(this).find(".btn-qq").mouseleave(function(){
$(this).find(".qq").fadeOut("fast");
});
$(this).find(".btn-wx").mouseenter(function(){
$(this).find(".pic").fadeIn("fast");
});
$(this).find(".btn-wx").mouseleave(function(){
$(this).find(".pic").fadeOut("fast");
});
$(this).find(".btn-phone").mouseenter(function(){
$(this).find(".phone").fadeIn("fast");
});
$(this).find(".btn-phone").mouseleave(function(){
$(this).find(".phone").fadeOut("fast");
});
$(this).find(".btn-top").click(function(){
$("html, body").animate({
"scroll-top":0
},"fast");
});
});
var lastRmenuStatus=false;
$(window).scroll(function(){//bug
var _top=$(window).scrollTop();
if(_top>200){
$("#izl_rmenu").data("expanded",true);
}else{
$("#izl_rmenu").data("expanded",false);
}
if($("#izl_rmenu").data("expanded")!=lastRmenuStatus){
lastRmenuStatus=$("#izl_rmenu").data("expanded");
if(lastRmenuStatus){
$("#izl_rmenu .btn-top").slideDown();
}else{
$("#izl_rmenu .btn-top").slideUp();
}
}
});
});
</script>
<div id="top"></div>