<?php
class ControllerModuleBannerCategory extends Controller
{
    public function index($setting) {

        $this->load->model('module/banner_category');
        $this->load->model('tool/image');

        $data['modules'] = array();

        $results = $this->model_module_banner_category->getTwoRandomBanners();

        foreach ($results as $result) {
            if (is_file(DIR_IMAGE . $result['img_path'])) {
                $data['modules'][] = array(
                    'link'  => $result['href'],
                    'image' => $this->model_tool_image->resize($result['img_path'], $this->config->get('config_image_popup_width'), $this->config->get('config_image_popup_height'))
                );
            }
        }

        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/banner_category.tpl')) {
            return $this->load->view($this->config->get('config_template') . '/template/module/banner_category.tpl', $data);
        } else {
            return $this->load->view('default/template/module/banner_category.tpl', $data);
        }
    }
}