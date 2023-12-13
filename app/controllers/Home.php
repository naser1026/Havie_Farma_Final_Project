<?php 

class Home extends Controller{
    
    public function index() {

        $data['judul'] = "Apotek Havie | Dashboard";
        $this->view('templates/header', $data);
        $this->view('templates/sidebar');
        $this->view('home/index');
        $this->view('templates/footer');
        
    }
    
}