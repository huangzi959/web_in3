<div class="st-help">
    <div class="wm-1200">
        <div class="help-lsit">
            <?php require_once ("D:/phpStudy/WWW/taglib/help.php");$help_tag = new Taglib_Help();if (method_exists($help_tag, 'kind')) {$data = $help_tag->kind(array('action'=>'kind','row'=>'5',));}?>
                <?php $n=1; if(is_array($data)) { foreach($data as $row) { ?>
                    <dl>
                        <dt><a href="<?php echo $row['url'];?>" rel="nofollow"><?php echo $row['title'];?></a></dt>
                        <dd>
                            <?php require_once ("D:/phpStudy/WWW/taglib/help.php");$help_tag = new Taglib_Help();if (method_exists($help_tag, 'article')) {$list = $help_tag->article(array('action'=>'article','row'=>'3','kindid'=>$row['id'],'return'=>'list',));}?>
                              <?php $n=1; if(is_array($list)) { foreach($list as $r) { ?>
                                <a href="<?php echo $r['url'];?>" rel="nofollow"><?php echo $r['title'];?></a>
                              <?php $n++;}unset($n); } ?>
                            
                        </dd>
                    </dl>
                <?php $n++;}unset($n); } ?>
            
            <div class="st-wechat">
                <?php if($GLOBALS['cfg_weixin_logo']) { ?>
                  <img class="fl" src="<?php echo $GLOBALS['cfg_weixin_logo'];?>" width="94" height="94" />
                  <span>微信扫一扫，<br />优惠多多！</span>
                <?php } ?>
            </div>
        </div>
    </div>
</div><!--帮助 扫码-->