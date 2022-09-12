<?php

use FTP\Connection;

class UserModel extends Model
{

    public function tablefill()
    {
        return "user";
    }
    public function fieldfill()
    {
        return "*";
    }
    public function primaryKey()
    {
        return "id";
    }
    protected $_table = "user";

    public function get_list_user($page=1)
    {    $limit =9;
        $start = $limit * ($page - 1);
        $end = $limit;
        $data = $this->db->query("SELECT * FROM $this->_table LIMIT $start,$end")->fetchAll();
        return $data;
    }
    public function get_user_one($email,$pass)
    {
        $sql1= "SELECT * FROM $this->_table where email='$email' AND password ='$pass'";
        // $data = $this->db->query($sql1)->fetchAll();
        $data =pdo_query_one($sql1);
        return $data;
    }
    public function create_user($data)
    {      
        $sql ="INSERT INTO `user`(`full_name`,`email`,`password`) VALUES (?,?,?)";
         return pdo_execute($sql,$data['user_name'],$data['email'],$data['password']);
    }
    public function sum_user()
    {
        $sql ="SELECT COUNT(id_user) as id_page_user FROM $this->_table";
        return $data =pdo_query_one($sql);
    }
    public function change_pg($status,$id_user)
    {
        $sql ="UPDATE `user` SET `status`=$status WHERE id_user=$id_user";
         return $data =pdo_execute($sql);
    }
    public function delete_user($id_user)
    {
       $sql ="DELETE FROM `user` WHERE id_user=$id_user";
       return $data =pdo_execute($sql);
    }
}
