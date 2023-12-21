<?php

class Purchase extends Controller
{

    public function index()
    {
        $data['title'] = "Apotek Havie | Penerimaan Produk";
        $data['purchase'] = $this->model('Purchase_model')->getAllPurchase();
        $this->view('templates/header', $data);
        $this->view('templates/sidebar');
        $this->view('purchase/index', $data);
        $this->view('templates/footer');
    }

    public function detail()
    {
        echo "detail";
        exit;
    }

    public function purchase_form()
    {   
        $data["title"] = "Apotek Havie | Pembelian";
        $data['suplier'] = $this->model('Suplier')->getAllSuplier();
        $data['product'] = $this->model('Product')->getAllProduct();
        $data['list_product'] = $this->model('Purchase_model')->getAllListProduct();
        $this->view('templates/header', $data);
        $this->view('templates/sidebar');
        $this->view("purchase/addPurchase", $data);
        $this->view('templates/footer');
    }

    public function addToList() 
    {
        if($this->model('Purchase_model')->addPurchaseList($_POST) > 0)
        {
            Util::setFlash('Produk <strong>berhasil</strong> ditambahkan kedalam list','success');
            header('Location: '.BASEURL.'purchase/purchase_form');
            exit;
        }else {
            Util::setFlash('Produk <strong>gagal</strong> ditambahkan kedalam list','danger');
            header('Location: '.BASEURL.'purchase/purchase_form');
            exit;
        }
    }

    public function deleteFromList($id) {
        if($this->model('Purchase_model')->deleteList($id) > 0)
        {
            Util::setFlash('Produk <strong>dikeluarkan</strong> dari list','danger');
            header('Location: '.BASEURL.'purchase/purchase_form');
            exit;
        }
    }

    public function done_purchase() 
    {
        var_dump($_POST);
        exit;
    }

}