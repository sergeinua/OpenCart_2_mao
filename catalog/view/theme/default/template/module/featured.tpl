<div class="featured-module">
    <div class="row">
        <div class="col-sm-12 col-md-9 col-md-push-3">
            <div class="h1"><?php echo $heading_title; ?></div>
            <div class="row">
                <?php foreach ($products as $product) { ?>
                <div class="product-layout col-lg-3 col-md-4 col-sm-4 col-xs-12">
                    <div class="product-thumb">
                        <a class="product-image" href="<?php echo $product['href']; ?>"
                           style="background-image: url(<?php echo $product['thumb']; ?>)"></a>
                        <div class="caption">
                            <div class="product-name"><a
                                    href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
                            <!--<p><?php echo $product['description']; ?></p>-->
                            <!--<?php if ($product['rating']) { ?>-->
                            <!--<div class="rating">-->
                            <!--<?php for ($i = 1; $i <= 5; $i++) { ?>-->
                            <!--<?php if ($product['rating'] < $i) { ?>-->
                            <!--<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>-->
                            <!--<?php } else { ?>-->
                            <!--<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i-->
                            <!--class="fa fa-star-o fa-stack-2x"></i></span>-->
                            <!--<?php } ?>-->
                            <!--<?php } ?>-->
                            <!--</div>-->
                            <!--<?php } ?>-->
                            <div class="product-footer">


                                <?php if ($product['price']) { ?>
                                <p class="price">
                                    <?php if (!$product['special']) { ?>
                            <span class="price-single">
                                <?php echo $product['price']; ?>
                            </span>
                                    <?php } else { ?>
                                    <span class="price-new"><?php echo $product['special']; ?></span> <span
                                        class="price-old"><?php echo $product['price']; ?></span>
                                    <?php } ?>
                                    <!--<?php if ($product['tax']) { ?>-->
                                    <!--<span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>-->
                                    <!--<?php } ?>-->
                                </p>
                                <?php } ?>
                                <button class="btn btn-hover btn-outline btn-shopping-cart" type="button"
                                        onclick="cart.add('<?php echo $product['product_id']; ?>');">
                                    <i class="fa fa-shopping-cart"></i>
                                </button>
                            </div>
                        </div>

                    </div>
                </div>

                <?php } ?>
                <!--TODO: give link href -->
                <div class="col-xs-12 col-sm-4 col-md-4">
                    <a class="featured-button-block" href="#">
                        <span>
                            Смотреть<br>
                            все предложения →
                        </span>
                    </a>
                </div>
            </div>


        </div>
    </div>
</div>