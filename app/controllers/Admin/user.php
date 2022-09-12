<?php
class user extends Controller
{
    public $user;

    public function __construct()
    {
        $this->user = $this->model("UserModel");
    }
    public function index()
    {    
        
        $sum = $this->user->sum_user();
        // var_dump($sum);
        if(($sum['id_page_user']%9)== 0){
            $data['page_id_user']=round($sum['id_page_user']/9);
        }else{
            $data['page_id_user']=floor($sum['id_page_user']/9+1);
        };
        $data['user'] = $this->user->get_list_user();
         $this->render('page/user',$data);
    }
    public function user_new()
    {
        $this->render('page/themuser');
    }
    public function paging_user()
    {  
        $page =$_GET['page_user'];
        $data['page_id_user']="";
        $sum =$this->user->sum_user();
        // $sum['count_id']= 40;
        if(($sum['id_page_user']%9)== 0){
            $data['page_id_user']=round($sum['id_page_user']/9);
        }else{
            $data['page_id_user']=floor($sum['id_page_user']/9+1);
        };
        $data['user'] = $this->user->get_list_user($page);
        $this->render('page/user',$data);
    }
    public function change_decentralization()
    {

       $id_user= $_GET['id_user'];
       $status =$_GET['status'];
       var_dump($status);
       if($status == 1){
           $this->user->change_pg(0,$id_user);
       }else{
           $this->user->change_pg(1,$id_user);
       }
       $reponse = new Response();
       $reponse->redirect('user');
    }
    public function delete_user_one()
    {

       $id_user= $_GET['id_user'];
       $this->user->delete_user($id_user);
    //    var_dump($id_user);
       $reponse = new Response();
       $reponse->redirect('user');
    }
}