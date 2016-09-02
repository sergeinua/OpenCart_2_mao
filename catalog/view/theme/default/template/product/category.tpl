<?php echo $header; ?>
<div class="container">

  <div class="row">

  <?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-lg-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-lg-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-lg-12'; ?>
    <?php } ?>
    <!--<div id="content" class="<?php echo $class; ?>">
	<div class="hiddem-md hidden-lg">
		 <?php echo $content_top; ?>
	</div>
</div> -->
<!--
	  <div class="col-md-3">
		  <div class="panel-dark" style="max-width: 270px;">
			  <div class="nav-menu-wrapper">
				  <a href="#" class="dropdown-toggle catalog-opening-link" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> Каталог товаров  <i class="fa fa-angle-down"></i>
				  </a>
				  <nav id="menu2" class="dropdown-menu nav-menu">
					  <ul class="nav">

                          <?php foreach ($menu_categories as $item) : ?>

                              <?php if (isset($item['children'])) : ?>

                                  <li class="has-submenu">
                                      <a href="<?= $item['href']; ?>" class=""><?= $item['name']; ?></a>
                                      <div class="submenu panel-dark">
                                          <ul class="list-unstyled">

                                              <?php foreach ($item['children'] as $child) : ?>

                                                  <li><a href="<?= $child['href']; ?>"><?= $child['name']; ?></a></li>

                                              <?php endforeach; ?>

                                          </ul>
                                      </div>
                                  </li>

                              <?php else : ?>

                                  <li><a href="<?= $item['href']; ?>"><?= $item['name']; ?></a></li>

                              <?php endif; ?>

                          <?php endforeach; ?>

					  </ul>
					  <ul class="nav nav-link top-menu-links">
						  <li><a href="http://mao.reclamare.ua/garanty">Гарантия</a></li>
						  <li><a href="http://mao.reclamare.ua/delivery">Доставка и оплата</a></li>
						  <li><a href="http://mao.reclamare.ua/index.php?route=information/contact">Контакты</a></li>
					  </ul>
				  </nav>
			  </div>
			  <div class="breadcrumb-wrapper">
				  <ul class="breadcrumb">

                      <?php foreach ($breadcrumbs as $item) : ?>

                          <li><a href="<?= $item['href']; ?>"><?= $item['text']; ?></a></li>

                      <?php endforeach; ?>

					  <li class="subcategories-links">

                          <?php foreach ($categories as $item) : ?>

                             <a href="<?= $item['href']; ?>"><?= $item['name']; ?></a>

                          <?php endforeach; ?>

					  </li>
				  </ul>
			  </div>
		  </div>
	  </div>
-->
	  <div id="content" class="<?php echo $class; ?>">

      <h2><?php echo $heading_title; ?></h2>

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
<!--
		<div class="row subcategories-links">
			<div class="col-xs-6 col-sm-4 subcategory-link-wrap">
				<a href="#" class="subcategory-link" role="link">
						<span class="image"
							  style="background-image: url(./catalog/view/theme/default/image/car1.png)"></span>
					<span class="title">Gelly mk</span>
				</a>
			</div>
			<div class="col-xs-6 col-sm-4 subcategory-link-wrap">
				<a href="#" class="subcategory-link" role="link">
						<span class="image"
							  style="background-image: url(./catalog/view/theme/default/image/car2.png)"></span>
					<span class="title">Gelly mk</span>
				</a>
			</div>
			<div class="col-xs-6 col-sm-4 subcategory-link-wrap">
				<a href="#" class="subcategory-link" role="link">
						<span class="image"
							  style="background-image: url(./catalog/view/theme/default/image/car3.png)"></span>
					<span class="title">Gelly mk</span>
				</a>
			</div>
			<div class="col-xs-6 col-sm-4 subcategory-link-wrap">
				<a href="#" class="subcategory-link" role="link">
						<span class="image"
							  style="background-image: url(./catalog/view/theme/default/image/car4.png)"></span>
					<span class="title">Gelly mk</span>
				</a>
			</div>
			<div class="col-xs-6 col-sm-4 subcategory-link-wrap">
				<a href="#" class="subcategory-link" role="link">
						<span class="image"
							  style="background-image: url(./catalog/view/theme/default/image/car5.png)"></span>
					<span class="title">Gelly mk</span>
				</a>
			</div>
			<div class="col-xs-6 col-sm-4 subcategory-link-wrap">
				<a href="#" class="subcategory-link" role="link">
						<span class="image"
							  style="background-image: url(./catalog/view/theme/default/image/car6.png)"></span>
					<span class="title">Gelly mk</span>
				</a>
			</div>
			<div class="col-xs-6 col-sm-4 subcategory-link-wrap">
				<a href="#" class="subcategory-link" role="link">
						<span class="image"
							  style="background-image: url(./catalog/view/theme/default/image/car7.png)"></span>
					<span class="title">Gelly mk</span>
				</a>
			</div>
			<div class="col-xs-6 col-sm-4 subcategory-link-wrap">
				<a href="#" class="subcategory-link" role="link">
						<span class="image"
							  style="background-image: url(./catalog/view/theme/default/image/car11.jpg)"></span>
					<span class="title">Gelly mkk</span>
				</a>
			</div>
			<div class="col-xs-6 col-sm-4 subcategory-link-wrap">
				<a href="#" class="subcategory-link last" role="link">
						<span class="image"
							  style="background-image: url(./catalog/view/theme/default/image/car6.png)"></span>
					<span class="title">Gelly mkk</span>
				</a>
			</div>
		</div>
