<?php echo $header; ?>
<div class="container">

  <div class="row">

    <?php echo $column_left; ?>

    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>

    <div id="content" class="<?php echo $class; ?>">

      <div class="hidden-md hidden-lg">
        <?php echo $content_top; ?>
      </div>
    </div>
      <!-- latest
            <div class="row">
      -->
              <!-- <div class="hidden-xs hidden-sm col-md-3">
                <div class="panel-dark" style="max-width: 270px;">
                  <div class="nav-menu-wrapper">
                    <a href="#" class="dropdown-toggle catalog-opening-link" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> Каталог товаров  <i class="fa fa-angle-down"></i>
                    </a>
                    <nav id="menu2" class="dropdown-menu nav-menu">
                      <ul class="nav">
                        <li><a href="http://mao.reclamare.ua/desktops">Great Wall</a></li>
                        <li><a href="http://mao.reclamare.ua/laptop-notebook">Lifan</a></li>
                        <li class="has-submenu">
                          <a href="http://mao.reclamare.ua/component" class="">Chery</a>
                          <div class="submenu panel-dark">
                            <ul class="list-unstyled">
                              <li><a href="http://mao.reclamare.ua/index.php?route=product/category&amp;path=25_59">Chery A13 / Zaz Forza</a></li>
                              <li><a href="http://mao.reclamare.ua/index.php?route=product/category&amp;path=25_61">Chery Cross Eastar (B14)</a></li>
                              <li><a href="http://mao.reclamare.ua/index.php?route=product/category&amp;path=25_62">Chery Eastar (B11)</a></li>
                              <li><a href="http://mao.reclamare.ua/index.php?route=product/category&amp;path=25_63">Chery Jaggi</a></li>
                              <li><a href="http://mao.reclamare.ua/index.php?route=product/category&amp;path=25_60">Chery M11</a></li>
                              <li><a href="http://mao.reclamare.ua/component/mouse">Chery Amulet (A11-A15)</a></li>
                              <li><a href="http://mao.reclamare.ua/component/scanner">Chery Elara (Fora) (A21)</a></li>
                              <li><a href="http://mao.reclamare.ua/component/web-camera">Chery Kimo (S12 )</a></li>
                              <li><a href="http://mao.reclamare.ua/component/monitor">Chery QQ (S11)</a></li>
                              <li><a href="http://mao.reclamare.ua/component/printer">Chery Tiggo (T11)</a></li>
                            </ul>
                          </div>
                        </li>
                        <li><a href="http://mao.reclamare.ua/tablet">Kia</a></li>
                        <li><a href="http://mao.reclamare.ua/software">Hyundai</a></li>
                        <li><a href="http://mao.reclamare.ua/smartphone">Chevrolet</a></li>
                        <li><a href="http://mao.reclamare.ua/camera">BYD</a></li>
                        <li><a href="http://mao.reclamare.ua/mp3-players">Daewoo</a></li>
                      </ul>
                      <ul class="nav nav-link top-menu-links">
                        <li><a href="http://mao.reclamare.ua/garanty">Гарантия</a></li>
                        <li><a href="http://mao.reclamare.ua/delivery">Доставка и оплата</a></li>
                        <li><a href="http://mao.reclamare.ua/index.php?route=information/contact">Контакты</a></li>
                      </ul>
                    </nav>
                  </div>

                  <!-- TODO: вывести динамически -->

            <!-- <div class="breadcrumb-wrapper">
              <ul class="breadcrumb">
                <li><a href="http://mao.reclamare.ua/index.php?route=common/home">Главная</a></li>
                <li><a href="http://mao.reclamare.ua/component">Chery</a></li>
                <li class="subcategories-links">
                  <a href="#">Аккумулятор BOSCH 60Ah/540A (R+ Std.) 242x175x190 B13 S4 (start</a>
                </li>
              </ul>
            </div>
          </div> -->
        </div> -->

        <div class="col-md-6">
          <h1><?php echo $heading_title; ?></h1>
          <?php if ($thumb || $images) { ?>

          <div class="row">
            <div class="col-xs-12">
              <div class="panel-dark product-single">
                <div class="hr-bottom clearfix">
                  <div class="img-wrapper">
                    <img src="<?php echo $thumb; ?>" class="product-single-img" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" />
                  </div>
                  <div class="description-wrapper">
                    <ul class="list-unstyled">
                      <!-- <?php if ($manufacturer) { ?>
                      <li><?php echo $text_manufacturer; ?>
                        <a href="<?php echo $manufacturers; ?>"><?php echo $manufacturer; ?></a>
                      </li>
                      <?php } ?> -->
                      <li>
                        <?php echo $text_model; ?>
                        <?php echo $model; ?></li>
                      <!-- <?php if ($reward) { ?>
                      <li><?php echo $text_reward; ?> <?php echo $reward; ?></li>
                      <?php } ?> -->
                      <li>
                        <!-- <?php echo $text_stock; ?> -->
                        <?php echo $stock; ?>
                        </li>
                      <li>
                        <div class="product-card-rating">
                          <span class="fa fa-stack"><i class="fa fa-star star fa-stack-1x"></i></span>
                          <span class="fa fa-stack"><i class="fa fa-star star fa-stack-1x"></i></span>
                          <span class="fa fa-stack"><i class="fa fa-star star fa-stack-1x"></i></span>
                          <span class="fa fa-stack"><i class="fa fa-star-o rating-reverse fa-stack-1x"></i></span>
                          <span class="fa fa-stack"><i class="fa fa-star-o rating-reverse fa-stack-1x"></i></span>
                        </div>
                        &nbsp;&nbsp;&nbsp;
                        <a href="#">2 отзыва</a>
                      </li>
                    </ul>

                    <?php if ($price) { ?>
                    <ul class="list-unstyled product-card-price">
                      <?php if (!$special) { ?>
                      <li class="main-price">
                        <span><?php echo $price; ?></span>
                      </li>
                      <?php } else { ?>
                      <li class="old-price">
                        <span style="text-decoration: line-through;"><?php echo $price; ?></span>
                      </li>
                      <li class="main-price">
                        <div><?php echo $special; ?></div>
                      </li>
                      <?php } ?>
                      <!-- <?php if ($tax) { ?>
                      <li><?php echo $text_tax; ?> <?php echo $tax; ?></li>
                      <?php } ?>
                      <?php if ($points) { ?>
                      <li><?php echo $text_points; ?> <?php echo $points; ?></li>
                      <?php } ?>
                      <?php if ($discounts) { ?>
                      <li></li>
                      <?php foreach ($discounts as $discount) { ?>
                      <li><?php echo $discount['quantity']; ?><?php echo $text_discount; ?><?php echo $discount['price']; ?></li>
                      <?php } ?>
                      <?php } ?> -->
                    </ul>
                    <?php } ?>
                    <button type="button" id="button-cart" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-hover btn-default"><?php echo $button_cart; ?></button>
                  </div>
                </div>
                <p class="product-description-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci at atque cum doloremque inventore nulla quis vel. Earum, inventore, provident!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci at atque cum doloremque inventore nulla quis vel. Earum, inventore, provident!</p>
              </div>
            </div>

            <div class="col-xs-12">
              <div class="panel-dark goods-couple">

                <div class="h1">Вместе дешевле</div>
                <div class="owl-carousel" id="goods-couple-slider">
                    <div class="owl-item">
                      <div class="clearfix sale-prop">
                        <div class="col-sm-4">
                          <div class="first-itm-b">
                            <div class="first-itm clearfix">
                              <div class="img-wrap">
                                <img src="./catalog/view/theme/default/image/car11.jpg" class="sale-prop-img" title="heading_title" alt="heading_title" />
                              </div>
                              <div class="itm-descr">
                                <span class="title">Ступица передняя с подшипником в сборе (B11-3001030AB) SNR</span>
                                <br>
                                <span class="price-single">7 690 грн.</span>
                                <span class="price-couple">2 690 грн.</span>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="col-sm-4">
                          <div class="second-itm-b">
                            <div class="second-itm clearfix">
                              <div class="img-wrap">
                                <img src="./catalog/view/theme/default/image/car11.jpg" class="sale-prop-img" title="heading_title" alt="heading_title" />
                              </div>
                              <div class="itm-descr">
                                <span class="title">Ступица передняя с подшипником</span>
                                <br>
                                <span class="price-single">17 690 грн.</span>
                                <span class="price-couple">112 690 грн.</span>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="col-sm-4">
                          <div class="summ">
                            <div class="total-price-buy panel-dark">
                              <div class="couple-summ">15 380 грн.</div>
                              <button type="button" id="button-cart" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-hover btn-default btn-xs"><?php echo $button_cart; ?></button>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="owl-item"><div class="clearfix sale-prop">
                        <div class="col-sm-4">
                          <div class="first-itm-b">
                            <div class="first-itm clearfix">
                              <div class="img-wrap">
                                <img src="./catalog/view/theme/default/image/car11.jpg" class="sale-prop-img" title="heading_title" alt="heading_title" />
                              </div>
                              <div class="itm-descr">
                                <span class="title">Ступица передняя с подшипником в сборе (B11-3001030AB) SNR</span>
                                <br>
                                <span class="price-single">7 690 грн.</span>
                                <span class="price-couple">2 690 грн.</span>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="col-sm-4">
                          <div class="second-itm-b">
                            <div class="second-itm clearfix">
                              <div class="img-wrap">
                                <img src="./catalog/view/theme/default/image/car11.jpg" class="sale-prop-img" title="heading_title" alt="heading_title" />
                              </div>
                              <div class="itm-descr">
                                <span class="title">Ступица передняя с подшипником</span>
                                <br>
                                <span class="price-single">17 690 грн.</span>
                                <span class="price-couple">112 690 грн.</span>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="col-sm-4">
                          <div class="summ">
                            <div class="total-price-buy panel-dark">
                              <div class="couple-summ">15 380 грн.</div>
                              <button type="button" id="button-cart" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-hover btn-default btn-xs"><?php echo $button_cart; ?></button>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="owl-item"><div class="clearfix sale-prop">
                        <div class="col-sm-4">
                          <div class="first-itm-b">
                            <div class="first-itm clearfix">
                              <div class="img-wrap">
                                <img src="./catalog/view/theme/default/image/car11.jpg" class="sale-prop-img" title="heading_title" alt="heading_title" />
                              </div>
                              <div class="itm-descr">
                                <span class="title">Ступица передняя с подшипником в сборе (B11-3001030AB) SNR</span>
                                <br>
                                <span class="price-single">7 690 грн.</span>
                                <span class="price-couple">2 690 грн.</span>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="col-sm-4">
                          <div class="second-itm-b">
                            <div class="second-itm clearfix">
                              <div class="img-wrap">
                                <img src="./catalog/view/theme/default/image/car11.jpg" class="sale-prop-img" title="heading_title" alt="heading_title" />
                              </div>
                              <div class="itm-descr">
                                <span class="title">Ступица передняя с подшипником</span>
                                <br>
                                <span class="price-single">17 690 грн.</span>
                                <span class="price-couple">112 690 грн.</span>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="col-sm-4">
                          <div class="summ">
                            <div class="total-price-buy panel-dark">
                              <div class="couple-summ">15 380 грн.</div>
                              <button type="button" id="button-cart" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-hover btn-default btn-xs"><?php echo $button_cart; ?></button>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>

              </div>
            </div>
            <div class="col-xs-12">
                <div class="feedback-blck panel-dark clearfix">
					<div class="col-sm-12">
						<h2 class="h2"><?php echo $text_write; ?></h2>
					</div>
                  <form class="form-horizontal" id="form-review">

                    <?php if ($review_guest) { ?>
                      <div class="col-sm-6 required">

                          <input type="text" name="name" value="" id="input-name" class="form-control" placeholder="<?php echo $entry_name; ?>"/>

                      </div>
                      <div class="col-sm-6 required">


                          <!-- TODO сделать красиво-->
                          <input type="email" name="email" value="" id="input-emal" class="form-control" placeholder="Ваш e-mail"/>

                      </div>
                    <div class="required clearfix">
                      <div class="col-sm-12">
                        <textarea name="text" rows="5" id="input-review" class="form-control" placeholder="<?php echo $entry_review; ?>"></textarea>
                      </div>
                    </div>
                    <div class="required clearfix">
                      <div class="user-rating col-sm-12">
                        <span class="control-label h3"><?php echo $entry_rating; ?></span>
						  <div class="clearfix">
							  <span class="legend-rating"><?php echo $entry_bad; ?></span>
							  <input type="radio" name="rating" value="1" id="the-worst-rating"/>
							  <label for="the-worst-rating" class="fa fa-circle-o"></label>
							  <input type="radio" name="rating" value="2"  id="bad-rating"/>
							  <label for="bad-rating" class="fa fa-circle-o"></label>
							  <input type="radio" name="rating" value="3"  id="normal-rating"/>
							  <label for="normal-rating" class="fa fa-circle-o"></label>
							  <input type="radio" name="rating" value="4"  id="good-rating"/>
							  <label for="good-rating" class="fa fa-circle-o"></label>
							  <input type="radio" name="rating" value="5"  id="the-best-rating"/>
							  <label for="the-best-rating" class="fa fa-circle-o"></label>
							  <span class="legend-rating"><?php echo $entry_good; ?></span>
						  </div>
                      </div>
                    </div>
                    <div class="buttons clearfix">
						<div class="col-xs-12">
							<div class="pull-left capcha">

								<!-- TODO сделать капчу-->

								<?php echo $captcha; ?>
								<img src="./catalog/view/theme/default/image/cap4a.png" alt="">
							</div>
							<div class="button-wrapper pull-right">
								<button type="button" id="button-review" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-hover btn-outline"><?php echo $button_continue; ?></button>
							</div>
						</div>
                    </div>
                    <?php } else { ?>
                    <?php echo $text_login; ?>
                    <?php } ?>
                  </form>
					<div class="col-sm-12">
						<div id="review" class="feedback-review"></div>
					</div>
					<div class="col-sm-12">
						<div id="users-reviews" class="users-reviews">
							<div class="review-single">
								<div class="review-head clearfix">
									<div class="user-atrs pull-left">
										<div>Витя Сидоров</div>
										<span>24.08.12</span> <span>09:48</span>
									</div>
									<div class="user-rating pull-right">
										<span class="fa fa-stack"><i class="fa fa-star star fa-stack-1x"></i></span>
										<span class="fa fa-stack"><i class="fa fa-star star fa-stack-1x"></i></span>
										<span class="fa fa-stack"><i class="fa fa-star star fa-stack-1x"></i></span>
										<span class="fa fa-stack"><i class="fa fa-star-o rating-reverse fa-stack-1x"></i></span>
										<span class="fa fa-stack"><i class="fa fa-star-o rating-reverse fa-stack-1x"></i></span>
									</div>
								</div>
								<div class="review-text">
									<p>Заказал себе на день рождения. Рекомендую.</p>
								</div>
							</div>
							<div class="review-single">
								<div class="review-head clearfix">
									<div class="user-atrs pull-left">
										<div>Вася Иванов</div>
										<span>24.08.12</span> <span>09:48</span>
									</div>
									<div class="user-rating pull-right">
										<span class="fa fa-stack"><i class="fa fa-star star fa-stack-1x"></i></span>
										<span class="fa fa-stack"><i class="fa fa-star star fa-stack-1x"></i></span>
										<span class="fa fa-stack"><i class="fa fa-star star fa-stack-1x"></i></span>
										<span class="fa fa-stack"><i class="fa fa-star-o rating-reverse fa-stack-1x"></i></span>
										<span class="fa fa-stack"><i class="fa fa-star-o rating-reverse fa-stack-1x"></i></span>
									</div>
								</div>
								<div class="review-text">
									<p>Куплю ещё, и не раз!)</p>
								</div>
							</div>
							<div class="review-single">
								<div class="review-head clearfix">
									<div class="user-atrs pull-left">
										<div>Коля Петров</div>
										<span>24.08.12</span> <span>09:48</span>
									</div>
									<div class="user-rating pull-right">
										<span class="fa fa-stack"><i class="fa fa-star star fa-stack-1x"></i></span>
										<span class="fa fa-stack"><i class="fa fa-star star fa-stack-1x"></i></span>
										<span class="fa fa-stack"><i class="fa fa-star star fa-stack-1x"></i></span>
										<span class="fa fa-stack"><i class="fa fa-star-o rating-reverse fa-stack-1x"></i></span>
										<span class="fa fa-stack"><i class="fa fa-star-o rating-reverse fa-stack-1x"></i></span>
									</div>
								</div>
								<div class="review-text">
									<p>Качество на высоте!</p>
								</div>
							</div>
						</div>
					</div>
                </div>
            </div>
          </div>

          <!-- <ul class="thumbnails">
            <?php if ($thumb) { ?>
            <li>
              <a class="thumbnail" href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>">
                <img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" />
              </a>
            </li>
            <?php } ?>
            <?php if ($images) { ?>
            <?php foreach ($images as $image) { ?>
            <li class="image-additional">
              <a class="thumbnail" href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>">
                <img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" />
              </a>
            </li>
            <?php } ?>
            <?php } ?>
          </ul> -->
          <?php } ?>



          <!-- <ul class="nav nav-tabs">
            <li class="active"><a href="#tab-description" data-toggle="tab"><?php echo $tab_description; ?></a></li>
            <?php if ($attribute_groups) { ?>
            <li><a href="#tab-specification" data-toggle="tab"><?php echo $tab_attribute; ?></a></li>
            <?php } ?>
            <?php if ($review_status) { ?>
            <li><a href="#tab-review" data-toggle="tab"><?php echo $tab_review; ?></a></li>
            <?php } ?>
          </ul>
          <div class="tab-content">
            <div class="tab-pane active" id="tab-description"><?php echo $description; ?></div>
            <?php if ($attribute_groups) { ?>
            <div class="tab-pane" id="tab-specification">
              <table class="table table-bordered">
                <?php foreach ($attribute_groups as $attribute_group) { ?>
                <thead>
                  <tr>
                    <td colspan="2"><strong><?php echo $attribute_group['name']; ?></strong></td>
                  </tr>
                </thead>
                <tbody>
                  <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
                  <tr>
                    <td><?php echo $attribute['name']; ?></td>
                    <td><?php echo $attribute['text']; ?></td>
                  </tr>
                  <?php } ?>
                </tbody>
                <?php } ?>
              </table>
            </div>
            <?php } ?>
            <?php if ($review_status) { ?>
            <div class="tab-pane" id="tab-review">
              <form class="form-horizontal" id="form-review">
                <div id="review"></div>
                <h2><?php echo $text_write; ?></h2>
                <?php if ($review_guest) { ?>
                <div class="form-group required">
                  <div class="col-sm-12">
                    <label class="control-label" for="input-name"><?php echo $entry_name; ?></label>
                    <input type="text" name="name" value="" id="input-name" class="form-control" />
                  </div>
                </div>
                <div class="form-group required">
                  <div class="col-sm-12">
                    <label class="control-label" for="input-review"><?php echo $entry_review; ?></label>
                    <textarea name="text" rows="5" id="input-review" class="form-control"></textarea>
                    <div class="help-block"><?php echo $text_note; ?></div>
                  </div>
                </div>
                <div class="form-group required">
                  <div class="col-sm-12">
                    <label class="control-label"><?php echo $entry_rating; ?></label>
                    &nbsp;&nbsp;&nbsp; <?php echo $entry_bad; ?>&nbsp;
                    <input type="radio" name="rating" value="1" />
                    &nbsp;
                    <input type="radio" name="rating" value="2" />
                    &nbsp;
                    <input type="radio" name="rating" value="3" />
                    &nbsp;
                    <input type="radio" name="rating" value="4" />
                    &nbsp;
                    <input type="radio" name="rating" value="5" />
                    &nbsp;<?php echo $entry_good; ?></div>
                </div>
                <?php echo $captcha; ?>
                <div class="buttons clearfix">
                  <div class="pull-right">
                    <button type="button" id="button-review" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary"><?php echo $button_continue; ?></button>
                  </div>
                </div>
                <?php } else { ?>
                <?php echo $text_login; ?>
                <?php } ?>
              </form>
            </div>
            <?php } ?>
          </div> -->

        </div>
    <?php echo $column_right; ?>

        <!--todo: Вывести эти картинки через админку-->
