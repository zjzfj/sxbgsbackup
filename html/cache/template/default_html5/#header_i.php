<?php defined('ROOT') or exit('Can\'t Access !'); ?>
<!doctype html>
<html>
<head>
<meta name="Generator" content="CmsEasy 5_6_0_20161107_UTF8" />
<meta charset="utf-8">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
<title><?php echo getTitle($archive,$category,$catid,$type);?></title>
<meta name="keywords" content="<?php echo getKeywords($archive,$category,$catid,$type);?>" />
<meta name="description" content="<?php echo getDescription($archive,$category,$catid,$type);?>" />
<meta name="author" content="CmsEasy Team" />
<link rel="icon" href="<?php echo $base_url;?>/favicon.ico" type="image/x-icon" />
<link rel="shortcut icon" href="<?php echo $base_url;?>/favicon.ico" type="image/x-icon" />
<meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=no"> <!--适应小屏幕-->
<meta content="no" http-equiv="imagetoolbar">
<?php if(get('mobile_open')=='1') { ?><script type="text/javascript">var cmseasy_wap_tpa=1,cmseasy_wap_tpb=1,cmseasy_wap_url='<?php echo $base_url;?>/wap';</script>
<script src="<?php echo $skin_path;?>/js/mobile.js" type="text/javascript"></script><?php } ?>
<link href="<?php echo $skin_path;?>/css/bootstrap-submenu.css" rel="stylesheet">
<link href="<?php echo $skin_path;?>/css/bootstrap.min.css" rel="stylesheet">
<!--[if lt IE 9]>
<script src="<?php echo $skin_path;?>/js/ie/html5shiv.min.js"></script>
<script src="<?php echo $skin_path;?>/js/ie/respond.min.js"></script>
<![endif]-->
<link href="data:text/css;charset=utf-8," data-href="<?php echo $skin_path;?>/css/bootstrap-theme.min.css" rel="stylesheet" id="bs-theme-stylesheet">

<script src="<?php echo $skin_path;?>/js/jquery.min.js"></script>
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



<!-- nav -->
<nav class="navbar navbar-default navbar-fixed-top">
<div class="container">
<div class="navbar-header">
<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
<span class="sr-only"><?php echo get(sitename);?></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
</button>


<div class="top-nav-right navbar-right">
<ul>
<li id="fat-menu" class="dropdown">
<a class="dropdown-toggleglyphicon glyphicon glyphicon-globe" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"></a>
<ul class="dropdown-menu" aria-labelledby="drop3">
<li><a id="StranLink" name="StranLink">繁體</a></li>
<?php foreach(getwebsite() as $d) { ?>
<li><a href="<?php echo $d['url'];?>" target="_blank"><?php echo $d['name'];?></a></li>
<?php } ?>
</ul>
</li>
<?php if(get('shoppingcart')=='1') { ?><li class="glyphicon glyphicon-shopping-cart nav-shopping"><a href="<?php echo url('archive/orders',true);?>" target="_blank"></a></li><?php } ?>
<li class="glyphicon glyphicon-search" data-toggle="modal" data-target=".bs-example-modal-lg-search" aria-hidden="true"></li>
</ul>
</div>
<!-- logo -->
<a href="<?php echo $base_url;?>/" class="navbar-brand text-center"><img src="<?php echo get('site_logo');?>" class="img-responsive" alt="<?php echo get(sitename);?>" /></a>
<!-- logo end -->
</div>

<div id="navbar" class="navbar-collapse collapse">
<ul class="nav navbar-nav">
<li class="oen<?php if($topid==0) { ?> active<?php } ?>"><a href="<?php echo $base_url;?>/"><?php echo lang(homepage);?></a></li>
<?php foreach(categories_nav() as $t) { ?>
<li class="oen<?php if(count(categories($t['catid']))) { ?> dropdown<?php } ?>">
<a href="<?php echo $t['url'];?>"<?php if(config::get('nav_blank')==1) { ?> target=" _blank"<?php } ?><?php if(count(categories($t['catid']))) { ?> data-toggle="dropdown" data-submenu=""<?php } ?>
><?php echo $t['catname'];?><?php if(count(categories($t['catid']))) { ?><span class="caret"></span><?php } ?></a>
<?php if(count(categories($t['catid']))) { ?>
<ul class="two dropdown-menu">
<?php foreach(categories($t['catid']) as $t1) { ?>
<li<?php if(count(categories($t1['catid']))) { ?> class="dropdown-submenu"<?php } ?>>
<a title="<?php echo $t1['catname'];?>" href="<?php echo $t1['url'];?>"><?php echo $t1['catname'];?></a>
<?php if(count(categories($t1['catid']))) { ?>
<ul class="three dropdown-menu">
<?php foreach(categories($t1['catid']) as $t2) { ?>
<li<?php if(count(categories($t2['catid']))) { ?> class="dropdown-submenu"<?php } ?>>
<a title="<?php echo $t2['catname'];?>" href="<?php echo $t2['url'];?>"><?php echo $t2['catname'];?></a>
<?php if(count(categories($t2['catid']))) { ?>
<ul class="four dropdown-menu">
<?php foreach(categories($t2['catid']) as $t3) { ?>
<li<?php if(count(categories($t3['catid']))) { ?> class="dropdown-submenu"<?php } ?>><a title="<?php echo $t3['catname'];?>" href="<?php echo $t3['url'];?>"><?php echo $t3['catname'];?></a>
<?php if(count(categories($t3['catid']))) { ?>
<ul class="five dropdown-menu">
<?php foreach(categories($t3['catid']) as $t4) { ?>
<li><a title="<?php echo $t4['catname'];?>" href="<?php echo $t4['url'];?>"><?php echo $t4['catname'];?></a>
</li>
<?php } ?>
</ul>
<?php } ?>
</li>
<?php } ?>
</ul>
<?php } ?>
</li>
<?php } ?>
</ul>
<?php } ?>
</li>
<?php } ?>
</ul>
<?php } ?>
</li>
<?php } ?>
</ul>
<div class="navbar-right user-panel">
<?php if(config::get('site_login')=='1') { ?><?php echo login_js();?><?php } ?>
</div>
</div>
</div>
</nav>





<div class="clearall"></div>
<?php echo template('system/slide.html'); ?>
<div class="clearall"></div>