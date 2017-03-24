<?php defined('ROOT') or exit('Can\'t Access !'); ?>
<?php echo template('header.html'); ?>

<!-- 面包屑导航开始 -->
<?php echo template('position.html'); ?>
<!-- 面包屑导航结束 -->


<!-- 评论框开始 -->
<?php echo template('comment\comment.html'); ?>
<!-- 评论框结束 -->
<div class="clear blank30"></div>
<!-- 评论列表开始 -->
<?php echo comment_js($aid);?>
<!-- 评论列表结束 -->




<div class="clear"></div>
<div class="clear blank30"></div>
<div class="clear blank30"></div>
<div class="clear blank30"></div>
<div class="clear blank30"></div>
</div>



<!-- 页底推荐图文产品开始 -->
<?php echo templatetag::tag('内容页底图文产品三条');?>
<!-- 页底推荐图文产品结束 -->
<div class="clear blank30"></div>
<?php echo template('footer.html'); ?>