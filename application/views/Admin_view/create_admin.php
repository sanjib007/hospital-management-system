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
        $("#create_profile").validate({
            rules: {
                fname: "required",
                lname: "required",
                birthday: "required",
                occupation: "required",
                email: {
                    required: true,
                    email: true
                },
                mobile: "required",
                paddress: "required",
                peraddress: "required",
                login: {
                    required: true,
                    minlength: 5
                },
                password: {
                    required: true,
                    minlength: 5
                },
                confirm_password: {
                    required: true,
                    minlength: 5,
                    equalTo: "#password"
                }

            },
            messages: {
                fname: "Please enter your first name",
                lname: "Please enter your last name",
                birthday: "Please enter your birthday",
                occupation: "Please enter your occupation",
                email: "Please enter a valid email address",
                mobile: "Please enter your mobile number",
                paddress: "Please enter your present address",
                peraddress: "Please enter your permanent address",
                login: {
                    required: "Please provide a current password",
                    minlength: "Your password must be at least 5 characters long"
                },
                password: {
                    required: "Please provide a new password",
                    minlength: "Your password must be at least 5 characters long"
                },
                confirm_password: {
                    required: "Please provide a password",
                    minlength: "Your password must be at least 5 characters long",
                    equalTo: "Please enter the same password as above"
                }
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
            <div class="col-lg-2"></div>    
            <?php 
            $attributes = array('class' => 'form-horizontal', 'id' => 'create_profile', 'role' => 'form');
            echo form_open_multipart('adminprofile/save', $attributes);
            ?>
            <aside class="profile-info col-lg-9">
                <section class="panel">
                    <div class="bio-graph-heading">
                        Aliquam ac magna metus. Nam sed arcu non tellus fringilla fringilla ut vel ispum. Aliquam ac magna metus.
                    </div>
                    <div class="panel-body bio-graph-info">
                        <h1> Profile Info</h1>
<?php
            if (isset($error)) {
                ?>
                <div class="alert alert-block alert-danger fade in">
                    <button data-dismiss="alert" class="close close-sm" type="button">
                        <i class="icon-remove"></i>
                    </button>
                    <strong><?php echo validation_errors(); ?></strong> 
                </div>
                <?php
            }
            if (isset($myerror)) {
                ?>
                <div class="alert alert-block alert-danger fade in">
                    <button data-dismiss="alert" class="close close-sm" type="button">
                        <i class="icon-remove"></i>
                    </button>
                    <strong><?php echo $myerror; ?></strong> 
                </div>
                <?php
            }
            if ($this->session->flashdata('insert')) {
                ?>
                <div class="alert alert-block alert-danger fade in">
                    <button data-dismiss="alert" class="close close-sm" type="button">
                        <i class="icon-remove"></i>
                    </button>
                    <strong><?php echo $this->session->flashdata('insert'); ?></strong> 
                </div>
                <?php
            }
            ?>
                        <div class="form-group">
                            <label  for="fname" class="col-lg-2 control-label">First Name</label>
                            <div class="col-lg-6">
                                <input type="text" class="form-control" name="fname" value="<?php echo set_value('fname'); ?>" id="fname" placeholder=" ">
                            </div>
                        </div>
                        <div class="form-group">
                            <label  class="col-lg-2 control-label" for="lname">Last Name</label>
                            <div class="col-lg-6">
                                <input type="text" class="form-control" name="lname" value="<?php echo set_value('lname'); ?>" id="lname" placeholder=" ">
                            </div>
                        </div>

                        <div class="form-group">
                            <label  class="col-lg-2 control-label" for="birthday">Birthday</label>
                            <div class="col-lg-6">
                                <input type="text" class="form-control" name="birthday" value="<?php echo set_value('birthday'); ?>" id="birthday" placeholder=" ">
                            </div>
                        </div>
                        <div class="form-group">
                            <label  class="col-lg-2 control-label" for="occupation">Occupation</label>
                            <div class="col-lg-6">
                                <input type="text" class="form-control" name="occupation" value="<?php echo set_value('occupation'); ?>" id="occupation" placeholder=" ">
                            </div>
                        </div>

                        <div class="form-group">
                            <label  class="col-lg-2 control-label" for="mobile">Mobile</label>
                            <div class="col-lg-6">
                                <input type="text" class="form-control" name="mobile" value="<?php echo set_value('fname'); ?>" id="mobile" placeholder=" ">
                            </div>
                        </div>
                        <div class="form-group">
                            <label  class="col-lg-2 control-label" for="present_address">Present Address</label>
                            <div class="col-lg-6">
                                <input type="text" class="form-control" name="present_address" value="<?php echo set_value('present_address'); ?>" id="present_address" placeholder=" ">
                            </div>
                        </div>
                        <div class="form-group">
                            <label  class="col-lg-2 control-label" for="permanent_address">Permanent Address</label>
                            <div class="col-lg-6">
                                <input type="text" class="form-control" name="permanent_address" value="<?php echo set_value('permanent_address'); ?>" id="permanent_address" placeholder=" ">
                            </div>
                        </div>                      
                    </div>
                </section>
                <section>
                    <div class="panel panel-primary">
                        <div class="panel-heading"> Login Info</div>
                        <div class="panel-body">                            
                            <div class="form-group">
                                <label  class="col-lg-2 control-label" for="email">Email</label>
                                <div class="col-lg-6">
                                    <input type="text" class="form-control" name="email" id="email" value="<?php echo set_value('email'); ?>" placeholder=" ">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-lg-2" for="inputSuccess">Selects</label>
                                <div class="col-lg-10">
                                    <select class ="form-control" name="type" id="type" required style="width: 60%">
                                        <option value="">--Select One--</option>
                                        <?php
                                        foreach ($typelist as $a_type) {
                                            echo "<option value='" . $a_type->id . "'>" . $a_type->admin_type . "</option>";
                                        }
                                        ?>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label  class="col-lg-2 control-label" for="npass">Password</label>
                                <div class="col-lg-6">
                                    <input type="password" class="form-control" name="password" id="password" placeholder=" ">
                                </div>
                            </div>
                            <div class="form-group">
                                <label  class="col-lg-2 control-label" for="renpass">Re-type Password</label>
                                <div class="col-lg-6">
                                    <input type="password" class="form-control" name="confirm_password" id="confirm_password" placeholder=" ">
                                </div>
                            </div> 
                        </div>
                    </div>
                </section>
                <section>
                    <div class="panel panel-primary">
                        <div class="panel-heading">Set Image</div>
                        <div class="panel-body">
                            <div class="form-group">
                                <label  class="col-lg-2 control-label">Upload Picture</label>
                                <div class="col-lg-6">
                                    <input type="file" class="file-pos" id="exampleInputFile" name="userfile" id="image_avater">
                                </div>
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
