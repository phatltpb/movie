<?php
//   include_once'../../../vendor/autoload.php';
   use Cloudinary\Api\Upload\UploadApi;
   use Cloudinary\Cloudinary;
   use Cloudinary\Configuration\Configuration;
class movie extends Controller
{
    
    public $movie;

    public function __construct()
    {
        $this->movie = $this->model("MovieModel");
    }
    public function index()
    {
        $sum =$this->movie->sum_mv();
        // $sum['count_id']= 40;
        if(($sum['count_id']%4)== 0){
            $data['page_id']=round($sum['count_id']/4);
        }else{
            $data['page_id']=floor($sum['count_id']/4+1);
        };
            // $this->render('page/index',$data);
            // $page =$_GET['page'];    
            // var_dump($page);
        // $data['page_id']="";
            $data['movie'] = $this->movie->get_list();
            $this->render('page/index',$data);
        } 
    public function create_movie()
    {   $data['cate'] = $this->movie->show_cate();
        $this->render('page/themphim',$data);
    }
    public function post_create_movie()
    {
        $request = new Request();
        $data = $request->getFields();
        $data +=$this->movie->cate_where_like($data);
        $data['id_movie'] =$this->movie->create_mv($data);
        // var_dump($data);
              $db= $this->movie->create_cate($data);
              $data['file_img'] =$_FILES['file_img']['name'];
                if(!empty($data['file_img'])){
                //   upload offline(done)
            $target_dir = './storages/';
            $target_file = $target_dir . basename($_FILES['file_img']['name']);
            $taget_xampp =$_FILES['file_img']['tmp_name'];
            $upload_of =move_uploaded_file($taget_xampp, $target_file);
            if($upload_of== true){
            // upload img online
            Configuration::instance([
                'cloud'=>[
                'cloud_name'=>"love-story",
                'api_key'=>'938536961294245',
                'api_secret'=>'xmZSq4_ERo6xatQYcgEjPVGwvmk'],
                'url' =>[
                    'secure'=>true]]);
                $img_data ='./storages/'.$data['file_img']; 
                $img_upload =(new  UploadApi())->upload($img_data);
            print_r($img_upload['secure_url']);
            if($img_upload){
                        $data['file_img'] =$img_upload['secure_url'];
                        $this->movie->update_img_mv($data);
                        $reponse = new Response();
                        $reponse->redirect('trang-chu');
                    }}}
              
           
            // $this->render('page/themphim',$data);
        }
        
    public function movie_one()
    {
        $id =$_POST['id_del'];
        // $sql = "select * FROM movie WHERE id_movie ='$id'";
        // $data =pdo_query_one($sql);
        $data = $this->movie->get_list_one($id);
        extract($data);
        $data['name_mv'] = $name_mv;
        $data['id_movie'] = $id_movie;
        echo json_encode($data);

    }
    // show movie one and update
    public function update_movie_show()
    {   $id =$_GET['id'];
        $data = $this->movie->get_list_one_update($id);
        $this->render('page/update_mv',$data);
    }
    public function post_update_movie()
    {
       $request = new Request();
       $data= $request->getFields();
       $data['id_movie']= $_GET['id_mv']; 
    //    $name= $data['name_mv'];
    //    $data +=$this->movie->name_mv_where($name);
         $data['file_img'] =$_FILES['file_img']['name']; 
    if(!empty($data)){
        $db = $this->movie->update_db_mv($data);
             if(!empty($data['file_img'])){
            //   upload offline(done)
              $target_dir = './storages/';
              $target_file = $target_dir . basename($_FILES['file_img']['name']);
              $taget_xampp =$_FILES['file_img']['tmp_name'];
               $upload_of =move_uploaded_file($taget_xampp, $target_file);
               if($upload_of== true){
                     // upload img online
                            Configuration::instance([
                              'cloud'=>[
                                'cloud_name'=>"love-story",
                                'api_key'=>'938536961294245',
                                'api_secret'=>'xmZSq4_ERo6xatQYcgEjPVGwvmk'],
                                'url' =>[
                                  'secure'=>true]]);
                                $img_data ='./storages/'.$data['file_img']; 
                                $img_upload =(new  UploadApi())->upload($img_data);
                                print_r($img_upload['secure_url']);
                if($img_upload){
                    $data['file_img'] =$img_upload['secure_url'];
                    $this->movie->update_img_mv($data);
                    $reponse = new Response();
                    $reponse->redirect('trang-chu');
                }}}
                // if()
            }
        else{
            $data['errors']="có lỗi đã xảy ra";
            var_dump($data['errors']);
        }
     
    }
    // paging_movie 
    public function paging_mv()
    {   
        $page =$_GET['page'];
        // var_dump($page);
        // var_dump($page);
        $data['movie'] = $this->movie->get_list($page);
        $data['page_id']="";
        $sum =$this->movie->sum_mv();
        // $sum['count_id']= 40;
        if(($sum['count_id']%4)== 0){
            $data['page_id']=round($sum['count_id']/4);
        }else{
            $data['page_id']=floor($sum['count_id']/4+1);
        };
        $this->render('page/index',$data);
    }
    public function delete_mv()
    {
      $id_movie =$_GET['id'];
    //   var_dump($id_movie);
    $this->movie->delete_mv_db($id_movie);
    $reponse = new Response();
    $reponse->redirect('trang-chu');
    }

}