<?php
class ModelModuleBannerCategory extends Model
{
    private $table = 'banner_category';

    public function addBanner($data)
    {
        $sql  = "INSERT INTO `" . DB_PREFIX . $this->table . "` (`img_path`, `href`) VALUES ('" . $data['image'] . "','" . $data['href'] . "')";
        $this->db->query($sql);

        return true;
    }

    public function getAllBanners()
    {
        $sql  = "SELECT * FROM `" . DB_PREFIX . $this->table . "`";
        $models = $this->db->query($sql);
        if (!empty($models->rows)) {
            return $models->rows;
        }

        return null;
    }

    public function deleteBanner($id)
    {
        $this->db->query("DELETE FROM `" . DB_PREFIX . $this->table . "` WHERE `id` = '" . $id . "'");

        return true;
    }

    public function editBanner($id, $data)
    {
        $this->db->query("UPDATE `" . DB_PREFIX . $this->table . "` SET `img_path` = '" . $data['image'] . "', `href` = '" . $data['href'] . "'   WHERE `id` = '" . $id . "'");

        return true;
    }

    public function getBanner($id)
    {
        $sql  = "SELECT * FROM `" . DB_PREFIX . $this->table . "` WHERE `id` = '" . (int)$id . "'";
        $model = $this->db->query($sql);
        if (!empty($model->row)) {
            return $model->row;
        }

        return null;
    }

}