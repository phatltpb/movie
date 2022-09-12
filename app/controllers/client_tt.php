<?php
class client_tt extends Controller
{
    public $client;

    public function __construct()
    {
        $this->client = $this->model("MovieModel");
    }
    public function index()
    {
        $data['movie'] = $this->client->get_list();
        // var_dump($data);
        $this->render('client_view/index',$data);
    }
    public function clinet_one()
    {   $id_movie = $_GET['id_movie'];
        $this->data['movie'] = $this->client->get_list_one($id_movie);
        $this->render('client_view/moviesingle',$this->data);
    }
}
