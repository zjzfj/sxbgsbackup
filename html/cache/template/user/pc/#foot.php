<?php defined('ROOT') or exit('Can\'t Access !'); ?>




<div id="copyright">Copyright &copy;  <?php echo get('sitename');?>
<div class="blank10"></div>
Powered by <a href="http://www.cmseasy.cn" title="CmsEasy企业网站系统" target="_blank">CmsEasy</a>
</div>

</div>
</div>
</div>
</div>


<div class="servers-wap">
<?php if(config::get('wap_foot_nav')=='1') { ?>
<?php echo template('system/foot_nav_b.html'); ?>
<?php } elseif (config::get('wap_foot_nav')=='2') { ?>
<?php echo template('system/foot_nav_c.html'); ?>
<?php } else { ?>
<?php echo template('system/foot_nav_a.html'); ?>
<?php } ?> 
</div>


<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    
    <script src="<?php echo $skin_path;?>/js/bootstrap.min.js"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
    <script src="<?php echo $skin_path;?>/js/holder.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="<?php echo $skin_path;?>/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>
