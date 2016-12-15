<?php defined('ROOT') or exit('Can\'t Access !'); ?>
<?php echo template('header.html'); ?>
<!-- 面包屑导航开始 -->
<?php echo template('position.html'); ?>
<!-- 面包屑导航结束 -->

<!-- 页面标题开始 -->
<div class="title">
<h3 class="wow bounceInDown" data-wow-delay="0.5s"><a href="<?php echo $cat['url'];?>"><?php echo $category[$catid]['catname'];?><small><?php echo $category[$catid]['subtitle'];?></small></a></h3>
<p class="wow bounceIn" data-wow-delay="0.5s"><?php echo $category[$catid]['description'];?></p>
<span>——</span>
</div>
<!-- 页面标题结束 -->

<!-- 中部开始 -->
<div class="clearfix"></div>
<div class="container-fluid">
<div class="row">
<div id="projectlist" class="masonry"  data-masonryitem=".projectitem">
<div class="wrapper">
<?php foreach($archives as $i => $archive) { ?>
<div class="projectitem col-xs-12 col-sm-6 col-md-3">
<a href="<?php echo $archive['url'];?>" class="img-auto">
<img class="img-responsive" alt="<?php echo $archive['stitle'];?>" src="<?php echo $archive['thumb'];?>" onerror='this.src="<?php echo config::get('onerror_pic');?>"' />
<h4><?php echo $archive['title'];?></h4>
</a>
</div>
<?php } ?>
</div>
</div>
</div>
</div>



<div class="clearfix"></div>

<div class="container">
<!-- 内容列表分页开始 -->
<?php if(isset($pages)) { ?>
<?php echo category_pagination($catid);?>
<?php } ?>
<!-- 内容列表分页结束 -->
</div>

</div><!-- /container-fluid -->
</div>
<!-- 中部结束 -->


<div class="blank60"></div>

<script src="<?php echo $skin_path;?>/js/min/lib.min.js"></script>
<script src="<?php echo $skin_path;?>/js/min/org.js" data-main="baseMain"></script>
<?php echo template('footer.html'); ?>