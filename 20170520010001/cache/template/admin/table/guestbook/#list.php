<?php defined('ROOT') or exit('Can\'t Access !'); ?>

<form name="listform" id="listform"  action="<?php echo uri();?>" method="post">
<div class="blank20"></div>
<div id="tagscontent" class="right_box">

<table border="0" cellspacing="0" cellpadding="0" name="table1" id="table1" width="100%">
<thead>
<tr class="th">
           <th><input title="点击可全选本页的所有项目"  onclick="CheckAll(this.form)" type="checkbox" name="chkall" class="checkbox" /> </th>
          <th align="center" width="60px"><!--id-->编号</th>
          <th align="center" width="100px"><!--username-->用户</th>
          <th align="center" width="160"><!--adddate-->时间</th>
          <th align="center"><!--title-->标题</th>
  <th align="center"><!--tel-->电话</th>
  <th align="center"><!--tel-->邮箱</th>
  <th align="center"><!--tel-->QQ</th>
          <th align="center"><!--content-->内容</th>
          <th align="center"><!--reply-->回复</th>
          <th align="center">操作</th>
        </tr>
</thead>
<tbody>

<?php if(is_array($data) && !empty($data))
foreach($data as $d) { ?>
<tr>

<td align="center" ><input onclick="c_chang(this)" type="checkbox" value="<?php echo $d[$primary_key];?>" name="select[]" class="checkbox" /> </td>

<td align="center"><?php echo cut($d['id']);?></td>
<td align="center"><?php echo cut($d['username']);?></td>
<td align="center"><?php echo cut($d['adddate']);?></td>
<td align="left" style="padding-left:10px;"><?php echo cut($d['title']);?></td>
<td align="center"><?php echo cut($d['guesttel']);?></td>
<td align="center"><?php echo cut($d['guestemail']);?></td>
<td align="center"><?php echo cut($d['guestqq']);?></td>
<td align="left" style="padding-left:10px;"><?php echo cut($d['content']);?></td>
<td align="center"><?php echo cut($d['reply']);?></td>

<td align="center">
<span class="hotspot" onmouseover="tooltip.show('回复客户留言！');" onmouseout="tooltip.hide();">
<a href="<?php echo modify("act/edit/table/$table/id/$d[$primary_key]");?>" class="a_view"></a>
</span>

<span class="hotspot" onmouseover="tooltip.show('确定要删除吗?');" onmouseout="tooltip.hide();">
<a onclick="javascript: return confirm('确定要删除吗?');" href="<?php echo modify("/act/delete/table/$table/id/$d[$primary_key]/token/$token");?>" class="a_del"><?php echo $d['htmldir'];?></a>
</span>
</td>
</tr>
<?php } ?>

</tbody>
</table>
<div class="page"><?php if(get('table')!='type' && front::get('case')!='field') echo pagination::html($record_count); ?></div>
<div class="blank20"></div>
</div>
<div class="blank20"></div>

<input type="hidden" name="batch" value="" class="button" />
<input  class="btn_a" type="button" value=" 删除 " name="delete" onclick="if(getSelect(this.form) && confirm('确实要删除ID为('+getSelect(this.form)+')的记录吗?')){this.form.action='<?php echo modify('act/batch',true);?>'; this.form.batch.value='delete'; this.form.submit();}"/>

</form>