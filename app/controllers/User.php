<?php 
class User extends Controller {

    public function index() {
        $data['title'] = "Master User";
        $data['users'] = $this->model('User_model')->getAllUser();

        $this->view('templates/header', $data);
        $this->view('user/index', $data);
        $this->view('templates/footer');

    }
}

?>