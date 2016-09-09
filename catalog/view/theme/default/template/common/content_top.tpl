<?php  if (false) { ?>

  <div class="col-md-3">
      <nav id="menu" class="nav-menu panel-dark">
          <ul class="nav">
            <?php foreach ($categories as $category) { ?>
            <?php if ($category['children']) { ?>
            <li class="has-submenu">
              <a href="<?php echo $category['href']; ?>" class=""><?php echo $category['name']; ?></a>
              <div class="submenu panel-dark">
                  <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
                  <ul class="list-unstyled">
                    <?php foreach ($children as $child) { ?>
                    <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                    <?php } ?>
                  </ul>
                  <?php } ?>
              </div>
            </li>
            <?php } else { ?>
            <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
            <?php } ?>
            <?php } ?>
          </ul>

          <ul class="nav nav-link top-menu-links">
              <li><a href="http://mao.reclamare.ua/garanty">Гарантия</a></li>
              <li><a href="http://mao.reclamare.ua/delivery">Доставка и оплата</a></li>
              <li><a href="http://mao.reclamare.ua/index.php?route=information/contact">Контакты</a></li>
          </ul>
      </nav>
    </div>

<?php }  ?>

<?php foreach ($modules as $module) { ?>
<?php echo $module; ?>
<?php } ?>