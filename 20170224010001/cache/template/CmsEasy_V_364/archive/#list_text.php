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


<div class="right-list">
<?php foreach($archives as $i => $archive) { ?>
<dl>
<dt><a title="<?php echo $archive['stitle'];?>" href="<?php echo $archive['url'];?>" target="_blank" ><?php echo $archive['title'];?></a></dt>
<dd><?php echo cut(strip_tags($archive['introduce']),200);?></dd>
<p><?php echo sdate($archive['adddate'],'Y-m-d');?></p>
</dl>
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
