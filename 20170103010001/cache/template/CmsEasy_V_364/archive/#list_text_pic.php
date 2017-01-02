<?php defined('ROOT') or exit('Can\'t Access !'); ?>
<?php echo template('header.html'); ?>



<div class="box2">
<div class="box2-left">
<?php echo template('left.html'); ?>
</div>
<div class="box2-right">
<div class="title20">
<h5><?php echo $category[$catid]['catname'];?></h5><span><?php echo $category[$catid]['htmldir'];?></span>
<?php echo template('position.html'); ?>
</div>

<div class="right-pic2">
<?php foreach($archives as $i => $archive) { ?>
<div class="right-pic2-1">
<div class="right-pic2-1l">
<a class="img-auto" target="_blank" href="<?php echo $archive['url'];?>"><img alt="<?php echo $archive['stitle'];?>" src="<?php echo $archive['thumb'];?>" onerror='this.src="<?php echo config::get('onerror_pic');?>"' /></a>
<h5><a title="<?php echo $archive['stitle'];?>" href="<?php echo $archive['url'];?>" target="_blank" ><?php echo $archive['title'];?></a></h5>
<p><a href="<?php echo url('guestbook');?>"><?php echo lang(yuyueliuyan);?></a><a title="<?php echo $archive['stitle'];?>" href="<?php echo $archive['url'];?>" target="_blank" ><?php echo lang(more);?></a></p>
</div>
<div class="right-pic2-1r">
<dl>
<dt> <?php echo lang(congyilvli);?></dt>
<dd><?php echo $archive['my_congyijianli'];?></dd>
</dl>
<dl>
<dt><?php echo lang(zhuanjiashanchang);?></dt>
<dd><?php echo $archive['my_zhuanjiasanchang'];?></dd>
</dl>
</div>
<div class="clear"></div>
</div><!-- /right-pic2-1 -->
<?php } ?>
</div>



<!-- 内容列表分页开始 -->
<?php if(isset($pages)) { ?>
<div class="blank30"></div>
<?php echo category_pagination($catid);?>
<?php } ?>
<!-- 内容列表分页结束 -->





</div>
<div class="clear"></div>
</div>




<?php echo template('footer.html'); ?>