<?php echo Common::css('footer.css');?>
<div class="st-brand">
    <div class="wm-1200">
        <div class="st-serve">
            <dl class="ico01 bor_0">
                <dt></dt>
                <dd>
                    <em>阳光价格</em>
                    <span>同类产品，保证低价</span>
                </dd>
            </dl>
            <dl class="ico02">
                <dt></dt>
                <dd>
                    <em>阳光行程</em>
                    <span>品质护航，透明公开</span>
                </dd>
            </dl>
            <dl class="ico03">
                <dt></dt>
                <dd>
                    <em>阳光服务</em>
                    <span>专属客服，快速响应</span>
                </dd>
            </dl>
            <dl class="ico04">
                <dt></dt>
                <dd>
                    <em>救援保障</em>
                    <span>途中意外，保证援助</span>
                </dd>
            </dl>
        </div>
    </div>
</div><!--品牌介绍-->
<?php echo Request::factory('pub/help')->execute()->body(); ?>
<div class="st-footer">
    <div class="wm-1200">
        <div class="st-foot-menu">
           <?php require_once ("D:/phpStudy/WWW/taglib/footnav.php");$footnav_tag = new Taglib_Footnav();if (method_exists($footnav_tag, 'pc')) {$data = $footnav_tag->pc(array('action'=>'pc','row'=>'10',));}?>
            <?php $n=1; if(is_array($data)) { foreach($data as $row) { ?>
             <a href="<?php echo $row['url'];?>"  target="_blank" rel="nofollow"><?php echo $row['title'];?></a>
            <?php $n++;}unset($n); } ?>
           
        </div><!--底部导航-->
        <div class="st-foot-edit">
            <?php echo $GLOBALS['cfg_footer'];?>
        </div><!--网站底部介绍-->
        <div class="support">旅游·让生活更美好！</div>
        <p><?php echo stripslashes($GLOBALS['cfg_tongjicode']);?></p>
    </div>
</div>
<?php echo  Stourweb_View::template("pub/right_slide");  ?>
<script src="/plugins/qq_kefu/public/js/qqkefu.js"></script>