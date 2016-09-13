<?php echo $header; ?>
<div class="container">
    <?php if ($attention) { ?>
        <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $attention; ?>
            <button type="button" class="close" data-dismiss="alert">&times;</button>
        </div>
    <?php } ?>
    <?php if ($success) { ?>
        <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
            <button type="button" class="close" data-dismiss="alert">&times;</button>
        </div>
    <?php } ?>
    <?php if ($error_warning) { ?>
        <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
            <button type="button" class="close" data-dismiss="alert">&times;</button>
        </div>
    <?php } ?>
    <div class="row">
        <div id="content" class="col-xs-12">

            <h1><?php echo $heading_title; ?></h1>
            <div class="panel-dark">
            <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
                <div class="cart-table table-wrapper">
                    <table class="table">
                        <thead>
                            <tr>
                                <td class="hidden-xs cart-table-img"></td>
                                <td class="text-left  hidden-xs cart-table-name"><?php echo $column_name; ?></td>
                                <td class="text-center hidden-xs hidden-sm cart-table-model"><?php echo $column_model; ?></td>
                                <td class="text-center hidden-xs cart-table-quantity"><?php echo $column_quantity; ?></td>
                                <td class="text-center  hidden-xs cart-table-price"><?php echo $column_price; ?></td>
                                <td class="text-center  hidden-xs cart-table-total"><?php echo $column_total; ?></td>
                                <td class="text-right cart-table-del"></td>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach ($products as $product) { ?>
                                <tr style="position: relative;" class="itm">
                                    <td class="text-center cart-table-img"><?php if ($product['thumb']) { ?>
                                            <a href="<?php echo $product['href']; ?>">
                                                <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-thumbnail" /></a>
                                        <?php } ?>
                                    </td>
                                    <td class="text-left cart-table-name">
                                        <a href="<?php echo $product['href']; ?>">
                                            <?php echo $product['name']; ?>
                                        </a>
                                        <div class="hidden-sm hidden-md hidden-lg">
                                            <div style="margin-top: 12px;"><strong><?php echo $column_quantity; ?></strong></div>
                                            <div class="number clearfix">
                                                <span class="minus">-</span>
                                                <input type="text" name="quantity[<?php echo $product['cart_id']; ?>]" value="<?php echo $product['quantity']; ?>"  class="itms-quantity" />
                                                <span class="plus">+</span>
                                            </div>
                                            <div style="margin-top: 12px;"><strong><?php echo $column_total; ?></strong></div>
                                            <div><?php echo $product['total']; ?></div>
                                        </div>
                                    </td>
                                    <td class="text-center  hidden-xs  hidden-sm cart-table-model"><?php echo $product['model']; ?></td>
                                    <td class="text-center  hidden-xs cart-table-quantity">
										<div class="number clearfix">
											<span class="minus">-</span>
											<input type="text" name="quantity[<?php echo $product['cart_id']; ?>]" value="<?php echo $product['quantity']; ?>"  class="itms-quantity" />
											<span class="plus">+</span>
										</div>
									</td>
                                    <td class="text-center  hidden-xs cart-table-price"><?php echo $product['price']; ?></td>
                                    <td class="text-center  hidden-xs cart-table-total"><?php echo $product['total']; ?></td>
                                    <td class="cart-table-del">
                                        <button type="button" class="btn btn-close" onclick="cart.remove('<?php echo $product['cart_id']; ?>');"><i class="fa fa-times"></i></button>
                                    </td>
                                </tr>
                            <?php } ?>
                            <tr>

                                <td class="text-right" colspan="7">
                                    <?php foreach ($totals as $total) { ?>
                                    <?php echo $total['title']; ?> <span style="display: inline-block; width: 150px;"><?php echo $total['text']; ?></span>
                                    <br>
                                    <?php } ?>
                                </td>
                            </tr>
                        </tbody>
                    </table>

                    <!--- TODO сделать кнопки --->
                    <div class="btns-blck">
                        <a href="" class="btn btn-hover btn-outline btn-xs" id="back-to-shop">Продолжить покупки</a>
                        <button type="button" class="btn btn-hover btn-default btn-xs" id="place-order">Оформить заказ</button>
                    </div>
                </div>
            </form>

            <div id="payment-blck" class="payment-blck">
                <div class="row check-form" id="checkout-form">
                    <div class="col-sm-6 user-info-fields">
                        <div class="user-info-title clearfix">
                            <h4>Информация о покупателе</h4>
                            <p>Я зарегистрирован</p>
                        </div>
                        <div class="form-group required">
                            <label class="control-label" for="input-payment-firstname">Имя и Фамилия</label>
                            <!--
                            <input type="text" name="firstname" value="" id="input-payment-firstname" class="form-control">
                            -->
                            <input type="text" name="firstname" value="<?php echo $firstname; ?>" id="input-payment-firstname" class="form-control" />
                        </div>
                        <div class="form-group required">
                            <label class="control-label" for="input-payment-telephone">Телефон</label>
                            <!--
                            <input type="text" name="telephone" value="" id="input-payment-telephone" class="form-control">
                            -->
                            <input type="text" name="telephone" value="<?php echo $telephone; ?>" id="input-payment-telephone" class="form-control" />
                        </div>
                        <div class="form-group required">
                            <label class="control-label" for="input-payment-address">Адрес</label>
                            <input type="text" name="address_1" value="" id="input-payment-address" class="form-control">
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="input-payment-email">E-Mail</label>
                            <input type="email" name="email" value="" id="input-payment-email" class="form-control">
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="input-payment-password">Пароль</label>
                            <input type="password" name="password" value="" id="input-payment-password" class="form-control">
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="input-payment-confirm-password">Подтвердите пароль</label>
                            <input type="password" name="password_confirm" value="" id="input-payment-confirm-password" class="form-control">
                        </div>
                    </div>

                    <div class="col-sm-6 col-md-5 col-lg-offset-2 col-lg-4">
                        <h4 class="delivery-method">Способ доставки</h4>
                        <div class="form-group">
                            <div id="shipping_methods">
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="shipping_method" value="" data-cost="40 грн." id="shipping_method_1">
                                        <div style="display: inline-block;width: 85%;">Доставка по Киеву   <span style="display: inline-block; float: right;">40 грн.</span></div>
                                    </label>
                                </div>
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="shipping_method" value="" id="shipping_method_2">
                                        <div style="display: inline-block;width: 85%;">Доставка в другой регион<span style="display: inline-block; float: right;">Дог.</span></div>
                                    </label>
                                </div>
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="shipping_method" value="" data-cost="0" id="shipping_method_3">
                                        <div style="display: inline-block;width: 85%;">Самовывоз из магазина<span style="display: inline-block; float: right;">0 грн.</span></div>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <textarea name="comment" rows="8" class="form-control" id="input-comment" placeholder="Комментарии к заказу"></textarea>
                        </div>
                    </div>
                </div>

				<div class="row">
					<div class="col-xs-12">
						<div class="pull-left">
							<a href="" class="btn btn-hover btn-outline btn-xs" id="back-to-shop">&larr;&nbsp;&nbsp;<span class="hidden-xs">Назад</span></a>
						</div>
						<div class="pull-right">
							<input type="button" value="Оформить заказ" id="button-order" data-loading-text="" class="btn btn-hover btn-default btn-xs" />
						</div>
					</div>
				</div>





            <div class="row" id="checkout-form" style="display: none">
                <div class="<?php echo $settings['buy_form_design']?'col-sm-6 col-sm-offset-3':'col-sm-6' ?>">
                    <?php if($settings['buy_form_headings']){ ?>
                    <div class="form-group">
                        <h2><span class="label label-primary">1</span> <?php echo $settings['buy_heading_1'.$lang]; ?></h2>
                    </div>
                    <?php } ?>
                    <div class="form-group" style="display: <?php echo (count($customer_groups) > 1 ? 'block' : 'none'); ?>;">
                        <label class="control-label"><?php echo $entry_customer_group; ?></label>
                        <?php foreach ($customer_groups as $customer_group) { ?>
                            <?php if ($customer_group['customer_group_id'] == $customer_group_id) { ?>
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="customer_group_id" value="<?php echo $customer_group['customer_group_id']; ?>" checked="checked" />
                                        <?php echo $customer_group['name']; ?></label>
                                </div>
                            <?php } else { ?>
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="customer_group_id" value="<?php echo $customer_group['customer_group_id']; ?>" />
                                        <?php echo $customer_group['name']; ?></label>
                                </div>
                            <?php } ?>
                        <?php } ?>
                    </div>
                    <?php if($settings['buy_firstname_status']){ ?>
                    <div class="form-group<?php if($settings['buy_firstname_required']){ ?> required<?php } ?>">
                        <label class="control-label" for="input-payment-firstname"><?php echo $entry_firstname; ?></label>
                        <!--
                        <input type="text" name="firstname" value="<!?php echo $firstname; ?>" placeholder="<!?php echo $entry_firstname; ?>" id="input-payment-firstname" class="form-control" />
                        -->
                    </div>
                    <?php } ?>
                    <?php if($settings['buy_lastname_status']){ ?>
                    <div class="form-group<?php if($settings['buy_lastname_required']){ ?> required<?php } ?>">
                        <label class="control-label" for="input-payment-lastname"><?php echo $entry_lastname; ?></label>
                        <input type="text" name="lastname" value="<?php echo $lastname; ?>" placeholder="<?php echo $entry_lastname; ?>" id="input-payment-lastname" class="form-control" />
                    </div>
                    <?php } ?>
                    <?php if($settings['buy_email_status']){ ?>
                    <div class="form-group<?php if($settings['buy_email_required']){ ?> required<?php } ?>">
                        <!--
                        <label class="control-label" for="input-payment-email"><!?php echo $entry_email; ?></label>

                        <input type="text" name="email" value="<!?php echo $email; ?>" placeholder="<!?php echo $entry_email; ?>" id="input-payment-email" class="form-control" />
                        -->
                    </div>
                    <?php } ?>
                    <?php if($settings['buy_telephone_status']){ ?>
                    <div class="form-group<?php if($settings['buy_telephone_required']){ ?> required<?php } ?>">
                        <label class="control-label" for="input-payment-telephone"><?php echo $entry_telephone; ?></label>
                        <!--
                        <input type="text" name="telephone" value="<!?php echo $telephone; ?>" placeholder="<!?php echo $entry_telephone; ?>" id="input-payment-telephone" class="form-control" />
                        -->
                    </div>
                    <?php } ?>
                    <?php if($settings['buy_fax_status']){ ?>
                    <div class="form-group<?php if($settings['buy_fax_required']){ ?> required<?php } ?>">
                        <label class="control-label" for="input-payment-fax"><?php echo $entry_fax; ?></label>
                        <input type="text" name="fax" value="<?php echo $fax; ?>" placeholder="<?php echo $entry_fax; ?>" id="input-payment-fax" class="form-control" />
                    </div>
                    <?php } ?>
                    <?php if($settings['buy_company_status']){ ?>
                    <div class="form-group<?php if($settings['buy_company_required']){ ?> required<?php } ?>">
                        <label class="control-label" for="input-payment-company"><?php echo $entry_company; ?></label>
                        <input type="text" name="company" value="<?php echo $company; ?>" placeholder="<?php echo $entry_company; ?>" id="input-payment-company" class="form-control" />
                    </div>
                    <?php } ?>
                    <?php foreach ($custom_fields as $custom_field) { ?>
                        <?php if ($custom_field['location'] == 'account') { ?>
                            <?php if ($custom_field['type'] == 'select') { ?>
                                <div id="payment-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
                                    <label class="control-label" for="input-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
                                    <select name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" id="input-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control">
                                        <option value=""><?php echo $text_select; ?></option>
                                        <?php foreach ($custom_field['custom_field_value'] as $custom_field_value) { ?>
                                            <?php if (isset($guest_custom_field[$custom_field['custom_field_id']]) && $custom_field_value['custom_field_value_id'] == $guest_custom_field[$custom_field['custom_field_id']]) { ?>
                                                <option value="<?php echo $custom_field_value['custom_field_value_id']; ?>" selected="selected"><?php echo $custom_field_value['name']; ?></option>
                                            <?php } else { ?>
                                                <option value="<?php echo $custom_field_value['custom_field_value_id']; ?>"><?php echo $custom_field_value['name']; ?></option>
                                            <?php } ?>
                                        <?php } ?>
                                    </select>
                                </div>
                            <?php } ?>
                            <?php if ($custom_field['type'] == 'radio') { ?>
                                <div id="payment-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
                                    <label class="control-label"><?php echo $custom_field['name']; ?></label>
                                    <div id="input-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>">
                                        <?php foreach ($custom_field['custom_field_value'] as $custom_field_value) { ?>
                                            <div class="radio">
                                                <?php if (isset($guest_custom_field[$custom_field['custom_field_id']]) && $custom_field_value['custom_field_value_id'] == $guest_custom_field[$custom_field['custom_field_id']]) { ?>
                                                    <label>
                                                        <input type="radio" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo $custom_field_value['custom_field_value_id']; ?>" checked="checked" />
                                                        <?php echo $custom_field_value['name']; ?></label>
                                                <?php } else { ?>
                                                    <label>
                                                        <input type="radio" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo $custom_field_value['custom_field_value_id']; ?>" />
                                                        <?php echo $custom_field_value['name']; ?></label>
                                                <?php } ?>
                                            </div>
                                        <?php } ?>
                                    </div>
                                </div>
                            <?php } ?>
                            <?php if ($custom_field['type'] == 'checkbox') { ?>
                                <div id="payment-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
                                    <label class="control-label"><?php echo $custom_field['name']; ?></label>
                                    <div id="input-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>">
                                        <?php foreach ($custom_field['custom_field_value'] as $custom_field_value) { ?>
                                            <div class="checkbox">
                                                <?php if (isset($guest_custom_field[$custom_field['custom_field_id']]) && in_array($custom_field_value['custom_field_value_id'], $guest_custom_field[$custom_field['custom_field_id']])) { ?>
                                                    <label>
                                                        <input type="checkbox" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>][]" value="<?php echo $custom_field_value['custom_field_value_id']; ?>" checked="checked" />
                                                        <?php echo $custom_field_value['name']; ?></label>
                                                <?php } else { ?>
                                                    <label>
                                                        <input type="checkbox" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>][]" value="<?php echo $custom_field_value['custom_field_value_id']; ?>" />
                                                        <?php echo $custom_field_value['name']; ?></label>
                                                <?php } ?>
                                            </div>
                                        <?php } ?>
                                    </div>
                                </div>
                            <?php } ?>
                            <?php if ($custom_field['type'] == 'text') { ?>
                                <div id="payment-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
                                    <label class="control-label" for="input-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
                                    <input type="text" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo (isset($guest_custom_field[$custom_field['custom_field_id']]) ? $guest_custom_field[$custom_field['custom_field_id']] : $custom_field['value']); ?>" placeholder="<?php echo $custom_field['name']; ?>" id="input-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" />
                                </div>
                            <?php } ?>
                            <?php if ($custom_field['type'] == 'textarea') { ?>
                                <div id="payment-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
                                    <label class="control-label" for="input-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
                                    <textarea name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" rows="5" placeholder="<?php echo $custom_field['name']; ?>" id="input-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control"><?php echo (isset($guest_custom_field[$custom_field['custom_field_id']]) ? $guest_custom_field[$custom_field['custom_field_id']] : $custom_field['value']); ?></textarea>
                                </div>
                            <?php } ?>
                            <?php if ($custom_field['type'] == 'file') { ?>
                                <div id="payment-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
                                    <label class="control-label"><?php echo $custom_field['name']; ?></label>
                                    <br />
                                    <button type="button" id="button-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-default"><i class="fa fa-upload"></i> <?php echo $button_upload; ?></button>
                                    <input type="hidden" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo (isset($guest_custom_field[$custom_field['custom_field_id']]) ? $guest_custom_field[$custom_field['custom_field_id']] : ''); ?>" />
                                </div>
                            <?php } ?>
                            <?php if ($custom_field['type'] == 'date') { ?>
                                <div id="payment-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
                                    <label class="control-label" for="input-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
                                    <div class="input-group date">
                                        <input type="text" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo (isset($guest_custom_field[$custom_field['custom_field_id']]) ? $guest_custom_field[$custom_field['custom_field_id']] : $custom_field['value']); ?>" placeholder="<?php echo $custom_field['name']; ?>" data-format="YYYY-MM-DD" id="input-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" />
                                        <span class="input-group-btn">
                                            <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                                        </span></div>
                                </div>
                            <?php } ?>
                            <?php if ($custom_field['type'] == 'time') { ?>
                                <div id="payment-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
                                    <label class="control-label" for="input-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
                                    <div class="input-group time">
                                        <input type="text" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo (isset($guest_custom_field[$custom_field['custom_field_id']]) ? $guest_custom_field[$custom_field['custom_field_id']] : $custom_field['value']); ?>" placeholder="<?php echo $custom_field['name']; ?>" data-format="HH:mm" id="input-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" />
                                        <span class="input-group-btn">
                                            <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                                        </span></div>
                                </div>
                            <?php } ?>
                            <?php if ($custom_field['type'] == 'datetime') { ?>
                                <div id="payment-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
                                    <label class="control-label" for="input-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
                                    <div class="input-group datetime">
                                        <input type="text" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo (isset($guest_custom_field[$custom_field['custom_field_id']]) ? $guest_custom_field[$custom_field['custom_field_id']] : $custom_field['value']); ?>" placeholder="<?php echo $custom_field['name']; ?>" data-format="YYYY-MM-DD HH:mm" id="input-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" />
                                        <span class="input-group-btn">
                                            <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                                        </span></div>
                                </div>
                            <?php } ?>
                        <?php } ?>
                    <?php } ?>
                <?php if(!$settings['buy_form_design']){ ?>
                </div>
                <div class="col-sm-6">
                <?php } ?>
                    <?php if($settings['buy_form_headings']){ ?>
                    <div class="form-group">
                        <h2><span class="label label-primary">2</span> <?php echo $settings['buy_heading_2'.$lang]; ?></h2>
                    </div>
                    <?php } ?>




                    <?php if($settings['buy_country_status']){ ?>
                    <div class="form-group<?php if($settings['buy_country_required']){ ?> required<?php } ?>" id="payment-country">
                        <label class="control-label" for="input-payment-country"><?php echo $entry_country; ?></label>
                        <select name="country_id" id="input-payment-country" class="form-control">
                            <option value=""><?php echo $text_select; ?></option>
                            <?php foreach ($countries as $country) { ?>
                                <?php if ($country['country_id'] == $country_id) { ?>
                                    <option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
                                <?php } else { ?>
                                    <option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
                                <?php } ?>
                            <?php } ?>
                        </select>
                    </div>
                    <?php }else{ ?>
                    <div class="hidden">
                        <select name="country_id">
                            <option value="<?php echo $country_id; ?>" selected="selected"></option>
                        </select>
                    </div>
                    <?php } ?>

                    <?php if($settings['buy_zone_status']){ ?>
                    <div class="form-group has-feedback<?php if($settings['buy_zone_required']){ ?> required<?php } ?>" id="payment-zone">
                        <label class="control-label" for="input-payment-zone"><?php echo $entry_zone; ?></label>
                        <select name="zone_id" id="input-payment-zone" class="form-control" onchange="updateShM(this.value);">
                        </select>
                    </div>
                    <?php }else{ ?>
                    <div class="hidden">
                        <select name="zone_id">
                            <option value="<?php echo $zone_id; ?>" selected="selected"></option>
                        </select>
                    </div>
                    <?php } ?>
                    <?php if($settings['buy_city_status']){ ?>
                    <div class="form-group<?php if($settings['buy_city_required']){ ?> required<?php } ?>">
                        <label class="control-label" for="input-payment-city"><?php echo $entry_city; ?></label>
                        <input type="text" name="city" value="<?php echo $city; ?>" placeholder="<?php echo $entry_city; ?>" id="input-payment-city" class="form-control" />
                    </div>
                    <?php } ?>
                    <?php if($settings['buy_postcode_status']){ ?>
                    <div class="form-group<?php if($settings['buy_postcode_required']){ ?> required<?php } ?>">
                        <label class="control-label" for="input-payment-postcode"><?php echo $entry_postcode; ?></label>
                        <input type="text" name="postcode" value="<?php echo $postcode; ?>" placeholder="<?php echo $entry_postcode; ?>" id="input-payment-postcode" class="form-control" />
                    </div>
                    <?php } ?>
                    <?php if($settings['buy_address_1_status']){ ?>
                    <div class="form-group<?php if($settings['buy_address_1_required']){ ?> required<?php } ?>">
                        <label class="control-label" for="input-payment-address-1"><?php echo $entry_address_1; ?></label>
                        <!--
                        <input type="text" name="address_1" value="<!?php echo $address_1; ?>" placeholder="<!?php echo $entry_address_1; ?>" id="input-payment-address-1" class="form-control" />
                        -->
                    </div>
                    <?php } ?>
                    <?php if($settings['buy_address_2_status']){ ?>
                    <div class="form-group<?php if($settings['buy_address_2_required']){ ?> required<?php } ?>">
                        <label class="control-label" for="input-payment-address-2"><?php echo $entry_address_2; ?></label>
                        <input type="text" name="address_2" value="<?php echo $address_2; ?>" placeholder="<?php echo $entry_address_2; ?>" id="input-payment-address-2" class="form-control" />
                    </div>
                    <?php } ?>



                    <?php foreach ($custom_fields as $custom_field) { ?>
                        <?php if ($custom_field['location'] == 'address') { ?>
                            <?php if ($custom_field['type'] == 'select') { ?>
                                <div id="payment-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
                                    <label class="control-label" for="input-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
                                    <select name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" id="input-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control">
                                        <option value=""><?php echo $text_select; ?></option>
                                        <?php foreach ($custom_field['custom_field_value'] as $custom_field_value) { ?>
                                            <?php if (isset($guest_custom_field[$custom_field['custom_field_id']]) && $custom_field_value['custom_field_value_id'] == $guest_custom_field[$custom_field['custom_field_id']]) { ?>
                                                <option value="<?php echo $custom_field_value['custom_field_value_id']; ?>" selected="selected"><?php echo $custom_field_value['name']; ?></option>
                                            <?php } else { ?>
                                                <option value="<?php echo $custom_field_value['custom_field_value_id']; ?>"><?php echo $custom_field_value['name']; ?></option>
                                            <?php } ?>
                                        <?php } ?>
                                    </select>
                                </div>
                            <?php } ?>
                            <?php if ($custom_field['type'] == 'radio') { ?>
                                <div id="payment-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
                                    <label class="control-label"><?php echo $custom_field['name']; ?></label>
                                    <div id="input-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>">
                                        <?php foreach ($custom_field['custom_field_value'] as $custom_field_value) { ?>
                                            <div class="radio">
                                                <?php if (isset($guest_custom_field[$custom_field['custom_field_id']]) && $custom_field_value['custom_field_value_id'] == $guest_custom_field[$custom_field['custom_field_id']]) { ?>
                                                    <label>
                                                        <input type="radio" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo $custom_field_value['custom_field_value_id']; ?>" checked="checked" />
                                                        <?php echo $custom_field_value['name']; ?></label>
                                                <?php } else { ?>
                                                    <label>
                                                        <input type="radio" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo $custom_field_value['custom_field_value_id']; ?>" />
                                                        <?php echo $custom_field_value['name']; ?></label>
                                                <?php } ?>
                                            </div>
                                        <?php } ?>
                                    </div>
                                </div>
                            <?php } ?>
                            <?php if ($custom_field['type'] == 'checkbox') { ?>
                                <div id="payment-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
                                    <label class="control-label"><?php echo $custom_field['name']; ?></label>
                                    <div id="input-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>">
                                        <?php foreach ($custom_field['custom_field_value'] as $custom_field_value) { ?>
                                            <div class="checkbox">
                                                <?php if (isset($guest_custom_field[$custom_field['custom_field_id']]) && in_array($custom_field_value['custom_field_value_id'], $guest_custom_field[$custom_field['custom_field_id']])) { ?>
                                                    <label>
                                                        <input type="checkbox" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>][]" value="<?php echo $custom_field_value['custom_field_value_id']; ?>" checked="checked" />
                                                        <?php echo $custom_field_value['name']; ?></label>
                                                <?php } else { ?>
                                                    <label>
                                                        <input type="checkbox" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>][]" value="<?php echo $custom_field_value['custom_field_value_id']; ?>" />
                                                        <?php echo $custom_field_value['name']; ?></label>
                                                <?php } ?>
                                            </div>
                                        <?php } ?>
                                    </div>
                                </div>
                            <?php } ?>
                            <?php if ($custom_field['type'] == 'text') { ?>
                                <div id="payment-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
                                    <label class="control-label" for="input-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
                                    <input type="text" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo (isset($guest_custom_field[$custom_field['custom_field_id']]) ? $guest_custom_field[$custom_field['custom_field_id']] : $custom_field['value']); ?>" placeholder="<?php echo $custom_field['name']; ?>" id="input-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" />
                                </div>
                            <?php } ?>
                            <?php if ($custom_field['type'] == 'textarea') { ?>
                                <div id="payment-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
                                    <label class="control-label" for="input-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
                                    <textarea name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" rows="5" placeholder="<?php echo $custom_field['name']; ?>" id="input-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control"><?php echo (isset($guest_custom_field[$custom_field['custom_field_id']]) ? $guest_custom_field[$custom_field['custom_field_id']] : $custom_field['value']); ?></textarea>
                                </div>
                            <?php } ?>
                            <?php if ($custom_field['type'] == 'file') { ?>
                                <div id="payment-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
                                    <label class="control-label"><?php echo $custom_field['name']; ?></label>
                                    <br />
                                    <button type="button" id="button-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-default"><i class="fa fa-upload"></i> <?php echo $button_upload; ?></button>
                                    <input type="hidden" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo (isset($guest_custom_field[$custom_field['custom_field_id']]) ? $guest_custom_field[$custom_field['custom_field_id']] : ''); ?>" />
                                </div>
                            <?php } ?>
                            <?php if ($custom_field['type'] == 'date') { ?>
                                <div id="payment-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
                                    <label class="control-label" for="input-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
                                    <div class="input-group date">
                                        <input type="text" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo (isset($guest_custom_field[$custom_field['custom_field_id']]) ? $guest_custom_field[$custom_field['custom_field_id']] : $custom_field['value']); ?>" placeholder="<?php echo $custom_field['name']; ?>" data-format="YYYY-MM-DD" id="input-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" />
                                        <span class="input-group-btn">
                                            <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                                        </span></div>
                                </div>
                            <?php } ?>
                            <?php if ($custom_field['type'] == 'time') { ?>
                                <div id="payment-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
                                    <label class="control-label" for="input-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
                                    <div class="input-group time">
                                        <input type="text" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo (isset($guest_custom_field[$custom_field['custom_field_id']]) ? $guest_custom_field[$custom_field['custom_field_id']] : $custom_field['value']); ?>" placeholder="<?php echo $custom_field['name']; ?>" data-format="HH:mm" id="input-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" />
                                        <span class="input-group-btn">
                                            <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                                        </span></div>
                                </div>
                            <?php } ?>
                            <?php if ($custom_field['type'] == 'datetime') { ?>
                                <div id="payment-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
                                    <label class="control-label" for="input-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
                                    <div class="input-group datetime">
                                        <input type="text" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo (isset($guest_custom_field[$custom_field['custom_field_id']]) ? $guest_custom_field[$custom_field['custom_field_id']] : $custom_field['value']); ?>" placeholder="<?php echo $custom_field['name']; ?>" data-format="YYYY-MM-DD HH:mm" id="input-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" />
                                        <span class="input-group-btn">
                                            <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                                        </span></div>
                                </div>
                            <?php } ?>
                        <?php } ?>
                    <?php } ?>
                    <?php if($settings['buy_form_headings'] && ($settings['buy_shipping_select'] || $settings['buy_payment_select'])) { ?>
                    <div class="form-group">
                        <h2><span class="label label-primary">3</span> <?php echo $settings['buy_heading_3'.$lang]; ?></h2>
                    </div>
                    <?php } ?>
                    <?php if($settings['buy_shipping_select']){ ?>
                    <div class="form-group">
                        <div id="shipping_methods"></div>
                    </div>
                    <?php }else{ ?>
                        <div class="hidden"><input type="radio" name="shipping_method" value="flat.flat" checked="checked"></div>
                    <?php } ?>
                    <br />
                    <?php if($settings['buy_payment_select']){ ?>
                    <div class="form-group">
                        <div id="payment_methods"></div>
                    </div>
                    <?php }else{ ?>
                        <div class="hidden"><input type="radio" name="payment_method" value="cod" checked="checked"></div>
                    <?php } ?>
                    <?php if($settings['buy_comment_status']){ ?>
                    <br />
                    <div class="form-group<?php if($settings['buy_comment_required']){ ?> required<?php } ?>">
                        <label class="control-label" for="input-comment"><strong><?php echo $entry_comment; ?></strong></label>
                        <!--
                        <textarea name="comment" rows="8" class="form-control" id="input-comment"><!?php echo $comment; ?></textarea>
                        -->
                    </div>
                    <?php } ?>
                    <?php if ($text_agree) { ?>
                        <div class="buttons">
                            <div class="text-center">
                                <label><?php echo $text_agree; ?>
                                <?php if ($agree) { ?>
                                    <input type="checkbox" name="agree" value="1" checked="checked" />
                                <?php } else { ?>
                                    <input type="checkbox" name="agree" value="1" />
                                <?php } ?>
                                </label>
                                <br />
                                <br />
                                <input type="button" value="<?php echo $button_order; ?>" id="button-order" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-success btn-lg" />
                            </div>
                            <div id="payment-form"></div>
                        </div>
                    <?php } else { ?>
                        <br />
                        <div class="buttons">
                            <div class="text-center">
                                <input type="button" value="<?php echo $button_order; ?>" id="button-order" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-success btn-lg" />
                            </div>
                            <div id="payment-form"></div>
                        </div>
                    <?php } ?>
                </div>
            </div>  <!--- id="checkout-form" ----->

        </div>
    </div>







            <?php echo $content_bottom; ?></div>
        <?php echo $column_right; ?></div>
