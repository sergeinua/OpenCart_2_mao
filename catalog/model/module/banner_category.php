<?php
class ModelModuleBannerCategory extends Model
{

    private $table_name = 'banner_category';

    /**
     * Returns all banners for the category
     * @return Exception
     */
    public function getAllBanners()
    {
        $query = $this->db->query("SELECT * FROM `" . DB_PREFIX . $this->table_name . "`");

        if (! empty ($query->rows))
            return $query->rows;

        return null;
    }
    
    /**
     * Returns two random models
     * @return array
     */
    public function getTwoRandomBanners()
    {
        $models = $this->getAllBanners();
        $ids = array_rand($models, 2);
        foreach ($ids as $key => $value) {
            $result[] = $models[$value];
        }

        return $result;
    }
}