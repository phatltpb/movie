<?php
class premiere extends Controller
{
    public $premiere;

    public function __construct()
    {
        $this->premiere = $this->model("premiereModel");
    }
    public function index()
    {  
        $sum =$this->premiere->sum_pr();
        // var_dump($sum);
        if(($sum['id_se']%10)== 0){
            $this->data['page_id_pr']=round($sum['id_se']/10);
        }else{
            $this->data['page_id_pr']=floor($sum['id_se']/10+1);
        };
        // var_dump($this->data);
        $this->data['premiere'] = $this->premiere->get_list_premiere();
        $this->render('page/xuatchieu',$this->data);
    }
    
    public function premiere_new()
    {  
        $this->data['room'] = $this->premiere->show_room();
        $this->data['showtimes']=$this->premiere->showtimes();
        $this->data['show_mv']=$this->premiere->show_name_mv();
        $this->render('page/themxuatchieu',$this->data);
    }
    public function create_pr()
    {
       $request = new Request();
       $this->data = $request->getFields();
    //    var_dump($this->data);
       $db = $this->premiere->name_mv_where($this->data['name_mv']);
       $db += $this->premiere->room_where($this->data['room']);
       $db['date']= $this->data['day'];
       $db += $this->premiere->showtimes_show($this->data['time']);
       var_dump($db);
       $this->premiere->create_premiere($db);
       $reponse = new Response();
       $reponse->redirect('premiere_new');
        // $this->render('premiere_new');
    }
public function paging_pr()
{
    $page =$_GET['page_pr'];
    $sum =$this->premiere->sum_pr();
    var_dump($sum);
    if(($sum['id_se']%10)== 0){
        $this->data['page_id_pr']=round($sum['id_se']/10);
    }else{
        $this->data['page_id_pr']=floor($sum['id_se']/10+1);
    };
    $this->data['premiere'] =$this->premiere->get_list_premiere($page);
    $this->render('page/xuatchieu',$this->data);
}
public function premiere_delete()
{
    $id_se=$_GET['id_pr'];
    var_dump($id_se);
    $this->premiere->delete_pr($id_se);
    $reponse = new Response();
    $reponse->redirect('premiere');
}
public function show_update_pr()
{   
    $id_se =$_GET['id_se'];
    $this->data['pr'] = $this->premiere->get_on_premiere($id_se);
    $this->data['room'] = $this->premiere->show_room();
    $this->data['showtimes']=$this->premiere->showtimes();
    $this->data['show_mv']=$this->premiere->show_name_mv();
    // var_dump($data);
    $this->render('page/update_xuatchieu',$this->data);
}
public function premiere_update()
{   
    $request = new Request();
    $this->data =$request->getFields();
    $db = $this->premiere->room_where($this->data['room']);
    $db += $this->premiere->showtimes_show($this->data['time']);
    $db['id_se'] =$_GET['id_se'];
    $this->premiere->update_pri($db);
    $reponse = new Response();
    $reponse->redirect('premiere');
}
}
