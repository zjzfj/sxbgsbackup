<?php defined('ROOT') or exit('Can\'t Access !'); ?>




<div class="blank20"></div>
<div class="blank20"></div>


<div class="foot-menu">
<div class="box">
<!--
<span><?php echo lang(quanguomianfeizixunrexian);?> : <?php echo get(tel);?></span>
-->
<span>客堂电话 : <?php echo get(tel);?></span>
<a class="<?php if($topid==0) { ?> on<?php } ?>" href="<?php echo $base_url;?>/"><?php echo lang(homepage);?></a>
<?php foreach(categories_nav() as $t) { ?>
<a class="<?php if(isset($topid) && $topid==$t['catid']) { ?> on<?php } ?>" href="<?php echo $t['url'];?>" target="<?php if(config::get('nav_blank')==1) { ?> _blank<?php } ?>"><?php echo $t['catname'];?></a>
<?php } ?>
</div>
</div>

<div class="foot">
<div class="box">
<div class="foot-1">
<div class="foot-logo">
<a title="<?php echo get(sitename);?>" href="<?php echo $base_url;?>/"><img src="<?php echo get('site_logo');?>" alt="<?php echo get(sitename);?>" width="<?php echo get(logo_width);?>" /></a>
</div>
<!--	
<div class="foot-logo-bg">
<img src="<?php echo $skin_path;?>/images/base/logo-bg.png" width="175" height="44" alt="" />
</div>
<div class="foot-tel">
<h3><?php echo lang(ershisixiaoshikefudianhua);?></h3>
<p><?php echo get(tel);?></p>
</div>
-->
</div>
<div class="foot-2">
<div class="foot-weixin">
<img src="<?php echo get(weixin_pic);?>"  />
</div>
<dl>
<dt><?php echo lang(laifangdizhi);?></dt>
<dd><?php echo get(address);?></dd>
</dl>
<dl>
<dt><?php echo lang(wangshangyuyue);?></dt>
<dd><?php echo lang(zixunqq);?> : <?php echo get(qq1);?></dd>
</dl>
<dl>
<dd><?php echo get('sitename');?>  <?php echo get(site_right);?>  <?php echo get('site_icp');?>  Powered by <a href="http://www.cmseasy.cn" title="CmsEasy企业网站系统" target="_blank">CmsEasy</a>
<script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1261190376'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s95.cnzz.com/z_stat.php%3Fid%3D1261190376%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));</script>
</dd>
</dl>
</div>
<div class="foot-3">
</div>
<div class="clear"></div>
</div>
</div>









<!--[if (gte IE 9)|!(IE)]><!-->
<!-- 在线客服 -->
<?php echo template('system/servers.html'); ?>
<![endif]-->
<!-- 短信 -->
<?php echo template('system/sms.html'); ?>

<script type="text/javascript" src="<?php echo $base_url;?>/js/common.js"></script>

<?php if(get('share')=='1') { ?>
<!-- Baidu Button BEGIN -->
<script type="text/javascript" id="bdshare_js" data="type=slide&img=6&pos=right&uid=620555" ></script>
<script type="text/javascript" id="bdshell_js"></script>
<script type="text/javascript">
var bds_config = {"bdTop":150};
document.getElementById("bdshell_js").src = "http://bdimg.share.baidu.com/static/js/shell_v2.js?t=" + new Date().getHours();
</script>
<!-- Baidu Button END -->
<?php } ?>


<?php if(config::get('site_push')=='1') { ?>
<script>
(function(){
    var bp = document.createElement('script');
    bp.src = '//push.zhanzhang.baidu.com/push.js';
    var s = document.getElementsByTagName("script")[0];
    s.parentNode.insertBefore(bp, s);
})();
</script>
<?php } ?>

</body>
</html>
