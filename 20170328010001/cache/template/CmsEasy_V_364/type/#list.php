<?php defined('ROOT') or exit('Can\'t Access !'); ?>
<?php echo template('header.html'); ?>



<div class="box2">
<div class="box2-left">	
<?php echo template('left.html'); ?>
</div>
<div class="box2-right">
<div class="title20">
<h5><?php echo $type['typename'];?></h5><span>Type</span>
<?php echo template('position.html'); ?>
</div>
<div class="box2-content">



<ul class="list_page_1">
<!-- 内容列表开始 -->
<?php foreach($archives as $i => $archive) { ?>
<li>
<div class="list_page_date">
<h1><?php echo sdate($archive['adddate'],'d');?></h1>
<p><?php echo sdate($archive['adddate'],'Y-m');?></p>
</div>
<div class="li_text">
<p><a title="<?php echo $archive['stitle'];?>" href="<?php echo $archive['url'];?>" target="_blank" class="list_page_t"><?php echo $archive['title'];?></a></p>
<p><?php echo cut(strip_tags($archive['introduce']),60);?>… <a href="<?php echo $archive['url'];?>" target="_blank">[<?php echo lang(more);?>]</a></p>
<div class="clear"></div>
</div>
<div class="clear"></div>
</li>
<?php } ?>
<!-- 内容列表结束 -->
</ul>
<div class="blank30"></div>

<!-- 内容列表分页开始 -->

<?php if(isset($pages)) { ?><div class="blank30"></div>
<?php echo type_pagination($typeid);?>
<div class="blank30"></div><?php } ?>
<!-- 内容列表分页结束 -->



</div>
</div>
<div class="clear"></div>
</div>



<?php echo template('footer.html'); ?>