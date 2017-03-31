<?php defined('ROOT') or exit('Can\'t Access !'); ?>
<?php echo template('header.html'); ?>

<script type="text/javascript">
<!--
function isMobile(mobile){
return /^1([0-9]+){5,}$/g.test(mobile);
}
var sec = 30;
var o_dsq = null;
function senddjs(){
sec--;
$('#btm_sendMobileCode').val(sec+lang('seconds_after_you_can_re_send'));
if(sec == 0){
clearInterval(o_dsq);
$('#btm_sendMobileCode').val(lang('resend_the_checksum'));
$('#btm_sendMobileCode').attr('disabled',false);
sec = 30;
}
}
function sendMobileCode(mobile){
if(isMobile(mobile)){
$('#btm_sendMobileCode').attr('disabled',true);
$.post("<?php echo url('tool/smscode');?>",{'mobile':mobile},function(data){
alert(data);
},'text');
o_dsq = setInterval("senddjs()",1000);
}else{
alert("<?php echo lang('phone_number_format_is_wrong');?>");
$('#guesttele').focus();	
}
}
$(function(){
$('#frmGuestbookSubmit').submit(function(e) {
        if($('#nickname').val() == ''){
alert("<?php echo lang('please_enter_your_user_name');?>");	
$('#nickname').focus();
return false;
}
if($('#guesttel').val() == ''){
alert(<?php echo lang('p_m_content');?>);	
$('#guesttel').focus();
return false;
}
<?php if(config::get('mobilechk_enable') && config::get('mobilechk_guestbook')) { ?>
if($('#mobilenum').val() == ''){
alert("<?php echo lang('cell_phone_parity_error');?>");	
$('#mobilenum').focus();
return false;
}
<?php } ?>
if($('#guestemail').val() == ''){
alert("lang('please_fill_in_the_mailbox')");	
$('#guestemail').focus();
return false;
}
if($('#title').val() == ''){
alert("<?php echo lang('please_enter_the_title');?>");	
$('#title').focus();
return false;
}
if($('#content').val() == ''){
alert("lang('p_content')");	
$('#content').focus();
return false;
}
<?php if(config::get('verifycode')) { ?> 
//if($('#verify').val() == ''){
if(!verify::checkGee()){
alert("<?php echo lang('please_enter_code');?>");	
$('#verify').focus();
return false;
}
<?php } ?>
});
});
//-->
</script>




<div class="box2">
<div class="box2-left">
<?php echo template('left.html'); ?>
</div>
<div class="box2-right">




<div style="text-align:center;color:red;">
<?php if(hasflash()) { ?>
<?php echo showflash(); ?>
<?php } ?>
</div>

<form method="post" action="" name="frmGuestbookSubmit" id="frmGuestbookSubmit" class="form_message">


<div class="box2-content">

<div class="title30">
<h5><?php echo lang('guestbook');?></h5>
</div>

<?php echo lang('contactname');?>
<div class="clear"></div>
<?php echo form::input('nickname',get('username'));?>
<div class="clear"></div>
<?php echo lang('guesttel');?>
<div class="clear"></div>
<?php echo form::input('guesttel',get('guesttel'));?>
<div class="clear"></div>

<?php if(config::get('mobilechk_enable') && config::get('mobilechk_login')) { ?>
<script src="<?php echo $base_url;?>/js/mobilechk.js"></script>
<div class="blank10"></div>
<input id="btm_sendMobileCode" onclick="sendMobileCode($('#tel').val());" type="button" value="<?php echo lang(please_enter_the_phone_verification_code);?>" />
<input type='text' id="mobilenum"  tabindex="4" placeholder="<?php echo lang(send_cell_phone_verification_code);?>"  name="mobilenum" />
<div class="blank10"></div>
<?php } ?>

<?php echo lang('guestemail');?>
<div class="clear"></div>
<?php echo form::input('guestemail',get('guestemail'));?>
<div class="clear"></div>
<?php echo lang('guestqq');?>
<div class="clear"></div>
<?php echo form::input('guestqq',get('guestqq'));?>
<div class="clear"></div>
<?php if(is_array($field) && !empty($field))
foreach($field as $f) { ?>
<?php
 $name=$f['name'];
 if($name==$primary_key) continue; ?>

<?php echo lang($name);?>
<div class="clear"></div>
<?php echo form::getform($name,@$form,$field,@$data);?> 
<div class="clear"></div>
 <?php } ?>



<?php if(config::get('verifycode')=='1') { ?>
<div class="balnk10"></div>
<input type='text' id="verify"  tabindex="3"  name="verify" /><?php echo verify();?>
<div class="balnk10"></div>
<?php } ?>

