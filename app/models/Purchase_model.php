<?php

class Purchase_model
{
    private $db;
    public function __construct()
    {
        $this->db = new Database();
    }

    public function getAllPurchase()
    {

        $query = "SELECT id_purchase_ttp, invoice_number_ttp, name_tms, invoice_date_ttp, payment_date_ttp, total_payment_ttp, status_ttp, created_by_ttp, created_date_ttp  FROM tbl_t_purchase JOIN tbl_m_suplier ON tbl_t_purchase.id_suplier_ttp = id_suplier_tms";

        $this->db->query($query);
        $this->db->execute();

        return $this->db->resultSet();


    }

    public function addPurchaseList($post)
    {
        try {

            if (!empty($_SESSION['invoice_number'])) {
                if ($post['invoice_number'] != $_SESSION['invoice_number']) {
                    return 0;
                }
            } else {
                $_SESSION['invoice_number'] = $post['invoice_number'];
            }
            $query = "INSERT INTO tbl_t_list_purchase(id_product_ttlp, qty_ttlp)
                    VALUES(:id, :qty)";

            $this->db->query($query);
            $this->db->bind("id", $post["id"]);
            $this->db->bind("qty", $post["qty"]);

            $this->db->execute();

            return $this->db->rowCount();
        }catch (Exception $e) {
            return 0;
        }
    }

    public function getAllListProduct() {
        $query = "SELECT id_list_ttlp, id_product_ttlp, name_tmp, large_price_tmp, qty_ttlp, large_barcode_tmp FROM tbl_t_list_purchase JOIN tbl_m_product ON tbl_t_list_purchase.id_product_ttlp = id_product_tmp";
        $this->db->query($query);
        return $this->db->resultSet();
    }

    public function deleteLIst($id) 
    {
        $query = "DELETE FROM tbl_t_list_purchase WHERE id_list_ttlp = :id";
        $this->db->query($query);
        $this->db->bind("id", $id);
        $this->db->execute();
        
        return $this->db->rowCount();
    }

}