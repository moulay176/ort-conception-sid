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

?>