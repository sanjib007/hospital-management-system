<?php

class Client_model extends CI_Model {

    public $id;
    public $client_name;
    public $client_phone;
    public $client_parents_name;
    public $client_name_gen;
    public $client_gen_id;
    public $doctorId;
    public $dates;



    //Insert Create Client Data to Database
    function create_client() {
        $data = array(
            'client_name' => $this->client_name,
            'client_phone' => $this->client_phone,
            'client_parents_name' => $this->client_parents_name,
            'client_name_gen' => $this->client_name_gen,
            'client_gen_id' => $this->client_gen_id
        );

        $this->db->insert('client', $data);
        return $this->db->insert_id();
    }

    //Client Name Generate Method
    public function genarate_client_name() {
        $data = array(
            'client_name_gen' => $this->client_name_gen
        );

        $this->db->where('id', $this->id);
        $this->db->update('client', $data);
    }

    //Client Id Generate Method
    public function genarate_client_id() {
        $data = array(
            'client_gen_id' => $this->client_gen_id
        );

        $this->db->where('id', $this->id);
        $this->db->update('client', $data);
    }

    //Get Client Details Search By Client Id
    public function search_client_details_by_id() {
        $this->db->select('*');
        $this->db->from('client');
        $this->db->where('client_gen_id', $this->client_gen_id);
        $query = $this->db->get();
        return $query->result_array();
    }

    //Get Client Details Search By Client and Parents Name
    public function search_client_details_by_name() {
        $this->db->select('*');
        $this->db->from('client');
        $this->db->where('client_name_gen', $this->client_name_gen);
        $query = $this->db->get();
        return $query->result_array();
    }

    public function getDoctor() {
        $this->db->where('type', 3);
        $query = $this->db->get('admin_user');
        return $query->result();
    }

    public function insertApp() {
        $data = array(
            'client_id' => $this->id,
            'doctor_id' => $this->doctorId,
            'booking_time' => $this->dates,
            'end_time' => $this->dates
        );

        $this->db->insert('appointment', $data);
    }
    
    public function getEvents(){
        $this->db->select('client_id as title, booking_time as start, end_time as end,allDay,url');
        $query = $this->db->get('appointment');
        return $query->result_array();
    }
    public function getDoctorId() {
        $this->db->select('client_id as title, booking_time as start, end_time as end,allDay,url');
        $this->db->where('doctor_id',$this->doctorId);
        $query = $this->db->get('appointment');
        return $query->result_array();
    }

}
