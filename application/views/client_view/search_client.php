<?php
$this->load->view('header');
?>
<!--Start Ajax-->

<script>
    $(document).ready(function() {
        $('#search_client_by_id').submit(function(e) {

            $.ajax(
                    {
                        type: "POST",
                        url: "<?php echo base_url(); ?>client/search_client_details_by_id",
                        data: $("#search_client_by_id").serialize(),
                        success: function(data)
                        {
                            var mySelect = $('#clientDetails tbody');
                            $('#clientDetails tbody tr').remove();
                            if (data.length == 0) {
                                alert("Sorry,No Data Found");
                            } else {

                                $.each(data, function(v, k) {

                                    mySelect.append("<tr><td>" + k.client_gen_id + "</td><td>" + k.client_name + "</td><td>" + k.client_parents_name + "</td></tr>");
                                });
                            }

                        }, dataType: 'json'
                    });
            return false;

        });
        
        
        $('#search_client_by_name').submit(function(e) {

            $.ajax(
                    {
                        type: "POST",
                        url: "<?php echo base_url(); ?>client/search_client_details_by_name",
                        data: $("#search_client_by_name").serialize(),
                        success: function(data)
                        {
                            var mySelect = $('#clientDetails tbody');
                            $('#clientDetails tbody tr').remove();
                            if (data.length == 0) {
                                alert("Sorry,No Data Found");
                            } else {

                                $.each(data, function(v, k) {

                                    mySelect.append("<tr><td>" + k.client_gen_id + "</td><td>" + k.client_name + "</td><td>" + k.client_parents_name + "</td></tr>");
                                });
                            }

                        }, dataType: 'json'
                    });
            return false;

        });


    });
</script>

<!--End Ajax-->



<section id="main-content">
    <section class="wrapper">
        <div class="row">

            <div class="col-lg-1">

            </div>

            <div class="col-lg-10">
                <?php
                $attributes = array('class' => 'form-horizontal', 'id' => 'search_client_by_id', 'role' => 'form');
                echo form_open('client/search_client_details_by_id', $attributes);
                ?>
                <section class="panel panel-primary">
                    <header class="panel-heading"> Search By Client ID </header>
                    <div class="panel-body">
                        <div class="form-group">
                            <label  class="col-lg-3 control-label" for="clientId">Client ID</label>
                            <div class="col-lg-8">
                                <input type="text" class="form-control" name="clientId" id="clientId" placeholder="Search By Client Id ">
                                <button type="submit" class="btn btn-success"><p class="icon-search" style="margin-right: 5px;"></p>Search</button>
                            </div>
                        </div>
                    </div>
                </section>
                <?php
                echo form_close();
                ?>




                <?php
                $attributes = array('class' => 'form-horizontal', 'id' => 'search_client_by_name', 'role' => 'form');
                echo form_open('client/search_client_details_by_name', $attributes);
                ?>
                <section class="panel panel-primary">
                    <header class="panel-heading"> Search By Client Name/Parents Name </header>
                    <div class="panel-body">
                        <div class="form-group">
                            <label  class="col-lg-3 control-label" for="clientName">Client Name</label>
                            <div class="col-lg-8">
                                <input type="text" class="form-control" name="clientName" id="clientName" placeholder="Search By Client Name ">                                
                            </div>
                        </div>
                        <div class="form-group">
                            <label  class="col-lg-3 control-label" for="clientParentsName">Client Father/Husband Name</label>
                            <div class="col-lg-8">
                                <input type="text" class="form-control" name="clientParentsName" id="clientParentsName" placeholder="Search By Client Father/Husband Name ">                                
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-offset-3 col-lg-10">
                                <button type="submit" class="btn btn-success"><p class="icon-search" style="margin-right: 5px;"></p>Search</button>
                            </div>
                        </div>
                    </div>
                </section>

                <?php
                echo form_close();
                ?>



                <section class="panel panel-primary">
                    <header class="panel-heading"> View Client List </header>

                    <table class="table table-striped table-advance table-hover" id="clientDetails">

                        <thead>
                            <tr>
                                <th><li class="icon-info" style="margin-right: 5px;"></li>Client Id</th>
                        <th><li class="icon-info" style="margin-right: 5px;"></li>Client Name</th>
                        <th><li class="icon-info" style="margin-right: 5px;"></li>Client Father/Husband Name</th>
                        </tr>
                        </thead>

                        <tbody>

                        </tbody>

                    </table>

                </section>


            </div>

            <div class="col-lg-1">

            </div>

        </div>
    </section>
</section>

<?php
$this->load->view('footer');
?>  