<?php

class Retur extends Controller
{
    public function index() {
        $data['title'] = "Retur Produk";

        $data['purchase'] = $this->model('Purchase_model')->getAllPurchase();
        
        $this->view('templates/header', $data);
        $this->view('retur/index', $data);
        $this->view('templates/footer', $data);
    }
    
    public function product_retur($id = null) 
    {
        if (!empty($_POST)) {
            unset($_SESSION['id_purchase']);
            unset($_SESSION['list_product_retur']);
            unset($_SESSION['id']);
            $_SESSION['id_purchase'] = $_POST['id_purchase'];
        }
        $data['title'] = "Retur Produk";
        $data['purchase_detail'] = $this->model('Purchase_model')->getPurchaseById($_SESSION['id_purchase']);
        $data['purchase'] = $this->model('Purchase_model')->getAllPurchase();
        $data['list_product'] = $this->model('Product')->getProductDetail($data['purchase_detail']['list_id_product_ttp'], $data['purchase_detail']['list_qty_ttp']); 
        $this->view('templates/header', $data);
        $this->view('retur/detail', $data);
        $this->view('templates/footer', $data); 
    }

    public function addRetur() 
    {

        var_dump($_POST);
        exit;
        if ($this->model('Retur_model')-> addRetur($_POST) > 0) {
            echo "Retur Berhasil";
            exit;
        }else {
            echo "Retur Gagal";
            exit;
        }
    }
}