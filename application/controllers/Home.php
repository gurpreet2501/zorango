<?php defined('BASEPATH') OR exit('No direct script access allowed');
use App\Models;
class Home extends MY_Controller
{
	   public function __construct()
    {
      parent::__construct();
   	  $this->load->helper('form');
			$this->load->library('form_validation');
			$this->lang->load('tank_auth');
     
    }
    public function index(){
       
    }

   
}
