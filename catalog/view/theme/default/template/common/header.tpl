<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/theme/default/stylesheet/dist/mao.css" rel="stylesheet">
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/dist/common.js" type="text/javascript"></script>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>
</head>
<body class="<?php echo $class; ?>">
<nav id="top" class="nav-top">
  <div class="container">
        <!--
        TODO: вывести циклом, а не хардкором
        -->

        <ul class="list-unstyled top-nav">
          <li><a href="http://mao.reclamare.ua/garanty">Гарантия</a></li>
          <li><a href="http://mao.reclamare.ua/delivery">Доставка и оплата</a></li>
          <li><a href="http://mao.reclamare.ua/index.php?route=information/contact">Контакты</a></li>
        </ul>

    <button role="button" type="button" id="nav-btn" class="btn btn-nav">
      <div class="span-overlay">
        <span></span>
        <span></span>
        <span></span>
      </div>

      <?php if (isset($menu_categories)) : ?>
        <?php foreach ($menu_categories as $item) : ?>
          <a href="<?php echo $item['link']; ?>"><?= $item[0]['name']; ?></a>
        <?php endforeach; ?>
      <?php endif; ?>
    </button>

    <div id="top-links" class="top-links">
      <ul>
        <li class="dropdown top-numbers">
          <a href="<?php echo $telephone; ?>" class="dropdown-toggle" data-toggle="dropdown">
            <?php echo $telephone; ?>
          </a>
        <ul class="dropdown-menu">
          <?php foreach ($config_telephone_additional as $key => $value) : ?>
          <li>
            <a href="tel:<?= $value; ?>">
              <?= $value; ?>
            </a>
          </li>
          <?php endforeach; ?>
        </ul>
        </li>
        <li class="dropdown profile-enter"><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_account; ?></span></a>
          <ul class="dropdown-menu">
            <?php if ($logged) { ?>
            <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
            <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
            <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
            <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
            <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
            <?php } else { ?>
            <li><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
            <li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
            <?php } ?>
          </ul>
        </li>
      </ul>
    </div>
  </div>
</nav>
<header class="header">
  <div class="container">
    <div class="row">
      <div class="col-xs-4 col-sm-3">
        <div id="logo">
          <?php if ($logo) { ?>
          <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
          <?php } else { ?>
          <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
          <?php } ?>
        </div>
      </div>
      <div id="search-col" class="col-xs-6 col-sm-6 "><?php echo $search; ?>
      </div>
      <div class="col-xs-2 col-sm-3 col-md-2 col-md-push-1 "><?php echo $cart; ?></div>
    </div>
  </div>
</header>