<?php defined('ROOT') or exit('Can\'t Access !'); ?>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta name="Generator" content="CmsEasy 5_6_0_20161107_UTF8" />
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title><?php echo lang(onlinepayment);?></title>
<meta name="author" content="CmsEasy Team" />
<link rel="icon" href="<?php echo $base_url;?>/favicon.ico" type="image/x-icon" />
<link rel="shortcut icon" href="<?php echo $base_url;?>/favicon.ico" type="image/x-icon" />
<link href="<?php echo $skin_path;?>/css/bootstrap.min.css" rel="stylesheet">
<link href="data:text/css;charset=utf-8," data-href="<?php echo $skin_path;?>/css/bootstrap-theme.min.css" rel="stylesheet" id="bs-theme-stylesheet">
<link rel="stylesheet" href="<?php echo $skin_path;?>/css/orders.css" />
<script src="<?php echo $skin_path;?>/js/jquery.min.js"></script>
<!--[if lt IE 9]><!-->
<script src="<?php echo $skin_path;?>/js/ie/html5shiv.min.js"></script>
<script src="<?php echo $skin_path;?>/js/ie/respond.min.js"></script>
<![endif]-->
</head>
<body>

<div class="container">

<div class="blank30"></div>
<a href="<?php echo $base_url;?>/" target="_blank" class="btn btn-default btn-lg pull-right"><?php echo lang(backhome);?></a>

<div class="t_1">
<div>
<h3><a href="<?php echo $cat['url'];?>" title="<?php echo $cat['catname'];?>"><?php echo lang(onlinepayment);?></a></h3>
<p>Online Payment</p>
</div>
</div>

<!-- 中部开始 -->

<script type="text/javascript">

function check(){

if(document.orders.pnums.value.length==0){
   alert("<?php echo lang(enter);?><?php echo lang(ordercontactname);?>!");
   document.orders.pnums.focus();
   return false;
}

if(document.orders.pname.value.length==0){
   alert("<?php echo lang(enter);?><?php echo lang(ordercontactname);?>!");
   document.orders.pname.focus();
   return false;
}

if(document.orders.telphone.value.length==0){
   alert("<?php echo lang(enter);?><?php echo lang(ordertel);?>!");
   document.orders.telphone.focus();
   return false;
}
<?php if(config::get('mobilechk_enable') && config::get('mobilechk_buy')) { ?>
if($('#mobilenum').val() == ''){
alert('<?php echo lang(please_enter_the_phone_verification_code);?>');	
$('#mobilenum').focus();
return false;
}
<?php } ?>

if(document.orders.address.value.length==0){
   alert("<?php echo lang(enter);?><?php echo lang(orderaddress);?>!");
   document.orders.address.focus();
   return false;
}

if(document.orders.postcode.value.length==0){
   alert("<?php echo lang(enter);?><?php echo lang(email);?>!");
   document.orders.postcode.focus();
   return false;
}


if(document.orders.pnums.value.length==0){
   alert("<?php echo lang(enter);?><?php echo lang(ordercontactname);?>!");
   document.orders.pnums.focus();
   return false;
}

return true; 
} 


function setTotal(){ 
var s=0; 


$(".orders-list").each(function(){ 
s+=parseInt($(this).find('input[class*=thisnum]').val())*parseFloat($(this).find('span[class*=price]').text()); 
}); 

$("#tab").each(function(){ 
s+=parseInt($(this).find('input[class*=thisnum]').val())*parseFloat($(this).find('span[class*=price]').text()); 
}); 

$("#total").html(s.toFixed(2)); 
} 

//加减

$(function(){ 
$(".add").click(function(){ 
var t=$(this).parent().find('input[class*=thisnum]'); 
t.val(parseInt(t.val())+1) 
setTotal(); 
}) 
$(".min").click(function(){ 
var t=$(this).parent().find('input[class*=thisnum]'); 
t.val(parseInt(t.val())-1) 
if(parseInt(t.val())<0){ 
t.val(0); 
} 
setTotal(); 
}) 

setTotal(); 

}) 

</script>


