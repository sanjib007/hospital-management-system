<?php
$this->load->view('header');
?>
<?php
$bloodgroup = array(
    'A' => 'A',
    'A+' => 'A+',
    'A-' => 'A-',
    'B' => 'B',
    'B+' => 'B+',
    'B-' => 'B-',
    'O+' => 'O+',
    'O-' => 'O-',
    'AB+' => 'AB+'
);
?>
<?php
$gender = array(
    'Male' => 'Male',
    'Female' => 'Female',    
);
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
        $("#patient_profile").validate({
            rules: {
                patient_name: "required",                
                birthday: "required",                
                email: {
                    required: true,
                    email: true
                },
                mobile: {
                    required: true,
                    number: true
                },
                address: "required",
                blood_group: "required",
                gender: "required"
                

            },
            messages: {
                patient_name: "Please enter your first name",                
                birthday: "Please enter your birthday",
                blood_group: "Please enter your occupation",
                email: "Please enter a valid email address",
                mobile: {
                        "Please enter your mobile number"
                },
                address: "Please enter your present address",
                gender: "Please enter your permanent address"                
            }
        });

    });
</script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>

<script>
    $(function() {
        $("#birthday").datepicker({
            changeMonth: true,
            changeYear: true,
            yearRange: '1910:2010',
            dateFormat: 'yy-mm-dd'
        });
    });
</script>
<!--main content start-->
<section id="main-content">
    <section class="wrapper">
        <!-- page start-->
        <div class="row">

            <?php
            $attributes = array('class' => 'form-horizontal', 'id' => 'patient_profile', 'role' => 'form');
            echo form_open_multipart('Patient/save', $attributes);
            ?>
            <aside class="profile-info col-lg-9">
                <section class="panel">
                    <div class="bio-graph-heading">
                        Aliquam ac magna metus. Nam sed arcu non tellus fringilla fringilla ut vel ispum. Aliquam ac magna metus.
                    </div>
                    <div class="panel-body bio-graph-info">
                        <h1> Patient Enter</h1>

                        <div class="form-group">
                            <label  for="fname" class="col-lg-2 control-label">Patient Name</label>
                            <div class="col-lg-6">
                                <input type="text" class="form-control" name="patient_name" value="<?php echo set_value('patient_name'); ?>" id="patient_name" placeholder=" ">
                            </div>
                        </div> 
                        <div class="form-group">
                            <label  class="col-lg-2 control-label" for="address">Present Address</label>
                            <div class="col-lg-6">
                                <input type="text" class="form-control" name="address" value="<?php echo set_value('address'); ?>" id="address" placeholder=" ">
                            </div>
                        </div>
                        <div class="form-group">
                            <label  class="col-lg-2 control-label" for="mobile">Mobile</label>
                            <div class="col-lg-6">
                                <input type="text" class="form-control" name="mobile" value="<?php echo set_value('mobile'); ?>" id="mobile" placeholder=" ">
                            </div>
                        </div>                                                
                        <div class="form-group">
                            <label  class="col-lg-2 control-label" for="email">Email</label>
                            <div class="col-lg-6">
                                <input type="text" class="form-control" name="email" id="email" value="<?php echo set_value('email'); ?>" placeholder=" ">
                            </div>
                        </div>
                        <div class="form-group">
                            <label  class="col-lg-2 control-label" for="birthday">Birthday</label>
                            <div class="col-lg-6">
                                <input type="text" class="form-control" name="birthday" value="<?php echo set_value('birthday'); ?>" id="birthday" placeholder=" ">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-lg-2" for="inputSuccess">Blood Group</label>
                            <div class="col-lg-10">
                                <select class="form-control" name="blood_group" id="blood_group" required style="width: 58%">
                                    <option value="">--Select Blood Group--</option>
                                    <?php
                                    foreach ($bloodgroup as $k => $v) {
                                        echo "<option value='" . $k . "'>" . $v . "</option>";
                                    }
                                    ?>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-lg-2" for="inputSuccess">Gender</label>
                            <div class="col-lg-10">
                                <select class="form-control" name="gender" id="gender" required style="width: 58%">
                                    <option value="">--Select Gender--</option>
                                    <?php
                                    foreach ($gender as $k => $v) {
                                        echo "<option value='" . $k . "'>" . $v . "</option>";
                                    }
                                    ?>
                                </select>
                            </div>
                        </div>
                    </div>
                </section>                
                <section>
                    <div class="panel panel-primary">                        
                        <div class="panel-body">
                            <div class="form-group">
                                <div class="col-lg-offset-2 col-lg-10">
                                    <button type="submit" class="btn btn-info">Save</button>
                                    <button type="button" class="btn btn-default">Cancel</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </aside>
            <?php
            echo form_close();
            ?>
        </div>

        <!-- page end-->
    </section>
</section>
<!--main content end-->
</form>
<?php
$this->load->view('footer');
?>


