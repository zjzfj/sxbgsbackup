<?php defined('ROOT') or exit('Can\'t Access !'); ?>
<!doctype html>
<html>
<head>
<meta name="Generator" content="CmsEasy 5_6_0_20161107_UTF8" />
<meta name="renderer" content="webkit">
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title><?php echo getTitle($archive,$category,$catid,$type);?> - Powered by CmsEasy</title>
<meta name="keywords" content="<?php echo getKeywords($archive,$category,$catid,$type);?>" />
<meta name="description" content="<?php echo getDescription($archive,$category,$catid,$type);?>" />
<meta name="author" content="CmsEasy Team" />
<link rel="icon" href="<?php echo $base_url;?>/favicon.ico" type="image/x-icon" />
<link rel="shortcut icon" href="<?php echo $base_url;?>/favicon.ico" type="image/x-icon" />
<!--
<meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=no"> 
-->
<!--适应小屏幕-->
<meta content="no" http-equiv="imagetoolbar">
<?php if(get('mobile_open')=='1') { ?><script type="text/javascript">var cmseasy_wap_tpa=1,cmseasy_wap_tpb=1,cmseasy_wap_url='<?php echo $base_url;?>/wap';</script>
<script src="<?php echo $skin_path;?>/js/mobile.js" type="text/javascript"></script><?php } ?>

<script type="text/javascript" src="<?php echo $skin_path;?>/js/jquery-1.8.3.min.js"></script>
<script src="<?php echo $skin_path;?>/js/jquery.SuperSlide.2.1.1.js" type="text/javascript" ></script>

<script type="text/javascript">
window.onerror=function(){return true;};
window.onload=function()
{
for(var ii=0; ii<document.links.length; ii++)
document.links$[ii].onfocus=function(){this.blur()}
}
</script>
<!--浏览器图标-->
<link rel="stylesheet" href="<?php echo $skin_path;?>/css/style-reset.css" type="text/css" />
<link rel="stylesheet" href="<?php echo $skin_path;?>/css/style_pc.css" />
<?php if(get('pc_style_color')=='1') { ?>
<link href="<?php echo $skin_path;?>/css/pc1.css" rel="stylesheet" /> 
<?php } elseif (get('pc_style_color')=='2') { ?>
<link href="<?php echo $skin_path;?>/css/pc2.css" rel="stylesheet" /> 
<?php } elseif (get('pc_style_color')=='3') { ?>
<link href="<?php echo $skin_path;?>/css/pc3.css" rel="stylesheet" /> 
<?php } elseif (get('pc_style_color')=='4') { ?>
<link href="<?php echo $skin_path;?>/css/pc4.css" rel="stylesheet" /> 
<?php } elseif (get('pc_style_color')=='5') { ?>
<link href="<?php echo $skin_path;?>/css/pc5.css" rel="stylesheet" /> 
<?php } elseif (get('pc_style_color')=='6') { ?>
<link href="<?php echo $skin_path;?>/css/pc6.css" rel="stylesheet" /> 
<?php } elseif (get('pc_style_color')=='7') { ?>
<link href="<?php echo $skin_path;?>/css/pc7.css" rel="stylesheet" /> 
<?php } elseif (get('pc_style_color')=='8') { ?>
<link href="<?php echo $skin_path;?>/css/pc8.css" rel="stylesheet" /> 
<?php } elseif (get('pc_style_color')=='9') { ?>
<link href="<?php echo $skin_path;?>/css/pc9.css" rel="stylesheet" /> 
<?php } else { ?>
<?php } ?> 
</head>
<?php if(get('shield_right_key')=='1') { ?>
<body oncontextmenu="return false" onselectstart="return false">
<noscript><iframe src="/*.html>";</iframe></noscript>
<script>
function stop(){
return false;
}
document.oncontextmenu=stop;
</script>
<?php } else { ?>
<body>
<?php } ?>


<!--
<div class="top1">
<div class="box">
<span><?php echo lang(quanguomianfeizixunrexian);?> : <?php echo get(tel);?></span>
<a href="#">新浪微博</a>
<a href="#">腾讯微博</a>
<a href="#">官方微信</a>
</div>
</div>
-->
<div class="top2">
<div class="box">
<div class="top2-1">
<div class="logo-box">
<a title="<?php echo get(sitename);?>" href="<?php echo $base_url;?>/"><img src="<?php echo get('site_logo');?>" alt="<?php echo get(sitename);?>" width="<?php echo get(logo_width);?>" /></a>
</div>
<!--
<div class="logo-bg">
<img src="<?php echo $skin_path;?>/images/base/logo-bg.png" width="175" height="44" alt="" />
</div>
<div class="top2-tel">
<h3><?php echo lang(ershisixiaoshikefudianhua);?></h3>
<p><?php echo get(tel);?></p>
</div>
-->
</div>
<div class="top2-2">
<ul>
<li class="one"><a class="aa <?php if($topid==0) { ?> on<?php } ?>" href="<?php echo $base_url;?>/"><?php echo lang(homepage);?></a>
<?php foreach(categories_nav() as $t) { ?></li>
<li class="one"><a class="aa <?php if(isset($topid) && $topid==$t['catid']) { ?> on<?php } ?>" href="<?php echo $t['url'];?>" target="<?php if(config::get('nav_blank')==1) { ?> _blank<?php } ?>"><?php echo $t['catname'];?></a>					
<?php if(count(categories($t['catid']))) { ?>
<div class="nav2">
<ul>

<?php foreach(categories($t['catid']) as $t1) { ?>
<li><a href="<?php echo $t1['url'];?>"><?php echo $t1['catname'];?></a></li>
<?php } ?>
</ul>
</div>	
<?php } ?>				
</li>
<?php } ?>
</ul>
</div>
</div>
</div>

<div class="box">
<?php echo template('position.html'); ?>
</div>