<?php if(config::get('verifycode')=='2') { ?>    
<div class="balnk10"></div>
<div id="verifycode_embed"></div>
<script src="http://api.geetest.com/get.php"></script>
<script>
var loadGeetest = function(config) {
window.gt_captcha_obj = new window.Geetest({
gt : config.gt,
challenge : config.challenge,
product : 'float',
offline : !config.success
});
gt_captcha_obj.appendTo("#verifycode_embed");
};

$.ajax({
url : '<?php echo url('tool/geetest');?>',
type : "get",
dataType : 'JSON',
success : function(result) {
//console.log(result);
loadGeetest(result)
}
});
</script>
<?php } ?>
<div class="blank30"></div>
<div class="blank30"></div>
<input type="submit" name="submit" value=" <?php echo lang('submit_on');?> " class="guestbook_btn" />
<div class="blank30"></div>
</div>
</form>



</div>

<?php if(config::get('guestbook_list')=='1') { ?> 
<?php if(config::get('guestbook_user')=='1') { ?> 

<style type="text/css">
/****************评论*/
#comment {
  margin-top:20px;
  font-size:12px;
}

#comment input {font-size:12px;}

.comm input {border:none; background:#F6F6F6;}

.comment_list {padding:10px 0px;border-top:1px solid #ccc;}
.comm_head {float:left; width:90px; height:90px; background: url(<?php echo $skin_path;?>/images/comm/comm_m.png) left top no-repeat;background-size:70% 70%;}

#comm_content {width:15px; height:15px; position: relative; top:10px; left:-28px; background: url(../images/comm/comm_content.gif) left top no-repeat;}
.comm_content {float:left; width:850px; padding:0px 10px 0px 20px; background:#F5F5F5; border:1px solid #ccc;border-radius: 3px 3px 3px 3px;}

.comm_content p span {color:#999; font-size:12px; padding-left:15px;}
.comm_content p strong {color:#666;}


.commentnumber {padding:0px 5px;color:#CC0000;}
.comment_info {height:30px; line-height:30px; padding-left:30px;background:url(<?php echo $skin_path;?>/images/comm/comment.gif) left center no-repeat;}

.comment_list dt strong {color: #70AADA;}
.comment_list dd.admin_reply  {margin:10px; padding:10px;border:1px dotted #ccc; background:#FFFFEE;}
.comm_name,.comm_code {float:left; height:32px; line-height:32px; padding:0px 10px; border:1px solid #ccc; color:#666; border-radius: 3px 0px 0px 3px;}
.comm_name:hover,.comm_code:hover { background-color:#FFC;}	
.comm_name {width:206px;border-radius: 3px 3px 3px 3px;}

#textarea { width:300px; border:none; padding:10px; background:#F6F6F6;}
#textarea:hover {background-color:#FFC;}

#mobilenum { float:left; width:150px; height:32px; line-height:32px; padding:0px 10px; }
#btm_sendMobileCode {float:left; height:32px; line-height:32px; margin-right:10px; padding:0px 15px; border:1px solid #ccc; border-radius: 5px 5px 5px 5px; font-size:12px; color:#555; background:#eee;}

input:hover, textarea:hover,select:hover {background-color:#FFC;
-moz-box-shadow:0px 0px 10px #A5C7FE;
-webkit-box-shadow:0px 0px 10px #A5C7FE;
box-shadow:0px 0px 10px #CE9E20;}
</style>







<div class="clear"></div>



<div class="comment_list" style="border:none;">
<?php if(is_array($data) && !empty($data))
foreach($data as $d) { ?>

<div class="comm_head"></div>
<div class="comm_content">
<div id="comm_content"></div>
<p><?php echo $d['content'];?></p>
<?php if($d['reply']) { ?><dd class="admin_reply">
<?php echo lang('adminreply');?>：
<?php echo $d['reply'];?>
</dd>
<?php } ?>
<p><strong><?php echo $d['username'];?></strong><span><?php echo sdate($comment['adddate'],'Y-m-d H:i');?></span></p>
</div>
<div class="blank10"></div>


<?php } ?>
</dl>

<div class="clear"></div>
<div class="blank30"></div>
<div class="pages">
<?php echo pagination::html($record_count); ?>
</div>
<?php } ?>
<?php } ?>
<div class="clear"></div>

</div>
<div class="clear"></div>
</div>


<!-- 限定图片宽度 -->
<?php echo template('width_max.html'); ?>
<!-- 限定图片宽度 -->
<?php echo template('footer.html'); ?>