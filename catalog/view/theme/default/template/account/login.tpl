<?php echo $header; ?>
<div class="container">
  <?php if ($success) { ?>
  <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?></div>
  <?php } ?>
  <?php if ($error_warning) { ?>
  <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?></div>
  <?php } ?>
	<div class="row">
		<div class="col-xs-12">
			<h1>Вход</h1>
		</div>
	</div>
  <div class="row">
    <div id="content" class="col-xs-12">
      <div class="row">

        <div class="col-sm-6">
            <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
              <div class="form-group">
                <label class="control-label" for="input-email"><?php echo $entry_email; ?></label>
                <input type="text" name="email" value="<?php echo $email; ?>" placeholder="<?php echo $entry_email; ?>" id="input-email" class="form-control" />
              </div>
              <div class="form-group form-group-last-itm">
                <label class="control-label" for="input-password"><?php echo $entry_password; ?></label>
				<a  class="primary-link pull-right" href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a>
				<input type="password" name="password" value="<?php echo $password; ?>" placeholder="<?php echo $entry_password; ?>" id="input-password" class="form-control" />
			  </div>
				<div class="form-buttons clearfix">
					<a  class="btn btn-hover btn-ghost pull-left" href="#"><i class="fa fa-long-arrow-left"></i>&nbsp;&nbsp;Назад</a>
					<input type="submit" value="<?php echo $button_login; ?>" class="btn btn-hover btn-outline pull-right" />
				</div>
              <?php if ($redirect) { ?>
              <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
              <?php } ?>
            </form>
          </div>


		  <div class="col-sm-6">
			  <div class="well">
				  <p class="small"><span class="lato-bold">Нет учетной записи?</span><br>
				  <span class="primary-link"><?php echo $text_register; ?></span> прямо сейчас!
					<br><br>
				  <?php echo $text_register_account; ?></p>

				  <a href="<?php echo $register; ?>" class="btn btn-hover btn-outline"><?php echo $text_register; ?></a>

			 </div>
		  </div>
	  </div>
      </div>
    </div>
</div>
<?php echo $footer; ?>