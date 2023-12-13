<?php
class Dashboard extends Controller{

    public function index(){
        $data['judul'] = "Apotek Havie | Dashboard";
        $data['product'] = $this->model('Product')->getAllProduct();
        $data['category'] = $this->model('Category')->getAllCategory();
        $data['suplier'] = $this->model('Suplier')->getAllSuplier();
        $data['warehouse'] = $this->model('Warehouse')->getAllWarehouse();
        $data['rack'] = $this->model('Rack')->getAllRack();
        $data['unit'] = $this->model('Unit')->getAllUnit();
        $this->view('templates/header', $data);
        $this->view('templates/sidebar');
        $this->view('dashboard/index', $data);
        $this->view('templates/footer');
    }

}