<!--
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
-->

        <!-- <div class="">


          <div id="product">
            <?php if ($options) { ?>
            <hr>
            <h3><?php echo $text_option; ?></h3>
            <?php foreach ($options as $option) { ?>
            <?php if ($option['type'] == 'select') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <select name="option[<?php echo $option['product_option_id']; ?>]" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control">
                <option value=""><?php echo $text_select; ?></option>
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                <?php if ($option_value['price']) { ?>
                (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                <?php } ?>
                </option>
                <?php } ?>
              </select>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'radio') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <div id="input-option<?php echo $option['product_option_id']; ?>">
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <div class="radio">
                  <label>
                    <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                    <?php echo $option_value['name']; ?>
                    <?php if ($option_value['price']) { ?>
                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                    <?php } ?>
                  </label>
                </div>
                <?php } ?>
              </div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'checkbox') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <div id="input-option<?php echo $option['product_option_id']; ?>">
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <div class="checkbox">
                  <label>
                    <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                    <?php echo $option_value['name']; ?>
                    <?php if ($option_value['price']) { ?>
                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                    <?php } ?>
                  </label>
                </div>
                <?php } ?>
              </div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'image') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <div id="input-option<?php echo $option['product_option_id']; ?>">
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <div class="radio">
                  <label>
                    <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                    <img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" /> <?php echo $option_value['name']; ?>
                    <?php if ($option_value['price']) { ?>
                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                    <?php } ?>
                  </label>
                </div>
                <?php } ?>
              </div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'text') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'textarea') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <textarea name="option[<?php echo $option['product_option_id']; ?>]" rows="5" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control"><?php echo $option['value']; ?></textarea>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'file') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <button type="button" id="button-upload<?php echo $option['product_option_id']; ?>" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-default btn-block"><i class="fa fa-upload"></i> <?php echo $button_upload; ?></button>
              <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" id="input-option<?php echo $option['product_option_id']; ?>" />
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'date') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="input-group date">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button class="btn btn-default" type="button"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'datetime') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="input-group datetime">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'time') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="input-group time">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            <?php } ?>
            <?php } ?>
            <?php } ?>
            <?php if ($recurrings) { ?>
            <hr>
            <h3><?php echo $text_payment_recurring ?></h3>
            <div class="form-group required">
              <select name="recurring_id" class="form-control">
                <option value=""><?php echo $text_select; ?></option>
                <?php foreach ($recurrings as $recurring) { ?>
                <option value="<?php echo $recurring['recurring_id'] ?>"><?php echo $recurring['name'] ?></option>
                <?php } ?>
              </select>
              <div class="help-block" id="recurring-description"></div>
            </div>
            <?php } ?>
            <div class="form-group">
              <label class="control-label" for="input-quantity"><?php echo $entry_qty; ?></label>
              <input type="text" name="quantity" value="<?php echo $minimum; ?>" size="2" id="input-quantity" class="form-control" />
              <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
              <br />
              <button type="button" id="button-cart" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary btn-lg btn-block"><?php echo $button_cart; ?></button>
            </div>
            <?php if ($minimum > 1) { ?>
            <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $text_minimum; ?></div>
            <?php } ?>
          </div>
          <?php if ($review_status) { ?>
          <div class="rating">
            <p>
              <?php for ($i = 1; $i <= 5; $i++) { ?>
              <?php if ($rating < $i) { ?>
              <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
              <?php } else { ?>
              <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
              <?php } ?>
              <?php } ?>
              <a href="" onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;"><?php echo $reviews; ?></a> / <a href="" onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;"><?php echo $text_write; ?></a></p>
            <hr>
          </div>
          <?php } ?>
        </div> -->
      </div>
      <?php if ($products) { ?>

      <div class="row">
		  <h3><?php echo $text_related; ?></h3>
		  <div class="owl-carousel goods-related-slider" id="goods-related-slider">
        <?php $i = 0; ?>
        <?php foreach ($products as $product) { ?>
          <div class="product-thumb transition item">
            <div class="image">
				<a href="<?php echo $product['href']; ?>">
					<img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" />
				</a>
			</div>
            <div class="caption">
				<div class="product-name">
					<a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
				</div>
				<div class="product-footer">
					<?php if ($product['price']) { ?>
					<p class="price">
						<?php if (!$product['special']) { ?>
						<?php echo $product['price']; ?>
						<?php } else { ?>
						<span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
						<?php } ?>
					</p>
					<button type="button" class="btn btn-hover btn-outline btn-shopping-cart" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');"><i class="fa fa-shopping-cart"></i></button>
					<?php } ?>
				</div>

            </div>

		  </div>
        <?php $i++; ?>
        <?php } ?>
			  <div class="product-thumb transition item">
				  <div class="image">
					  <a href="http://mao.reclamare.ua/iphone">
						  <img src="http://mao.reclamare.ua/image/cache/catalog/car11-228x228.jpg" alt="Ступица передняя с подшипником в сборе (B11-3001030AB) SNR" title="Ступица передняя с подшипником в сборе (B11-3001030AB) SNR" class="img-responsive">
					  </a>
				  </div>
				  <div class="caption">
					  <div class="product-name">
						  <a href="http://mao.reclamare.ua/iphone">Ступица в сборе (B11-3001030AB) SNR</a>
					  </div>
					  <div class="product-footer">
						  <p class="price">
							  101.00 грн.											</p>
						  <button type="button" class="btn btn-hover btn-outline btn-shopping-cart" onclick="cart.add('40', '1');"><i class="fa fa-shopping-cart"></i></button>
					  </div>
				  </div>
			  </div>
			  <div class="product-thumb transition item">
				  <div class="image">
					  <a href="http://mao.reclamare.ua/iphone">
						  <img src="http://mao.reclamare.ua/image/cache/catalog/car11-228x228.jpg" alt="Ступица передняя с подшипником в сборе (B11-3001030AB) SNR" title="Ступица передняя с подшипником в сборе (B11-3001030AB) SNR" class="img-responsive">
					  </a>
				  </div>
				  <div class="caption">
					  <div class="product-name">
						  <a href="http://mao.reclamare.ua/iphone">Ступица с подшипником в сборе SNR</a>
					  </div>
					  <div class="product-footer">
						  <p class="price">
							  101.00 грн.											</p>
						  <button type="button" class="btn btn-hover btn-outline btn-shopping-cart" onclick="cart.add('40', '1');"><i class="fa fa-shopping-cart"></i></button>
					  </div>
				  </div>
			  </div>
			  <div class="product-thumb transition item">
				  <div class="image">
					  <a href="http://mao.reclamare.ua/iphone">
						  <img src="http://mao.reclamare.ua/image/cache/catalog/car11-228x228.jpg" alt="Ступица передняя с подшипником в сборе (B11-3001030AB) SNR" title="Ступица передняя с подшипником в сборе (B11-3001030AB) SNR" class="img-responsive">
					  </a>
				  </div>
				  <div class="caption">
					  <div class="product-name">
						  <a href="http://mao.reclamare.ua/iphone">Ступица передняя с подшипником</a>
					  </div>
					  <div class="product-footer">
						  <p class="price">
							  101.00 грн.
						  </p>
						  <button type="button" class="btn btn-hover btn-outline btn-shopping-cart" onclick="cart.add('40', '1');"><i class="fa fa-shopping-cart"></i></button>
					  </div>
				  </div>
			  </div>
			  <div class="product-thumb transition item">
				  <div class="image">
					  <a href="http://mao.reclamare.ua/iphone">
						  <img src="http://mao.reclamare.ua/image/cache/catalog/car11-228x228.jpg" alt="Ступица передняя с подшипником в сборе (B11-3001030AB) SNR" title="Ступица передняя с подшипником в сборе (B11-3001030AB) SNR" class="img-responsive">
					  </a>
				  </div>
				  <div class="caption">
					  <div class="product-name">
						  <a href="http://mao.reclamare.ua/iphone">Ступица передняя с подшипником в сборе</a>
					  </div>
					  <div class="product-footer">
						  <p class="price">
							  101.00 грн.
						  </p>
						  <button type="button" class="btn btn-hover btn-outline btn-shopping-cart" onclick="cart.add('40', '1');"><i class="fa fa-shopping-cart"></i></button>
					  </div>
				  </div>
			  </div>
			  <div class="product-thumb transition item">
				  <div class="image">
					  <a href="http://mao.reclamare.ua/iphone">
						  <img src="http://mao.reclamare.ua/image/cache/catalog/car11-228x228.jpg" alt="Ступица передняя с подшипником в сборе (B11-3001030AB) SNR" title="Ступица передняя с подшипником в сборе (B11-3001030AB) SNR" class="img-responsive">
					  </a>
				  </div>
				  <div class="caption">
					  <div class="product-name">
						  <a href="http://mao.reclamare.ua/iphone">Ступица</a>
					  </div>
					  <div class="product-footer">
						  <p class="price">
							  101.00 грн.
						  </p>
						  <button type="button" class="btn btn-hover btn-outline btn-shopping-cart" onclick="cart.add('40', '1');"><i class="fa fa-shopping-cart"></i></button>
					  </div>
				  </div>
			  </div>
			  <div class="product-thumb transition item">
				  <div class="image">
					  <a href="http://mao.reclamare.ua/iphone">
						  <img src="http://mao.reclamare.ua/image/cache/catalog/car11-228x228.jpg" alt="Ступица передняя с подшипником в сборе (B11-3001030AB) SNR" title="Ступица передняя с подшипником в сборе (B11-3001030AB) SNR" class="img-responsive">
					  </a>
				  </div>
				  <div class="caption">
					  <div class="product-name">
						  <a href="http://mao.reclamare.ua/iphone">Ступица</a>
					  </div>
					  <div class="product-footer">
						  <p class="price">
							  101.00 грн.
						  </p>
						  <button type="button" class="btn btn-hover btn-outline btn-shopping-cart" onclick="cart.add('40', '1');"><i class="fa fa-shopping-cart"></i></button>
					  </div>
				  </div>
			  </div>
      </div>
      <?php } ?>
	  </div>
      <?php echo $content_bottom; ?>
