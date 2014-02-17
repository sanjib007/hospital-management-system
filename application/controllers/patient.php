<?php
class Patient extends CI_Controller
{
    public function __construct() {
        parent::__construct();
        $this->load->model('patient_model');
    }
    public function index() {        
        $this->load->view('patient/new_patient');
    }
    
    public function save() {
        $this->load->library('form_validation');
        $this->form_validation->set_rules('email', 'email', 'required|callback_has_email');
        if ($this->form_validation->run() == FALSE) {
            $data['error'] = "dd";            
            $this->load->view('patient/new_patient');
        } else {
            $this->patient_model->patient_name = $this->input->post('patient_name');
            $this->patient_model->address = $this->input->post('address');
            $this->patient_model->mobile = $this->input->post('mobile');
            $this->patient_model->email = $this->input->post('email');
            $this->patient_model->birthday = $this->input->post('birthday');
            $this->patient_model->blood_group = $this->input->post('blood_group');
            $this->patient_model->gender = $this->input->post('gender');
            $this->patient_model->save();
            $this->session->set_flashdata('insert', 'Profile Insert Successfully');
            redirect('patient','refresh');
        }
    }
}
