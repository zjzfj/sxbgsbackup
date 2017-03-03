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

<div class="right-pic1">
<ul>
<?php foreach($archives as $i => $archive) { ?>
<li<?php if($i%3==0) { ?> style="margin-left:0;clear:left;"<?php } ?>>
<a class="img-auto" title="<?php echo $archive['stitle'];?>" target="_blank" href="<?php echo $archive['url'];?>" ><img src="<?php echo $archive['thumb'];?>" onerror='this.src="<?php echo config::get('onerror_pic');?>"' alt="<?php echo $archive['stitle'];?>" /></a>
<h5><a title="<?php echo $archive['stitle'];?>" target="_blank" href="<?php echo $archive['url'];?>" >【<?php echo $archive['title'];?>】</a></h5>
<p><?php echo cut(strip_tags($archive['introduce']),90);?></p>
<a class="more" target="_blank" href="<?php echo $archive['url'];?>" ><?php echo lang(more);?></a>
</li>
<?php } ?>
<div class="clear"></div>
</ul>
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