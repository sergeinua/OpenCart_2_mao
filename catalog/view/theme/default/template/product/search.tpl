<?php echo $header; ?>
<div class="container">
  <div class="row">
    <?php echo $content_top; ?>

    <?php echo $column_left; ?>

    <!-- <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-lg-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-lg-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-lg-12'; ?>
    <?php } ?> -->

    <div id="content" class="col-md-9">
      <div class="row">
        <h1 class="search-h1"><?php echo $heading_title; ?></h1>
      </div>
      <div class="row panel-dark search-itms-wrapper">
      <!-- <label class="control-label" for="input-search"><?php echo $entry_search; ?></label> -->
        <div class="clearfix" style="margin-bottom: 24px;">
        <div class="col-xs-6 col-sm-3">
          <input type="text" name="search" value="<?php echo $search; ?>" placeholder="<?php echo $text_keyword; ?>" id="input-search" class="form-control" />
        </div>
        <div class="col-xs-6 col-sm-3 select-wrapper">
          <select name="category_id" class="form-control">
            <option value="0"><?php echo $text_category; ?></option>
            <?php foreach ($categories as $category_1) { ?>
            <?php if ($category_1['category_id'] == $category_id) { ?>
            <option value="<?php echo $category_1['category_id']; ?>" selected="selected"><?php echo $category_1['name']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $category_1['category_id']; ?>"><?php echo $category_1['name']; ?></option>
            <?php } ?>
            <?php foreach ($category_1['children'] as $category_2) { ?>
            <?php if ($category_2['category_id'] == $category_id) { ?>
            <option value="<?php echo $category_2['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $category_2['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
            <?php } ?>
            <?php foreach ($category_2['children'] as $category_3) { ?>
            <?php if ($category_3['category_id'] == $category_id) { ?>
            <option value="<?php echo $category_3['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $category_3['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
            <?php } ?>
            <?php } ?>
            <?php } ?>
            <?php } ?>
          </select>
        </div>

        <!-- TODO посмотреть, нужно ли мменять функционал, если убран этот чекбокс. По макету его не должно быть -->

		<!-- <div class="col-sm-3">
          <label class="checkbox-inline">
            <?php if ($sub_category) { ?>
            <input type="checkbox" name="sub_category" value="1" checked="checked" />
            <?php } else { ?>
            <input type="checkbox" name="sub_category" value="1" />
            <?php } ?>
            <?php echo $text_sub_category; ?>
            </label>
        </div> -->

      <!--  -->
        <div class="col-xs-12 col-sm-3">
          <label class="custom-checkbox">
            <?php if ($description) { ?>
            <input type="checkbox" name="description" value="1" id="description" checked="checked" />
            <i class="fa"></i>
            <?php } else { ?>
            <input type="checkbox" name="description" value="1" id="description" />
			<i class="fa"></i>
            <?php } ?>
            <label for="description"><?php echo $entry_description; ?></label>
          </label>
        </div>
        <div class="col-xs-12 col-sm-3 text-right">
          <input type="button" value="<?php echo $button_search; ?>" id="button-search" class="btn btn-hover btn-outline" />
        </div>
        </div>
		<div class="col-xs-12">
		  <h2 class="hidden-xs" style="margin-bottom: 24px;"><?php echo $text_search; ?></h2>
		</div>
	<div>
      <!-- <p><a href="<?php echo $compare; ?>" id="compare-total"><?php echo $text_compare; ?></a></p> -->
      <?php if ($products) { ?>

        <!-- <div class="col-sm-3 hidden-xs">
          <div class="btn-group">
            <button type="button" id="list-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_list; ?>"><i class="fa fa-th-list"></i></button>
            <button type="button" id="grid-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_grid; ?>"><i class="fa fa-th"></i></button>
          </div>
        </div>
        <div class="col-sm-1 col-sm-offset-2 text-right">
          <label class="control-label" for="input-sort">
            <?php echo $text_sort; ?></label>
        </div>
        <div class="col-sm-3 text-right">
          <select id="input-sort" class="form-control col-sm-3" onchange="location = this.value;">
            <?php foreach ($sorts as $sorts) { ?>
            <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
            <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
            <?php } ?>
            <?php } ?>
          </select>
        </div>
        <div class="col-sm-1 text-right">
          <label class="control-label" for="input-limit"><?php echo $text_limit; ?></label>
        </div>
        <div class="col-sm-2 text-right">
          <select id="input-limit" class="form-control" onchange="location = this.value;">
            <?php foreach ($limits as $limits) { ?>
            <?php if ($limits['value'] == $limit) { ?>
            <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
            <?php } ?>
            <?php } ?>
          </select>
        </div> -->

        <div class="search-product-list col-xs-12">
          <?php foreach ($products as $product) { ?>
          <div class="search-product-thumb">
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
        <div class="col-sm-12 text-center">
          <?php echo $pagination; ?>
        </div>
        <!-- <div class="col-sm-12 text-right">
          <?php echo $results; ?>
        </div>-->
      <?php } else { ?>
      <div class="col-sm-12 text-center"><?php echo $text_empty; ?></div>
      <?php } ?>
      </div>
      <?php echo $content_bottom; ?>
    </div>
    <?php echo $column_right; ?>
  </div>
</div>
<script type="text/javascript"><!--
$('#button-search').bind('click', function() {
	url = 'index.php?route=product/search';

	var search = $('#content input[name=\'search\']').prop('value');

	if (search) {
		url += '&search=' + encodeURIComponent(search);
	}

	var category_id = $('#content select[name=\'category_id\']').prop('value');

	if (category_id > 0) {
		url += '&category_id=' + encodeURIComponent(category_id);
	}

	var sub_category = $('#content input[name=\'sub_category\']:checked').prop('value');

	if (sub_category) {
		url += '&sub_category=true';
	}

	var filter_description = $('#content input[name=\'description\']:checked').prop('value');

	if (filter_description) {
		url += '&description=true';
	}

	location = url;
});

$('#content input[name=\'search\']').bind('keydown', function(e) {
	if (e.keyCode == 13) {
		$('#button-search').trigger('click');
	}
});

$('select[name=\'category_id\']').on('change', function() {
	if (this.value == '0') {
		$('input[name=\'sub_category\']').prop('disabled', true);
	} else {
		$('input[name=\'sub_category\']').prop('disabled', false);
	}
});

$('select[name=\'category_id\']').trigger('change');
--></script>
<?php echo $footer; ?>