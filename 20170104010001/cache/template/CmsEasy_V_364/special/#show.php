<?php defined('ROOT') or exit('Can\'t Access !'); ?>
<?php echo template('header.html'); ?>



<div class="box2">
<div class="box2-left">
<?php echo template('left.html'); ?>
</div>
<div class="box2-right">
<div class="title20">
<h5><?php echo $special['title'];?></h5><span>Specia</span>
<?php echo template('position.html'); ?>
</div>
<div class="box2-content">


<div id="content_text">
<!-- 专题图片 -->
<img src="<?php echo $special['banner'];?>" onerror='this.src="<?php echo config::get('onerror_pic');?>"' style="float:left;margin:0px 20px 20px 0px;" />
<!-- 专题介绍 -->
<?php echo $special['description'];?>
</div>
<div class="blank30"></div>
<div class="blank30"></div>

<!-- 内容列表开始 -->
<ul class="list_page_1">
<?php foreach($archives as $i => $sp) { ?>
<li>
<div class="list_page_date">
<h1><?php echo sdate($sp['adddate'],'d');?></h1>
<p><?php echo sdate($sp['adddate'],'Y-m');?></p>
</div>
<div class="li_text">
<p><a title="<?php echo $sp['stitle'];?>" href="<?php echo $sp['url'];?>" target="_blank" class="list_page_t"><?php echo $sp['title'];?></a></p>
<p><?php echo cut(strip_tags($sp['introduce']),60);?>… <a href="<?php echo $sp['url'];?>" target="_blank">[<?php echo lang(more);?>]</a></p>
<div class="clear"></div>
</div>
<div class="clear"></div>
</li>
<?php } ?>
</ul>
<!-- 内容列表结束 -->

<div class="blank30"></div>

<!-- 列表分页开始 -->
<?php if(isset($pages)) { ?>
<div class="blank30"></div>
<?php echo special::pagination($tag);?>
<div class="blank30"></div>
<?php } ?>
<!-- 列表分页结束 -->





</div>
</div>
<div class="clear"></div>
</div>




<!-- 限定图片宽度 -->
<?php echo template('width_max.html'); ?>
<!-- 限定图片宽度 -->
<?php echo template('footer.html'); ?>