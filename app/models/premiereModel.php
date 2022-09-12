<?php
class premiereModel extends Model
{
    public function tablefill()
    {
        return "session";
    }
    public function fieldfill()
    {
        return "*";
    }
    public function primaryKey()
    {
        return "id";
    }
    public function get_list_premiere($page=1)
    {
        $limit =10;
        $start = $limit * ($page - 1);
        $end = $limit;
     $sql ="SELECT se.id_session, se.day, mv.name_mv,mv.id_movie, mv.image_lage, rm.name ,se.type , st.time_start, st.time_end
     FROM movie mv INNER JOIN session se ON mv.id_movie = se.id_movie INNER JOIN room rm ON rm.id_room = se.id_room INNER JOIN showtimes st ON st.id_showtimes = se.id_showtimes order by  se.id_session desc LIMIT $start,$end";
     return $data = pdo_query($sql);
    }
    public function get_on_premiere($id_se)
    {
        $sql ="SELECT se.id_session, se.day, mv.name_mv,mv.id_movie, mv.image_lage, rm.name ,se.type , st.time_start, st.time_end
        FROM movie mv INNER JOIN session se ON mv.id_movie = se.id_movie INNER JOIN room rm ON rm.id_room = se.id_room INNER JOIN showtimes st ON st.id_showtimes = se.id_showtimes  Where se.id_session=$id_se order by  se.id_session";
        return $data = pdo_query($sql);
    }
    public function create_premiere($data)
    {
        $query = "INSERT INTO `session`(`id_movie`, `id_room`, `day`, `id_showtimes`)
             VALUES (?,?,?,?)";
             return $data =pdo_execute($query,$data['id_movie'],$data['id_room'],$data['date'],$data['id_showtimes']);
    }
    public function show_room()
    {
        $sql = "SELECT * FROM `room`";
        // var_dump($sql);
        return $data= pdo_query($sql);
    }
    public function showtimes()
    {
        $sql = "SELECT * FROM `showtimes`";
        return $data= pdo_query($sql);
    }
    public function sum_pr()
    {   
        $sql = 'SELECT COUNT(id_session) as id_se FROM `session`';
    
        return $data =pdo_query_one($sql);
    }
    public function show_name_mv()
    {
        $sql ="SELECT name_mv FROM `movie`";
        return $data=  pdo_query($sql);
    }
    public function name_mv_where($name_mv)
    {
        $sql ='SELECT id_movie FROM `movie` Where name_mv like "%'.$name_mv.'%" ';
        return $data = pdo_query_one($sql);
    }
    public function room_where($name_room)
    {
        $sql ='SELECT id_room FROM `room` WHERE name like "%'.$name_room.'%" ';
        return $data = pdo_query_one($sql);
    }
    public function showtimes_show($showtimes)
    {
        $sql ='SELECT id_showtimes FROM `showtimes` WHERE time_start LIKE "%'.$showtimes.'%" ';
        return $data = pdo_query_one($sql);
    }
    public function delete_pr($id_se)
    {
        $sql="DELETE FROM `session` WHERE id_session =$id_se";
        return $data= pdo_execute($sql);
    }
    public function update_pri($data)
    {
        $sql= "UPDATE `session` SET `id_room`=?,`id_showtimes`=? WHERE id_session=?";
        return $data = pdo_execute($sql,$data['id_room'],$data['id_showtimes'],$data['id_se']);
    }
}
