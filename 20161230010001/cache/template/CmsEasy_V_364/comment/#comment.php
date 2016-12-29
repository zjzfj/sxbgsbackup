<?php defined('ROOT') or exit('Can\'t Access !'); ?>
<?php if(config::get('comment')=='1') { ?>
<style type="text/css">
/****************评论*/
#comment {
  margin-top:20px;
}

.comm input {border:none; background:#F6F6F6;}
.comm input:hover {
-moz-box-shadow:0px 0px 10px #A5C7FE;
-webkit-box-shadow:0px 0px 10px #A5C7FE;
box-shadow:0px 0px 10px #A5C7FE;}

.comment_list {padding:10px 0px;}
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

#mobilenum { float:left; width:150px; height:32px; line-height:32px; padding:0px 10px; }
#btm_sendMobileCode {float:left; height:32px; line-height:32px; margin-right:10px; padding:0px 15px; border:1px solid #ccc; border-radius: 5px 5px 5px 5px; font-size:12px; color:#555; background:#eee;}

#textarea { width:300px; border:none; padding:10px; background:#F6F6F6;}
#textarea:hover {background-color:#FFC;
-moz-box-shadow:0px 0px 10px #A5C7FE;
-webkit-box-shadow:0px 0px 10px #A5C7FE;
box-shadow:0px 0px 10px #A5C7FE;}


</style>


<div class="blank30"></div>
<div class="t_1">
<div>
<h3><?php echo lang(comment);?></h3>
<p>Comment</p>
</div>
</div>
<!-- t_1 -->
<div class="blank30"></div>
<div class="w_set">

<form action="<?php echo url('comment/add'); ?>" method="POST" name="comment_form" id="comment" class="wow fadeIn" data-wow-delay="0.6s">

<div class="comm">
<div class="blank10"></div>
<input type="hidden" name="aid" value="<?php echo $archive['aid'];?>"/>
<?php echo lang('username');?>	Name
<div class="blank10"></div>
<input type="text" name="username" class="comm_name" value="<?php echo get('username');?>"   />
<div class="blank10"></div>
<?php if(config::get('mobilechk_enable') && config::get('mobilechk_comment')) { ?>
<script src="<?php echo $base_url;?>/js/mobilechk.js"></script>
<?php echo lang(tel);?> Tel
<div class="blank10"></div>
<input type="text" class="comm_name" name="telphone" id="telphone" />
<div class="blank10"></div>
<?php echo lang(phone_verification_code);?>
<div class="blank10"></div>
<input id="btm_sendMobileCode" onclick="sendMobileCode('<?php echo url('tool/smscode');?>',$('#telphone'));" type="button" value="<?php echo lang(send_cell_phone_verification_code);?>" />
<input type='text' id="mobilenum"  tabindex="4" placeholder="	<?php echo lang(please_enter_the_phone_verification_code);?>	"  name="mobilenum" />
<div class="blank10"></div>
<?php } ?>



<div class="blank10"></div>
<?php echo lang(comment);?> Comment
<div class="blank10"></div>
<textarea name="content" id="textarea"  ></textarea>

<?php if(config::get('verifycode')=='1') { ?>
<div class="balnk10"></div>
<input type='text' id="verify"  tabindex="3"  name="verify" /><?php echo verify();?>
<div class="balnk10"></div>
<?php } ?>

<?php if(config::get('verifycode')=='2') { ?>
<?php echo lang('verifycode');?>
<div class="blank10"></div>

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
url : '<?php echo url('tool/geetest',0);?>',
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
<input name="submit" class="btn" value=" <?php echo lang('submit_on');?> " type="submit" />
<div class="blank30"></div>

<div class="comment_info">
<?php if($topid==0) { ?><?php } else { ?><a rel="nofollow" href="<?php echo url('comment/list/aid/'.$archive['aid']); ?>"><?php } ?><?php echo lang('have');?><span class="commentnumber">(<?php echo comment::countcomment($archive['aid']);?>)</span><?php echo lang(bitofcommenters);?>&nbsp;&nbsp;<strong><?php echo lang('clicktoview');?></strong></a>
</div>
</form>


<?php } ?>
</div>
</div>

<div class="blank60"></div>