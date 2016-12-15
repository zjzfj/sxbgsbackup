<?php defined('ROOT') or exit('Can\'t Access !'); ?>
<?php echo template('header.html'); ?>
<!-- 面包屑导航开始 -->
<?php echo template('position.html'); ?>
<!-- 面包屑导航结束 -->


<!-- 中部开始 -->
<div class="container">
<div class="table-responsive">
<table class="table table-striped">
<thead>
<tr>
<th class="text-center"><?php echo lang('no.');?></td> 
<th><?php echo lang('recruitmentpost');?></td> 
<th class="text-center"><?php echo lang('recruitingdepartment');?></td> 
<th class="text-center"><?php echo lang('releasetime');?></td> 
<th class="text-center"><?php echo lang('intro');?></td> 
</tr>
</thead>
<tbody>
<?php foreach($archives as $i => $arc) { ?>
<tr>
<th class="text-center" scope="row"><?php echo $i+1;?></th> 
<td><a title="<?php echo $arc['stitle'];?>" target="_blank" href="<?php echo $arc['url'];?>"><?php echo $arc['title'];?></a></td> 
<td class="text-center"><?php echo $arc['my_zhaopinbumen'];?></td> 
<td class="text-center"><?php echo $arc['adddate'];?></span></td> 
<td class="text-center"><a title="<?php echo $arc['stitle'];?>" target="_blank" href="<?php echo $arc['url'];?>" class="table_more"><?php echo lang(details);?></a></td> 
</tr>
<?php } ?>
</tbody>
</table>
</div>
<!-- 列表分页开始 -->
<?php if(isset($pages)) { ?>
<div class="blank30"></div>
<?php echo category_pagination($catid);?>
<div class="blank30"></div>
<?php } ?>
<!-- 列表分页结束 -->
</div><!-- /container -->


<div class="blank30"></div>


<!-- 页底推荐图文产品开始 -->
<?php echo templatetag::tag('内容页底图文产品三条');?>
<!-- 页底推荐图文产品结束 -->


<?php echo template('footer.html'); ?>