<?php

class Client extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('client_model');
    }

    //Redirect Index Page
    public function index() {
        $this->load->view('client_view/create_client');
    }

    //Redirect Search Client Page
    public function search_client() {
        $this->load->view('client_view/search_client');
    }
    
    //Redirect Search Client Page
    public function appointment_view() {
        $data['doctorlist']= $this->client_model->getDoctor();
        $this->load->view('client_view/appointment_view',$data);
    }
    public function createApp(){
        $clientId = $this->input->post('clientId');
        $doctorId = $this->input->post('doctorid');
        $appDate = $this->input->post('appDate');
        $this->load->helper('date');
        $timestamp = strtotime($appDate);
        $datestring = "%Y/%m/%d";
        $mdate = mdate($datestring,$timestamp);
        $this->client_model->id = $clientId;
        $this->client_model->doctorId = $doctorId;
        $this->client_model->dates = $mdate;
        $this->client_model->insertApp();
        $result = array("msg"=>"data insert success");
        echo json_encode($result);
        
    }
    public function bydoctor(){
      $doctorId = $this->input->post('doctorid');  
      $this->client_model->doctorId = $doctorId;
      $msg = $this->client_model->getDoctorId();
       echo json_encode($msg);
    }

    public function getEvents(){
        $msg = $this->client_model->getEvents();
        echo json_encode($msg);
    }

        
    //Insert Create Client Controller
    public function create_client() {

        //Prepare Database Insert
        $this->client_model->client_name = $this->input->post('clientName');
        $this->client_model->client_phone = $this->input->post('clientPhone');
        $this->client_model->client_parents_name = $this->input->post('clientParentsName');

        //Start Client Name Genarated
        //Prepare Client Name 
        $getId = $this->client_model->create_client();

        //Get Client Name First Three Word
        $clientName = $this->client_model->client_name;
        $getClientName = substr($clientName, 0, 3);

        //Get Client Parents Name First Three Word
        $clientParentsName = $this->client_model->client_parents_name;
        $getClientParentsName = substr($clientParentsName, 0, 3);

        //Genarate Client Name
        $clientName = $getClientName . $getClientParentsName;

        //Assign Client Name
        $this->client_model->client_name_gen = $clientName;
        $this->client_model->id = $getId;
        //Update Client Genarated Id
        $this->client_model->genarate_client_name();


        //End Client Name Genarated
        //Start Client Id Genarated
        //Genarate Client Id
        $clientId = date('m') . "-" . date("Y") . "-" . $getId;

        //Assign Client ID
        $this->client_model->client_gen_id = $clientId;
        $this->client_model->id = $getId;
        //Update Client Genarated Id
        $this->client_model->genarate_client_id();

        //End Cleint Id Genarated
        //Final Insert Data into Database
        $this->session->set_flashdata('insert', 'Client Create Successfully, Client ID : ' . $clientId);
        redirect('client/index', 'refresh');
    }

    //Get Client Details Search By Client Id
    public function search_client_details_by_id() {
        $this->client_model->client_gen_id = $this->input->post('clientId');
        $searchId = $this->client_model->search_client_details_by_id();
        echo json_encode($searchId);
    }

    //Get Client Details Search By Client Name and Parents Name
    public function search_client_details_by_name() {

        //Get Client Name First Three Word        
        $getClientName = substr($this->input->post('clientName'), 0, 3);

        //Get Client Parents Name First Three Word
        $getClientParentsName = substr($this->input->post('clientParentsName'), 0, 3);

        //Genarate Client Name
        $clientName = $getClientName . $getClientParentsName;

        //Assign Client Name
        $this->client_model->client_name_gen = $clientName;
        $searchId = $this->client_model->search_client_details_by_name();
        echo json_encode($searchId);
    }

}
