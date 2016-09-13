<?php $thumb='http://mao.reclamare.ua/image/cache/catalog/slider-homepage/12-hot-carwash-2013jpg-1140x380.jpg'; ?><?php echo $header; ?>
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




        </div>
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

                      <li>
                        <?php echo $text_model; ?>
                        <?php echo $model; ?></li>

                      <li>
                        <?php echo $stock; ?>
                        </li>
                      <li>
                        <div class="product-card-rating">
                            <?php for ($i = 0; $i < $rating; $i++ ) : ?>
                                <span class="fa fa-stack"><i class="fa fa-star star fa-stack-1x"></i></span>
                            <?php endfor; ?>
                            <?php for($i = 0; $i < (5 - $rating); $i++) : ?>
                                <span class="fa fa-stack"><i class="fa fa-star-o rating-reverse fa-stack-1x"></i></span>
                            <?php endfor; ?>
                        </div>
                        &nbsp;&nbsp;&nbsp;

                          <?php if ($review_status) { ?>
                        <a href="<?= $review_link; ?>"><?php echo $tab_review; ?></a>
                        <?php } ?>
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

                    </ul>
                    <?php } ?>
                      <button id="button-cart" type="button" class="btn btn-hover btn-default" onclick="cart.add('<?php echo $product_id; ?>');">
                          <?php echo $button_cart; ?>
                      </button>
                  </div>
                </div>
                <p class="product-description-text"><?= $description; ?></p>
              </div>
            </div>

              <?php if ($products) : ?>

                <div class="col-xs-12">
                  <div class="panel-dark goods-couple">
                    <div class="h1">Вместе дешевле</div>
                    <div class="owl-carousel" id="goods-couple-slider">

                        <?php foreach ($products as $item) : ?>

                            <div class="owl-item"><div class="clearfix sale-prop">
                                <div class="col-sm-4">
                                  <div class="first-itm-b">
                                    <div class="first-itm clearfix">
                                      <div class="img-wrap">
                                        <img src="<?= $thumb; ?>" class="sale-prop-img" title="heading_title" alt="heading_title" />
                                      </div>
                                      <div class="itm-descr">
                                        <span class="title"><?= $model; ?></span>
                                        <br>
                                        <span class="price-single"><?= $price; ?></span>
                                        <span class="price-couple"><?= (int)$price * 0.9; ?></span>
                                      </div>
                                    </div>
                                  </div>
                                </div>

                                <div class="col-sm-4">
                                  <div class="second-itm-b">
                                    <div class="second-itm clearfix">
                                      <div class="img-wrap">
                                        <img src="<?= $item['thumb']; ?>" class="sale-prop-img" title="heading_title" alt="heading_title" />
                                      </div>
                                      <div class="itm-descr">
                                        <span class="title"><?= $item['name']; ?></span>
                                        <br>
                                        <span class="price-single"><?= $item['price']; ?></span>
                                        <span class="price-couple"><?= (int)$item['price'] * 0.9; ?></span>
                                      </div>
                                    </div>
                                  </div>
                                </div>

                                <div class="col-sm-4">
                                  <div class="summ">
                                    <div class="total-price-buy panel-dark">
                                      <div class="couple-summ"><?= (int)($price + $item['price']) * 0.9; ?></div>
                                      <button type="button" id="button-cart" data-loading-text="<?php echo $text_loading; ?>"
                                              class="btn btn-hover btn-default btn-xs"
                                              onclick="cart.add('<?= $product_id; ?>'); cart.add('<?= $item['product_id']; ?>');">
                                          <?php echo $button_cart; ?>
                                      </button>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div>

                        <?php endforeach; ?>

                    </div>
                  </div>
                </div>

              <?php endif; ?>

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

                            <?php foreach ($product_reviews as $item) : ?>

                                <div class="review-single">
                                    <div class="review-head clearfix">
                                        <div class="user-atrs pull-left">
                                            <div><?= $item['author']; ?></div>
                                            <span><?= $item['date_added']; ?></span>
                                        </div>
                                        <div class="user-rating pull-right">
                                            <?php for ($i = 0; $i < $item['rating']; $i++ ) : ?>
                                                <span class="fa fa-stack"><i class="fa fa-star star fa-stack-1x"></i></span>
                                            <?php endfor; ?>
                                            <?php for($i = 0; $i < (5 - $item['rating']); $i++) : ?>
                                                <span class="fa fa-stack"><i class="fa fa-star-o rating-reverse fa-stack-1x"></i></span>
                                            <?php endfor; ?>
                                        </div>
                                    </div>
                                    <div class="review-text">
                                        <p><?= $item['text']; ?></p>
                                    </div>
                                </div>

                            <?php endforeach; ?>

						</div>
					</div>
                </div>
            </div>
          </div>
		</div>

          <?php } ?>






		<?php echo $column_right; ?>
	</div>
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

//$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

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
