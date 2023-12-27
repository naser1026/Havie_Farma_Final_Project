<?php 
class User_model {
    private $db;

    public function __construct() {

        $this->db = new Database();
    }

    public function getAllUser() {
        $query = "SELECT * FROM tbl_m_user";
        $this->db->query($query);

        return $this->db->resultSet();
    }
}
?>