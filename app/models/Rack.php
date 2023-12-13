<?php 

class Rack {
    private $tabel = "tbl_m_rack";
    private $db;
    public function __construct() {
        $this->db = new Database();
    }

    public function getAllRack() {
        $this->db->query("SELECT * FROM " .$this->tabel);
        return $this->db->resultSet();
    }

}