</div>
<?php if($settings['buy_telephone_mask']){ ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery.maskedinput.min.js"></script>
<?php } ?>
<script type="text/javascript"><!--
cart.remove = function(key) {
        $.ajax({
            url: 'index.php?route=checkout/cart/remove',
            type: 'post',
            data: 'key=' + key,
            dataType: 'json',
            beforeSend: function() {
                $('#cart > button').button('loading');
            },
            success: function(json) {
                $('#cart > button').button('reset');

                $('#cart-total').html(json['total']);

                if (getURLVar('route') == 'checkout/buy') {
                    location = 'index.php?route=checkout/buy';
                } else {
                    $('#cart > ul').load('index.php?route=common/cart/info ul li');
                }
            }
        });
    }
    $('#checkout-form select[name=\'country_id\']').on('change', function() {
        $.ajax({
            url: 'index.php?route=checkout/checkout/country&country_id=' + this.value,
            dataType: 'json',
            beforeSend: function() {
                $('#checkout-form #payment-zone').append('<span class="form-control-feedback"><i class="fa fa-circle-o-notch fa-spin"></i></span>');
            },
            complete: function() {
                $('#checkout-form #payment-zone .form-control-feedback').remove();
            },
            success: function(json) {
                if (json['postcode_required'] == '1') {
                    $('#checkout-form input[name=\'postcode\']').parent().addClass('required');
                } else {
                    $('#checkout-form input[name=\'postcode\']').parent().removeClass('required');
                }

                html = '<option value=""> --- Please Select --- </option>';

                if (json['zone']) {
                    for (i = 0; i < json['zone'].length; i++) {
                        html += '<option value="' + json['zone'][i]['zone_id'] + '"';
                        
                        <?php if(!empty($zone_id)){ ?>
                        if (json['zone'][i]['zone_id'] == '<?php echo $zone_id; ?>') {
                            html += ' selected="selected"';
                        }
                        <?php } ?>

                        html += '>' + json['zone'][i]['name'] + '</option>';
                    }
                } else {
                    html += '<option value="0" selected="selected"> --- None --- </option>';
                }

                $('#checkout-form select[name=\'zone_id\']').html(html);
                var zone_id = $('#checkout-form select[name=\'zone_id\']').val();
                if (zone_id) {
                    updateShM(zone_id);
                }
            },
            error: function(xhr, ajaxOptions, thrownError) {
                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
            }
        });
    });

    $('#checkout-form select[name=\'country_id\']').trigger('change');
    function updateShM(zone_id) {
        //$('#shm_loading, #pay_loading').html(' <img src="image/loading.gif" width="43" height="11" style="margin-top:-3px;vertical-align:middle;">');
<?php if ($settings['buy_shipping_select']) { ?>
            $('#shipping_methods').load('index.php?route=checkout/buy/getShippingMethods&zone_id=' + zone_id, function() {
                $('#shm_loading').empty();
                selectShipping();
            });
<?php } ?>
        $('#payment_methods').load('index.php?route=checkout/buy/getPaymentMethods&zone_id=' + zone_id, function() {
            $('#pay_loading').empty();
        });
    }
    function getPaymentForm(code, callback) {
        $.ajax({
            async: false,
            cache: false,
            url: 'index.php?route=checkout/buy/getPaymentForm',
            type: 'post',
            data: 'code=' + code.split('.')[0] + '&payment_method=' + code,
            dataType: 'json',
            success: function(json) {
                $('#payment_form2').html(json['output']);
                callback();
            }
        });
    }
    $('#button-order').click(function() {
        $.ajax({
            url: 'index.php?route=checkout/buy/save',
            type: 'post',
            data: $('#checkout-form input[type=\'text\'], #checkout-form input[type=\'checkbox\']:checked, #checkout-form select, #checkout-form input[type=\'radio\']:checked, #checkout-form textarea, #checkout-form input[type=\'hidden\']'),
            dataType: 'json',
            beforeSend: function() {
                $('#button-order').button('loading');
            },
            complete: function() {
                $('#button-order').button('reset');
            },
            success: function(json) {
                $('.error').remove();
                $('.warning').remove();
                if (json['redirect']) {
                    location = json['redirect'];
                }
                if (json['error']) {
                    $('#checkout-form .has-error').removeClass('has-error');
                    $('#checkout-form .text-danger').remove();
                    if (json['error']['warning']) {
                        addWarning(json['error']['warning']);
                    }
                    if (json['error']['firstname']) {
                        addError('#input-payment-firstname', json['error']['firstname']);
                    }
                    if (json['error']['lastname']) {
                        addError('#input-payment-lastname', json['error']['lastname']);
                    }
                    if (json['error']['email']) {
                        addError('#input-payment-email', json['error']['email']);
                    }
                    if (json['error']['telephone']) {
                        addError('#input-payment-telephone', json['error']['telephone']);
                    }
                    if (json['error']['fax']) {
                        addError('#input-payment-fax', json['error']['fax']);
                    }
                    if (json['error']['company']) {
                        addError('#input-payment-company', json['error']['company']);
                    }
                    if (json['error']['country']) {
                        addError('#input-payment-country', json['error']['country']);
                    }
                    if (json['error']['zone']) {
                        addError('#input-payment-zone', json['error']['zone']);
                    }
                    if (json['error']['city']) {
                        addError('#input-payment-city', json['error']['city']);
                    }
                    if (json['error']['postcode']) {
                        addError('#input-payment-postcode', json['error']['postcode']);
                    }
                    if (json['error']['address_1']) {
                        addError('#input-payment-address-1', json['error']['address_1']);
                    }

                    $('.wait').remove();
                } else {
                    $.ajax({
                        url: 'index.php?route=checkout/buy/confirm',
                        type: 'get',
                        dataType: 'json',
                        success: function() {
                            var code = $('#checkout-form input[name=\'payment_method\']:checked').val();
                            getPaymentForm(code, function() {

                                if ($('p,h1,h2,h3,input[type=text],input[type=radio],input[type=checkbox],input[type=password],select', $('#payment-form')).length > 0) {
                                    $('#payment-form').css('display', 'block');
                                } else {
                                    var payment_form = $('#payment-form form#payment');

                                    if (payment_form.length) {
                                        payment_form.submit();
                                    } else {
                                        var href = $('#payment-form div.buttons a').attr('href');
                                        if (typeof href != 'undefined' && href != '' && href != '#') {
                                            location = href;
                                        } else {
                                            $('#payment-form div.buttons a,#payment-form div.buttons input[type=button],#payment-form div.buttons input[type=submit],#payment-form form input[type=submit]').click();
                                        }
                                    }
                                }
                            });
                        },
                        error: function(xhr, ajaxOptions, thrownError) {
                            alert(thrownError);
                        }
                    });
                }
            }
        });
    });
    function getPaymentForm(code, callback) {
        $.ajax({
            async: false,
            cache: false,
            url: 'index.php?route=checkout/buy/getPaymentForm',
            type: 'post',
            data: 'code=' + code.split('.')[0] + '&payment_method=' + code,
            dataType: 'json',
            success: function(json) {
                $('#payment-form').html(json['output']);
                callback();
            }
        });
    }
    function addWarning(text) {
        $('#checkout-form .alert').remove();
        $('#checkout-form').prepend('<div class="alert alert-danger alert-dismissible" role="alert"><button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>' + text + '</div>').animate({ right: "30px"} , 4000);
        $('html, body').animate({
            //scrollTop: $("#checkout-form").offset().top - 15
        }, {
            duration: 500,
            complete: function() {
                $('#checkout-form .alert').animate({opacity: 0}, 100).animate({opacity: 1}, 100);
            }
        });

    }
    function addError(el, text) {
        $(el).parent().addClass('has-error');
        $(el).after('<div class="text-danger">' + text + '</div>');
    }
    function selectShipping(){
        if(typeof($('input[name="shipping_method"]')) !== 'undefined'){
            $.ajax({
                async: false,
                cache: false,
                url: 'index.php?route=checkout/buy/selectShipping',
                type: 'post',
                data: 'code='+$('input[name="shipping_method"]:checked').val(),
                dataType: 'json',
                success: function(json) {
                    if(json['totals']){
                        var container = $('.total-item').closest('table');
                        container.children('tbody').children('.total-item').remove();
                        container.children('tbody').append(json['totals']);
                    }
                }
            });
        }
    }
    <?php if($settings['buy_telephone_mask']){ ?>
    $("#checkout-form input[name='telephone']").mask("<?php echo $settings['buy_telephone_mask'];?>");
    <?php } ?>
