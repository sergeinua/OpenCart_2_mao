<?php
class ControllerCommonHome extends Controller {
	public function index() {
		$this->document->setTitle($this->config->get('config_meta_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));
		$this->document->setKeywords($this->config->get('config_meta_keyword'));

		if (isset($this->request->get['route'])) {
			$this->document->addLink(HTTP_SERVER, 'canonical');
		}

		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

		/* quantity for the footer */
		$this->load->model('module/footer_quantity');
		$data['current_quantity'] = $this->model_module_footer_quantity->getCurrentQuantity();

		/* category list for home page */
		$this->load->model('module/home_category');
		$category_list = $this->model_module_home_category->getCategoryList();
		$this->load->model('catalog/category');
		$this->load->model('tool/image');
		if (! is_null($category_list)) {
			foreach ($category_list as $key => $value) {
				$category_home[$key][] = $this->model_catalog_category->getCategory($value);
				$category_home[$key]['link'] = $this->url->link('product/category', 'path=' . $value);
				$category_home[$key]['img'] = $this->model_tool_image->resize($category_home[$key][0]['image'], 300, 300);
			}
			$data['category_home'] = $category_home;
		}

		/* banners */
		$data['banners'] = $this->load->controller('module/banner_category');

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/home.tpl')) {
			$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/common/home.tpl', $data));
		} else {
			$this->response->setOutput($this->load->view('default/template/common/home.tpl', $data));
		}
	}
}