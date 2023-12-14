<?php

class Masterdata extends Controller
{

    public function masterproduct()
    {
        $data['judul'] = "Master Data | Produk";
        $data['product'] = $this->model('Product')->getAllProduct();
        $data['category'] = $this->model('Category')->getAllCategory();
        $data['suplier'] = $this->model('Suplier')->getAllSuplier();
        $data['warehouse'] = $this->model('Warehouse')->getAllWarehouse();
        $data['rack'] = $this->model('Rack')->getAllRack();
        $data['unit'] = $this->model('Unit')->getAllUnit();
        $this->view('templates/header', $data);
        $this->view("masterdata/masterproduct", $data);
        $this->view('templates/footer');
    }

    public function mastercategory() {
        echo "Ini Master Kategori";
    }
    public function masterunit() {
        echo "Ini Master Satuan";
    }
    public function masterwarehouse() {
        echo "Ini Master Gudang";
    }
    public function masterrack() {
        echo "Ini Master Rak";
    }
    public function mastersuplier() {
        echo "Ini Master Suplier";
    }

    public function add() 
    {
        if($this->model('Product')->addProduct($_POST, $_FILES) > 0 )
        {   
            header('Location: '. BASEURL.'masterdata/masterproduct');
            exit;
        }    

    }

    public function delete($id)
    {
        if($this->model('Product')->deleteProduct($id) > 0 )
        {   
            header('Location: '. BASEURL.'masterdata/masterproduct');
            exit;
        } 
    }

    public function edit($id)
    {
        if($this->model('Product')->editProduct($id))
        {
            echo "INI EDIT";
            die;
        }
    }

    


}