//--></script>
<!-- <style type="text/css">
   #checkout-form .has-feedback .form-control-feedback{top:26px;right:10px}
    #checkout-form #shipping_methods .radio, #checkout-form #payment_methods .radio{margin-left:20px}
    #checkout-form #payment-form{display:none}
</style> -->
<script>
	$(document).ready(function(){
		$('span.minus').click(function () {
			var $input = $(this).parent().find('input');
			var count = parseInt($input.val()) - 1;
			count = count < 1 ? 1 : count;
			$input.val(count);
			$input.change();
//            var total = $(this).parent().parent().parent().find('.cart-table-total').text();
//            var curr = total.substr(total.indexOf(' '), total.length),
//                price = parseFloat(($(this).parent().parent().parent().find('.cart-table-price').text()).replace(',','')),
//                result = (count * price).toFixed(2) + curr;
//            $(this).parent().parent().parent().find('.cart-table-total').text(result);
//            updateTotalAmount();
            $('form').trigger('submit');
			return false;
		});
		$('span.plus').click(function () {
			var $input = $(this).parent().find('input');
            var count = parseInt($input.val()) + 1;
			$input.val(count);
			$input.change();
//            var total = $(this).parent().parent().parent().find('.cart-table-total').text();
//            var curr = total.substr(total.indexOf(' '), total.length),
//                    price = parseFloat(($(this).parent().parent().parent().find('.cart-table-price').text()).replace(',','')),
//                    result = (count * price).toFixed(2) + curr;
//            $(this).parent().parent().parent().find('.cart-table-total').text(result);
//            updateTotalAmount();
            $('form').trigger('submit');
			return false;
		});
        $('#place-order').click(function () {
            $('#payment-blck').css('display', 'block');
            $('#back-to-shop').css('display', 'none');
            $('#place-order').css('display', 'none');
        });
        $('input[type="radio"]').change( function() {
            var this_radio_set = $('input[name="'+$(this).attr("name")+'"]');
            for (var i=0; i < this_radio_set.length;i++) {
                if ( $(this_radio_set[i]).is(':checked') ) $(this_radio_set[i]).parents('label').addClass('checked');
                else $(this_radio_set[i]).parents('label').removeClass('checked');
            }
        });

        function updateTotalAmount() {
            var cal_amount = 0;
            var curr = '';
            $('.cart-table-total').each(function(){
                var cur_val = $(this).text();
                    curr = cur_val.substr(cur_val.indexOf(' '), cur_val.length);
                    amount = parseFloat(cur_val.replace(',',''));
                if (!isNaN(amount)) {
                    cal_amount += amount;
                }
            });

            $('.text-right span').each(function() {
                //set calculated value here
                $(this).text(cal_amount.toFixed(2) + curr);
            });
        }
    });
	</script>
<?php echo $footer; ?>