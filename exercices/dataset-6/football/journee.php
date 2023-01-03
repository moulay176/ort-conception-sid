<?php include("include/avant.php"); ?>
<?php include("include/import.php"); ?>



<?php
foreach($play as $data)
{
$csvs[] = explode(',',$data);
}
?>


 <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            

            <div class="clearfix"></div>
              <?php include("include/tri.php"); ?>
          </div>
        </div>
<!-- /page content -->

<?php include("include/apres.php"); ?>