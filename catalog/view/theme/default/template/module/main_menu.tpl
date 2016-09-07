<div class="" style="position: relative;">
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
