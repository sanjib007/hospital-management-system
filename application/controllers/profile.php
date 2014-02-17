<?php

class Profile extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model("login_model");
    }

    public function update() {
        $this->load->library('form_validation');
        $this->form_validation->set_rules('email', 'Email', 'required|callback_email_check');
        if ($this->form_validation->run('update') == FALSE) {
            $this->session->set_flashdata('info', 'email alredy in our system');
        } else {
            $this->login_model->fname = $this->input->post('fname');
            $this->login_model->lname = $this->input->post('lname');
            $this->login_model->birthday = $this->input->post('birthday');
            $this->login_model->occupation = $this->input->post('occupation');
            $this->login_model->email = $this->input->post('email');
            $this->login_model->mobile = $this->input->post('mobile');
            $this->login_model->present_address = $this->input->post('paddress');
            $this->login_model->permanent_address = $this->input->post('peraddress');
            $this->login_model->updateBasic();
            $this->session->set_flashdata('info', 'information update successfully');
        }
        redirect('/user/profile_edit', 'refresh');
    }

    public function password_update() {
        $this->login_model->password = $this->input->post('cpass');
        if ($this->login_model->checkPssword()) {
            $this->login_model->password = $this->input->post('npass');
            $this->login_model->updatePassword();
            $this->session->set_flashdata('pass', 'your password change, next time login with this password');
        } else {
            $this->session->set_flashdata('pass', 'current password does not match');
        }
        redirect('/user/profile_edit', 'refresh');
    }

    public function email_check($str) {
        $this->login_model->email = $str;
        if ($this->login_model->checkEmail()) {
            $this->form_validation->set_message('email_check', 'The email alredy in our system');
            return FALSE;
        } else {
            return TRUE;
        }
    }

    public function avater_update() {
        $this->load->library('image_lib');
        $config['upload_path'] = './img/';
        $config['allowed_types'] = 'gif|jpg|png';
        $config['encrypt_name'] = true;
        $config['max_size'] = '0';
        $config['max_width'] = '0';
        $config['max_height'] = '0';
        $this->load->library('upload', $config);
        if (!$this->upload->do_upload()) {
            $data['error'] = $this->upload->display_errors();
            $this->login_model->id = $this->session->userdata('id');
            $data['info'] = $this->login_model->getAUserInfo();
            $this->load->view('edit_profile',$data);
            
            
        } else {
            $data = $this->upload->data();
            $path = './img/';
            $source_image = $data['file_name'];
            $medium_image = "medium.jpg";
            $small_image = "small.jpg";

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
             $this->login_model->image_thurmnail = $data['raw_name']."_thurm".$data['file_ext'];
        $this->login_model->image_avater = $data['raw_name']."_avater".$data['file_ext'];
        $this->login_model->updateImage();
        $new_avt = $data['raw_name']."_avater".$data['file_ext'];
         $this->session->set_userdata('avater', $new_avt);
       // 
        redirect('/user/profile_edit','refresh');
        }
       
       
    }

}
