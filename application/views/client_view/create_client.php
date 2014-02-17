<?php
$this->load->view('header');
?>


<style>
    label.error{
        color: red;
        font-weight: bold;
    }
</style>
<script src="<?php echo base_url(); ?>js/jquery.validate.min.js"></script>
<script>
    $(document).ready(function() {
        $("#create_client").validate({
            rules: {
                clientName:{
                    required: true
                    
                },
                clientPhone: "required",
                clientParentsName:{
                    required: true
                    
                }
            },
            messages: {
                clientName:{
                    required: "Please enter your name"
                    
                },
                clientPhone: "Please enter your phone number",
                clientParentsName:{
                    required: "Please enter your father/husband name"
                }
            }
        });

    });
</script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>


<section id="main-content">
    <section class="wrapper">
        <div class="row">

            <div class="col-lg-2">

            </div>

            <!--Client Create Form Start-->
            <div class="profile-info col-lg-8">
                <section class="panel">
                    <div class="bio-graph-heading">
                        Create new clients for this hospital.
                    </div>
                    <div class="panel-body bio-graph-info">
                        <h1> Create Clients</h1>
                        <?php
                        if ($this->session->flashdata('insert')) {
                            echo '<div class="alert alert-block alert-success fade in"><button data-dismiss="alert" class="close close-sm" type="button"><i class="icon-ok-sign"></i></button><strong>SUCCESS! </strong>' . $this->session->flashdata('insert') . '</div>';
                        }
                        
                        ?>
                        <?php
                        $attributes = array('class' => 'form-horizontal', 'id' => 'create_client', 'role' => 'form');
                        echo form_open('client/create_client', $attributes);
                        ?>
                        <div class="form-group">
                            <label  for="clientName" class="col-lg-3 control-label">Client Name</label>
                            <div class="col-lg-8">
                                <input type="text" class="form-control" name="clientName" id="clientName" placeholder="Enter Client Name ">
                            </div>
                        </div>
                        <div class="form-group">
                            <label  class="col-lg-3 control-label" for="clientPhone">Client Phone No</label>
                            <div class="col-lg-8">
                                <input type="text" class="form-control" name="clientPhone" id="clientPhone" placeholder="Enter Client Phone No ">
                            </div>
                        </div>

                        <div class="form-group">
                            <label  class="col-lg-3 control-label" for="clientParentsName">Father/Husband Name</label>
                            <div class="col-lg-8">
                                <input type="text" class="form-control" name="clientParentsName" id="clientParentsName" placeholder="Enter Client Father/Husband Name ">
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-lg-offset-3 col-lg-10">
                                <button type="submit" class="btn btn-success">Save</button>
                                <button type="button" class="btn btn-default">Cancel</button>
                            </div>
                        </div>
                        
                        <?php
                        echo form_close();
                        ?>
                        
                    </div>
                </section>
            </div>  
            <!--Client Create Form End-->
            
            <div class="col-lg-2">

            </div>
            
        </div>
    </section>
</section>

<?php
$this->load->view('footer');
?>                       
