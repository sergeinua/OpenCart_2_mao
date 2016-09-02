<div id="banner<?php echo $module; ?>">
    <?php foreach ($modules as $module) { ?>
        <div class="item">
            <?php if ($module['link']) { ?>
                <a href="<?php echo $module['link']; ?>"><img src="<?php echo $module['image']; ?>" class="img-responsive" /></a>
            <?php } else { ?>
                <img src="<?php echo $module['image']; ?>" class="img-responsive" />
            <?php } ?>
        </div>
    <?php } ?>
</div>