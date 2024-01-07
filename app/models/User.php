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
                $_SESSION['login_error'] = "password salah";
                return false;
            }

        } else {
            $_SESSION['login_error'] = "email tidak terdaftar";
            return false;
            
        }

    }

    public function userLogout() {
        session_unset();
    }

    public function addUser($post) 
    {
        $password = $post['password'];
        $confirm = $post['confirm'];


        $password = password_hash($password, PASSWORD_DEFAULT);

        $query = "INSERT INTO tbl_m_user(name_tmu, phone_number_tmu, email_tmu, gender_tmu, address_tmu, password_tmu, created_date_tmu) 
                    VALUES (:name,:phone_number,:email,:gender,:address,:password,current_timestamp())";
        
        $this->db->query($query);
        $this->db->bind("password", $password);
        $this->db->bind("name", $post["name"]);
        $this->db->bind("phone_number", $post["phone_number"]);
        $this->db->bind("email", $post["email"]);
        $this->db->bind("gender", $post["gender"]);
        $this->db->bind("address", $post["address"]);

        $this->db->execute();

        return $this->db->rowCount();
    }

}