<?php 

class Category {
    private $tabel = "tbl_m_category";
    private $db;

    public function __construct()
    {
        $this->db = new Database();

    }

    public function getAllCategory()
    {
        $this->db->query("SELECT * FROM " .$this->tabel );
        return $this->db->resultSet();

    }

}
