
<?php
// tenging í gagnagrunninn
try{
	//  82.148.66.15   GRU_H5   foxyboxy1337
	$pdo = new PDO('mysql:host=10.200.10.24;dbname=gru_h5_movies', 'GRU_H5', 'foxyboxy1337');

	$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

	$pdo->exec('SET NAMES "utf8"');

}

catch (PDOException $e){
	
	echo "tenging tókst ekki". "<br>" . $e->getMessage();
	exit();
}
 $status = "Tenging tókst";
?>