-->
      <!-- <?php if ($thumb || $description) { ?>
      <div class="row">
        <?php if ($thumb) { ?>
        <div class="col-sm-2">
          <img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>" class="img-thumbnail" />
        </div>
        <?php } ?>
        <?php if ($description) { ?>
        <div class="col-sm-10"><?php echo $description; ?></div>
        <?php } ?>
      </div>
      <?php } ?> -->
      <?php if ($categories) { ?>
      <h3><?php echo $text_refine; ?></h3>
      <?php if (count($categories) <= 5) { ?>
      <div class="row">
        <div class="col-sm-3">
          <ul>
            <?php foreach ($categories as $category) { ?>
            <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
            <?php } ?>
          </ul>
        </div>
      </div>
      <?php } else { ?>
      <div class="row">
        <?php foreach (array_chunk($categories, ceil(count($categories) / 4)) as $categories) { ?>
        <div class="col-sm-3">
          <ul>
            <?php foreach ($categories as $category) { ?>
            <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
            <?php } ?>
          </ul>
        </div>
        <?php } ?>
      </div>
      <?php } ?>
      <?php } ?>
      <?php if ($products) { ?>
      <!-- <p><a href="<?php echo $compare; ?>" id="compare-total"><?php echo $text_compare; ?></a></p> -->
		  <!-- <div class="row">
			<div class="col-md-4">
			  <div class="btn-group hidden-xs">
				<button type="button" id="list-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_list; ?>"><i class="fa fa-th-list"></i></button>
				<button type="button" id="grid-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_grid; ?>"><i class="fa fa-th"></i></button>
			  </div>
			</div> -->
        <!-- <div class="col-md-2 text-right">
          <label class="control-label" for="input-sort"><?php echo $text_sort; ?></label>
        </div>
        <div class="col-md-3 text-right">
          <select id="input-sort" class="form-control" onchange="location = this.value;">
            <?php foreach ($sorts as $sorts) { ?>
            <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
            <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
            <?php } ?>
            <?php } ?>
          </select>
        </div>
        <div class="col-md-1 text-right">
          <label class="control-label" for="input-limit"><?php echo $text_limit; ?></label>
        </div>
        <div class="col-md-2 text-right">
          <select id="input-limit" class="form-control" onchange="location = this.value;">
            <?php foreach ($limits as $limits) { ?>
            <?php if ($limits['value'] == $limit) { ?>
            <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
            <?php } ?>
            <?php } ?>
          </select>
        </div>
      </div> -->
      <div class="row panel-dark model-goods-wrapper">
		  <div class="inputs-wrapper col-xs-12">
			  <div class="input-wrapper">
				  <input type="text" placeholder="Искать..." class="form-control">
			  </div>
			  <div class="select-wrapper">
				  <select class="form-control">
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

			  <div class="model-product-thumb">
				  <div class="clearfix">
					  <div class="image">
						  <a href="http://mao.reclamare.ua/component/monitor/test">
							  <img src="http://mao.reclamare.ua/image/cache/catalog/car11-228x228.jpg" alt="Ступица передняя с подшипником в сборе (B11-3001030AB) SNR" title="Ступица передняя с подшипником в сборе (B11-3001030AB) SNR" class="img-responsive">
						  </a>
					  </div>
					  <div class="caption">
						  <a href="http://mao.reclamare.ua/component/monitor/test">
							  Ступица передняя с подшипником в сборе (B11-3001030AB) SNR						  </a>
					  </div>
					  <div class="price-buy-wrapper clearfix">

								  <span class="price"  style="line-height: 40px;">
									  99990.00 грн.
								  </span>
						  <span class="buy">
							  <button type="button" class="btn btn-hover btn-outline btn-xs" onclick="cart.add('42', '2');">
								Купить							  </button>
						  </span>
					  </div>
				  </div>
			  </div><div class="model-product-thumb">
				  <div class="clearfix">
					  <div class="image">
						  <a href="http://mao.reclamare.ua/component/monitor/test">
							  <img src="http://mao.reclamare.ua/image/cache/catalog/car11-228x228.jpg" alt="Ступица передняя с подшипником в сборе (B11-3001030AB) SNR" title="Ступица передняя с подшипником в сборе (B11-3001030AB) SNR" class="img-responsive">
						  </a>
					  </div>
					  <div class="caption">
						  <a href="http://mao.reclamare.ua/component/monitor/test">
							  Ступица передняя с подшипником в сборе (B11-3001030AB) SNR						  </a>
					  </div>
					  <div class="price-buy-wrapper clearfix">

								  <span class="price"  style="line-height: 40px;">
									  1490.00 грн.
								  </span>
						  <span class="buy">
							  Уточняйте наличие
						  </span>
					  </div>
				  </div>
			  </div><div class="model-product-thumb">
				  <div class="clearfix">
					  <div class="image">
						  <a href="http://mao.reclamare.ua/component/monitor/test">
							  <img src="http://mao.reclamare.ua/image/cache/catalog/car11-228x228.jpg" alt="Ступица передняя с подшипником в сборе (B11-3001030AB) SNR" title="Ступица передняя с подшипником в сборе (B11-3001030AB) SNR" class="img-responsive">
						  </a>
					  </div>
					  <div class="caption">
						  <a href="http://mao.reclamare.ua/component/monitor/test">
							  Ступица передняя с подшипником в сборе (B11-3001030AB) SNR						  </a>
					  </div>
					  <div class="price-buy-wrapper clearfix">

								  <span class="price"  style="line-height: 40px;">
									  170.00 грн.
								  </span>
						  <span class="buy">
							  Уточняйте наличие
						  </span>
					  </div>
				  </div>
			  </div><div class="model-product-thumb">
				  <div class="clearfix">
					  <div class="image">
						  <a href="http://mao.reclamare.ua/component/monitor/test">
							  <img src="http://mao.reclamare.ua/image/cache/catalog/car11-228x228.jpg" alt="Ступица передняя с подшипником в сборе (B11-3001030AB) SNR" title="Ступица передняя с подшипником в сборе (B11-3001030AB) SNR" class="img-responsive">
						  </a>
					  </div>
					  <div class="caption">
						  <a href="http://mao.reclamare.ua/component/monitor/test">
							  Ступица передняя с подшипником в сборе (B11-3001030AB) SNR						  </a>
					  </div>
					  <div class="price-buy-wrapper clearfix">

								  <span class="price"  style="line-height: 40px;">
									  1330.00 грн.
								  </span>
						  <span class="buy">
							  Уточняйте наличие
						  </span>
					  </div>
				  </div>
			  </div><div class="model-product-thumb">
				  <div class="clearfix">
					  <div class="image">
						  <a href="http://mao.reclamare.ua/component/monitor/test">
							  <img src="http://mao.reclamare.ua/image/cache/catalog/car11-228x228.jpg" alt="Ступица передняя с подшипником в сборе (B11-3001030AB) SNR" title="Ступица передняя с подшипником в сборе (B11-3001030AB) SNR" class="img-responsive">
						  </a>
					  </div>
					  <div class="caption">
						  <a href="http://mao.reclamare.ua/component/monitor/test">
							  Ступица передняя с подшипником в сборе (B11-3001030AB) SNR						  </a>
					  </div>
					  <div class="price-buy-wrapper clearfix">

								  <span class="price" style="line-height: 40px;">
									  90.00 грн.
								  </span>
						  <span class="buy"> Уточняйте наличие
						  </span>
					  </div>
				  </div>
			  </div>

			  <!-- TODO удалить к чертям-->

		  </div>
		  <div class="col-xs-12 text-center category-pagination">
			  <ul class="pagination">
				  <li>
					  <a href="#"><i class="fa fa-angle-double-left"></i></a>
				  </li>
				  <li>
					  <a href="#"><i class="fa fa-angle-left"></i></a>
				  </li>
				  <li class="active">
					  <span>1</span>
				  </li>
				  <li>
					  <a href="#">2</a>
				  </li>
				  <li>
					  <a href="#">3</a>
				  </li>
				  <li>
					  <a href="#"><i class="fa fa-angle-right"></i></a>
				  </li>
				  <li>
					  <a href="#"><i class="fa fa-angle-double-right"></i></a>
				  </li>
			  </ul>
		  </div>
      </div>
      <!-- <div class="row">
        <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
        <div class="col-sm-6 text-right"><?php echo $results; ?></div>
      </div> -->
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
	  <!--todo: Вывести эти картинки через админку-->

	  <!-- <div class="col-md-3">
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
	  </div> -->

  </div>
</div>
<div class="html-block-homepage container">
  <div class="row">
    <div class="col-xs-12 col-lg-5 col-lg-push-7 html-text-image">
      <img src="./catalog/view/theme/default/image/geely-seo.png" alt="" class="img-responsive">
    </div>
    <div class="col-xs-12 col-sm-10 col-sm-push-1  col-lg-6 col-lg-pull-6 col-lg-push-1 text-left-md">
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




</div>





<?php echo $footer; ?>
