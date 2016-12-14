<?php defined('ROOT') or exit('Can\'t Access !'); ?>
<!DOCTYPE html>
<html lang="zh-CN">
  <head>
<meta name="Generator" content="CmsEasy 5_6_0_20161107_UTF8" />
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="/favicon.ico">
    <title><?php echo lang(membercenter);?></title>
    <link href="<?php echo $skin_path;?>/css/bootstrap.min.css" rel="stylesheet">
    <link href="<?php echo $skin_path;?>/css/user.css" rel="stylesheet">
<script src="<?php echo $skin_path;?>/js/jquery.min.js"></script>
    <!--[if lt IE 9]>
<script src="<?php echo $skin_path;?>/js/ie8-responsive-file-warning.js"></script>
<![endif]-->
    <script src="<?php echo $skin_path;?>/js/ie-emulation-modes-warning.js"></script>
    <!--[if lt IE 9]>
      <script src="<?php echo $skin_path;?>/js/ie/html5shiv.min.js"></script>
<script src="<?php echo $skin_path;?>/js/ie/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#sidebar" aria-expanded="false" aria-controls="sidebar">
            <span class="sr-only"><?php echo get(sitename);?></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" title="<?php echo get(sitename);?>" href="<?php echo $base_url;?>/"><img src="<?php echo get('site_logo');?>" alt="<?php echo get(sitename);?>" /></a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
       <ul class="nav navbar-nav navbar-right">
            <li id="fat-menu" class="dropdown">
              <a id="drop3" href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                <?php echo lang(welcomeyou);?>，<?php echo $user['username'];?>
                <span class="caret"></span>
              </a>
              <ul class="dropdown-menu" aria-labelledby="drop3">
                <li><a href="<?php echo url('user/edit/table/user');?>"><?php echo lang(edituserinfo);?></a></li>
            <li><a href="<?php echo url('user/changepassword');?>"><?php echo lang(changepassword);?></a></li>
                <li role="separator" class="divider"></li>
                <li><a href="<?php echo url('user/logout');?>" class="logout"><?php echo lang(logout);?></a></li>
              </ul>
            </li>
          </ul>
  <ul class="nav navbar-nav navbar-right">
  <li><a href="<?php echo get(site_url);?>" title="<?php echo lang(homepage);?>" target="_blank"><i>网站首页</i><span class="glyphicon glyphicon-home"></span></a></li>
            <li><a href="http://www.cmseasy.cn/" target="_blank" title="官方网站"><i>官方网站</i><span class="glyphicon glyphicon-tags"></span></a></li>
            <li><a href="http://www.cmseasy.cn/service/" target="_blank" title="商业授权"><i>商业授权</i><span class="glyphicon glyphicon-shopping-cart"></span></a></li>
            <li><a href="http://www.cmseasy.org" target="_blank" title="问题交流"><i>问题交流</i><span class="glyphicon glyphicon-user"></span></a></li>
            <li><a href="http://www.cmseasy.cn/chm/" target="_blank" title="在线教程？"><i>在线教程？</i><span class="glyphicon glyphicon-question-sign"></span></a></li>
          </ul>
             
  
         </div>

      </div>
    </nav>

    <div class="container-fluid">
      <div class="row">
        <div id="sidebar" class="col-sm-2 col-md-1 sidebar">
          <ul class="nav nav-sidebar">

   <?php if(chkfpw('add_archive',$user['groupid'])) { ?><li><a href="<?php echo url('manage/add/manage/archive');?>"><?php echo lang(addcontent);?></a></li><?php } ?>
              <li><a href="<?php echo url('/manage/list/manage/archive/needcheck/1');?>"><?php echo lang(waitcheckedcontent);?></a></li>
              <li><a href="<?php echo url('/manage/list/manage/archive');?>"><?php echo lang(alreadycheckedcontent);?></a></li>

  <li><a href="<?php echo url('/manage/invitelist/manage/invite');?>"><?php echo lang('invitation-code');?></a></li>
              <li><a href="<?php echo url('/manage/commentlist/manage/comment');?>"><?php echo lang(comment);?></a></li>
              <li><a href="<?php echo url('/manage/zanlist/manage/zanlog');?>"><?php echo lang(praise);?></a></li>

              <li><a href="<?php echo url('union/stats/manage/union');?>"><?php echo lang(stats);?></a></li>
              <li><a href="<?php echo url('union/getcode/manage/union');?>"><?php echo lang(access_code);?></a></li>
              <li><a href="<?php echo url('union/visit/manage/union');?>"><?php echo lang(access_statistics);?></a></li>
              <li><a href="<?php echo url('union/reguser/manage/union');?>"><?php echo lang(registered_users);?></a></li>
              <li><a href="<?php echo url('union/pay/manage/union');?>"><?php echo lang(promotion_of_settlement);?></a></li>
 
              <li><a href="<?php echo url('union/edit/manage/union');?>"><?php echo lang(modify);?></a></li>

           
          </ul>
        </div>
        <div class="col-sm-10 col-sm-offset-1 col-md-11 col-md-offset-1 main">
       
          <div class="row placeholders">

  <div class="user_welcome">
<img src="<?php echo $skin_path;?>/images/user/avatar.png" />
<span>
<?php echo lang(welcomeyou);?>，<?php echo $user['username'];?> [	<a href="<?php echo url('user/logout');?>" class="logout"><?php echo lang(logout);?></a>	]
</span>

</div>

            <div class="col-xs-6 col-sm-3 placeholder">
              <a href="<?php echo url('user/edit/table/user');?>">
  <span class="glyphicon glyphicon-edit"></span>
              <h4><?php echo lang(edituserinfo);?></h4>
              <span class="text-muted">Edit data</span>
  </a>
            </div>
            <div class="col-xs-6 col-sm-3 placeholder">
              <a href="<?php echo url('user/changepassword');?>">
  <span class="glyphicon glyphicon-lock"></span>
              <h4><?php echo lang(changepassword);?></h4>
              <span class="text-muted">Change password</span>
  </a>
            </div>
            <div class="col-xs-6 col-sm-3 placeholder">
  <a href="<?php echo url('manage/orderslist/manage/orders');?>">
              <span class="glyphicon glyphicon-list-alt"></span>
              <h4><?php echo lang(vieworders);?></h4>
              <span class="text-muted">Query order</span>
  </a>
            </div>
            <div class="col-xs-6 col-sm-3 placeholder">
              <a href="<?php echo url('archive/orders');?>">
  <span class="glyphicon glyphicon-shopping-cart"></span>
              <h4><?php echo lang(shoppingcart);?></h4>
              <span class="text-muted">Shopping Cart</span>
  </a>
            </div>
          </div>
  <?php
if(hasflash()){
$showmessage = showflash();
if(strlen($showmessage)>200){ 
?>
<div id='message'><span style="color:red;float:left"><?php echo $showmessage; ?></span>
<span style="color:blue;float:right"><a href="#" onClick="javascript:turnoff('#message');">(×)</a></span></div><div class="blank20"></div>
<?php
    }else{
?>
<script type="text/javascript">
art.dialog({
id:'messagebox',
content:'<?php echo $showmessage; ?>',
title:'<?php echo lang(prompted);?>',
time: 2,
lock:true
});
</script>
<?php
    }
}
?>

         
        

    