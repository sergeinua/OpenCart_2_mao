<?php
class ModelModuleHomeCategory extends Model {

    private $table_name = 'category_display_home';

    public function getCategoryList()
    {
        $query = $this->db->query("SELECT `category_id` FROM `" . DB_PREFIX . $this->table_name . "`");
        $result = [];
        if ($query->rows) {
            foreach ($query->rows as $item) {
                $result[] = $item['category_id'];
            }
            return $result;
        }

        return null;
    }
}