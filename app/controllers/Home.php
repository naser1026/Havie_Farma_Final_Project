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
            exit;
        }else {
            Util::setFlash('Login gagal '.$_SESSION['login_error'], 'danger');
            unset($_SESSION['login_error']);
            header('Location: '.BASEURL.'home/login');
            exit;   
        }
    }

    public function logout()
    {
        $this->model('User')->userLogout();
        $this->view('home/login');
    }
}