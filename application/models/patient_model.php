<?php

class Patient_model extends CI_Model{
    public $id;
    public $patient_name;
    public $address;
    public $mobile;
    public $email;
    public $birthday;
    public $blood_group;
    public $gender;     
    
    public function save() {
        $data = array(
            'patient_name' => $this->patient_name,
            'address' => $this->address,
            'mobile' => $this->mobile,            
            'email' => $this->email,            
            'birthday' => $this->birthday,
            'blood_group' => $this->blood_group,
            'gender' => $this->gender                    
        );
        $this->db->insert('patient_info', $data);
    }
}
