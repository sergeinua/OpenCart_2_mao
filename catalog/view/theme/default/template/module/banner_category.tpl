<div class="img-banners-wrapper">
    <div class="row">

        <?php foreach ($modules as $module) { ?>

            <div class="col-xs-6 col-md-12">
                <a href="<?php echo $module['link']; ?>" role="link">
                    <img src="<?php echo $module['image']; ?>" alt="banner_title">
                </a>
            </div>

        <?php } ?>

    </div>
</div>