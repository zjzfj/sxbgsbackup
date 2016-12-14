<?php defined('ROOT') or exit('Can\'t Access !'); ?>
<!-- 页底 -->

<div class="foot wow fadeInUp">
<div class="container">
<div class="row">	 
<div class="col-sm-5">
<dl class="foot_left">
<dd>
<form name='search' action="<?php echo url('archive/search');?>" onsubmit="search_check();" method="post">
<input type="text" name="keyword" value="<?php echo lang(pleaceinputtext);?>" onfocus="if(this.value=='<?php echo lang(pleaceinputtext);?>') {this.value=''}" onblur="if(this.value=='') this.value='<?php echo lang(pleaceinputtext);?>'" class="s_text" />
<input name='submit' type="submit" value="" align="middle" class="s_btn" />
</form>
</dd>
<?php if(config::get('isecoding')=='1') { ?>
<dd class="blank20"></dd>
<dd>
<form name='search' action="<?php echo url('archive/ecodingsearch');?>" onsubmit="search_check();" method="post">
<input type="text" name="keyword" value="<?php echo lang(enter);?><?php echo lang(ecoding);?>" onfocus="if(this.value=='<?php echo lang(enter);?><?php echo lang(ecoding);?>') {this.value=''}" onblur="if(this.value=='') this.value='<?php echo lang(enter);?><?php echo lang(ecoding);?>'" class="s_text" />
<input name='submit' type="submit" value="" align="middle" class="s_btn" />
</form>
</dd>
<?php } ?>

<?php if(config::get('shoppingcart')=='1') { ?>
<dd class="blank20"></dd>
<dd>
<input type="text" id="oid" name="oid" value="<?php echo lang(orderquery);?>" onfocus="if(this.value=='<?php echo lang(orderquery);?>') {this.value=''}" onblur="if(this.value=='') this.value='<?php echo lang(orderquery);?>'" class="s_text" />
<input name='submit' type="submit" value="" onclick="javascript:window.location.href='<?php echo url('archive/orders');?>&oid='+document.getElementById('oid').value;" align="middle" class="s_btn" />
</dd>
<?php } ?>

<dd class="blank20"></dd>
<form name="listform" id="listform"  action="<?php echo url('archive/email');?>" method="post">
<dd>
<input type="text" name="email" id="email" value=" <?php echo lang(mailsubscription);?> "  onfocus="if(this.value==' <?php echo lang(mailsubscription);?> ') {this.value=''}" onblur="checkEmail(this)" class="s_text" /> 
<input type="submit" align="absmiple" name='submit' value=" " class="s_btn" />
</dd>

</form>
</dl>
</div>
<div class="col-sm-2">
<dl class="foot_qr_codes">
<?php if(config::get('qrcodes')=='1') { ?>
<dd><img width="150" src="<?php echo url('tool/qrcode');?>" /></dd>
<dd><?php echo lang(scanning);?><?php echo lang(access);?><?php echo lang(sitewap);?></dd>
<?php } ?>
</dl>
</div>
<div class="col-sm-5">
<dl class="copyrights">
<dd><?php echo get(site_right);?> <a title="<?php echo get('sitename');?>" href="<?php echo $base_url;?>/"><?php echo get('sitename');?></a></dd>
<dd><?php echo getcnzzcount();?>&nbsp;&nbsp;Powered by <a href="http://www.cmseasy.cn" title="CmsEasy企业网站系统" target="_blank">CmsEasy</a></dd>
<dd><a rel="nofollow" href="http://www.miibeian.gov.cn/" rel="nofollow" target="_blank"><?php echo get('site_icp');?></a></dd>
<dd><?php if(config::get('site_login')=='1') { ?><?php echo login_js();?>&nbsp;&nbsp;<?php } ?><?php if(config::get('opguestadd')=='1') { ?><a rel="nofollow" href="<?php echo $base_url;?>/?g=1"><?php echo lang(opguestadd);?></a><?php } ?></dd>
</dl>
</div>
</div>
<div class="row">
<div class="col-md-5">
<?php if(config::get('hotsearch')=='1') { ?><?php echo lang(hotkeys);?>： <?php echo gethotsearch(10);?><?php } ?>
</div>
</div>
</div>
</div>

<!--/footer-->












<!-- search -->
<div class="container-fluid">

<div class="modal fade bs-example-modal-lg-search" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">

      <div class="row">
<form name='search' action="<?php echo url('archive/search');?>" onsubmit="search_check();" method="post">
<div class="col-lg-1"></div>
  <div class="col-lg-10">
        <div class="input-group">
          <input type="text" name="keyword" class="form-control" placeholder="<?php echo lang(pleaceinputtext);?>">
          <span class="input-group-btn">
            <button class="btn btn-default" name='submit' type="submit">Go!</button>
          </span>
        </div>
      </div>
  <div class="col-lg-1"></div>
  </form>

    </div>
  </div>
</div>

</div>
<!-- search end -->









<div class="servers">
<!--[if (gte IE 7)|!(IE)]><!-->
<!-- 在线客服 -->
<?php echo template('system/servers.html'); ?>
<![endif]-->
<!-- 短信 -->
<?php echo template('system/sms.html'); ?>
</div>

<div class="servers-wap">

<?php if(config::get('wap_foot_nav')=='1') { ?>
<?php echo template('system/foot_nav_b.html'); ?>
<?php } elseif (config::get('wap_foot_nav')=='2') { ?>
<?php echo template('system/foot_nav_c.html'); ?>
<?php } else { ?>
<?php echo template('system/foot_nav_a.html'); ?>
<?php } ?> 
</div>


<script type="text/javascript" src="<?php echo $base_url;?>/js/common.js"></script>




<?php if(get('share')=='1') { ?>
<script>window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"2","bdMiniList":false,"bdPic":"","bdStyle":"0","bdSize":"16"},"slide":{"type":"slide","bdImg":"6","bdPos":"right","bdTop":"100"},"image":{"viewList":["qzone","tsina","tqq","renren","weixin"],"viewText":"分享到：","viewSize":"16"},"selectShare":{"bdContainerClass":null,"bdSelectMiniList":["qzone","tsina","tqq","renren","weixin"]}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];</script>
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


<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->

<script src="<?php echo $skin_path;?>/js/bootstrap.min.js"></script>
<!-- Just to make our placeholder images work. Don't actually copy the next line! -->
<script src="<?php echo $skin_path;?>/js/holder.min.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="<?php echo $skin_path;?>/js/ie10-viewport-bug-workaround.js"></script>
<script src="<?php echo $skin_path;?>/js/bootstrap-submenu.js"></script>
<script src="<?php echo $skin_path;?>/js/docs.js"></script>
<script src="<?php echo $skin_path;?>/js/wow.min.js"></script>
<script>
new WOW().init();
</script>
<link href="<?php echo $skin_path;?>/css/wow.css" rel="stylesheet">
</body>
</html>
