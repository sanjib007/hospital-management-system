<?php
$this->load->view('header');
?>
<script>
    $(document).ready(function() {
        var mm = "<?php echo base_url(); ?>client/getEvents";
        mycale(mm);

        $("#appForm").submit(function(e) {
            
            //prevent Default functionality
            e.preventDefault();

            //get the action-url of the form

            //do your own request an handle the results
            $.ajax({
                url: "<?php echo base_url(); ?>client/createApp",
                type: 'post',
                dataType: 'json',
                data: $("#appForm").serialize(),
                success: function(data) {
                    alert(data.msg);
                }
            });
            });
            
            $("#searchForm").submit(function(e) {
            
            //prevent Default functionality
            e.preventDefault();

            //get the action-url of the form

            //do your own request an handle the results
            $.ajax({
                url: "<?php echo base_url(); ?>client/bydoctor",
                type: 'post',
                dataType: 'json',
                data: $("#searchForm").serialize(),
                success: function(data) {
                    mycale(data);
                }
            });

        });
        function mycale(mm){
                 $('#calendar').fullCalendar({
        header: {
            left: 'prev,next today',
            center: 'title',
            right: 'month,basicWeek,basicDay'
        },
        editable: true,
        droppable: true,
        dayClick: function(date) {
            var mytime = ("0" + date.getDate()).slice(-2)+"-" + ("0" + (date.getMonth() + 1)).slice(-2)+"-"+date.getFullYear();
            $("#appDate").val(mytime);
            $('#myModal').modal();
        },
        // this allows things to be dropped onto the calendar !!!
        drop: function(date, allDay) { // this function is called when something is dropped

            // retrieve the dropped element's stored Event Object
            var originalEventObject = $(this).data('eventObject');
            // we need to copy it, so that multiple events don't have a reference to the same object
            var copiedEventObject = $.extend({}, originalEventObject);
            // assign it the date that was reported
            copiedEventObject.start = date;
            copiedEventObject.allDay = allDay;
            // render the event on the calendar
            // the last `true` argument determines if the event "sticks" (http://arshaw.com/fullcalendar/docs/event_rendering/renderEvent/)
            $('#calendar').fullCalendar('renderEvent', copiedEventObject, true);
            // is the "remove after drop" checkbox checked?
            if ($('#drop-remove').is(':checked')) {
                // if so, remove the element from the "Draggable Events" list
                $(this).remove();
            }

        },
        events: mm,
    });
        
        }
       

    });
</script>
<link href="<?php echo base_url(); ?>assets/fullcalendar/fullcalendar/bootstrap-fullcalendar.css" rel="stylesheet" />
<!--sidebar end-->
<!--main content start-->
<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Create Appoinment</h4>
            </div>
            <div class="modal-body">

                <section class="panel">

                    <div class="panel-body">
                        <div class=" form">
                            <?php
                            $attributes = array('class' => 'form-horizontal', 'id' => 'appForm', 'role' => 'form');
                            echo form_open('client/createApp', $attributes);
                            ?>

                            <div class="form-group ">
                                <label for="cname" class="control-label col-lg-2">Doctor Name</label>
                                <div class="col-lg-10">
                                    <select class="form-control" id="doctorid" name="doctorid">
                                        <option value="">select a doctor</option>
                                        <?php
                                        foreach ($doctorlist as $aDoctor) {
                                            ?>
                                            <option value="<?php echo $aDoctor->id ?>"><?php echo $aDoctor->fname . " " . $aDoctor->lname; ?></option>
                                            <?php
                                        }
                                        ?>

                                    </select>
                                </div>
                            </div>
                            <div class="form-group ">
                                <label for="appDate" class="control-label col-lg-2">Date</label>
                                <div class="col-lg-10">
                                    <input class="form-control " id="appDate" type="text" name="appDate"/>
                                </div>
                            </div>
                            <div class="form-group ">
                                <label for="clientId" class="control-label col-lg-2" >Client Id</label>
                                <div class="col-lg-10">
                                    <input class="form-control " id="clientId" type="text" name="clientId" />
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-lg-offset-2 col-lg-10">
                                    <input class="btn btn-danger" name="submit"value="Appoinment" type="submit">
                                </div>
                            </div>




                        </div>

                    </div>
                </section>

            </div>
            <div class="modal-footer">
                <button data-dismiss="modal" class="btn btn-default" type="button">Close</button>

            </div>
            </form>
        </div>
    </div>
</div>
<section id="main-content">
    <section class="wrapper">
        <!-- page start-->
        <div class="row">

            <aside class="col-lg-12">
                <section class="panel">
                    <header class="panel-heading">
                        Booking Information
                    </header>
                    <div class="panel-body">
                        <?php
                            $attributes = array('class' => 'form-inline', 'id' => 'searchForm', 'role' => 'form');
                            echo form_open('client/bydoctor', $attributes);
                            ?>
                       
                            <div class="form-group">
                                <label for="doctorid">Doctor</label>
                                <select class="form-control" id="doctorid" name="doctorid">
                                    <option value="">select a doctor</option>
                                    <?php
                                    foreach ($doctorlist as $aDoctor) {
                                        ?>
                                        <option value="<?php echo $aDoctor->id ?>"><?php echo $aDoctor->fname . " " . $aDoctor->lname; ?></option>
                                        <?php
                                    }
                                    ?>

                                </select>

                            </div>
                            <button type="submit" class="btn btn-success" style="margin-top: 23px;">Search</button>
                        </form>

                    </div>
                </section>
                <section class="panel">
                    <div class="panel-body">
                        <div id="calendar" class="has-toolbar"></div>
                    </div>
                </section>
            </aside>
        </div>
        <!-- page end-->
    </section>
</section>
<!--main content end-->
</section>

<!-- js placed at the end of the document so the pages load faster -->

<script src="<?php echo base_url(); ?>assets/fullcalendar/fullcalendar/fullcalendar.min.js"></script>

<!--script for this page only-->
<script>


   


</script>
<?php $this->load->view('footer') ?>