<?php 

class Unit {
    private $tabel = "tbl_m_unit";
    private $db;

    public function __construct()
    {
        $this->db = new Database();

    }

    public function getAllUnit()
    {
        $this->db->query("SELECT * FROM " .$this->tabel );
        return $this->db->resultSet();

    }

}
