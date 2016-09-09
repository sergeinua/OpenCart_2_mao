<?php //var_dump(strlen($column_right)); die; ?><?php echo $header; ?>
<div class="container">

  <div class="row">

  <?php echo $column_left; ?>
    <?php if ($column_left && (strlen($column_right) > 100)) { ?>
    <?php $class = 'col-md-6'; ?>
    <?php } elseif ($column_left || (strlen($column_right) > 100)) { ?>
    <?php $class = 'col-md-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-md-12'; ?>
    <?php } ?>

	  <h2><?php echo $heading_title; ?></h2>

	  <div id="top-filter" class="col-md-9 top-filter">
		  <div class="clearfix">
			  <a href="#" class="top-filter-itm">
				  <img src="./catalog/view/theme/default/image/top-filter/accessories.png" alt="accessories">
				  <span>Аксессуары</span>
			  </a>
			  <a href="#" class="top-filter-itm">
				  <img src="./catalog/view/theme/default/image/top-filter/engine.png" alt="engine">
				  <span>Двигатель</span>
			  </a>
			  <a href="#" class="top-filter-itm">
				  <img src="./catalog/view/theme/default/image/top-filter/body.png" alt="body">
				  <span>Кузов</span>
			  </a>
			  <a href="#" class="top-filter-itm">
				  <img src="./catalog/view/theme/default/image/top-filter/salon.png" alt="salon">
				  <span>Салон</span>
			  </a>
			  <a href="#" class="top-filter-itm">
				  <img src="./catalog/view/theme/default/image/top-filter/transmission.png" alt="transmission">
				  <span>Трансмиссия</span>
			  </a>
			  <a href="#" class="top-filter-itm">
				  <img src="./catalog/view/theme/default/image/top-filter/chassis.png" alt="chassis">
				  <span>Ходовая</span>
			  </a>
			  <a href="#" class="top-filter-itm">
				  <img src="./catalog/view/theme/default/image/top-filter/electric.png" alt="electric">
				  <span>Электрика</span>
			  </a>
		  </div>

	  </div>

	  <div id="content" class="<?php echo $class; ?>">


      <?php if (isset($categories)) : ?>

          <div class="row subcategories-links">

          <?php foreach ($categories as $item) : ?>

              <div class="col-xs-6 col-sm-4 subcategory-link-wrap">
                  <a href="<?= $item['href']; ?>" class="subcategory-link" role="link">
						<span class="image"
                              style="background-image: url(<?= $item['img']; ?>)"></span>
                      <span class="title"><?= $item['name']; ?></span>
                  </a>
              </div>

          <?php endforeach; ?>

          </div>

      <?php endif; ?>

      <?php if ($products) { ?>

      <div class="row panel-dark model-goods-wrapper">
		  <div class="inputs-wrapper col-xs-12">
			  <div class="input-wrapper">
				  <input type="text" placeholder="Искать..." class="form-control">
			  </div>
			  <div class="select-wrapper">
				  <select class="form-control">

					  <!-- TODO выод динамически-->

					  <option disabled="">Все группы</option>
					  <option value="Аксессуары">Аксессуары</option>
					  <option value="Двигатель">Двигатель</option>
					  <option value="Кузов">Кузов</option>
					  <option value="Салон">Салон</option>
					  <option value="Трансмиссия">Трансмиссия</option>
					  <option value="Ходовая">Ходовая</option>
					  <option value="Электрика">Электрика</option>
				  </select>
			  </div>
		  </div>
		  <div class="model-goods-list col-xs-12">
			<?php foreach ($products as $product) { ?>
			  <div class="model-product-thumb">
				  <div class="clearfix">
					  <div class="image">
						  <a href="<?php echo $product['href']; ?>">
							  <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" />
						  </a>
					  </div>
					  <div class="caption">
						  <a href="<?php echo $product['href']; ?>">
							  <?php echo $product['name']; ?>
						  </a>
					  </div>
					  <div class="price-buy-wrapper clearfix">
						  <?php if ($product['price']) { ?>
							  <?php if (!$product['special']) { ?>
							  	<span class="price" style="line-height: 40px;">
									<?php echo $product['price']; ?>
								</span>

							  <?php } else { ?>

								  <span class="price">
									<span class="price-new">
									  <?php echo $product['special']; ?>
									</span>
									<br>
									<span class="price-old" style="text-decoration: line-through;">
										<?php echo $product['price']; ?>
									</span>
								  </span>
							  <?php } ?>
						  <?php } ?>
						  <span class="buy">
							  <button type="button" class="btn btn-hover btn-outline btn-xs" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');">
								<?php echo $button_cart; ?>
							  </button>
						  </span>
					  </div>
				  </div>
			  </div>
			<?php } ?>
		  </div>
      </div>
      <div class="row">
        <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
      </div>
      <?php } ?>
      <?php if (!$categories && !$products) { ?>
      <p><?php echo $text_empty; ?></p>
      <div class="buttons">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>
      <?php } ?>
      <?php echo $content_bottom; ?>

	</div>

    <?php echo $column_right; ?>

  </div>
</div>
<div class="html-block-homepage container">
  <div class="row">
    <div class="col-xs-12 col-lg-5 col-lg-push-7 html-text-image">
      <img src="./catalog/view/theme/default/image/geely-seo.png" alt="" class="img-responsive">
    </div>
    <div class="col-xs-12 col-sm-10 col-sm-push-1  col-lg-6 col-lg-pull-6 col-lg-push-1 text-left-md">

		<!-- TODO выод динамически-->

		<div class="h2">
        Запчасти Geely Джили - купить в Киеве
      </div>
      <p>
        Компания Geely — одна из крупнейших автомобилестроительных компаний Китая, которая была
        основана в 1986 году. Стремительно набирая популярность и сегодня, она предоставляет
        качественные и надежные запчасти для Geely среди многих покупателей в Киеве и на всей
        территории Украины.
      </p>
      <p>
        Несмотря на то, что свое первое детище компания выпустила только в 1998 году, на запчасти
        Джили с тех пор большой спрос не только в Китае, но и во многих городах и странах мира.
      </p>
    </div>
  </div>
  <div class="row">
    <div class="col-xs-12 col-sm-10 col-sm-push-1">
      <div class="h2"> Как выбрать запчасти для Geely?</div>
      <p>
        Замена запчастей для владельцев автомобилей — обязательная необходимость. В особенности не
        на самых лучших дорогах. Поэтому на сайте нашего магазина автозапчастей для китайских
        автомобилей «МАО» вы сможете выбрать и заказать необходимые детали для вашего Джили без
        особых усилий. Не нужно переплачивать за товар и тратить свое время, разъезжая по городу.
        Достаточно просто следовать простым инструкциям и оформить заказ одним кликом. А по всем
        необходимым вопросам наши специалисты всегда доступны в режиме онлайн и помогут с вашим
        выбором. Несмотря на то, что свое первое детище компания выпустила только в 1998 году, на
        запчасти Джили с тех пор большой спрос не только в Китае, но и во многих городах и странах
        мира.
        В 2013 году компания заняла топовое место среди самых лучших азиатских компаний по версии
        Forbes.
      </p>
    </div>
  </div>
</div>






<?php echo $footer; ?>
