  <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Résultat de la saison du club <b><?php echo $_GET['teams'];?></b></h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                        <ul class="dropdown-menu" role="menu">
                          <li><a href="#">Settings 1</a>
                          </li>
                          <li><a href="#">Settings 2</a>
                          </li>
                        </ul>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">

                    <table id="datatable" class="table table-striped table-bordered">
                      <thead>
                        <tr style="color:#07d28d;">

                          
                          <th>Journée</th>
                          <th>Match</th>
                          <th>Pts</th>
                          <th>G</th>
                          <th>N</th>
                          <th>P</th>
                          <th>But-M</th>
                          <th>But-Ec</th>
                          <th>Diff</th>
                        </tr>
                      </thead>


                      <tbody>


                    <?php

                      
                        $i=0;
                        $point=0;
                        $journee=0;
                        $gagne=0;
                        $null=0;
                        $perdre=0;
                        $but_marque=0;
                        $but_encaisse=0;
                        $o=$_GET['teams'];
                      
                           


                    ?>

                            


                        <?php
                        foreach($csvs as $key2 => $F_value)
                        {

                          $p=$F_value[0];
                          $pp=$F_value[1];
                          $y=$o;


                          // je gere les match allé-retour
                          if(($p == $y) or ($pp == $y))
                              {


                                // je gere les match a domicile
                                if ($p == $y) 
                                {

                                  $i=$i+1;
                                  //cas victoire
                                  if ($F_value[2] > $F_value[3]) {
                                    

                                    $point=$point + 3;
                                    $journee=$journee + 1;
                                    $gagne=$gagne + 1;
                                    $null=$null + 0;
                                    $perdre=$perdre + 0;
                                    $but_marque=$but_marque + $F_value[2];
                                    $but_encaisse=$but_encaisse + $F_value[3];

                                  }

                                  //cas null
                                  if ($F_value[2] == $F_value[3]) {

                                    $point=$point + 1;
                                    $journee=$journee + 1;
                                    $gagne=$gagne + 0;
                                    $null=$null + 1;
                                    $perdre=$perdre + 0;
                                    $but_marque=$but_marque + $F_value[2];
                                    $but_encaisse=$but_encaisse + $F_value[3];
                                  }


                                  //cas perdre
                                  if ($F_value[2] < $F_value[3]) {

                                    $point=$point + 0;
                                    $journee=$journee + 1;
                                    $gagne=$gagne + 0;
                                    $null=$null + 0;
                                    $perdre=$perdre + 1;
                                    $but_marque=$but_marque + $F_value[2];
                                    $but_encaisse=$but_encaisse + $F_value[3];
                                  }

                                  $diff = $but_marque - $but_encaisse;
                                ?>

                                    <tr>
                                        <td><?php echo $journee; ?></td>
                                        <td>
                                          <b> <?php echo $p ?> </b>
                                          <?php echo '-' ?>
                                          <?php echo $pp  ?>


                                          <?php echo '(' ?>
                                          <b><?php echo $F_value[2] ?> </b>
                                          <?php echo '-' ?>
                                          <?php echo $F_value[3]  ?>
                                          <?php echo ')' ?>

                                            
                                          </td>
                                        <td>

                                          <?php echo $point; ?>
                                          
                                          <?php
                                            if ($F_value[2] < $F_value[3]) {

                                                ?>
                                                  <span style="color: red; font-size: 10px;"> (+0 )</span>
                                                <?php
                                                }



                                                 if ($F_value[2] > $F_value[3]) {

                                                ?>
                                                 
                                                    <span style="color: #11a7ad; font-size: 10px;"> (+3 ) <i style="color:#11a7ad;" class="fa fa-sort-asc"></i></span>
                                                  

                                                <?php
                                                }



                                                 if ($F_value[2] == $F_value[3]) {

                                                ?>
                                                  <span style="color: red; font-size: 10px;"> (+1 )</span>
                                                <?php
                                                }

                                            ?>

                                        </td>
                                        
                                        <td>
                                          <?php echo $gagne; ?>
                                        </td>

                                        <td><?php echo $null; ?></td>


                                        <td>
                                          <?php echo $perdre; ?></td>



                                        <td><?php echo $but_marque; ?></td>
                                        <td><?php echo $but_encaisse; ?></td>
                                        <td><?php echo $diff; ?></td>
                                    </tr>

                                <?php

                                $journeee[] = $journee; 
                                $pointt[] = $point; 
                                $but_encaissee[] = $but_encaisse;
                                $difff[] = $diff;
                         

                                  
                                }








                                 // je gere les match a exterieur
                                if ($pp == $y) 
                                {

                                  $i=$i+1;
                                  //cas victoire
                                  if ($F_value[2] < $F_value[3]) {
                                    
                                    $point=$point + 3;
                                    $journee=$journee + 1;
                                    $gagne=$gagne + 1;
                                    $null=$null + 0;
                                    $perdre=$perdre + 0;
                                    $but_marque=$but_marque + $F_value[3];
                                    $but_encaisse=$but_encaisse + $F_value[2];

                                  }

                                  //cas null
                                  if ($F_value[2] == $F_value[3]) {

                                    $point=$point + 1;
                                    $journee=$journee + 1;
                                    $gagne=$gagne + 0;
                                    $null=$null + 1;
                                    $perdre=$perdre + 0;
                                    $but_marque=$but_marque + $F_value[3];
                                    $but_encaisse=$but_encaisse + $F_value[2];
                                  }


                                  //cas perdre
                                  if ($F_value[2] > $F_value[3]) {

                                    $point=$point + 0;
                                    $journee=$journee + 1;
                                    $gagne=$gagne + 0;
                                    $null=$null + 0;
                                    $perdre=$perdre + 1;
                                    $but_marque=$but_marque + $F_value[3];
                                    $but_encaisse=$but_encaisse + $F_value[2];
                                  }

                                  $diff = $but_marque - $but_encaisse;
                                   ?>

                                    <tr>
                                        <td><?php echo $journee; ?></td>
                                        <td>
                                           <?php echo $p ?> 
                                          <?php echo '-' ?>
                                          <b><?php echo $pp  ?></b>


                                          <?php echo '(' ?>
                                          <?php echo $F_value[2] ?> 
                                          <?php echo '-' ?>
                                          <b><?php echo $F_value[3]  ?></b>
                                          <?php echo ')' ?>

                                            
                                          </td>
                                        <td>

                                          <?php echo $point; ?>
                                          
                                          <?php
                                            if ($F_value[2] > $F_value[3]) {

                                                ?>
                                                  <span style="color: red; font-size: 10px;"> (+0 )</span>
                                                <?php
                                                }



                                                 if ($F_value[2] < $F_value[3]) {

                                                ?>
                                                  <span style="color: #11a7ad; font-size: 10px;"> (+3 ) <i style="color:#11a7ad;" class="fa fa-sort-asc"></i></span>
                                                <?php


                                                }



                                                 if ($F_value[2] == $F_value[3]) {

                                                ?>
                                                  <span style="color: red; font-size: 10px;"> (+1 )</span>
                                                <?php
                                                }

                                            ?>

                                        </td>
                                        
                                        <td>
                                          <?php echo $gagne; ?>
                                        </td>

                                        <td><?php echo $null; ?></td>


                                        <td>
                                          <?php echo $perdre; ?></td>



                                        <td><?php echo $but_marque; ?></td>
                                        <td><?php echo $but_encaisse; ?></td>
                                        <td><?php echo $diff; ?></td>
                                    </tr>

                                <?php

                                $journeee[] = $journee; 
                                $pointt[] = $point; 
                                $but_encaissee[] = $but_encaisse;
                                $difff[] = $diff;
                         
                                  
                                }


                              }
                          
                        }


                        


                        


                            


                        ?>

                           
                                            

                       

                         

                      </tbody>
                    </table>
                  </div>
                </div>
              </div>

            </div>