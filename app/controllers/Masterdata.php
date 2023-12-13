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

    


}
