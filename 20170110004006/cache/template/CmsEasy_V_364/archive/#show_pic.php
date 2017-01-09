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



<style type="text/css">
.product_img { width:900px;  height:auto; padding-top:50px;}
.product_img .bd{position:relative;width:900px;  height:auto; overflow:hidden; margin-bottom:5px; text-align:center;}
.product_img .showDiv {position:relative;width:900px; }
.product_img .showDiv img {max-width:900px;
 width:expression(document.body.clientWidth>900?"900px":"auto");
 max-height:600px;
height:expression(document.body.clientHeight>600?"600px":"auto");
margin-left:auto; margin-right:auto; clear:both; 
 }
 </style>
<div class="product_img">
<!-- 大图 -->
<div  class="bd">

<?php if($archive['pics']) { ?>
<?php foreach($archive['pics'] as $pic) { ?><div class="showDiv"><a href="<?php echo $pic['url'];?>" rel="example_group"><img src="<?php echo $pic['url'];?>" onerror='this.src="<?php echo config::get('onerror_pic');?>"' /></a></div><?php } ?>
<?php } ?>
</div>
<div class="blank30"></div>
    <!-- 小图 -->
    <div class="hd">
        <ul>
<?php foreach($archive['pics'] as $pic) { ?>
           <li><a href="javascript:;"><img src="<?php echo $pic['url'];?>" onerror='this.src="<?php echo config::get('onerror_pic');?>"'   /></a></li>
<?php } ?>
        </ul>
    </div>

</div>
<script type="text/javascript">
jQuery(".product_img").slide({ effect:"fold", autoPlay:true, delayTime:300, startFun:function(i){
}
});
</script>
    




</div>

<div class="blank30"></div>
<div class="blank30"></div>

<div class="t_1 wow bounceIn">
<div>
<h3><?php echo lang(pintro);?></h3>
<p>introduction</p>
</div>
</div>
<!-- t_1 -->



<div class="w_set">
<div class="content">
<p class="t_tools pc_show">
<a href="javascript:CallPrint('print');">打印本文</a> &nbsp; &nbsp; &nbsp; <a href="javascript:doZoom(14)">小</a>&nbsp; &nbsp;<a href="javascript:doZoom(18)">中</a>&nbsp; &nbsp;<a href="javascript:doZoom(20)">大</a>
</p>
<div class="blank30"></div>
<!-- 内容说明 -->
<?php echo $archive['content'];?>

</div>
<!--/article-->




<div class="blank30"></div>

<!-- 自定义表单开始 -->
<?php if($archive['showform']) { ?>
<?php echo template('myform/nrform.html'); ?>
<div class="blank30"></div>
<?php } ?>
<!-- 自定义表单结束 -->

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
<?php echo $archive['my_fields'];?>
<div class="blank20"></div>


<?php if(archive_attachment($archive['aid'],'id')) { ?>
<!-- 附件 -->
<p>
<?php echo lang(attachment);?>：<?php echo attachment_js($archive['aid']);?>
</p>
<?php } ?>


<!-- 相关文章开始 -->
<?php if(is_array($likenews)) { ?>
<div class="blank30"></div>
<div class="t_1">
<div>
<h3><?php echo $archive['tag'];?><?php echo lang(relatedcontent);?></h3>
<p>relatedcontent</p>
</div>
</div>
<!-- t_1 -->


<ul class="list_page_1">
<!-- 内容列表开始 -->
<?php if(is_array($likenews) && !empty($likenews))
foreach($likenews as $item) { ?>
<li>
<div class="list_page_date">
<h1><?php echo sdate($item['adddate'],'d');?></h1>
<p><?php echo sdate($item['adddate'],'Y-m');?></p>
</div>
<div class="li_text">
<p><a href="<?php echo url('archive/show/id/'.$item['aid']);?>" target="_blank" class="list_page_t"><?php echo cut($item['title'],20);?></a></p>
<p><?php echo cut(strip_tags($item['introduce']),60);?>… <a href="<?php echo url('archive/show/id/'.$item['aid']);?>" target="_blank">[<?php echo lang(more);?>]</a></p>
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

<?php if(hasflash()) { ?>
<div style="color:red;font-size:16px;"><?php echo showflash(); ?></div><?php } ?>

<!-- 投票 -->
<?php echo vote_js($archive['aid']);?>


<script language="JavaScript">
function shutwin(){
window.close();
return;}
</script>



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

</div>
<div class="blank30"></div>
<!-- 评论框开始 -->
<?php echo template('comment/comment.html'); ?>
<!-- 评论框结束 -->


<div class="clear"></div>

</div>
</div>


<script type="text/javascript" src="<?php echo $skin_path;?>/js/fancybox/jquery.mousewheel-3.0.4.pack.js"></script>
<script type="text/javascript" src="<?php echo $skin_path;?>/js/fancybox/jquery.fancybox-1.3.4.pack.js"></script>
<link rel="stylesheet" type="text/css" href="<?php echo $skin_path;?>/js/fancybox/jquery.fancybox-1.3.4.css" media="screen" />
<script type="text/javascript">
$(document).ready(function() {
/*
*   Examples - images
*/

$("a#example1").fancybox();

$("a#example2").fancybox({
'overlayShow'	: false,
'transitionIn'	: 'elastic',
'transitionOut'	: 'elastic'
});

$("a#example3").fancybox({
'transitionIn'	: 'none',
'transitionOut'	: 'none'	
});

$("a#example4").fancybox({
'opacity'		: true,
'overlayShow'	: false,
'transitionIn'	: 'elastic',
'transitionOut'	: 'none'
});

$("a#example5").fancybox();

$("a#example6").fancybox({
'titlePosition'		: 'outside',
'overlayColor'		: '#000',
'overlayOpacity'	: 0.9
});

$("a#example7").fancybox({
'titlePosition'	: 'inside'
});

$("a#example8").fancybox({
'titlePosition'	: 'over'
});

$("a[rel=example_group]").fancybox({
'transitionIn'		: 'none',
'transitionOut'		: 'none',
'titlePosition' 	: 'over',
'titleFormat'		: function(title, currentArray, currentIndex, currentOpts) {
return '<span id="fancybox-title-over">Image ' + (currentIndex + 1) + ' / ' + currentArray.length + (title.length ? ' &nbsp; ' + title : '') + '</span>';
}
});

/*
*   Examples - various
*/

$("#various1").fancybox({
'titlePosition'		: 'inside',
'transitionIn'		: 'none',
'transitionOut'		: 'none'
});

$("#various2").fancybox();

$("#various3").fancybox({
'width'				: '75%',
'height'			: '75%',
'autoScale'			: false,
'transitionIn'		: 'none',
'transitionOut'		: 'none',
'type'				: 'iframe'
});

$("#various4").fancybox({
'padding'			: 0,
'autoScale'			: false,
'transitionIn'		: 'none',
'transitionOut'		: 'none'
});
});
</script>



</div>
</div>
<div class="clear"></div>
</div>




<?php echo template('footer.html'); ?>