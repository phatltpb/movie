<?php
  include_once'../../../vendor/autoload.php';
  use Cloudinary\Api\Upload\UploadApi;
use Cloudinary\Cloudinary;
use Cloudinary\Configuration\Configuration;
  Configuration::instance([
    'cloud'=>[
      'cloud_name'=>"love-story",
      'api_key'=>'938536961294245',
      'api_secret'=>'xmZSq4_ERo6xatQYcgEjPVGwvmk'],
      'url' =>[
        'secure'=>true]]); 
      $data =(new  UploadApi())->upload('../../../storages/193582965_4582791738398101_7233203932702249728_n.png');
      print_r($data['secure_url']);
echo '<img src="'.$data['secure_url'].'" alt="">';
?>