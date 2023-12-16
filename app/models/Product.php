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
        $this->db->query("SELECT production_code_tmp, name_tmp,name_tmc,name_tmr,name_tmw,name_tms, id_product_tmp,selling_price_tmp,purchase_price_tmp,expired_date_tmp, name_tmun, stock_tmp,active_zat_tmp,description_tmp,img_tmp FROM `tbl_m_product` join tbl_m_category on tbl_m_product.id_category_tmp = tbl_m_category.id_category_tmc join tbl_m_warehouse on tbl_m_product.id_warehouse_tmp = tbl_m_warehouse.id_warehouse_tmw join tbl_m_suplier on tbl_m_product.id_suplier_tmp = tbl_m_suplier.id_suplier_tms join tbl_m_rack on tbl_m_product.id_rack_tmp = tbl_m_rack.id_rack_tmr join tbl_m_unit on tbl_m_product.id_unit_tmp = tbl_m_unit.id_unit_tmun" );
  
        return $this->db->resultSet();

   
    }
    public function getProductById($id)
    {
        $this->db->query("SELECT * FROM tbl_m_product WHERE id_product_tmp = '$id'" );
        return $this->db->single();

    }

    public function addProduct($post, $files) 
    {
          if(!empty($files['image']['name'])){
            $upload_dir = BASEURL."img/product/";
            $file_name = $files['image']['name'];
            $fileName = uniqid() . "_" . basename($file_name);
            $destination = $upload_dir . $fileName;                    
            move_uploaded_file($files['image']['tmp_name'], $destination);
          }else {
            $fileName = 'default.png';
          }
          
          $query = "INSERT INTO ".$this->table."
          (production_code_tmp, name_tmp, id_category_tmp, id_unit_tmp, purchase_price_tmp, selling_price_tmp, id_suplier_tmp, stock_tmp, id_warehouse_tmp, id_rack_tmp, active_zat_tmp, description_tmp, date_added_tmp, expired_date_tmp, img_tmp, update_by_tmp, update_date_tmp)
          VALUES(:code, :name, :id_category, :unit, :purchace_price, :selling_price, :id_suplier, :amount, :id_warehouse, :id_rack, :active_zat, :description,  current_timestamp(), :expire_date, :fileName, NULL, NULL)";

          $this->db->query($query);

          $this->db->bind('name', $post['name']);
          $this->db->bind('code', $post['code']);
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

    
    public function updateProduct($post, $files) 
    {
      $id = $post["id"];
      if(!empty($files['image']['name'])){
        $upload_dir = BASEURL."img/product/";
        $file_name = $files['image']['name'];
        $fileName = uniqid() . "_" . basename($file_name);
        $destination = $upload_dir . $fileName;                    
        move_uploaded_file($files['image']['tmp_name'], $destination);
      }else {
        $fileName = $post['previous_img'];
      }
      $code = $post['code'];
      $name = $post['name'];
      $category = $post['category'];
      $unit = $post['unit'];
      $suplier = $post['suplier'];
      $warehouse = $post['warehouse'];
      $rack = $post['rack'];
      $amount = $post['amount'];
      $purchase_price = $post['purchase_price'];
      $selling_price = $post['selling_price'];
      $exp_date = $post['exp_date'];
      $active_zat = $post['active_zat'];
      $description = $post['description'];
     
      $query = "UPDATE tbl_m_product SET
                name_tmp = :name, 
                production_code_tmp = :code,
                id_category_tmp = :category,
                id_suplier_tmp = :suplier,
                id_warehouse_tmp = :warehouse,
                id_rack_tmp = :rack,
                id_unit_tmp = :unit,
                expired_date_tmp = :exp_date,
                img_tmp = :fileName,
                update_date_tmp = current_timestamp(),
                purchase_price_tmp = :purchace_price,
                selling_price_tmp = :selling_price,
                stock_tmp = :amount,
                active_zat_tmp = :active_zat,
                description_tmp = :description
                WHERE id_product_tmp = :id";

      $this->db->query($query);

      $this->db->bind('id', $id);
      $this->db->bind('name', $name);
      $this->db->bind('code', $code);
      $this->db->bind('category', $category);
      $this->db->bind('unit', $unit);
      $this->db->bind('purchace_price', $purchase_price);
      $this->db->bind('selling_price', $selling_price);
      $this->db->bind('suplier', $suplier);
      $this->db->bind('amount', $amount);
      $this->db->bind('warehouse', $warehouse);
      $this->db->bind('rack', $rack);
      $this->db->bind('exp_date', $exp_date);  
      $this->db->bind('active_zat', $active_zat);
      $this->db->bind('description', $description);
      $this->db->bind('fileName', $fileName);

      $hasil = $this->db->resultSet();

      return $this->db->rowCount();
    }
   

  
}
