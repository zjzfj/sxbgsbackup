<?php defined('ROOT') or exit('Can\'t Access !'); ?>
<?php echo template('header.html'); ?>



<div class="box2">
<div class="box2-left">
<?php echo template('left.html'); ?>
</div>
<div class="box2-right">
<div class="title20">
<h5><?php echo $category[$catid]['catname'];?></h5><span><?php echo $category[$catid]['htmldir'];?></span>
<?php echo template('position.html'); ?>
</div>
<div class="box2-content">



<div class="title21"><?php echo $archive['title'];?></div>
<div class="title22"><?php echo lang(author);?>：<a><?php echo $archive['author'];?></a>&nbsp;&nbsp; <?php echo lang(adddate);?>：<?php echo $archive['adddate'];?>&nbsp;&nbsp; <?php echo lang(view);?>：<?php echo view_js($archive['aid']);?><?php if($archive['attr3']) { ?>&nbsp;&nbsp; <?php echo lang(source);?>：<?php echo $archive['attr3'];?><?php } ?></div>

<style type="text/css">
table,td,tr {border:1px solid #ccc; padding:0.5em 0 0;}
</style>



<?php
$set_field=type::getpositionlink($data['typeid']);
$set_fields=array();
if(is_array($set_field))
foreach($set_field as $key => $value) {
    $set_fields[]=$value['id'];
}
?>


<!-- 内容开始 -->
<table width="100%" border="1" align="center" cellpadding="8" cellspacing="0" bordercolor="#CCCCCC" style="border-collapse:collapse;border-radius: 3px 3px 3px 3px;">
<tr>
<td colspan="4"  style="color:#999999">&nbsp;&nbsp;<span style="font-weight:bold; color:#EC0000;"><?php echo $archive['title'];?></span>&nbsp;&nbsp;&nbsp;&nbsp;<?php echo lang('jobdetails');?></td>
</tr>
<tr>
<td height="32" width="100" align="right"><?php echo lang('jobtype');?>：</td>
<td width="217" align="left">&nbsp;&nbsp;<?php echo $archive['my_jobtype'];?></td>
<td width="80" align="right"><?php echo lang('jobtitle');?>：</td>
<td width="253">&nbsp;&nbsp;<?php echo $archive['my_jobtitle'];?></td>
</tr>
<tr >
<td height="32" align="right" ><?php echo lang('jobnumber');?>：</td>
<td align="left" >&nbsp;&nbsp;<?php echo $archive['my_jobnumber'];?></td>
<td width="80" align="right"><?php echo lang('recruitingdepartment');?>：</td>
<td >&nbsp;&nbsp;<?php echo $archive['my_zhaopinbumen'];?></td>
</tr>
<tr>
<td height="32" align="right"><?php echo lang('jobgender');?>：</td>
<td align="left">&nbsp;&nbsp;<?php echo $archive['my_jobgender'];?></td>
<td width="80" align="right"><?php echo lang('jobwork');?>：</td>
<td>&nbsp;&nbsp;<?php echo $archive['my_jobwork'];?></td>
</tr>
<tr >
<td height="32" align="right" ><?php echo lang('jobacademic');?>：</td>
<td align="left" >&nbsp;&nbsp;<?php echo $archive['my_jobacademic'];?></td>
<td width="80" align="right"><?php echo lang('jobage');?>：</td>
<td >&nbsp;&nbsp;<?php echo $archive['my_jobage'];?></td>
</tr>
<tr>
<td height="32" align="right"><?php echo lang('jobworkareas');?>：</td>
<td colspan="3" align="left">&nbsp;&nbsp;<?php echo $archive['my_jobworkareas'];?></td>
</tr>
<tr  style="line-height:25px;">
<td height="32" align="right" valign="top"><?php echo lang('jobrequirements');?>：</td>
<td colspan="3" align="left">&nbsp;&nbsp;<?php echo $archive['my_jobrequirements'];?></td>
</tr>
<tr>
<td height="32" colspan="4" valign="middle"  style="color:#999999"><span style="font-weight:bold; color:#EC0000;">&nbsp;&nbsp;<?php echo lang(contactus);?></span></td>
</tr>
<tr>
<td height="32" align="right"><?php echo lang('contactname');?>：</td>
<td align="left">&nbsp;&nbsp;<?php echo $archive['my_contactname'];?></td>
<td width="80" align="right"><?php echo lang('tel');?>：</td>
<td>&nbsp;&nbsp;<?php echo get('tel');?></td>
</tr>
<tr >
<td height="32" align="right" ><?php echo lang('fax');?>：</td>
<td align="left" >&nbsp;&nbsp;<?php echo get('fax');?></td>
<td width="80" align="right"><?php echo lang('email');?>：</td>
<td >&nbsp;&nbsp;<a href="mailto:<?php echo get(email);?>" class="aB"><?php echo get('email');?></a></td>
</tr>
<tr>
<td height="32" align="right"><?php echo lang('address');?>：</td>
<td colspan="3" align="left">&nbsp;&nbsp;<?php echo get('address');?></td>
</tr>
</table>
</td>
</tr>
<tr>
<td height="16" style="border-bottom:1px dotted #333;"> &nbsp;</td>
</tr>
</table>
<!-- 内容结束 -->

<div class="table_job_more"><?php echo myform('my_yingpin');?></div>

<div class="blank30"></div>

<!-- 自定义表单开始 -->
<?php if($archive['showform']) { ?>
<?php echo template('myform/nrform.html'); ?>
<?php } ?>
<!-- 自定义表单结束 -->


<div class="blank60"></div>



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

<div class="blank20"></div>
</div>

</div>
<div class="clear"></div>
</div>





<?php echo template('footer.html'); ?>