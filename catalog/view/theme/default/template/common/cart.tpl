<div id="cart" class="cart">
  <button type="button" data-toggle="dropdown" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-cart dropdown-toggle">
    <span id="cart-total">
      <?php echo $text_items; ?>
    </span>
  </button>
  <ul class="dropdown-menu">
    <?php if ($products || $vouchers) { ?>
    <li>
      <table class="table table-cart">
        <?php foreach ($products as $product) { ?>
        <tr>
          <td class="cart-img-thumnail"><?php if ($product['thumb']) { ?>
            <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-thumbnail" /></a>
            <?php } ?></td>
          <td class="cart-product-name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
            <?php if ($product['option']) { ?>
            <?php foreach ($product['option'] as $option) { ?>
            <br />
            - <small><?php echo $option['name']; ?> <?php echo $option['value']; ?></small>
            <?php } ?>
            <?php } ?>
            <?php if ($product['recurring']) { ?>
            <br />
            - <small><?php echo $text_recurring; ?> <?php echo $product['recurring']; ?></small>
            <?php } ?></td>
          <td class="cart-quantity">x <?php echo $product['quantity']; ?></td>
          <td class="cart-product-sum"><?php echo $product['total']; ?></td>
          <td>
            <button type="button" onclick="cart.remove('<?php echo $product['cart_id']; ?>');" title="<?php echo $button_remove; ?>" class="btn btn-close">
              <i class="fa fa-times"></i>
            </button>
          </td>
        </tr>
        <?php } ?>
        <?php foreach ($vouchers as $voucher) { ?>
        <tr>
          <td class="text-center"></td>
          <td class="text-left"><?php echo $voucher['description']; ?></td>
          <td class="text-right">x&nbsp;1</td>
          <td class="text-right"><?php echo $voucher['amount']; ?></td>
          <td class="text-center text-danger"><button type="button" onclick="voucher.remove('<?php echo $voucher['key']; ?>');" title="<?php echo $button_remove; ?>" class="btn btn-danger btn-xs"><i class="fa fa-times"></i></button></td>
        </tr>
        <?php } ?>
      </table>
    </li>
    <li>
      <div>
        <table class="table table-cart-total">
          <?php foreach ($totals as $total) { ?>
          <tr>
            <td class="text-right"><?php echo $total['title']; ?></td>
            <td class="text-right"><?php echo $total['text']; ?></td>
          </tr>
          <?php } ?>
        </table>
        <hr class="table-bottom">
        <div class="cart-buttons-wrapper">
          <a class="btn btn-hover btn-outline btn-xs" href="<?php echo $cart; ?>"><?php echo $text_cart; ?></a>
          <a class="btn btn-hover btn-default btn-xs" href="<?php echo $checkout; ?>"><i class="fa fa-share"></i> <?php echo $text_checkout; ?></a>
        </div>
      </div>
    </li>
    <?php } else { ?>
    <li>
      <div class="empty-cart-message"><?php echo $text_empty; ?></div>
    </li>
    <?php } ?>
  </ul>
</div>
