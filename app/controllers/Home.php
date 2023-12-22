<?php

class Home extends Controller
{

    public function index()
    {

        $data['title'] = "Apotek Havie | Dashboard";
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
            header('Location: '.BASEURL.'home/index');
        }
    }

    public function logout()
    {
        $this->model('User')->userLogout();
        $this->view('home/login');
    }

    public function register()
    {
        $this->view('home/register');
    }

    public function add() 
    {
       if ($this->model('User')->addUser($_POST) > 0)
       {
        Util::setFlash('berhasil', 'success');
        header('Location: '.BASEURL.'home/login');
        exit;
    }else {
        Util::setFlash('gagal', 'danger');
        header('Location: '.BASEURL.'home/login');
       };
    }
}