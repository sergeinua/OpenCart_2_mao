<?php
class ControllerModuleBannerCategory extends Controller
{
    private $error = array();

    public function index()
    {
        $this->load->model('module/banner_category');
        $this->load->language('module/banner_category');

        if (isset($this->error['warning'])) {
            $data['error_warning'] = $this->error['warning'];
        } else {
            $data['error_warning'] = '';
        }

        if (isset($this->error['name'])) {
            $data['error_name'] = $this->error['name'];
        } else {
            $data['error_name'] = '';
        }

        if (isset($this->error['width'])) {
            $data['error_width'] = $this->error['width'];
        } else {
            $data['error_width'] = '';
        }

        if (isset($this->error['height'])) {
            $data['error_height'] = $this->error['height'];
        } else {
            $data['error_height'] = '';
        }

        $data['breadcrumbs'] = array();

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], 'SSL')
        );

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_module'),
            'href' => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL')
        );

        if (!isset($this->request->get['module_id'])) {
            $data['breadcrumbs'][] = array(
                'text' => $this->language->get('heading_title'),
                'href' => $this->url->link('module/banner_category', 'token=' . $this->session->data['token'], 'SSL')
            );
        } else {
            $data['breadcrumbs'][] = array(
                'text' => $this->language->get('heading_title'),
                'href' => $this->url->link('module/banner_category', 'token=' . $this->session->data['token'] . '&module_id=' . $this->request->get['module_id'], 'SSL')
            );
        }

        if (!isset($this->request->get['module_id'])) {
            $data['action'] = $this->url->link('module/banner_category', 'token=' . $this->session->data['token'], 'SSL');
        } else {
            $data['action'] = $this->url->link('module/banner_category', 'token=' . $this->session->data['token'] . '&module_id=' . $this->request->get['module_id'], 'SSL');
        }

        $data['cancel'] = $this->url->link('extension/module_category', 'token=' . $this->session->data['token'], 'SSL');

        if (isset($this->request->get['module_id']) && ($this->request->server['REQUEST_METHOD'] != 'POST')) {
            $module_info = $this->model_extension_module->getModule($this->request->get['module_id']);
        }

        $data['heading_title'] = $this->language->get('heading_title');

        $data['text_edit'] = $this->language->get('text_edit');
        $data['text_enabled'] = $this->language->get('text_enabled');
        $data['text_disabled'] = $this->language->get('text_disabled');

        $data['entry_name'] = $this->language->get('entry_name');
        $data['entry_banner'] = $this->language->get('entry_banner');
        $data['entry_width'] = $this->language->get('entry_width');
        $data['entry_height'] = $this->language->get('entry_height');
        $data['entry_status'] = $this->language->get('entry_status');
        $data['entry_href'] = $this->language->get('entry_href');
        $data['entry_img'] = $this->language->get('entry_img');

        $data['button_save'] = $this->language->get('button_save');
        $data['button_cancel'] = $this->language->get('button_cancel');
        $data['success'] = isset($this->request->post['success']) ? $this->request->post['success'] : null;
        $data['text_layout'] = $this->language->get('text_layout');
        $data['text_list'] = $this->language->get('text_layout');
        $this->document->setTitle($this->language->get('heading_title'));
        $data['heading_title'] = $this->language->get('heading_title');
        $data['header'] = $this->load->controller('common/header');
        $data['column_left'] = $this->load->controller('common/column_left');
        $data['footer'] = $this->load->controller('common/footer');

        $models = $this->model_module_banner_category->getAllBanners();
        $this->load->model('tool/image');

        foreach ($models as $model) {
            $result[$model['id']]['img_path'] = $this->model_tool_image->resize($model['img_path'], 100, 100);
            $result[$model['id']]['id'] = $model['id'];
            $result[$model['id']]['href'] = $model['href'];
        }

        $data['models'] = $result;

        $data['column_name'] = $this->language->get('column_name');
        $data['column_action'] = $this->language->get('column_action');
        $data['button_edit'] = $this->language->get('button_edit');
        $data['button_add'] = $this->language->get('button_add');
        $data['text_no_results'] = $this->language->get('text_no_results');
        $data['edit_link'] = $this->url->link('module/banner_category/edit', 'token=' . $this->session->data['token'], 'SSL');
        $data['delete_link'] = $this->url->link('module/banner_category/delete', 'token=' . $this->session->data['token'], 'SSL');
        $data['add_link'] = $this->url->link('module/banner_category/add', 'token=' . $this->session->data['token'], 'SSL');

        // notification messages
        if (isset($this->request->get['del_stat'])) {
            if ($this->request->get['del_stat'] == 1) {
                $data['success'] = 'Баннер был успешно удален';
            } else {
                $data['error_warning'] = 'Ошибка при удалении баннера';
            }
        }

        if (isset($this->request->get['add_stat'])) {
            if ($this->request->get['add_stat'] == 1) {
                $data['success'] = 'Баннер был успешно добавлен';
            } else {
                $data['error_warning'] = 'Ошибка при добавлении баннера';
            }
        }

        if (isset($this->request->get['edit_stat'])) {
            if ($this->request->get['edit_stat'] == 1) {
                $data['success'] = 'Баннер был успешно обновлен';
            } else {
                $data['error_warning'] = 'Ошибка при обновлении баннера';
            }
        }

        $this->response->setOutput($this->load->view('module/banner_category.tpl', $data));
    }

    public function add()
    {

        if ($this->request->post) {
            $this->load->model('module/banner_category');
            $this->model_module_banner_category->addBanner($this->request->post);
            $this->response->redirect($this->url->link('module/banner_category', 'add_stat=1&token=' . $this->session->data['token'], 'SSL'));
        }

        $this->load->language('module/banner_category');

        $this->document->setTitle($this->language->get('heading_title'));


        $data['heading_title'] = $this->language->get('heading_title');

        $data['text_edit'] = $this->language->get('text_edit');
        $data['text_enabled'] = $this->language->get('text_enabled');
        $data['text_disabled'] = $this->language->get('text_disabled');

        $data['entry_name'] = $this->language->get('entry_name');
        $data['entry_banner'] = $this->language->get('entry_banner');
        $data['entry_width'] = $this->language->get('entry_width');
        $data['entry_height'] = $this->language->get('entry_height');
        $data['entry_status'] = $this->language->get('entry_status');
        $data['entry_href'] = $this->language->get('entry_href');
        $data['entry_img'] = $this->language->get('entry_img');

        $data['button_save'] = $this->language->get('button_save');
        $data['button_cancel'] = $this->language->get('button_cancel');
        $data['href'] = '';

        if (isset($this->error['warning'])) {
            $data['error_warning'] = $this->error['warning'];
        } else {
            $data['error_warning'] = '';
        }

        if (isset($this->error['name'])) {
            $data['error_name'] = $this->error['name'];
        } else {
            $data['error_name'] = '';
        }

        if (isset($this->error['width'])) {
            $data['error_width'] = $this->error['width'];
        } else {
            $data['error_width'] = '';
        }

        if (isset($this->error['height'])) {
            $data['error_height'] = $this->error['height'];
        } else {
            $data['error_height'] = '';
        }

        $data['breadcrumbs'] = array();

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], 'SSL')
        );

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_module'),
            'href' => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL')
        );

        if (!isset($this->request->get['module_id'])) {
            $data['breadcrumbs'][] = array(
                'text' => $this->language->get('heading_title'),
                'href' => $this->url->link('module/banner_category', 'token=' . $this->session->data['token'], 'SSL')
            );
        } else {
            $data['breadcrumbs'][] = array(
                'text' => $this->language->get('heading_title'),
                'href' => $this->url->link('module/banner_category', 'token=' . $this->session->data['token'] . '&module_id=' . $this->request->get['module_id'], 'SSL')
            );
        }

        if (!isset($this->request->get['module_id'])) {
            $data['action'] = $this->url->link('module/banner_category/add', 'token=' . $this->session->data['token'], 'SSL');
        } else {
            $data['action'] = $this->url->link('module/banner_category/add', 'token=' . $this->session->data['token'] . '&module_id=' . $this->request->get['module_id'], 'SSL');
        }

        $data['cancel'] = $this->url->link('extension/module_category', 'token=' . $this->session->data['token'], 'SSL');

        if (isset($this->request->get['module_id']) && ($this->request->server['REQUEST_METHOD'] != 'POST')) {
            $module_info = $this->model_extension_module->getModule($this->request->get['module_id']);
        }

        if (isset($this->request->post['name'])) {
            $data['name'] = $this->request->post['name'];
        } elseif (!empty($module_info)) {
            $data['name'] = $module_info['name'];
        } else {
            $data['name'] = '';
        }

        if (isset($this->request->post['banner_id'])) {
            $data['banner_id'] = $this->request->post['banner_id'];
        } elseif (!empty($module_info)) {
            $data['banner_id'] = $module_info['banner_id'];
        } else {
            $data['banner_id'] = '';
        }

        $this->load->model('design/banner');

        $data['banners'] = $this->model_design_banner->getBanners();

        if (isset($this->request->post['width'])) {
            $data['width'] = $this->request->post['width'];
        } elseif (!empty($module_info)) {
            $data['width'] = $module_info['width'];
        } else {
            $data['width'] = '';
        }

        if (isset($this->request->post['height'])) {
            $data['height'] = $this->request->post['height'];
        } elseif (!empty($module_info)) {
            $data['height'] = $module_info['height'];
        } else {
            $data['height'] = '';
        }

        if (isset($this->request->post['status'])) {
            $data['status'] = $this->request->post['status'];
        } elseif (!empty($module_info)) {
            $data['status'] = $module_info['status'];
        } else {
            $data['status'] = '';
        }

        // all that previous shit was just copied & pasted (everyone does that way in OC )))

        // thumb
        $this->load->model('tool/image');

        if (isset($this->request->post['image']) && is_file(DIR_IMAGE . $this->request->post['image'])) {
            $data['thumb'] = $this->model_tool_image->resize($this->request->post['image'], 100, 100);
        } elseif (!empty($category_info) && is_file(DIR_IMAGE . $category_info['image'])) {
            $data['thumb'] = $this->model_tool_image->resize($category_info['image'], 100, 100);
        } else {
            $data['thumb'] = $this->model_tool_image->resize('no_image.png', 100, 100);
        }

        $data['header'] = $this->load->controller('common/header');
        $data['column_left'] = $this->load->controller('common/column_left');
        $data['footer'] = $this->load->controller('common/footer');

        $this->response->setOutput($this->load->view('module/banner_category_form.tpl', $data));

    }

    public function edit()
    {
        if ($this->request->post) {
            $this->load->model('module/banner_category');
            $this->model_module_banner_category->editBanner($this->request->get['id'], $this->request->post);

            $this->response->redirect($this->url->link('module/banner_category', 'edit_stat=1&token=' . $this->session->data['token'], 'SSL'));
        }
        $this->load->language('module/banner_category');

        $this->document->setTitle($this->language->get('heading_title'));

        $data['heading_title'] = $this->language->get('heading_title');

        $data['text_edit'] = $this->language->get('text_edit');
        $data['text_enabled'] = $this->language->get('text_enabled');
        $data['text_disabled'] = $this->language->get('text_disabled');

        $data['entry_name'] = $this->language->get('entry_name');
        $data['entry_banner'] = $this->language->get('entry_banner');
        $data['entry_width'] = $this->language->get('entry_width');
        $data['entry_height'] = $this->language->get('entry_height');
        $data['entry_status'] = $this->language->get('entry_status');
        $data['entry_href'] = $this->language->get('entry_href');
        $data['entry_img'] = $this->language->get('entry_img');

        $data['button_save'] = $this->language->get('button_save');
        $data['button_cancel'] = $this->language->get('button_cancel');

        if (isset($this->error['warning'])) {
            $data['error_warning'] = $this->error['warning'];
        } else {
            $data['error_warning'] = '';
        }

        if (isset($this->error['name'])) {
            $data['error_name'] = $this->error['name'];
        } else {
            $data['error_name'] = '';
        }

        if (isset($this->error['width'])) {
            $data['error_width'] = $this->error['width'];
        } else {
            $data['error_width'] = '';
        }

        if (isset($this->error['height'])) {
            $data['error_height'] = $this->error['height'];
        } else {
            $data['error_height'] = '';
        }

        $data['breadcrumbs'] = array();

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], 'SSL')
        );

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_module'),
            'href' => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL')
        );

        if (!isset($this->request->get['module_id'])) {
            $data['breadcrumbs'][] = array(
                'text' => $this->language->get('heading_title'),
                'href' => $this->url->link('module/banner_category', 'token=' . $this->session->data['token'], 'SSL')
            );
        } else {
            $data['breadcrumbs'][] = array(
                'text' => $this->language->get('heading_title'),
                'href' => $this->url->link('module/banner_category', 'token=' . $this->session->data['token'] . '&module_id=' . $this->request->get['module_id'], 'SSL')
            );
        }

        if (!isset($this->request->get['module_id'])) {
            $data['action'] = $this->url->link('module/banner_category/edit', 'token=' . $this->session->data['token'] . '&id=' . $this->request->get['id'], 'SSL');
        } else {
            $data['action'] = $this->url->link('module/banner_category/edit', 'token=' . $this->session->data['token'] . '&id='.$this->request->get['id'], 'SSL');
        }

        $data['cancel'] = $this->url->link('extension/module_category', 'token=' . $this->session->data['token'], 'SSL');

        if (isset($this->request->get['module_id']) && ($this->request->server['REQUEST_METHOD'] != 'POST')) {
            $module_info = $this->model_extension_module->getModule($this->request->get['module_id']);
        }

        if (isset($this->request->post['name'])) {
            $data['name'] = $this->request->post['name'];
        } elseif (!empty($module_info)) {
            $data['name'] = $module_info['name'];
        } else {
            $data['name'] = '';
        }

        if (isset($this->request->post['banner_id'])) {
            $data['banner_id'] = $this->request->post['banner_id'];
        } elseif (!empty($module_info)) {
            $data['banner_id'] = $module_info['banner_id'];
        } else {
            $data['banner_id'] = '';
        }

        $this->load->model('design/banner');

        $data['banners'] = $this->model_design_banner->getBanners();

        if (isset($this->request->post['width'])) {
            $data['width'] = $this->request->post['width'];
        } elseif (!empty($module_info)) {
            $data['width'] = $module_info['width'];
        } else {
            $data['width'] = '';
        }

        if (isset($this->request->post['height'])) {
            $data['height'] = $this->request->post['height'];
        } elseif (!empty($module_info)) {
            $data['height'] = $module_info['height'];
        } else {
            $data['height'] = '';
        }

        if (isset($this->request->post['status'])) {
            $data['status'] = $this->request->post['status'];
        } elseif (!empty($module_info)) {
            $data['status'] = $module_info['status'];
        } else {
            $data['status'] = '';
        }

        // all that previous shit was just copied & pasted (everyone does that way in OC )))

        // thumb
        $this->load->model('module/banner_category');
        $this->load->model('tool/image');
        $model = $this->model_module_banner_category->getBanner($this->request->get['id']);


        $data['thumb'] = $this->model_tool_image->resize($model['img_path'], $this->config->get('config_image_popup_width'), $this->config->get('config_image_popup_height'));
        $data['image'] = $model['img_path'];

        $data['href'] = $model['href'];

        $data['header'] = $this->load->controller('common/header');
        $data['column_left'] = $this->load->controller('common/column_left');
        $data['footer'] = $this->load->controller('common/footer');

        $this->response->setOutput($this->load->view('module/banner_category_form.tpl', $data));
    }

    public function delete() {
        if (isset($this->request->get['id'])) {
            $this->load->model('module/banner_category');

            if ($this->model_module_banner_category->deleteBanner($this->request->get['id'])) {
                $this->response->redirect($this->url->link('module/banner_category', 'del_stat=1&token=' . $this->session->data['token'], 'SSL'));
            } else {
                $this->response->redirect($this->url->link('module/banner_category', 'del_stat=0&token=' . $this->session->data['token'], 'SSL'));
            }
        }
    }

    protected function validate() {
        if (!$this->user->hasPermission('modify', 'module/banner_category')) {
            $this->error['warning'] = $this->language->get('error_permission');
        }

        if ((utf8_strlen($this->request->post['name']) < 3) || (utf8_strlen($this->request->post['name']) > 64)) {
            $this->error['name'] = $this->language->get('error_name');
        }

        if (!$this->request->post['width']) {
            $this->error['width'] = $this->language->get('error_width');
        }

        if (!$this->request->post['height']) {
            $this->error['height'] = $this->language->get('error_height');
        }

        return !$this->error;
    }
}