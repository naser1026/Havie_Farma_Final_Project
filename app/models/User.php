<?php 

class User {
    private $tabel = "tbl_m_user";
    private $db;
    public function __construct() {
        $this->db = new Database();
    }

    public function getAllUser() {
        $this->db->query("SELECT * FROM " .$this->tabel);
        return $this->db->resultSet();
    }

}