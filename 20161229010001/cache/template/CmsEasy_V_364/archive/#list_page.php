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
<div class="box2-content">


<div id="content_text">
<?php echo $category[$catid]['categorycontent'];?>
</div>
<!-- 分享开始 -->
<?php if(get('share')=='1') { ?>
<div class="blank30"></div>
<?php echo template('system/share.html'); ?>
<?php } ?>
<!-- 分享结束 -->




</div>
</div>
<div class="clear"></div>
</div>




<!-- 限定图片宽度 -->
<?php echo template('width_max.html'); ?>
<!-- 限定图片宽度 -->
<?php echo template('footer.html'); ?>