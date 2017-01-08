<?php defined('BASEPATH') OR exit('No direct script access allowed');
use App\Models\Products;
class Home extends MY_Controller
{
    public function index(){
        $t = Products::first();
        echo "<pre>";
        print_r($t);
        exit;

      
    }

   
}