<!-- latest
</div>
-->
    </div>
</div>
<script type="text/javascript"><!--
$('select[name=\'recurring_id\'], input[name="quantity"]').change(function(){
	$.ajax({
		url: 'index.php?route=product/product/getRecurringDescription',
		type: 'post',
		data: $('input[name=\'product_id\'], input[name=\'quantity\'], select[name=\'recurring_id\']'),
		dataType: 'json',
		beforeSend: function() {
			$('#recurring-description').html('');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();

			if (json['success']) {
				$('#recurring-description').html(json['success']);
			}
		}
	});
});
//--></script>
<script type="text/javascript"><!--
$('#button-cart').on('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
		dataType: 'json',
		beforeSend: function() {
			$('#button-cart').button('loading');
		},
		complete: function() {
			$('#button-cart').button('reset');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();
			$('.form-group').removeClass('has-error');

			if (json['error']) {
				if (json['error']['option']) {
					for (i in json['error']['option']) {
						var element = $('#input-option' + i.replace('_', '-'));

						if (element.parent().hasClass('input-group')) {
							element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						} else {
							element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						}
					}
				}

				if (json['error']['recurring']) {
					$('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
				}

				// Highlight any found errors
				$('.text-danger').parent().addClass('has-error');
			}

			if (json['success']) {
				$('.breadcrumb').after('<div class="alert alert-success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

				$('#cart > button').html('<i class="fa fa-shopping-cart"></i> ' + json['total']);

				//$('html, body').animate({ scrollTop: 0 }, 'slow');

				$('#cart > ul').load('index.php?route=common/cart/info ul li');
			}
		},
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
	});
});
//--></script>
<script type="text/javascript"><!--
//$('.date').datetimepicker({
//	pickTime: false
//});
//
//$('.datetime').datetimepicker({
//	pickDate: true,
//	pickTime: true
//});
//
//$('.time').datetimepicker({
//	pickDate: false
//});

