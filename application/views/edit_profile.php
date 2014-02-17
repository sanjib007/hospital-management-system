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
        $("#edit_profile").validate({
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
                peraddress: "required"
            },
            messages: {
                fname: "Please enter your first name",
                lname: "Please enter your last name",
                birthday: "Please enter your birthday",
                occupation: "Please enter your occupation",
                email: "Please enter a valid email address",
                mobile: "Please enter your mobile number",
                paddress: "Please enter your present address",
                peraddress: "Please enter your permanent address"
            }
        });
        $("#password_profile").validate({
            rules: {
                cpass: {
                    required: true,
                    minlength: 5
                },
               npass: {
                    required: true,
                    minlength: 5
                },
                renpass: {
                    required: true,
                    minlength: 5,
                    equalTo: "#npass"
                }
            },
            messages: {
                cpass: {
                    required: "Please provide a current password",
                    minlength: "Your password must be at least 5 characters long"
                },
                 npass: {
                    required: "Please provide a new password",
                    minlength: "Your password must be at least 5 characters long"
                },
                renpass: {
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
    $( "#birthday" ).datepicker({
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
            <aside class="profile-nav col-lg-3">
                <section class="panel">
                    <div class="user-heading round">
                        <a href="#">
                            <?php
                            if ($info->image_thurmnail == '') {
                                echo img('img/fetch.jpg');
                            } else {
                                echo img('img/' . $info->image_thurmnail);
                            }
                            ?>

                        </a>
                        <h1><?php echo $info->fname . " " . $info->lname; ?></h1>
                        <p><?php echo $info->email; ?> </p>
                    </div>

                    <ul class="nav nav-pills nav-stacked">
                        <li class="active"><a href="<?php echo base_url(); ?>user"> <i class="icon-user"></i> Profile</a></li>
                        <li><a href="<?php echo base_url(); ?>user/profile_edit"> <i class="icon-edit"></i> Edit profile</a></li>
                    </ul>

                </section>
            </aside>
            <aside class="profile-info col-lg-9">
                <section class="panel">
                    <div class="bio-graph-heading">
                        Aliquam ac magna metus. Nam sed arcu non tellus fringilla fringilla ut vel ispum. Aliquam ac magna metus.
                    </div>
                    <div class="panel-body bio-graph-info">
                        <h1> Profile Info</h1>
                        <?php if($this->session->flashdata('info')){
                            echo '<div class="alert alert-block alert-danger fade in"><button data-dismiss="alert" class="close close-sm" type="button"><i class="icon-remove"></i></button><strong>Oh snap! </strong>'.$this->session->flashdata('info'). '</div>';
                        } ?>
                        <?php
                        $attributes = array('class' => 'form-horizontal', 'id' => 'edit_profile','role'=>'form');
                        echo form_open('profile/update', $attributes);
                        ?>
                            <div class="form-group">
                                <label  for="fname" class="col-lg-2 control-label">First Name</label>
                                <div class="col-lg-6">
                                    <input type="text" class="form-control" name="fname" value="<?php echo $info->fname; ?>" id="fname" placeholder=" ">
                                </div>
                            </div>
                            <div class="form-group">
                                <label  class="col-lg-2 control-label" for="lname">Last Name</label>
                                <div class="col-lg-6">
                                    <input type="text" class="form-control" name="lname" value="<?php echo $info->lname; ?>" id="lname" placeholder=" ">
                                </div>
                            </div>

                            <div class="form-group">
                                <label  class="col-lg-2 control-label" for="birthday">Birthday</label>
                                <div class="col-lg-6">
                                    <input type="text" class="form-control" name="birthday" value="<?php echo $info->birthday; ?>" id="birthday" placeholder=" ">
                                </div>
                            </div>
                            <div class="form-group">
                                <label  class="col-lg-2 control-label" for="occupation">Occupation</label>
                                <div class="col-lg-6">
                                    <input type="text" class="form-control" name="occupation" value="<?php echo $info->occupation; ?>" id="occupation" placeholder=" ">
                                </div>
                            </div>
                            <div class="form-group">
                                <label  class="col-lg-2 control-label" for="email">Email</label>
                                <div class="col-lg-6">
                                    <input type="text" class="form-control" name="email" id="email" value="<?php echo $info->email; ?>" placeholder=" ">
                                </div>
                            </div>
                            <div class="form-group">
                                <label  class="col-lg-2 control-label" for="mobile">Mobile</label>
                                <div class="col-lg-6">
                                    <input type="text" class="form-control" name="mobile" value="<?php echo $info->mobile; ?>" id="mobile" placeholder=" ">
                                </div>
                            </div>
                            <div class="form-group">
                                <label  class="col-lg-2 control-label" for="paddress">Present Address</label>
                                <div class="col-lg-6">
                                    <input type="text" class="form-control" name="paddress" value="<?php echo $info->present_address; ?>" id="paddress" placeholder=" ">
                                </div>
                            </div>
                            <div class="form-group">
                                <label  class="col-lg-2 control-label" for="peraddress">Permanent Address</label>
                                <div class="col-lg-6">
                                    <input type="text" class="form-control" name="peraddress" value="<?php echo $info->permanent_address; ?>" id="peraddress" placeholder=" ">
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-lg-offset-2 col-lg-10">
                                    <button type="submit" class="btn btn-success">Save</button>
                                    <button type="button" class="btn btn-default">Cancel</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </section>
                <section>
                    <div class="panel panel-primary">
                        <div class="panel-heading"> Sets New Password</div>
                        <div class="panel-body">
                            <?php if($this->session->flashdata('pass')){
                            echo '<div class="alert alert-block alert-danger fade in"><button data-dismiss="alert" class="close close-sm" type="button"><i class="icon-remove"></i></button><strong>Oh snap! </strong>'.$this->session->flashdata('pass'). '</div>';
                        } ?>
                            <?php
                        $attributes = array('class' => 'form-horizontal', 'id' => 'password_profile','role'=>'form');
                        echo form_open('profile/password_update', $attributes);
                        ?>
                            
                                <div class="form-group">
                                    <label  class="col-lg-2 control-label" for="cpass">Current Password</label>
                                    <div class="col-lg-6">
                                        <input type="password" class="form-control" name="cpass" value="<?php echo $info->password; ?>" id="cpass" placeholder=" ">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label  class="col-lg-2 control-label" for="npass">New Password</label>
                                    <div class="col-lg-6">
                                        <input type="password" class="form-control" name="npass" id="npass" placeholder=" ">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label  class="col-lg-2 control-label" for="renpass">Re-type New Password</label>
                                    <div class="col-lg-6">
                                        <input type="password" class="form-control" name="renpass" id="renpass" placeholder=" ">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-lg-offset-2 col-lg-10">
                                        <button type="submit" class="btn btn-info">Save</button>
                                        <button type="button" class="btn btn-default">Cancel</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </section>
                <section>
                    <div class="panel panel-primary">
                        <div class="panel-heading"> Sets New Avatar</div>
                        <div class="panel-body">
                            <?php
                            if(isset($error)){
                                echo $error;
                            }
                        $attributes = array('class' => 'form-horizontal', 'id' => 'avater_profile','role'=>'form');
                        echo form_open_multipart('profile/avater_update', $attributes);
                        ?>

                                <div class="form-group">
                                    <label  class="col-lg-2 control-label">Change Avatar</label>
                                    <div class="col-lg-6">
                                        <input type="file" name="userfile" class="file-pos" id="userfile">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-lg-offset-2 col-lg-10">
                                        <button type="submit" class="btn btn-info">Save</button>
                                        <button type="button" class="btn btn-default">Cancel</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </section>
            </aside>
        </div>

        <!-- page end-->
    </section>
</section>
<!--main content end-->
</section>
<?php
$this->load->view('footer');
?>
