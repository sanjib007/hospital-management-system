<?php
$this->load->view('header');
?>
<!--main content start-->
<section id="main-content">
    <section class="wrapper">
        <!-- page start-->


        <div class="row">
            <div class="col-lg-12">
                <section class="panel">
                    <header class="panel-heading">
                        Show All User
                    </header>
                    <table class="table table-striped table-advance table-hover">
                        <thead>
                            <tr>

                                <th class="hidden-phone"><i class="icon-question-sign"></i> First Name</th>
                                <th><i class="icon-bookmark"></i> Last Name</th>
                                <th><i class=" icon-edit"></i> Birthday</th>
                                <th><i class=" icon-edit"></i> Occupation</th>
                                <th><i class=" icon-edit"></i> Email</th>
                                <th><i class=" icon-edit"></i> Mobile</th>
                                <th><i class=" icon-edit"></i> Pre Address</th>
                                <th><i class=" icon-edit"></i> Per Address</th>

                                <th><i class=" icon-edit"></i> Status</th>
                                <th></th>
                            </tr>
                        </thead>

                        <tbody>
                            <?php

                            function mylist($aUser) {
                                $msg = "";
                                $msg .='<tr>
                                    <td class="hidden-phone">' . $aUser->fname . '</td>
                                    <td class="hidden-phone">' . $aUser->lname . '</td>
                                    <td class="hidden-phone">' . $aUser->birthday . '</td>
                                    <td class="hidden-phone">' . $aUser->occupation . '</td>
                                    <td class="hidden-phone">' . $aUser->email . '</td>
                                    <td class="hidden-phone">' . $aUser->mobile . '</td>
                                    <td class="hidden-phone">' . $aUser->present_address . '</td>
                                    <td class="hidden-phone">' . $aUser->present_address . '</td>
                                    
                                    
                                    <td>
                                        <button class="btn btn-primary btn-xs"><i class="icon-pencil"></i></button>
                                        <button class="btn btn-danger btn-xs"><i class="icon-trash "></i></button>
                                    </td>
                                </tr>';
                                return $msg;
                            }

                            $doctor = '';
                            $nurse = '';
                            $receptionist = '';
                            $admin = '';
                            foreach ($userlist as $aUser) {
                                if ($aUser->type == 1) {
                                    $admin .= mylist($aUser);
                                } elseif ($aUser->type == 2) {
                                    $receptionist .= mylist($aUser);
                                } elseif ($aUser->type == 3) {
                                    $doctor .=mylist($aUser);
                                } else {
                                    $nurse .=mylist($aUser);
                                }
                            }
                            ?>

                            <tr><td colspan="9"  ><div class="text-center"style="font-weight: bold;">Admin List</div></td></tr>
                            <?php echo $admin; ?>

                            <tr><td colspan="9"  ><div class="text-center"style="font-weight: bold;">Doctor  List</div></td></tr>
                            <?php echo $doctor; ?>

                            <tr><td colspan="9"  ><div class="text-center"style="font-weight: bold;">Nurse  List</div></td></tr>
                            <?php echo $nurse; ?>

                            <tr><td colspan="9"  ><div class="text-center"style="font-weight: bold;">Receiptionist  List</div></td></tr>
                            <?php echo $receptionist; ?>
                        </tbody>
                    </table>
                </section>
            </div>
        </div>
        <!-- page end-->
    </section>
</section>
<!--main content end-->
</section>

<?php
$this->load->view('footer');
?>


