<?php defined('ROOT') or exit('Can\'t Access !'); ?>
<?php echo template('header_i.html'); ?>


<div class="i-bg">
<div class="i-box box">
<div class="section1">
<div class="section1-1">
<div class="title10">
<?php echo templatetag::tag('首页第一行左侧栏目');?>
</div>
<?php echo templatetag::tag('首页第一行左侧栏目图片说明');?>
</div>
<div class="section1-2">
<div class="title10">
<?php echo templatetag::tag('首页第一行中间栏目');?>
</div>
<?php echo templatetag::tag('首页第一行中间栏目图文头条');?>
<ul>
<?php echo templatetag::tag('首页第一行中间栏目列表7条');?>
</ul>
</div>
<div class="section1-3">	
<div class="title10">
<?php echo templatetag::tag('首页第一行右侧栏目');?>
</div>
<div class="section1-3-1">
<?php echo templatetag::tag('首页第一行右侧栏目图文3条');?>
</div>
<div class="section1-3-2">
<a href="http://wpa.qq.com/msgrd?v=3&uin=<?php echo get(qq1);?>&site=qq&menu=yes" target="_blank"><img src="<?php echo $skin_path;?>/images/base/ico1.gif" width="106" height="100" alt="" /></a>
<a href="http://wpa.qq.com/msgrd?v=3&uin=<?php echo get(qq2);?>&site=qq&menu=yes" target="_blank"><img src="<?php echo $skin_path;?>/images/base/ico2.gif" width="106" height="100" alt="" /></a>
<a href="<?php echo url('guestbook');?>" target="_blank"><img src="<?php echo $skin_path;?>/images/base/ico3.gif" width="106" height="100" alt="" /></a>
</div>
</div>
</div><!-- /section1 -->

<script type="text/javascript">
function nTabs(thisObj,Num){
if(thisObj.className == "active")return;
var tabObj = thisObj.parentNode.id;
var tabList = document.getElementById(tabObj).getElementsByTagName("li");
for(i=0; i <tabList.length; i++)
{
  if (i == Num)
  {
   thisObj.className = "active"; 
      document.getElementById(tabObj+"_Content"+i).style.display = "block";
  }else{
   tabList[i].className = "normal"; 
   document.getElementById(tabObj+"_Content"+i).style.display = "none";
  }
} 
}
</script>


<div class="section2">
<?php echo templatetag::tag('首页第二行栏目图片切换');?>
</div><!-- /section2 -->
<div class="section3">
<div class="section3-1">
<div class="title10">
<?php echo templatetag::tag('首页第三行左侧栏目');?>
</div>
<div class="section3-1-1">
<div class="section3-list" style="border:none;">
<?php echo templatetag::tag('首页第三行左侧栏目子栏目一');?>
</div>
<div class="section3-list">
<?php echo templatetag::tag('首页第三行左侧栏目子栏目二');?>
</div> 
<div class="section3-list">
<?php echo templatetag::tag('首页第三行左侧栏目子栏目三');?>
</div>
<div class="section3-list">
<?php echo templatetag::tag('首页第三行左侧栏目子栏目四');?>
</div> 
<div class="section3-list">
<?php echo templatetag::tag('首页第三行左侧栏目子栏目五');?>
</div>  		
<div class="clear"></div>
</div>
<div class="section3-1-1">
<div class="section3-list" style="border:none;">
<?php echo templatetag::tag('首页第三行左侧栏目子栏目六');?>
</div> 	
<div class="section3-list">
<?php echo templatetag::tag('首页第三行左侧栏目子栏目七');?>
</div> 		
<div class="clear"></div>
</div>
</div>
<div class="section3-2">
<div class="title10">
<?php echo templatetag::tag('首页第三行右侧栏目');?>
</div>
<div class="section3-2-1">
<?php echo templatetag::tag('首页第三行右侧栏目图片');?>
</div>
<div class="section3-2-2">
<ul>
<?php echo templatetag::tag('首页第三行右侧栏目图片6条');?>
</ul>
</div>
</div>
</div><!-- /section3 -->
<div class="section4">
<div class="section4-1">
<?php echo templatetag::tag('首页第四行栏目图片');?>
</div>
<div class="section4-2">
<div class="title10">
<?php echo templatetag::tag('首页第四行中间栏目');?>
</div>
<?php echo templatetag::tag('首页第四行中间栏目图文头条');?>
<ul>
<?php echo templatetag::tag('首页第四行中间栏目列表7条');?>
</ul>
</div>
<div class="section4-3">
<div class="title10">
<?php echo templatetag::tag('首页第四行右侧栏目一');?>
</div>
<ul>
<?php echo templatetag::tag('首页第四行右侧栏目一列表5条');?>
</ul>
<div class="title10">
<?php echo templatetag::tag('首页第四行右侧栏目二');?>
</div>
<ul>
<?php echo templatetag::tag('首页第四行右侧栏目二列表5条');?>
</ul>
</div>
<div class="clear"></div>
</div>
</div><!-- /i-box -->
</div><!-- /i-bg -->


<?php echo template('footer.html'); ?>