<?php defined('ROOT') or exit('Can\'t Access !'); ?>
document.write('<form name="form1" method="post" action="<?php echo url("ballot");?>">');
document.write('<input type="hidden" name="bid" id="bid" value="<?php echo $arr['id'];?>" />');
document.write('<div class="blank10"></div>');
document.write('<h3 class="t_3"><a>');
document.write('<?php echo $arr['title'];?></a></h3>');
document.write('<div class="blank10"></div>');
        <?php if(is_array($row) && !empty($row))
foreach($row as $option) { ?>
            <?php if($arr['type'] == 'radio') { ?>
                document.write('<input type="radio" name="ballot" id="ballot" value="<?php echo $option['id'];?>" />');
            <?php } else { ?>
                document.write('<input type="checkbox" name="ballot[]" id="ballot" value="<?php echo $option['id'];?>" />');
            <?php } ?>
            document.write(' <?php echo $option['name'];?> (<?php echo $option['num'];?>)<br>');
        <?php } ?>
document.write('<div class="blank20"></div>');
document.write('<input type="submit" name="submit" class="guestbook_btn" value="<?php echo $lang['vote'];?>" /></form>');