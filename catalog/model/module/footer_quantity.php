<?php
class ModelModuleFooterQuantity extends Model {
    
    private $table_name = 'footer_quantity';

    /**
     * Returns current quantity
     * @return Exception
     */
    public function getCurrentQuantity()
    {
        if ($this->checkLastUpdated()) {
            $query = $this->db->query("SELECT `quantity` FROM `" . DB_PREFIX . $this->table_name . "`");

            return $query->row['quantity'];
        }

        return new Exception('Some shit happened with the data');
    }


    /**
     * Updates quantity depending upon last time update
     * @return bool
     */
    public function checkLastUpdated()
    {
        $query = $this->db->query("SELECT `quantity`, `modified_at` FROM `" . DB_PREFIX . $this->table_name ."`");
        $updated_at = $query->row['modified_at'];
        $quantity = $query->row['quantity'];
        if (time() > strtotime('+ 1 day', $updated_at)) {
            //updating quantity
            $this->db->query("UPDATE `" . DB_PREFIX . $this->table_name ."` SET `quantity` = '" . ($quantity + 6) ."',
            `modified_at` = '". time() ." ' WHERE `quantity` = '". $quantity ."'");
        }

        return true;
    }
}