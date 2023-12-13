<?php 
class Suplier {
    private $tabel = "tbl_m_suplier";
    private $db;

    public function __construct() 
    {
        $this->db = new Database();
    }

    public function getAllSuplier() {
        $this->db->query("SELECT * FROM " .$this->tabel);
        return $this->db->resultSet();
    }
}