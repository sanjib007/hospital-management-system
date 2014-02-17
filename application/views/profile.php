<?php
$this->load->view('header');
?>
<section id="main-content">
          <section class="wrapper">
              <!-- page start-->
              <div class="row">
                  <aside class="profile-nav col-lg-3">
                      <section class="panel">
                          <div class="user-heading round">
                              <a href="#">
                                  <?php if($info->image_thurmnail==''){
                                      echo img('img/fetch.jpg');
                                      
                                  }else{
                                     echo img('img/'.$info->image_thurmnail);
                                  } ?>
                              </a>
                              <h1><?php echo $info->fname." ".$info->lname; ?></h1>
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
                              <h1>Bio Graph</h1>
                              <div class="row">
                                  <div class="bio-row">
                                      <p><span>First Name </span>: <?php echo $info->fname; ?></p>
                                  </div>
                                  <div class="bio-row">
                                      <p><span>Last Name </span>: <?php echo $info->lname; ?></p>
                                  </div>
                                  <div class="bio-row">
                                      <p><span>Birthday</span>: <?php echo date( 'dS M Y', strtotime($info->birthday)); ?></p>
                                  </div>
                                  <div class="bio-row">
                                      <p><span>Occupation </span>: <?php echo $info->occupation; ?></p>
                                  </div>
                                  <div class="bio-row">
                                      <p><span>Email </span>: <?php echo $info->email; ?></p>
                                  </div>
                                  <div class="bio-row">
                                      <p><span>Mobile </span>: <?php echo $info->mobile; ?></p>
                                  </div>
                                  <div class="bio-row">
                                      <p><span>Present address </span>: <?php echo $info->present_address; ?></p>
                                  </div>
                                  <div class="bio-row">
                                      <p><span>Permanent address </span>: <?php echo $info->permanent_address; ?></p>
                                  </div>
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