<form action="<?php echo uri();?>" id="orders" name="orders" method="post" onsubmit="return check()">


    <?php if($orderaidlist) { ?>



<?php if(is_array($orderaidlist) && !empty($orderaidlist))
foreach($orderaidlist as $val) { ?>

<input type="hidden" name="aid[]" value="<?php echo $val['aid'];?>" />
<div id="list<?php echo $val['aid'];?>" class="row orders-list">

   <div class="col-xs-4 col-sm-3 col-md-2 col-lg-2 orders-pic">
  <a target="_blank" href="<?php echo $base_url;?>/index.php?case=archive&act=show&aid=<?php echo $val['aid'];?>"><img src="<?php echo $val['thumb'];?>" class="img-responsive" onerror='this.src="<?php echo config::get('onerror_pic');?>"' /></a>
  </div>

  <div class="col-xs-8 col-sm-9 col-md-10 col-lg-10">


<div class="pull-right col-xs-1 col-sm-1 col-md-1 col-lg-1 orders-padding-x">
<a href="#" onclick="document.getElementById('list<?php echo $val['aid'];?>').style.display='none';document.getElementById('thisnum<?php echo $val['aid'];?>').value=0;setTotal();" title="删除" class="orders-del">&Chi;</a>
</div>

<div class="pull-left col-xs-11 col-sm-11 col-md-11 col-lg-11 orders-padding-x">
  
   <div class="col-xs-11 col-sm-5 col-md-5 col-lg-5">
  <a target="_blank" href="<?php echo $base_url;?>/index.php?case=archive&act=show&aid=<?php echo $val['aid'];?>" class="o_title"><?php echo $val['title'];?></a>
</div>


 <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
<?php echo lang(price);?>&nbsp;:&nbsp;<?php echo lang(the_symbol_of_money);?>&nbsp;<span id="thisprice<?php echo $val['aid'];?>" align="center" class="price"><?php echo $val['attr2'];?></span>&nbsp;<?php echo lang(unit);?>
  </div>

   <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">


<input class="min" name="" type="button" value="-" /> 
<input class="thisnum" type="text" id="thisnum<?php echo $val['aid'];?>" name="thisnum[<?php echo $val['aid'];?>]" value="<?php echo $val['amount'];?>" size="5"  onchange="changetotalprdersprice1('thistotal<?php echo $val['aid'];?>','thisprice<?php echo $val['aid'];?>','thisnum<?php echo $val['aid'];?>')"  />
<input class="add" name="" type="button" value="+" /> 
</div>
</div>
</div>
</div>

<hr class="featurette-divider">
<?php } ?>



    <?php } else { ?>


<div id="tab" class="row">

   <div class="col-xs-4 col-sm-3 col-md-2 col-lg-2">
   <a target="_blank" href="<?php echo $base_url;?>/index.php?case=archive&act=show&aid=<?php echo $archive['aid'];?>"><img src="<?php echo $archive['thumb'];?>" class="img-responsive" /></a>
</div>

  <div class="col-xs-8 col-sm-9 col-md-10 col-lg-10">

 <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
<a target="_blank" href="<?php echo $base_url;?>/index.php?case=archive&act=show&aid=<?php echo $val['aid'];?>"><?php echo $archive['title'];?></a>
  </div>
 <div class="col-xs-12 col-sm-2 col-md-2 col-lg-2">
<?php echo lang(productprice);?>：<?php echo lang(the_symbol_of_money);?>&nbsp;<span id="thisprice" align="center" class="price"><?php echo $archive['attr2'];?></span>&nbsp;<?php echo lang(unit);?>
</div>

 <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
<?php echo lang(pordernums);?>：
<br />
<input class="min clsearfix" name="" type="button" value="-" /> 
<input class="thisnum" type="text" size="5" maxlength="10" name="pnums" id="pnums" value="1" onchange="changetotalprdersprice()" />
<input class="add" name="" type="button" value="+" /> 
</div>


</div>
</div>
<div class="blank10"></div>
     <?php } ?>
     
<div class="blank30"></div>

<div class="thistotal  pull-right">

<?php echo lang(ordertotal);?>：<span><?php echo lang(the_symbol_of_money);?><label id="total"></label></span>

</div> 


<div class="blank30"></div>
<ul class="nav nav-pills" role="tablist">
<li role="presentation" class="active pull-right"><a href="#lianxi">填写联系方式完成购物 <span class="badge">Go buy</span></a></li>
</ul>
<div style="clear:both;height:600px;"></div>




<div class="t_1" id="lianxi">
<div>
<h3><a href="<?php echo $cat['url'];?>" title="<?php echo $cat['catname'];?>"><?php echo lang(contactmode);?></a></h3>
<p>Contact information</p>
</div>
</div>


