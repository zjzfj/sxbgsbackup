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


<div class="title21"><?php echo $archive['title'];?></div>
<div class="title22"><?php echo lang(author);?>：<a><?php echo $archive['author'];?></a>&nbsp;&nbsp; <?php echo lang(adddate);?>：<?php echo $archive['adddate'];?>&nbsp;&nbsp; <?php echo lang(view);?>：<?php echo view_js($archive['aid']);?><?php if($archive['attr3']) { ?>&nbsp;&nbsp; <?php echo lang(source);?>：<?php echo $archive['attr3'];?><?php } ?></div>
<div id="content_text">
<?php echo $archive['content'];?>
</div>


<div class="blank30"></div>


<?php if($archive['attr2']) { ?>
<!-- 价格 -->
<div class="blank10"></div>
<?php echo lang(productprice);?>： <?php echo $archive['attr2'];?>
<?php } ?>

<?php if($archive['tag']) { ?>
<!-- tag -->
<div class="blank10"></div>
<?php echo lang(tag);?>： <?php echo $archive['tag'];?>
<?php } ?>

<?php if($archive['special']) { ?>
<!-- 专题 -->
<div class="blank10"></div>
<?php echo lang(special);?>： <?php echo $archive['special'];?>
<?php } ?>


<?php if($archive['type']) { ?>
<!-- 分类 -->
<div class="blank10"></div>
<?php echo lang(type);?>： <?php echo $archive['type'];?>
<?php } ?>


<?php if($archive['area']) { ?>
<!-- 地区 -->
<div class="blank10"></div>
<?php echo lang(area);?>： <?php echo $archive['area'];?>
<?php } ?>

<div class="blank30"></div>
<?php if($pages>1) { ?>
<!-- 内页分页 -->
<div class="blank10"></div>
<div class="pages">
<?php echo archive_pagination($archive);?>
</div>
<div class="blank30"></div>
<?php } ?>


<!--自动调用自定义字段-->


<div class="blank20"></div>


<?php if(archive_attachment($archive['aid'],'id')) { ?>
<!-- 附件 -->
<p>
<?php echo lang(attachment);?>：<?php echo attachment_js($archive['aid']);?>
</p>
<?php } ?>
<div class="blank30"></div>
</div>

<?php if(hasflash()) { ?>
<div style="color:red;font-size:16px;"><?php echo showflash(); ?></div><?php } ?>

<!-- 投票 -->
<?php echo vote_js($archive['aid']);?>


<div class="w_set">

<!-- 自定义表单开始 -->
<?php if($archive['showform']) { ?>
<?php echo template('myform/nrform.html'); ?>
<?php } ?>
<!-- 自定义表单结束 -->



<div class="blank60"></div>



<!-- 上下页开始 -->
<div id="page">
<?php if($archive['p']['aid']) { ?>
<strong><?php echo lang(archivep);?></strong><a href="<?php echo $archive['p']['url'];?>"><?php echo $archive['p']['title'];?></a>
<?php } else { ?>
<strong><?php echo lang(archivep);?></strong><?php echo lang(nopage);?>	
<?php } ?>
<div class="blank10"></div>
<?php if($archive['n']['aid']) { ?>
 <strong><?php echo lang(archiven);?></strong><a href="<?php echo $archive['n']['url'];?>"><?php echo $archive['n']['title'];?></a>
<?php } else { ?>
<strong><?php echo lang(archiven);?></strong><?php echo lang(nopage);?>	
<?php } ?>
</div>
<!-- 上下页结束 -->
</div>



<!-- 相关文章开始 -->
<?php if(is_array($likenews)) { ?>
<div class="blank60"></div>
<!-- 页面标题开始 -->
<div class="c_h1">
<div>
<h1><?php echo $archive['tag'];?></h1>
<p class="t_tools1"><?php echo lang(relatedcontent);?></p>
</div>
</div>

<div class="w_set">
<ul class="list_page_1">
<!-- 内容列表开始 -->
<?php if(is_array($likenews) && !empty($likenews))
foreach($likenews as $item) { ?>
<li>
<div class="list_page_date">
<h1><?php echo sdate($item['adddate'],'d');?></h1>
<p><?php echo sdate($item['adddate'],'Y-m');?></p>
</div>
<div class="li_text_w">
<p><a title="<?php echo $archive['stitle'];?>" href="<?php echo archive::url($item);?>" target="_blank" class="list_page_t"><?php echo cut($item['title'],20);?></a></p>
<p><?php echo cut(strip_tags($archive['introduce']),140);?>… <a href="<?php echo archive::url($item);?>" target="_blank">[<?php echo lang(more);?>]</a></p>
<div class="clear"></div>
</div>
<div class="clear"></div>
</li>
<?php } ?>
<!-- 内容列表结束 -->
</ul>
<?php } ?>
<!-- 相关文章结束 -->
<div class="blank30"></div>
<!-- 评论框开始 -->
<?php echo template('comment/comment.html'); ?>
<!-- 评论框结束 -->
<div class="clear"></div>




</div>
<div class="clear"></div>
</div>





<?php echo template('footer.html'); ?>