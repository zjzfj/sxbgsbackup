<?php defined('ROOT') or exit('Can\'t Access !'); ?>
<div class="clearall"></div>
<style type="text/css">
.fullSlide,.fullSlide .bd,.fullSlide .bd li,.fullSlide .bd li a {height:<?php echo get('slide_height');?>px;}
</style>
<div class="fullSlide" style="margin-bottom:10px">
<div class="bd">
<ul>
  <?php if(get('slide_number')=='1') { ?><li _src="url(<?php echo get(slide_pic1);?>)" style="background-position:center top;"><a target="_blank" href="<?php echo get(slide_pic1_url);?>"></a></li>
  <?php } elseif (get('slide_number')=='2') { ?>
   <li _src="url(<?php echo get(slide_pic1);?>)" style="background-position:center top;"><a target="_blank" href="<?php echo get(slide_pic1_url);?>"></a></li>
  <li _src="url(<?php echo get(slide_pic2);?>)" style="background-position:center top;"><a target="_blank" href="<?php echo get(slide_pic2_url);?>"></a></li>
  <?php } elseif (get('slide_number')=='3') { ?>
  <li _src="url(<?php echo get(slide_pic1);?>)" style="background-position:center top;"><a target="_blank" href="<?php echo get(slide_pic1_url);?>"></a></li>
  <li _src="url(<?php echo get(slide_pic2);?>)" style="background-position:center top;"><a target="_blank" href="<?php echo get(slide_pic2_url);?>"></a></li>
  <li _src="url(<?php echo get(slide_pic3);?>)" style="background-position:center top;"><a target="_blank" href="<?php echo get(slide_pic3_url);?>"></a></li>
  <?php } elseif (get('slide_number')=='4') { ?>
  <li _src="url(<?php echo get(slide_pic1);?>)" style="background-position:center top;"><a target="_blank" href="<?php echo get(slide_pic1_url);?>"></a></li>
  <li _src="url(<?php echo get(slide_pic2);?>)" style="background-position:center top;"><a target="_blank" href="<?php echo get(slide_pic2_url);?>"></a></li>
  <li _src="url(<?php echo get(slide_pic3);?>)" style="background-position:center top;"><a target="_blank" href="<?php echo get(slide_pic3_url);?>"></a></li>
  <li _src="url(<?php echo get(slide_pic4);?>)" style="background-position:center top;"><a target="_blank" href="<?php echo get(slide_pic4_url);?>"></a></li>
<?php } else { ?>
<li _src="url(<?php echo get(slide_pic1);?>)" style="background-position:center top;"><a target="_blank" href="<?php echo get(slide_pic1_url);?>"></a></li>
  <li _src="url(<?php echo get(slide_pic2);?>)" style="background-position:center top;"><a target="_blank" href="<?php echo get(slide_pic2_url);?>"></a></li>
  <li _src="url(<?php echo get(slide_pic3);?>)" style="background-position:center top;"><a target="_blank" href="<?php echo get(slide_pic3_url);?>"></a></li>
  <li _src="url(<?php echo get(slide_pic4);?>)" style="background-position:center top;"><a target="_blank" href="<?php echo get(slide_pic4_url);?>"></a></li>
  <li _src="url(<?php echo get(slide_pic5);?>)" style="background-position:center top;"><a target="_blank" href="<?php echo get(slide_pic5_url);?>"></a></li>
  <?php } ?>
</ul>
<span class="prev"></span>
<span class="next"></span>
</div>

<div class="hd"><ul></ul></div>
</div>
<!-- fullSlide -->

<script src="<?php echo $skin_path;?>/js/hdp.js" type="text/javascript" ></script>