<div class="orders-conact">
<div class="form-group">
<label for="<?php echo lang(ordercontactname);?>"><?php echo lang(ordercontactname);?></label>
<input type="text" class="form-control" name="pname" placeholder="<?php echo lang(ordercontactname);?>" />
</div>


<div class="form-group">
<label for="<?php echo lang(ordertel);?>"><?php echo lang(ordertel);?></label>
<input type="text" class="form-control" id="telphone" name="telphone" placeholder="<?php echo lang(ordertel);?>" />
</div>


<?php if(config::get('mobilechk_enable') && config::get('mobilechk_buy')) { ?>

    <input type='text' id="mobilenum"  tabindex="4" placeholder="手机校验码" class="input" style="width:40%"  name="mobilenum" /> <input id="btm_sendMobileCode" onclick="sendMobileCode('<?php echo url('tool/smscode');?>',$('#telphone'));" type="button" value="发送手机校验码" />
<div class="blank10"></div>
<?php } ?>


<div class="form-group">
<label for="<?php echo lang(orderaddress);?>"><?php echo lang(orderaddress);?></label>
<input type="text" class="form-control" id="address" name="address" placeholder="<?php echo lang(orderaddress);?>" />
</div>

<div class="form-group">
<label for="<?php echo lang(postcode);?>"><?php echo lang(postcode);?></label>
<input type="text" class="form-control" id="postcode" name="postcode" placeholder="<?php echo lang(postcode);?>" />
</div>

<?php if($logisticslist) { ?>
<h4><?php echo lang(pickingmethods);?></h4>



<?php foreach($logisticslist as $i => $logistics) { ?>
<div class="radio">
  <label>
    <input type="radio" name="logisticsid" value="option<?php echo $i+1;?>" checked>
    <?php echo $logistics['title'];?><small> <?php echo lang(fees);?>：<?php echo $logistics['price'];?></small>
  </label>
</div>
<div class="blank10"></div>
<small><?php echo $logistics['content'];?></small>
<div class="blank10"></div>
<?php } ?>
<div class="blank10"></div>
<?php } ?> 


<div class="radio">
  <label>
    <input type="radio" name="payname" value="nopay" checked> <?php echo lang('ordercontent');?>
  </label>
</div>
<div class="blank10"></div>
<?php if($paylist) { ?>
<?php foreach($paylist as $i => $pay) { ?>
<?php if($pay['enabled']==1) { ?> 
<div class="radio">
  <label>
    <input type="radio" name="payname" value="<?php echo $pay['pay_code'];?>" checked>
    <?php echo $pay['pay_name'];?><small> <?php echo lang(rates);?>：<?php echo $pay['pay_fee'];?>%</small>
  </label>
</div>
<div class="blank10"></div>
<small><?php echo $pay['pay_desc'];?></small>
<div class="blank10"></div>
<?php } ?>
<?php } ?>
<?php } else { ?>
<?php echo lang(nopayment);?>
<?php } ?>

<div class="blank10"></div>
<textarea placeholder="<?php echo lang(ordercontent);?>" name="content" class="form-control" rows="3"></textarea> 




<div class="blank30"></div>


<input class="btn btn-primary" type="submit" value="<?php echo lang(buy);?>" name="submit">
<button class="btn btn-primary" type="reset" name="submit">
  <?php echo lang(reset);?> <span class="badge">Reset</span>
</button>

</div>
</div>

 </div>
</form>

<div class="blank30"></div>

<div class="copy">
<?php echo get(site_right);?> <a title="<?php echo get('sitename');?>" href="<?php echo $base_url;?>/"><?php echo get('sitename');?></a>
<br />
Powered by <a href="http://www.cmseasy.cn" title="CmsEasy企业网站系统" target="_blank">CmsEasy</a>
</div>
</div>

</div>


 <!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->

<script src="<?php echo $skin_path;?>/js/bootstrap.min.js"></script>
<!-- Just to make our placeholder images work. Don't actually copy the next line! -->
<script src="<?php echo $skin_path;?>/js/holder.min.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="<?php echo $skin_path;?>/js/ie10-viewport-bug-workaround.js"></script>

<div class="servers-wap">
<?php if(config::get('wap_foot_nav')=='1') { ?>
<?php echo template('system/foot_nav_b.html'); ?>
<?php } elseif (config::get('wap_foot_nav')=='2') { ?>
<?php echo template('system/foot_nav_c.html'); ?>
<?php } else { ?>
<?php echo template('system/foot_nav_a.html'); ?>
<?php } ?> 
</div>

</body>
</html>