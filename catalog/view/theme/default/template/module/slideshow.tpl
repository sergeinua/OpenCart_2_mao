<div class="col-sm-12 col-md-6">

    <div id="slideshow<?php echo $module; ?>" class="owl-carousel homepage-slider" style="opacity: 1;">
        <?php foreach ($banners as $banner) { ?>
        <div class="item">
            <?php if ($banner['link']) { ?>
            <a href="<?php echo $banner['link']; ?>" class="homepage-slider-item"
               style="background-image: url(<?php echo $banner['image']; ?>)"
               title="<?php echo $banner['title']; ?>"></a>
            <?php } else { ?>
            <div class="homepage-slider-item" style="background-image: url(<?php echo $banner['image']; ?>)"
                 title="<?php echo $banner['title']; ?>"></div>
            <?php } ?>
        </div>
        <?php } ?>
    </div>
    <script type="text/javascript"><!--
    $('#slideshow<?php echo $module; ?>').owlCarousel({
        items: 1,
        autoPlay: 3000,
        singleItem: true,
        navigation: true,
        navigationText: ['<i class="fa fa-chevron-left fa-5x"></i>', '<i class="fa fa-chevron-right fa-5x"></i>'],
        pagination: false
    });
    --></script>

</div>
<!--todo: Вывести эти картинки через админку-->
<div class="col-md-3">

    <div class="img-banners-wrapper">
        <div class="row">
            <div class="col-xs-6 col-md-12">
                <a href="#" role="link">
                    <img src="./catalog/view/theme/default/image/mao_free-delivery_250x2501.jpg" alt="banner_title">
                </a>
            </div>
            <div class="col-xs-6 col-md-12">
                <a href="#" role="link">
                    <img src="./catalog/view/theme/default/image/mao_delivery-kiev_250x2501.jpg" alt="banner_title">
                </a>
            </div>
        </div>
    </div>

</div>
</div>
