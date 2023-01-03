<?php 
$file0 =file('football/random-score-Angers.csv');
$file1 =file('football/random-score-Bordeaux.csv');
$file2 =file('football/random-score-Brest.csv');
$file3 =file('football/random-score-Clermont.csv');
$file4 =file('football/random-score-Lens.csv');
$file5 =file('football/random-score-Lille.csv');
$file6 =file('football/random-score-Lorient.csv');
$file7 =file('football/random-score-Lyon.csv');
$file8 =file('football/random-score-Marseille.csv');
$file9 =file('football/random-score-Metz.csv');
$file10 =file('football/random-score-Monaco.csv');
$file11 =file('football/random-score-Montpellier.csv');
$file12 =file('football/random-score-Nantes.csv');
$file13 =file('football/random-score-Paris-SG.csv');
$file14 =file('football/random-score-Reims.csv');
$file15 =file('football/random-score-Rennes.csv');
$file16 =file('football/random-score-Saint-Etienne.csv');
$file17 =file('football/random-score-Strasbourg.csv');
$file18 =file('football/random-score-Troyes.csv');

$play = array_merge($file0, $file1, $file2, $file3, $file4, $file5, $file6, $file7, $file8, $file9, $file10, $file11, $file12, $file13, $file14, $file15, $file16, $file17,$file18);
$teams =array('Paris-SG', 'Rennes','Marseille', 'Nice','Lens', 'Brest','Lille','Strasbourg','Monaco', 'Angers','Montpellier', 'Lyon','Nantes','Reims','Troyes', 'Lorient','Clermont', 'Bordeaux','Metz','Saint-Etienne');




foreach($play as $data)
{
$csvs[] = explode(',',$data);
}




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
		//var_dump($o); die();
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

			 			//echo '<pre>';
						//echo $F_value[0];
						//echo ' vs ';
						//echo $F_value[1];
						//echo '</pre>';



					}


					

			//die();
		}
		
			echo '<pre>';
						echo '<b>';
						echo ' - ';
						echo $o;
						echo '</b>';
						echo ' : ';

						echo '<b>';
						echo ' point(s) : ';
						echo '</b>';
						echo $point;


						echo '<b>';
						echo ' / journee : ';
						echo '</b>';
						echo $journee;



						echo '<b>';
						echo ' / G(s) : ';
						echo '</b>';
						echo $gagne;


						echo '<b>';
						echo ' / N : ';
						echo '</b>';
						echo $null;


						echo '<b>';
						echo ' P : ';
						echo '</b>';
						echo $perdre;


						echo '<b>';
						echo ' / but_marque : ';
						echo '</b>';
						echo $but_marque;
						echo '</pre>';			

		//die();
	
	}
	 
	

	
		


?>