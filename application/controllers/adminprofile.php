<?php

class Adminprofile extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('admin_profile_model');
    }

    public function index() {
        $data['typelist'] = $this->admin_profile_model->get_admin_type();
        $this->load->view('admin_view/create_admin', $data);
    }

    public function save() {
        $this->load->library('form_validation');
        $this->form_validation->set_rules('email', 'email', 'required|callback_has_email');
        if ($this->form_validation->run() == FALSE) {
            $data['error'] = "dd";
            $data['typelist'] = $this->admin_profile_model->get_admin_type();
            $this->load->view('admin_view/create_admin', $data);
        } else {
            $this->admin_profile_model->fname = $this->input->post('fname');
            $this->admin_profile_model->lname = $this->input->post('lname');
            $this->admin_profile_model->birthday = $this->input->post('birthday');
            $this->admin_profile_model->occupation = $this->input->post('occupation');
            $this->admin_profile_model->email = $this->input->post('email');
            $this->admin_profile_model->mobile = $this->input->post('mobile');
            $this->admin_profile_model->present_address = $this->input->post('present_address');
            $this->admin_profile_model->permanent_address = $this->input->post('permanent_address');
            $this->admin_profile_model->type = $this->input->post('type');
            $this->admin_profile_model->password = $this->input->post('password');
            $this->load->library('image_lib');
            $config['upload_path'] = './img/';
            $config['allowed_types'] = 'gif|jpg|png';
            $config['encrypt_name'] = true;
            $config['max_size'] = '0';
            $config['max_width'] = '0';
            $config['max_height'] = '0';
            $this->load->library('upload', $config);

            if (!$this->upload->do_upload()) {
                
                $data['myerror'] = $this->upload->display_errors();
                $data['typelist'] = $this->admin_profile_model->get_admin_type();                
                $this->load->view('admin_view/create_admin', $data);
            } else {
                $data = $this->upload->data();
                $path = './img/';
                $source_image = $data['file_name'];

// Resize to medium

                $config['source_image'] = $path . $source_image;
                $config['create_thumb'] = true;
                $config['thumb_marker'] = "_thurm";
                $config['width'] = 140;
                $config['height'] = 140;

                $this->image_lib->initialize($config);

                if (!$this->image_lib->resize()) {
// an error occured
                }

// Keep the same source image
                $config['source_image'] = $path . $source_image;
                $config['create_thumb'] = true;
                $config['thumb_marker'] = "_avater";
                $config['width'] = 35;
                $config['height'] = 35;

                $this->image_lib->initialize($config);

                if (!$this->image_lib->resize()) {
// an error occured
                }
                $this->admin_profile_model->image_thurmnail = $data['raw_name'] . "_thurm" . $data['file_ext'];
                $this->admin_profile_model->image_avater = $data['raw_name'] . "_avater" . $data['file_ext'];

                $this->admin_profile_model->insert_admin();
                $this->session->set_flashdata('insert', 'Profile Insert Successfully');
                redirect('adminprofile','refresh');
            }
        }
    }

    public function has_email($str) {
        $this->admin_profile_model->email = $str;
        if ($this->admin_profile_model->checkEmail()) {
            $this->form_validation->set_message('has_email', 'The email alredy in our system');
            return FALSE;
        } else {
            return TRUE;
        }
    }

}
