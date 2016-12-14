<?php defined('ROOT') or exit('Can\'t Access !'); ?>
<?php echo template('header_i.html'); ?>
<div class="blank30"></div>

<?php echo templatetag::tag('首页第一行栏目名称');?>

<div class="container wow fadeInUp " data-wow-delay="0.6s">
<div id="owl-demo" class="owl-carousel">
<?php echo templatetag::tag('首页第一行滚动图片');?>
</div>
</div>
<script src="<?php echo $skin_path;?>/js/owl.carousel.min.js"></script> 
<script>
    $(document).ready(function() {
      $("#owl-demo").owlCarousel({
        items : 4,
        lazyLoad : true,
        navigation : true
      });

    });
</script> 



<div class="blank30"></div>


<div class="bg_1 pa5 mb30 index-2">


<?php echo templatetag::tag('首页第二行栏目名称');?>



<div class="container wow zoomIn " data-wow-delay="0.6s">

<script type="text/javascript">
function tab_m(obj,name)
{
var p = obj.parentNode.getElementsByTagName("li");
var p1 = document.getElementById(name).getElementsByTagName("div");
for(i=0;i<p1.length;i++)
{
if(obj==p[i])
{
p[i].className = "s";
p1[i].className = "dis";
}
else
{
p[i].className = "#";
p1[i].className = "undis";
}
}
}
</script>


<?php echo templatetag::tag('首页第二行栏目图文翻页3条');?>

<div class="clear"></div>

<div class="row list_1">
<?php echo templatetag::tag('首页第二行内容八条列表');?>
</div>




<div class="blank30"></div>
</div>
<!-- w_set -->
</div>
</div>







<?php echo templatetag::tag('首页第三行栏目名称');?>





<div class="container pa20">

<div class="i_about wow fadeIn" data-wow-delay="0.6s">

<?php echo templatetag::tag('首页第三行栏目图片说明');?>

<div class="i_about_text_pic">
<div class="row">
<section class="wow fadeInLeft" data-wow-delay="1.0s">
<?php echo templatetag::tag('首页第三行子栏目图片说明一');?>
</section>
<section class="wow bounceIn" data-wow-delay="1.6s">
<?php echo templatetag::tag('首页第三行子栏目图片说明二');?>
</section>
<section class="wow fadeInRight" data-wow-delay="1.0s">
<?php echo templatetag::tag('首页第三行子栏目图片说明三');?>
</section>
</div>
</div>
</div>

</div>





<?php echo templatetag::tag('首页第四行栏目名称');?>
<div class="blank30"></div>
<div class="container index4" style="z-index:7; position:relative; ">
<div class="col-md-4 col-sm-6 wow fadeInLeft" data-wow-delay="0.6s">
<dl class="ico_tel">
<dt><?php echo lang(tel);?></dt>
<dd><?php echo get(tel);?></dd>
</dl>
<dl class="ico_qq">
<dt><?php echo lang(leftservers);?></dt>
<dd>
<?php if(config::get('qq1')) { ?><a rel="nofollow" href="http://wpa.qq.com/msgrd?v=3&uin=<?php echo get(qq1);?>&site=qq&menu=yes" target="_blank"><?php echo get(qq1name);?></a><?php } ?>
<?php if(config::get('qq2')) { ?><a rel="nofollow" href="http://wpa.qq.com/msgrd?v=3&uin=<?php echo get(qq2);?>&site=qq&menu=yes" target="_blank"><?php echo get(qq2name);?></a><?php } ?>
<?php if(config::get('qq3')) { ?><a rel="nofollow" href="http://wpa.qq.com/msgrd?v=3&uin=<?php echo get(qq3);?>&site=qq&menu=yes" target="_blank"><?php echo get(qq3name);?></a><?php } ?>
<?php if(config::get('qq4')) { ?><a rel="nofollow" href="http://wpa.qq.com/msgrd?v=3&uin=<?php echo get(qq4);?>&site=qq&menu=yes" target="_blank"><?php echo get(qq4name);?></a><?php } ?>
<?php if(config::get('qq5')) { ?><a rel="nofollow" href="http://wpa.qq.com/msgrd?v=3&uin=<?php echo get(qq5);?>&site=qq&menu=yes" target="_blank"><?php echo get(qq5name);?></a><?php } ?>
<div class="clear"></div>
</dd>
</dl>
<dl class="ico_add">
<div class="blank20"></div>
<dt><?php echo lang(address);?></dt>
<dd>
<?php echo get(address);?>
</dd>
</dl>
<dl class="ico_weixin">
<dt><?php echo lang(attention);?><?php echo lang(official);?><?php echo lang(wechat);?></dt>
<dd>
<br>
<br>
<img src="<?php echo get(weixin_pic);?>" width="170" onerror='this.src="<?php echo config::get('onerror_pic');?>"' />
</dd>
</dl>
</div>
<div class="col-md-4 col-sm-6 wow fadeInUp">
<h3 class="t_3"><?php echo templatetag::tag('首页第四行栏目中间名称');?></h3>
<ul class="list_2">
<?php echo templatetag::tag('首页第四行中间内容七条列表');?>
</ul>
<div class="blank30"></div>
<div class="vote">
<?php echo ballot(1);?>
</div>
</div>
<div class="clearfix visible-xs-block"></div>
<div class="col-md-4 wow fadeInRight" data-wow-delay="0.6s">
<h3 class="t_3"><a rel="nofollow" title="<?php echo lang(feedback);?>" href="<?php echo url('guestbook');?>" target="_blank"><?php echo lang(foot_guestbook_hello);?></a></h3>
<div class="blank10"></div>
<?php echo callGuestbook();?>
</div>
</div>








<div class="title wow bounceIn">
<div class="container">
<h3><?php echo lang(links);?></h3>
<p>links</p>
</div>
</div>





<dl class="container wow fadeInUp">
<dd class="f_link">
<?php foreach(friendlink('image',0,24) as $flink) { ?>
<a href="<?php echo $flink['url'];?>" title="<?php echo $flink['name'];?>"><img src="<?php echo $flink['logo'];?>"  width="88" height="31" /></a>
<?php } ?>
</dd>
<dd class="f_link">
<?php foreach(friendlink('text',0,24) as $flink) { ?>
<a href="<?php echo $flink['url'];?>" target="_blank"><?php echo $flink['name'];?></a>
<?php } ?>
</dd>
</dl>



<div class="blank30"></div>


<?php echo template('footer_i.html'); ?>