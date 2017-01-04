<?php defined('ROOT') or exit('Can\'t Access !'); ?>
<?php echo template('header.html'); ?>


<script src="<?php echo $skin_path;?>/js/c_tool.js" type="text/javascript" ></script><!--用于打印和文字放大-->
<link type="text/css" href="<?php echo $skin_path;?>/js/orders/jquery-ui-1.7.3.custom.css" rel="stylesheet" />	
<script type="text/javascript" src="<?php echo $skin_path;?>/js/orders/jquery-ui-1.7.3.custom.min.js"></script>

<script type="text/javascript">
$(function() {
$('#dialog').dialog(
{
autoOpen: false,
width   : 300,
buttons : {
"继续购物"    : function() {
$(this).dialog("close");
}, 
"去购物车结算": function() 
{
window.location.href= "<?php echo url('archive/orders',true);?>";
$(this).dialog("close");
}
}
});
$('#dialog_link').click(function(){
$.get("<?php echo url('archive/doorders/aid/'.$archive['aid'],true);?>", null,function(data){
if(data == 'limit'){
$("#dialog").html("<p>购物车最多能存12件商品</p>");
}
$('#dialog').dialog('open');
return false;
});
});
});
</script>
<div style="display:none;" id="dialog" title="<?php echo lang(prompted);?>"><p><?php echo lang(add_to_cart);?></p></div>




<div class="box2">
<div class="box2-left">
<?php echo template('left.html'); ?>
</div>
<div class="box2-right">
<div class="title20">
<h5><?php echo $category[$catid]['catname'];?></h5><span><?php echo $category[$catid]['htmldir'];?></span>
<?php echo template('position.html'); ?>
</div>




<div class="product_info">
<div>
<table>

<?php if($archive['attr2']) { ?>
<tr>
    <th><?php echo lang(price);?>：</th>
    <td><strong><?php echo $archive['attr2'];?></strong><?php echo lang(unit);?></td>
  </tr>
<?php } ?>
<?php if($archive['oldprice']) { ?>
<tr>
    <th><?php echo lang(list_price);?>：</th>
    <td><strong><span style="text-decoration:line-through;"><?php echo $archive['oldprice'];?></span><?php echo lang(unit);?> </td>
  </tr>
<tr>
    <th><?php echo lang(discount);?>：</th>
    <td><strong><?php echo jsPrice($archive['aid']);?></strong><?php echo lang(unit);?></td>
  </tr>
<?php } ?>
  
</table>
</div>
<div>
<table>
<?php if(config::get('isecoding')=='1') { ?>
<tr>
    <th><?php echo lang(ecoding);?>：</th>
    <td><?php if($archive['ecoding']) { ?><?php echo $archive['ecoding'];?><?php } else { ?><?php echo lang(not);?><?php } ?></td>
  </tr>
<?php } ?>
<tr>
    <th><?php echo lang(view);?>：</th>
    <td><?php echo view_js($archive['aid']);?></td>
  </tr>
  <tr>
    <th><?php echo lang(adddate);?>：</th>
    <td><?php echo $archive['adddate'];?></td>
  </tr>
  <tr>
    <th><?php echo lang(strgrades);?>：</th>
    <td><?php echo $archive['strgrade'];?></td>
  </tr>
  
</table>
</div>
<?php if($archive['attr2']) { ?>
<p class="blank30"></p>
<a target="_blank" href="<?php echo url('archive/orders/aid/'.$archive['aid'],true);?>" class="goshop"><?php echo lang(buy);?></a>
<a id="dialog_link" title="<?php echo lang(makeorders);?>" href="#"><?php echo lang(makeorders);?></a>
<p class="blank30"></p>
<?php } ?>
</div>




<div class="product_img">
<!-- 大图 -->
<div  class="bd">
<?php if($archive['pics']) { ?>
<?php foreach($archive['pics'] as $pic) { ?><div class="showDiv"><center><a href="<?php echo $pic['url'];?>" rel="example_group"><img src="<?php echo $pic['url'];?>" alt="<?php echo $pic['alt'];?>" onerror='this.src="<?php echo config::get('onerror_pic');?>"' /></a></center></div><?php } ?>

</div>
<div class="blank10"></div>
    <!-- 小图 -->
    <div class="hd">
        <ul>
<?php foreach($archive['pics'] as $pic) { ?>
           <li><a href="javascript:;"><img src="<?php echo $pic['url'];?>" alt="<?php echo $pic['alt'];?>" onerror='this.src="<?php echo config::get('onerror_pic');?>"'   /></a></li>
<?php } ?>
        </ul>
    </div>
<?php } ?>
</div>
<script type="text/javascript">
jQuery(".product_img").slide({ effect:"fold", autoPlay:true, delayTime:300, startFun:function(i){
}
});
</script>
    




<div class="blank30"></div>
<div class="blank30"></div>


<div class="t_1">
<div>
<h3><?php echo lang(pintro);?></h3>
<p>introduction</p>
</div>
</div>

<!-- t_1 -->



<div class=" wow fadeIn" data-wow-delay="0.6s">
<div class="content">
<p class="t_tools">
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



<div class="blank30"></div>


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


<div class="blank30"></div>
<!-- 评论框开始 -->
<?php echo template('comment/comment.html'); ?>
<!-- 评论框结束 -->


<div class="clear"></div>

</div>
<div class="clear"></div>
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