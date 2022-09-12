<?php
class MovieModel extends Model
{

    protected $_table = "movie";

    public function tablefill()
    {
        return "movie";
    }
    public function fieldfill()
    {
        return "*";
    }
    public function primaryKey()
    {
        return "id";
    }
    // public function num_rows($sql)
    // {
    //     $query = query($sql);
    //     if(!empty($sql)){
    //         $rount = $query->rowCount();    
    //         return $count;
    //     }
    //     return  0;
    // }
    public function get_list($page=1)
    {  $limit =4;
        $start = $limit * ($page - 1);
        $end = $limit;
        $sql = "SELECT mv.id_movie,mv.image_lage,mv.image_medium,mv.image_banner,mv.country,mv.rate,mv.status,mv.production,mv.name_vn, mv.name_mv ,mv.traller,mv.date_start,mv.detail,mv.actor,mv.director,mv.time_mv,(GROUP_CONCAT(ct.name SEPARATOR ', ')) as cate 
        FROM movie mv INNER JOIN movie_category mvct ON mv.id_movie =mvct.id_movie INNER JOIN category ct ON ct.id_category =mvct.id_category GROUP BY mv.id_movie order by mv.id_movie desc LIMIT $start,$end ";
            // $row_cout =num_rows($sql);
        return $data =pdo_query($sql);       

    }
    public function get_list_one($id)
    {
        $sql = "SELECT mv.id_movie,mv.image_lage,mv.image_medium,mv.image_banner,mv.country,mv.rate,mv.status,mv.production,mv.name_vn, mv.name_mv ,mv.traller,mv.date_start,mv.detail,mv.actor,mv.director,mv.time_mv,(GROUP_CONCAT(ct.name SEPARATOR ', ')) as cate 
        FROM movie mv INNER JOIN movie_category mvct ON mv.id_movie =mvct.id_movie INNER JOIN category ct ON ct.id_category =mvct.id_category WHERE mv.id_movie ='$id' GROUP BY mv.id_movie order by mv.id_movie";
         return  $data =pdo_query_one($sql);
    }
    public function get_list_one_update($id)
    {
        $sql = "SELECT mv.id_movie,mv.image_lage,mv.image_medium,mv.image_banner,mv.country,mv.rate,mv.status,mv.production,mv.name_vn, mv.name_mv ,mv.traller,mv.date_start,mv.date_end,mv.detail,mv.actor,mv.director,mv.time_mv,(GROUP_CONCAT(ct.name SEPARATOR ', ')) as cate 
        FROM movie mv INNER JOIN movie_category mvct ON mv.id_movie =mvct.id_movie INNER JOIN category ct ON ct.id_category =mvct.id_category WHERE mv.id_movie ='$id' GROUP BY mv.id_movie order by mv.id_movie";
         return  $data =pdo_query($sql);
    }
    public function sum_mv()
    {
        $sql ="SELECT COUNT(id_movie) as count_id FROM `movie`";
        return $data= pdo_query_one($sql);   
    }
    public function update_db_mv($data)
    {
    $sql ="UPDATE `movie` SET `traller`=?,`date_start`=?,
        `actor`=?,`director`=?,`time_mv`=?, 
        `name_vn`=?,`production`=? ,`date_end`=? WHERE id_movie =?";
        return $data = pdo_execute($sql,$data['traller'],$data['date_start'],$data['actor'],$data['director'],
                        $data['time_mv'],$data['name_vn'],$data['production'],$data['date_end'],$data['id_movie']); 
    }
    public function update_img_mv($data)
    {
        $sql ="UPDATE `movie` SET `image_lage`=? WHERE id_movie=?";
        return $data = pdo_execute($sql,$data['file_img'],$data['id_movie']);
    }
    public function update_db_cate($data)
    {
        $sql ="UPDATE `movie_category` SET `id_category`=?, WHERE id_movie=?";
        return $data = pdo_execute($sql,$data['id_movie']);
    }
    public function name_mv_where($name_mv)
    {
        $sql ='SELECT id_movie FROM `movie` Where name_mv like "%'.$name_mv.'%" ';
        return $data = pdo_query_one($sql);
    }
    public function cate_where_like($data)
    {
        $sql ='SELECT id_category FROM `category` WHERE name LIKE"%'.$data['cate'].'%"';
        return $data = pdo_query_one($sql);
    }
    public function show_cate()
    {
            $sql="SELECT * FROM `category`";
            return $data = pdo_query($sql);
    }
    public function create_mv($data)
    {  $this->conn = pdo_get_connection();
       $sql ="INSERT INTO `movie`(`name_mv`,`traller`, `date_start`, `date_end`, `detail`, `actor`, `director`, `time_mv`, `name_vn`,`country`, `production`) VALUES (?,?,?,?,?,?,?,?,?,?,?)";
    //    if(pdo_execute($sql,$data['name_mv'],$data['traller'],$data['date_start'],$data['date_end'],$data['detail'],$data['actor'],$data['director'],$data['time_mv'],$data['name_vn'],$data['country'],$data['production'])){
    //     return $db= $this->conn->lastInsertId();
    //    }else{
    //    return false;};
    $stmt = $this->conn->prepare($sql);

    $stmt->bindParam(1, $data['name_mv']);
    $stmt->bindParam(2, $data['traller']);
    $stmt->bindParam(3, $data['date_start']);
    $stmt->bindParam(4, $data['date_end']);
    $stmt->bindParam(5, $data['detail']);
    $stmt->bindParam(6, $data['actor']);
    $stmt->bindParam(7, $data['director']);
    $stmt->bindParam(8, $data['time_mv']);
    $stmt->bindParam(9, $data['name_vn']);
    $stmt->bindParam(10, $data['country']);
    $stmt->bindParam(11, $data['production']);
        if ($stmt->execute() > 0) {
            return   $this->conn->lastInsertId();
        }
        printf("Error %s.\n", $stmt->error);
        return false;
    }
    public function create_cate($data)
    {
       $sql= "INSERT INTO `movie_category`(`id_category`, `id_movie`) VALUES (?,?)";
       return $data=pdo_execute($sql,$data['id_category'],$data['id_movie']);
    }public function create_img($data)
    {
       $sql= "INSERT INTO `movie`(`image_lage`) VALUES (?) WHERE id_movie=?";
       return $data=pdo_execute($sql,$data['file_img'],$data['id_movie']);
    }
    public function delete_mv_db($id_movie){
        $sql ="DELETE FROM `movie` WHERE id_movie=?";
        return $data = pdo_execute($sql,$id_movie);
    }
}
