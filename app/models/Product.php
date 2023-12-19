<?php

class Product
{

    private $db;

    public function __construct()
    {
        $this->db = new Database();

    }

    public function getAllProduct()
    {
        $this->db->query("SELECT id_product_tmp, large_barcode_tmp, name_tmp, name_tmf, name_tms, name_tmun,large_price_tmp,small_price_tmp, fill_tmp FROM tbl_m_product JOIN tbl_m_factory ON tbl_m_product.id_factory_tmp = id_factory_tmf JOIN tbl_m_suplier ON tbl_m_product.id_suplier_tmp = id_suplier_tms JOIN tbl_m_unit ON tbl_m_product.id_large_unit_tmp = id_unit_tmun ");
  
        return $this->db->resultSet();
   
    }
    public function getProductById($id)
    {
        $this->db->query("SELECT * FROM tbl_m_product WHERE id_product_tmp = '$id'" );
        return $this->db->single();

    }

    public function addProduct($post) 
    {
          
          $query = "INSERT INTO tbl_m_product(large_barcode_tmp,small_barcode_tmp, name_tmp, id_large_unit_tmp, id_small_unit_tmp, fill_tmp, large_price_tmp,small_price_tmp, id_suplier_tmp, id_factory_tmp, date_added_tmp, added_by_tmp) 
                    VALUES (:large_barcode,
                            :small_barcode,
                            :name,
                            :large_unit,
                            :small_unit,
                            :fill,
                            :large_price,
                            :small_price,
                            :suplier,
                            :factory,
                            current_timestamp(),
                            :add_by)";

          $this->db->query($query);
          $this->db->bind('large_barcode', $post['large_barcode']);
          $this->db->bind('small_barcode', $post['small_barcode']);
          $this->db->bind('name', $post['name']);
          $this->db->bind('large_unit', $post['large_unit']);
          $this->db->bind('small_unit', $post['small_unit']);
          $this->db->bind('large_price', $post['large_price']);
          $this->db->bind('small_price', $post['small_price']);
          $this->db->bind('suplier', $post['suplier']);
          $this->db->bind('fill', $post['fill']);
          $this->db->bind('factory', $post['factory']);
          $this->db->bind('add_by', $_SESSION['name']);
          $this->db->execute();

          return $this->db->rowCount();
          
    }

    public function deleteProduct($id) {
        $query = "DELETE FROM tbl_m_product WHERE id_product_tmp = :id";
        $this->db->query($query);
        $this->db->bind("id", $id);
        $this->db->execute();


        return $this->db->rowCount();
    }

    
    public function updateProduct($post) 
    {

      $query = "UPDATE tbl_m_product SET
                name_tmp = :name, 
                large_barcode_tmp = :large_barcode,
                small_barcode_tmp = :small_barcode,
                id_factory_tmp = :factory,
                id_suplier_tmp = :suplier,
                fill_tmp = :fill,
                id_large_unit_tmp = :large_unit,
                id_small_unit_tmp = :small_unit,
                small_price_tmp = :small_price,
                large_price_tmp = :large_price,
                update_date_tmp = current_timestamp(),
                update_by_tmp = :update_by
                WHERE id_product_tmp = :id";

      $this->db->query($query);

      $this->db->bind('id', $post['id']);
      $this->db->bind('name', $post['name']);
      $this->db->bind('large_barcode', $post['large_barcode']);
      $this->db->bind('small_barcode', $post['small_barcode']);
      $this->db->bind('factory', $post['factory']);
      $this->db->bind('suplier', $post['suplier']);
      $this->db->bind('large_unit', $post['large_unit']);
      $this->db->bind('small_unit', $post['small_unit']);
      $this->db->bind('small_price', $post['small_price']);
      $this->db->bind('large_price', $post['large_price']);
      $this->db->bind('fill', $post['fill']);
      $this->db->bind('update_by', $_SESSION['name']);

      $this->db->execute();

      return $this->db->rowCount();
    }
   

  
}
