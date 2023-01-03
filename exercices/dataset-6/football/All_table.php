 <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <form method="get" action="journee.php">
                  <input type="text" name="jrs">
                  <input type="submit" name="submit">
                </form>
              </div>
  </div>
<div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Résultat de la saison <small>2020 - 2021</small></h2>
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
                          <th>Rang</th>
                          <th>Equipe</th>
                          <th>Pts</th>
                          <th>J</th>
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

                      foreach($teams as $keyt)
                      {

                        $point=0;
                        $journee=0;
                        $gagne=0;
                        $null=0;
                        $perdre=0;
                        $but_marque=0;
                        $but_encaisse=0;
                        $o=$keyt;
                        $i=0;
                      
                           


                    ?>

                            


                        <?php
                        foreach($csvs as $key2 => $F_value)
                        {
                          $i=0;
                          $p=$F_value[0];
                          $pp=$F_value[1];
                          $y=$o;
                          //var_dump($y); die();
                          if(($p == $y) or ($pp == $y))


                              {
                                // je gere les match a domicile
                                if ($p == $y) 
                                {

                                  $i=$i +1;

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
                                  
                                }



                                // je gere les match a exterieur
                                if ($pp == $y) 
                                {

                                  $i=$i +1;
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
                                  
                                }


                              }


                        }


                        $diff = $but_marque - $but_encaisse;


                            $clubb[] = $o;
                            $pointt[] = $point; 
                            $but_marquee[] = $but_marque; 
                            $but_encaissee[] = $but_encaisse;
                         


                        ?>

                             <tr>
                                  <td></td>
                                  <td><a href="club.php?teams=<?php echo $o; ?>"><?php echo $o; ?></a></td>
                                  <td><?php echo $point; ?></td>
                                  <td><a href="journee.php?jrs=<?php echo $journee; ?>"><?php echo $journee; ?></td>
                                  <td><?php echo $gagne; ?></td>
                                  <td><?php echo $null; ?></td>
                                  <td><?php echo $perdre; ?></td>
                                  <td><?php echo $but_marque; ?></td>
                                  <td><?php echo $but_encaisse; ?></td>
                                  <td><?php echo $diff; ?></td>
                              </tr>
                                            

                       

                            <?php   
                                 

                            } 

                            
                          ?>

                      </tbody>
                    </table>
                  </div>
                </div>
              </div>

            </div>