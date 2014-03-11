
<?php
// tenging í gagnagrunninn
try{
	$pdo = new PDO('mysql:host=localhost;dbname=gru_h5_movies', 'root', '');

	$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

	$pdo->exec('SET NAMES "utf8"');

}

catch (PDOException $e){
	
	echo "tenging tókst ekki". "<br>" . $e->getMessage();
	exit();
}
 $status = "Tenging tókst";
?>