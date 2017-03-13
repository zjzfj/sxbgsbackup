<?php defined('ROOT') or exit('Can\'t Access !'); ?>
<?php echo template('header.html'); ?>


<!-- 页面标题开始 -->
<div class="t_1">
<div>
<h3><?php echo $tag;?></h3>
<p>Tag</p>
</div>
</div>


<!-- 页面标题结束 -->
<div class="blank30"></div>
<!-- 中部开始 -->
<div class="w_set">


<ul class="list_page_1">


<?php foreach($archives as $i => $archive) { ?>
<li>
<div class="list_page_date">
<h1><?php echo sdate($item['adddate'],'d');?></h1>
<p><?php echo sdate($item['adddate'],'Y-m');?></p>
</div>
<div class="li_text">
<p><a title="<?php echo $archive['stitle'];?>" href="<?php echo $archive['url'];?>" target="_blank" class="list_page_t"><?php echo $archive['title'];?></a></p>
<p><?php echo cut(strip_tags($archive['introduce']),60);?>… <a href="<?php echo $archive['url'];?>" target="_blank">[<?php echo lang(more);?>]</a></p>
<div class="clear"></div>
</div>
<div class="clear"></div>
</li>
<?php } ?>
</ul>
<!-- 内容列表结束 -->

<div class="blank30"></div>

<!-- 列表分页开始 -->
<?php if(isset($pages)) { ?><div class="blank30"></div>
<?php echo tag::pagination($tag);?>
<div class="blank30"></div><?php } ?>
<!-- 列表分页结束 -->

</div>

</div>

<div class="blank30"></div>
<!-- 页底推荐图文产品开始 -->
<?php echo templatetag::tag('内容页底图文产品三条');?>
<!-- 页底推荐图文产品结束 -->





<?php echo template('footer.html'); ?>