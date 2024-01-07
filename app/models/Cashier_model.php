<?php


class Cashier_model
{

    protected $db;

    public function __construct()
    {
        $this->db = new Database();

    }

    public function addToCart($post)
    {

        if($post['stock'] < $post['qty'] or empty($post['qty']) or $post['discount']>100 or $post['discount'] < 0 or $post['qty'] < 1) {
            return 0;
        }
        if ($this->cekDuplicate($post['id']) > 0) {
            $pervios_qty = $this->getQtyById($post["id"])['qty_ttc'];
            $qty = intval($pervios_qty) + intval($post["qty"]);
            $query = "UPDATE tbl_t_cart SET id_product_ttc = :id, add_qty_ttc = :qty, qty_ttc = '$qty' WHERE id_product_ttc = :id ";
            $this->db->query($query);
            $this->db->bind("id", $post["id"]);
            $this->db->bind("qty", $post["qty"]);
            $this->db->execute();
            return $this->db->rowCount();
        }else{
            $query = "INSERT INTO tbl_t_cart(id_product_ttc, price_ttc, qty_ttc, discount_ttc) VALUES(:id, :price, :qty, :discount)";
            $this->db->query($query);
            $this->db->bind("id", $post["id"]);
            $price = filter_var($post['price'], FILTER_SANITIZE_NUMBER_INT);
            $this->db->bind("price", $price);
            $this->db->bind("qty", $post["qty"]);
            $this->db->bind("discount", $post["discount"]);

            $this->db->execute();
            return $this->db->rowCount();
            
        }

    }

    public function cekDuplicate($id)
    {
        $query = "SELECT * FROM tbl_t_cart WHERE id_product_ttc = :id";
        $this->db->query($query);
        $this->db->bind("id", $id);
        $this->db->execute();

        return $this->db->rowCount() > 0;
    }

    public function getQtyById($id)
    {
        $query = "SELECT qty_ttc FROM tbl_t_cart WHERE id_product_ttc = :id";
        $this->db->query($query);
        $this->db->bind("id", $id);

        return $this->db->single();
    }

    public function getAllCart()
    {
        $query = "SELECT id_ttc, id_product_ttc, name_tmp, price_ttc, small_price_tmp, small_barcode_tmp, discount_ttc, qty_ttc FROM tbl_t_cart JOIN tbl_m_product ON tbl_t_cart.id_product_ttc = id_product_tmp";

        $this->db->query($query);

        return $this->db->resultSet();
    }

    public function deleteProductFromCart($id)
    {
        $query = "DELETE FROM tbl_t_cart WHERE id_ttc = :id";
        $this->db->query($query);
        $this->db->bind("id", $id);
        $this->db->execute();
        return $this->db->rowCount() > 0;
    }

    public function addPayment($post) 
    {   $post['total_payment'] = filter_var($post['total_payment'], FILTER_SANITIZE_NUMBER_INT);
        if (empty($post['total_payment']) or $post['discount'] < 0 or $post['discount'] > 100 or $post['total_payment'] > $post['payment']) {
            return 0;
        }
        $profit = $post['total_payment'] - $post['capital_price'];
        $query = "INSERT INTO tbl_t_sales(invoice_number_tts,transaction_date_tts, gross_income_tts, profit_tts, cashier_name_tts) VALUES(:invoice_number,current_timestamp(), :gross_income, '$profit', :cashier_name)";

        $this->db->query($query);
        $this->db->bind("invoice_number", $post["invoice_number"]);
        $this->db->bind("gross_income", filter_var($post["total_payment"],FILTER_SANITIZE_NUMBER_INT));
        $this->db->bind('cashier_name', $_SESSION['name']);

        $this->db->execute();

        return $this->db->rowCount();
    }
}