<?php

class User
{
    private $tabel = "tbl_m_user";
    private $db;
    public function __construct()
    {
        $this->db = new Database();
    }

    public function getAllUser()
    {
        $this->db->query("SELECT * FROM " . $this->tabel);
        return $this->db->resultSet();
    }

    public function getUser($email, $password)
    {
        $this->db->query("SELECT * FROM " . $this->tabel . " WHERE email_tmu = :email");
        $this->db->bind("email", $email);
        $user = $this->db->single();


        if ($this->db->rowCount() > 0) {

            if (password_verify($password, $user["password_tmu"])) {
                $_SESSION['name'] = $user['name_tmu'];
                return $user;

            } else {
                echo "Email atau password salah";
            }

        } else {
            echo "Email tidak terdaftar";
        }

    }

    public function userLogout() {
        session_unset();
    }

}