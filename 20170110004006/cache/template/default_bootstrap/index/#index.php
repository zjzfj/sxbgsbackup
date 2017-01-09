<?php defined('ROOT') or exit('Can\'t Access !'); ?>
<?php echo template('header.html'); ?>

<?php echo template('system/slide.html'); ?>




<div class="index-1">
<div class="container">
<?php echo templatetag::tag('首页第一行栏目名称');?>
<ul class="wow bounceInUp" data-wow-delay="0.5s">
<?php echo templatetag::tag('首页第一行栏目图片说明一');?>
<?php echo templatetag::tag('首页第一行栏目图片说明二');?>
<?php echo templatetag::tag('首页第一行栏目图片说明三');?>
<?php echo templatetag::tag('首页第一行栏目图片说明四');?>
</ul>
</div>		
</div>




 <div class="index-2 container">

 <?php echo templatetag::tag('首页第二行栏目名称');?>

<?php echo templatetag::tag('首页第二行推荐图片三张');?>

</div>

<div class="index-3">
<div class=" container">

<?php echo templatetag::tag('首页第三行栏目');?>

</div>
</div>




<?php echo templatetag::tag('首页第四行栏目名称');?>




<div id="owl-demo" class="owl-carousel wow bounceInDown" data-wow-delay="0.5s">
<?php echo templatetag::tag('首页第四行滚动图片');?>
</div>
<script src="<?php echo $skin_path;?>/js/owl.carousel.min.js"></script> 
<script>
    $(document).ready(function() {
      $("#owl-demo").owlCarousel({
        items : 3,
        lazyLoad : true,
        navigation : true
      });

    });
</script> 
<div class="blank60"></div>






<div class="clearfix"></div>
<?php foreach(special::listdata(1) as $special) { ?>
<a href="<?php echo $special['url'];?>" title="<?php echo $special['title'];?>"><img src="<?php echo $special['banner'];?>" alt="<?php echo $special['title'];?>" class="img-responsive" class="wow bounceIn" data-wow-delay="0.5s" /></a>
<?php } ?>
<div class="clearfix"></div>



<div class="index-6">

<?php echo templatetag::tag('首页第六行栏目名称');?>
<div class="container">
<ul class="wow bounceIn" data-wow-delay="0.5s">
<?php echo templatetag::tag('首页第六行图片12张');?>
</ul>

</div>
</div>



<?php echo template('footer.html'); ?>