<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
    <div class="page-header">
        <div class="container-fluid">
            <h1><?php echo $heading_title; ?></h1>
            <ul class="breadcrumb">
                <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
                <?php } ?>
            </ul>
        </div>
    </div>
    <div class="container-fluid">
        <?php if ($error_warning) { ?>
            <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
                <button type="button" class="close" data-dismiss="alert">&times;</button>
            </div>
        <?php } ?>
        <?php if ($success) { ?>
            <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
                <button type="button" class="close" data-dismiss="alert">&times;</button>
            </div>
        <?php } ?>
        <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $text_layout; ?>
            <button type="button" class="close" data-dismiss="alert">&times;</button>
        </div>
        <div class="pull-right">
            <a href="<?php echo $add_link; ?>" data-toggle="tooltip" title="<?php echo $button_add; ?>" class="btn btn-primary">
                <i class="fa fa-plus"></i>
            </a>
        </div>
        <div style="height: 50px"></div>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title"><i class="fa fa-puzzle-piece"></i> <?php echo $text_list; ?></h3>
            </div>
            <div class="panel-body">
                <form action="<?php echo $delete; ?>" method="post" enctype="multipart/form-data" id="form-module" class="form-horizontal">
                    <div class="table-responsive">
                        <table class="table table-bordered table-hover">
                            <thead>
                            <tr>
                                <td class="text-left"><?php echo $column_name; ?></td>
                                <td class="text-right"><?php echo $column_action; ?></td>
                            </tr>
                            </thead>
                            <tbody>

                                <?php if ($models) { ?>

                                    <?php foreach ($models as $model) { ?>

                                        <tr>
                                            <td><?php echo $model['id']; ?></td>
                                            <td><img src="<?php echo $model['img_path']; ?>" style="width: 200px; height: 200px;"></td>
                                            <td class="text-right">
                                                <?php if ($model['img_path']) { ?>
                                                <a href="<?php echo $edit_link . '&id=' . $model['id']; ?>" data-toggle="tooltip" title="<?php echo $button_edit; ?>" class="btn btn-primary"><i class="fa fa-pencil"></i></a>
                                                <?php } else { ?>
                                                <button type="button" class="btn btn-primary" disabled="disabled"><i class="fa fa-pencil"></i></button>
                                                <?php } ?>
                                            </td>
                                            <td class="text-right">
                                                <?php if ($model['img_path']) { ?>
                                                    <a href="<?php echo $delete_link . '&id=' . $model['id']; ?>" data-toggle="tooltip" title="<?php echo $button_edit; ?>" class="btn btn-primary"><i class="fa fa-trash-o"></i></a>
                                                <?php } else { ?>
                                                    <button type="button" class="btn btn-primary" disabled="disabled"><i class="fa fa-trash-o"></i></button>
                                                <?php } ?>
                                            </td>
                                        </tr>

                                    <?php } ?>

                                <?php } else { ?>
                                    <tr>
                                        <td class="text-center" colspan="2"><?php echo $text_no_results; ?></td>
                                    </tr>
                                <?php } ?>

                            </tbody>
                        </table>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<?php echo $footer; ?>
