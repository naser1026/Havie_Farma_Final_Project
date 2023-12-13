<?php

class Product
{
    private $table = "tbl_m_product";

    private $db;

    public function __construct()
    {
        $this->db = new Database();

    }

    public function getAllProduct()
    {
        $this->db->query("SELECT * FROM " .$this->table);
        return $this->db->resultSet();
    }

    public function addProduct($post, $files) 
    {
          if(!empty($files)){
            $upload_dir = BASEURL."img/product/";
            $file_name = $files['image']['name'];
            $fileName = uniqid() . "_" . basename($file_name);
            $destination = $upload_dir . $fileName;                    
            move_uploaded_file($files['image']['tmp_name'], $destination);
          }else {
            $fileName = 'default.png';
          }
          
          $query = "INSERT INTO ".$this->table."
          (id_product_tmp, name_tmp, id_category_tmc, id_unit_tmp, purchase_price_tmp, selling_price_tmp, id_suplier_tms, stock_tmp, id_warehouse_tmw, id_rack_tmr, active_zat_tmp, description_tmp, date_added_tmp, expired_date_tmp, img_tmp, update_by_tmp, update_date_tmp)
          VALUES(:id, :name, :id_category, :unit, :purchace_price, :selling_price, :id_suplier, :amount, :id_warehouse, :id_rack, :active_zat, :description,  current_timestamp(), :expire_date, :fileName, NULL, NULL)";

          $this->db->query($query);

          $this->db->bind('name', $post['name']);
          $this->db->bind('id', $post['id']);
          $this->db->bind('id_category', $post['category']);
          $this->db->bind('unit', $post['unit']);
          $this->db->bind('purchace_price', $post['purchase_price']);
          $this->db->bind('selling_price', $post['selling_price']);
          $this->db->bind('id_suplier', $post['suplier']);
          $this->db->bind('amount', $post['amount']);
          $this->db->bind('id_warehouse', $post['warehouse']);
          $this->db->bind('id_rack', $post['rack']);
          $this->db->bind('expire_date', $post['exp_date']);  
          $this->db->bind('active_zat', $post['active_zat']);
          $this->db->bind('description', $post['description']);
          $this->db->bind('fileName', $fileName);

          $this->db->execute();

          return $this->db->rowCount();
          
    }

    public function deleteProduct($id) {
        $query = "DELETE FROM ".$this->table." WHERE id_product_tmp = :id";
        $this->db->query($query);
        $this->db->bind("id", $id);
        $this->db->execute();


        return $this->db->rowCount();
    }
}
