
<?php  if ($menu_categories) { ?>

<nav id="menu" class="home-menu panel-dark">
    <ul class="list-unstyled">
        <?php foreach ($menu_categories as $category) { ?>
        <?php if ($category['children']) { ?>
        <li class="has-submenu">
            <div class="h-s-after">
                <a href="<?php echo $category['href']; ?>" class="category-name">
                    <?php echo $category['name']; ?>
                </a>
                <ul class="submenu panel-dark">
                    <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
                        <?php foreach ($children as $child) { ?>
                        <li>
                            <a href="<?php echo $child['href']; ?>">
                                <?php echo $child['name']; ?>
                            </a>
                        </li>
                        <?php } ?>
                    <?php } ?>
                </ul>
            </div>
        </li>
        <?php } else { ?>
        <li>
            <span>
                <a href="<?php echo $category['href']; ?>">
                    <?php echo $category['name']; ?>
                </a>
            </span>
        </li>
        <?php } ?>
        <?php } ?>
    </ul>

    <ul class="nav nav-link top-menu-links">
        <li><a href="http://mao.reclamare.ua/garanty">Гарантия</a></li>
        <li><a href="http://mao.reclamare.ua/delivery">Доставка и оплата</a></li>
        <li><a href="http://mao.reclamare.ua/index.php?route=information/contact">Контакты</a></li>
    </ul>
</nav>

<?php }  ?>