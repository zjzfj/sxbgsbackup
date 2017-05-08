<?php defined('ROOT') or exit('Can\'t Access !'); ?>

<div class="left1">
<div class="title10">
<?php echo templatetag::tag('内页右侧第一行栏目');?>
</div>
<div class="left1-1">
<?php echo templatetag::tag('内页右侧第一行栏目图文3条');?>
</div>
<div class="left1-2">
<a href="http://wpa.qq.com/msgrd?v=3&uin=<?php echo get(qq1);?>&site=qq&menu=yes" target="_blank"><img src="<?php echo $skin_path;?>/images/base/ico1.gif" width="106" height="100" alt="" /></a>
<a href="http://wpa.qq.com/msgrd?v=3&uin=<?php echo get(qq2);?>&site=qq&menu=yes" target="_blank"><img src="<?php echo $skin_path;?>/images/base/ico2.gif" width="106" height="100" alt="" /></a>
<a href="<?php echo url('guestbook');?>" target="_blank"><img src="<?php echo $skin_path;?>/images/base/ico3.gif" width="106" height="100" alt="" /></a>
</div>
</div><!-- /left1 -->
<div class="left2">
<div class="title10">
<?php echo templatetag::tag('内页右侧第二行栏目');?>
</div>
<?php echo templatetag::tag('内页右侧第二行栏目图文头条');?>
<ul>
<?php echo templatetag::tag('内页右侧第二行栏目列表7条');?>
</ul>
</div><!-- /left2 -->
<div class="left3">
<div class="title10">
<?php echo templatetag::tag('内页右侧第三行栏目');?>
</div>
<div class="left3-1">
<ul>
<?php echo templatetag::tag('内页右侧第三行栏目图片4条');?>
<div class="clear"></div>
</ul>
</div>
</div><!-- /left2 -->
