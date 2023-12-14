<?php
session_start();
class Home extends Controller
{

    public function index()
    {

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

    public function login()
    {
        $this->view('home/login');
    }

    public function validateLogin()
    {
        if ($user = $this->model("User")->getUser($_POST['email'], $_POST['password'])) {
            $data['user'] = $user;
            $this->view('templates/header', $data);
            $this->view('templates/sidebar');
            $this->view('home/index');
            $this->view('templates/footer');
        }
    }

    public function logout()
    {
        $this->model('User')->userLogout();
        $this->view('home/login');
    }
}