$('button[id^=\'button-upload\']').on('click', function() {
	var node = this;

	$('#form-upload').remove();

	$('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

	$('#form-upload input[name=\'file\']').trigger('click');

	if (typeof timer != 'undefined') {
    	clearInterval(timer);
	}

	timer = setInterval(function() {
		if ($('#form-upload input[name=\'file\']').val() != '') {
			clearInterval(timer);

			$.ajax({
				url: 'index.php?route=tool/upload',
				type: 'post',
				dataType: 'json',
				data: new FormData($('#form-upload')[0]),
				cache: false,
				contentType: false,
				processData: false,
				beforeSend: function() {
					$(node).button('loading');
				},
				complete: function() {
					$(node).button('reset');
				},
				success: function(json) {
					$('.text-danger').remove();

					if (json['error']) {
						$(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
					}

					if (json['success']) {
						alert(json['success']);

						$(node).parent().find('input').attr('value', json['code']);
					}
				},
				error: function(xhr, ajaxOptions, thrownError) {
					alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});
		}
	}, 500);
});
//--></script>
<script type="text/javascript"><!--
$('#review').delegate('.pagination a', 'click', function(e) {
    e.preventDefault();

    $('#review').fadeOut('slow');

    $('#review').load(this.href);

    $('#review').fadeIn('slow');
});

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').on('click', function() {
	$.ajax({
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		type: 'post',
		dataType: 'json',
		data: $("#form-review").serialize(),
		beforeSend: function() {
			$('#button-review').button('loading');
		},
		complete: function() {
			$('#button-review').button('reset');
		},
		success: function(json) {
			$('.alert-success, .alert-danger').remove();

			if (json['error']) {
				$('#review').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
			}

			if (json['success']) {
				$('#review').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').prop('checked', false);
			}
		}
	});
});

$(document).ready(function() {
	//$('.thumbnails').magnificPopup({
	//	type:'image',
	//	delegate: 'a',
	//	gallery: {
	//		enabled:true
	//	}
	//});

  $('#goods-couple-slider').owlCarousel({
    navigation: true,
    paginationSpeed : 400,
    navigationText: ['<i class="fa fa-angle-left"></i>', '<i class="fa fa-angle-right"></i>'],
    singleItem: true,
    pagination: false
  });

	$('#goods-related-slider').owlCarousel({
		items : 7,
		loop: true,
		navigation: true,
		paginationSpeed : 400,
		navigationText: ['<i class="fa fa-angle-left"></i>', '<i class="fa fa-angle-right"></i>'],
		pagination: false,
		itemsCustom : [
			[0, 2],
			[450, 2],
			[560, 3],
			[600, 3],
			[775, 4],
			[1000, 5],
			[1200, 6]
		]
	});

});
//--></script>
<?php echo $footer; ?>
