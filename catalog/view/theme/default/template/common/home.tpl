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
        <div id="content" class="col-sm-9 col-md-6">

            <?php echo $content_top; ?>

    </div>
        <?php if($column_right) : ?>

            <?php echo $column_right; ?>

        <?php endif; ?>
    </div>
        <div class="row">

            <?php echo $content_bottom; ?>

            <?php if (isset($category_home)) : ?>
                <div class="row">
                    <div class="col-xs-12">
                        <div class="catalog-homepage-links">
                            <div class="row">

                                <?php foreach ($category_home as $item) : ?>

                                <div class="col-xs-6 col-sm-4 col-md-3 catalog-homepage-links-grid">
                                    <a href="<?= $item['link']; ?>" class="catalog-link" role="link">
                                        <span class="image" style="background-image: url(<?= $item['img']; ?>)"></span>
                                        <span class="title"><?= $item[0]['name']; ?></span>
                                    </a>
                                </div>

                                <?php endforeach; ?>

                            </div>
                        </div>
                    </div>
                </div>

            <?php endif; ?>

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
                <div class="row happy-customer">
                    <div class="col-xs-7 col-sm-6 col-md-push-1 col-md-5 col-lg-4 col-lg-push-1">
                        <img src="./catalog/view/theme/default/image/happy_customer.png" alt="" class="img-responsive">
                    </div>
                    <div class="col-xs-5 col-sm-6 col-md-6 col-md-pull-1 col-lg-6 happy-customer-text">
                        <div class="happy-customer-title">
                            довольных клиента
                        </div>
                        <div class="happy-customer-number">
                            <?= $current_quantity; ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>

</div>

<?php echo $footer; ?>