<?php
class login extends Controller
{
    public $user_model;

    public function __construct()
    {
        $this->user_model = $this->model("UserModel");
    }
    public function index()
    {
        $this->render('login/login');
    }
    public function post_data()
    {  
        $request = new Request();
        $data = $request->getFields();
        $response = new Response();
        $data_db = $this->user_model->get_user_one($data['user_name'],$data['password']);
        if($data_db['email']==$data['user_name'] && $data_db['password']==$data['password']){
                if($data_db['status']==1){
                    $response->redirect('trang-chu');
                }else{
                    $response->redirect();
                }
        }
        else{
            $data_ks['errors']="lỗi đăng nhập vui lòng nhập lại";
            // $response->redirect('login/get_data');
            $this->render('login/login',$data_ks);
        }

        // var_dump($data_db);
        // $response->redirect('login/get_user');
        // var_dump($data['user_name']);
        // $request->rules([
        //     // 'full_name' => 'required|min:5|max:30',
        //     'email' => 'required|email|min:6',
        //     'password' => 'required|min:3',
        //     // "confim_pasword" => 'required|min:3|"match:password'
        // ]);
        // $request->message([
        //     // 'fullname.required' => ' họ và  tên không dược để trống',
        //     // "fullname.min" => 'họ và tên phải lớn hơn 5 kí tự',
        //     // 'fullname.max' => ' họ và tên phải nhỏ hơn 30 kí tự',
        //     'email.required' => 'Email không được để trống',
        //     'email.email' => 'email không đúng định dạng',
        //     'email.min' => 'email phải lơn hơn 6 kí tự',
        //     'password.required' => 'mật khẩu không được để trống',
        //     'password.min' => 'mật khẩu phải lớn hơn 3 kí tự',
        //     // 'confim_password.required' => 'nhập lại mặt khẩu của bạn',
        //     // 'confim_pasword.match' => 'khác với mật khẩu',
        // ]);
        // $validate = $request->validate();
        // if($validate){}
        // var_dump($validate);
        // $response->redirect('login/get_user');   
    
    }
    public function get_data()
    {
        $request = new Request();
        $data = $request->getFields();
        // $data_db = $this->user_model->get_list_one($data['user_name'], $data['password']);
        // if($data ==false){
        //     $er= "thông tin bạn nhập bị sai vui lòng kiểm tra lại";
        // }
        $this->render('login/login');
    }
    public function register_post()
    {
        $request = new Request();
        $data = $request->getFields();
        $reponse = new  Response();
        if($this->user_model->get_user_one($data['email'],$data['password'])){

        $data['errors_dk']=( 'tài khoản đã đăng kí vui lòng đăng kí tài khoản khác');
            $this->render('login/login',$data);
            
        }else{
        if($data_dl = $this->user_model->create_user($data)){
            $reponse->redirect('login/get_data');
        }
        };
    }
    // public function register_get()
    // {
    // }
}
