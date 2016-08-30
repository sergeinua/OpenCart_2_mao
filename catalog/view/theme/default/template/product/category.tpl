<?php echo $header; ?>
<div class="container">

  <div class="row">

  <!-- <?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"> -->
	<div class="hiddem-md hidden-lg">
		 <?php echo $content_top; ?>
	</div>
</div>

	  <!--
		TODO: вывести циклом, а не хардкором
		-->


	  <div class="hidden-xs hidden-sm col-md-3">
		  <div class="panel-dark" style="width: 270px;">
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

			  <div class="breadcrumb-wrapper">
				  <ul class="breadcrumb">
					  <li><a href="http://mao.reclamare.ua/index.php?route=common/home">Главная</a></li>
					  <li><a href="http://mao.reclamare.ua/component">Chery</a></li>
					  <li class="subcategories-links">
						  <a href="http://mao.reclamare.ua/index.php?route=product/category&amp;path=25_59">Chery A13 / Zaz Forza</a>
						  <a href="http://mao.reclamare.ua/index.php?route=product/category&amp;path=25_61">Chery Cross Eastar (B14)</a>
						  <a href="http://mao.reclamare.ua/index.php?route=product/category&amp;path=25_62">Chery Eastar (B11)</a>
						  <a href="http://mao.reclamare.ua/index.php?route=product/category&amp;path=25_63">Chery Jaggi</a>
						  <a href="http://mao.reclamare.ua/index.php?route=product/category&amp;path=25_60">Chery M11</a>
						  <a href="http://mao.reclamare.ua/component/mouse">Chery Amulet (A11-A15)</a>
						  <a href="http://mao.reclamare.ua/component/scanner">Chery Elara (Fora) (A21)</a>
						  <a href="http://mao.reclamare.ua/component/web-camera">Chery Kimo (S12 )</a>
						  <a href="http://mao.reclamare.ua/component/monitor">Chery QQ (S11)</a>
						  <a href="http://mao.reclamare.ua/component/printer">Chery Tiggo (T11)</a>
					  </li>
				  </ul>

			  </div>
		  </div>
	  </div>
	  <div id="content" class="col-md-9">

      <h2><?php echo $heading_title; ?></h2>

		<!-- TODO: вывести динамически -->

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
      <hr>
      <?php } ?>
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
      <?php } ?> -->
      <!-- <?php if ($products) { ?>
      <p><a href="<?php echo $compare; ?>" id="compare-total"><?php echo $text_compare; ?></a></p>
      <div class="row">
        <div class="col-md-4">
          <div class="btn-group hidden-xs">
            <button type="button" id="list-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_list; ?>"><i class="fa fa-th-list"></i></button>
            <button type="button" id="grid-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_grid; ?>"><i class="fa fa-th"></i></button>
          </div>
        </div>
        <div class="col-md-2 text-right">
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
      </div>
      <br />
      <div class="row">
        <?php foreach ($products as $product) { ?>
        <div class="product-layout product-list col-xs-12">
          <div class="product-thumb">
            <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
            <div>
              <div class="caption">
                <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
                <p><?php echo $product['description']; ?></p>
                <?php if ($product['rating']) { ?>
                <div class="rating">
                  <?php for ($i = 1; $i <= 5; $i++) { ?>
                  <?php if ($product['rating'] < $i) { ?>
                  <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                  <?php } else { ?>
                  <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                  <?php } ?>
                  <?php } ?>
                </div>
                <?php } ?>
                <?php if ($product['price']) { ?>
                <p class="price">
                  <?php if (!$product['special']) { ?>
                  <?php echo $product['price']; ?>
                  <?php } else { ?>
                  <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
                  <?php } ?>
                  <?php if ($product['tax']) { ?>
                  <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                  <?php } ?>
                </p>
                <?php } ?>
              </div>
              <div class="button-group">
                <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span></button>
                <button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
                <button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
              </div>
            </div>
          </div>
        </div>
        <?php } ?>
      </div>
      <div class="row">
        <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
        <div class="col-sm-6 text-right"><?php echo $results; ?></div>
      </div>
      <?php } ?>
      <?php if (!$categories && !$products) { ?>
      <p><?php echo $text_empty; ?></p>
      <div class="buttons">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>
      <?php } ?>
      <?php echo $content_bottom; ?> -->


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
