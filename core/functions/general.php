<?php 
function output_errors($errors) {
	return '<ul><li>' . implode('</li><li>', $errors) . '</li></ul>';
}

function output_as_li($li) {
	return '<li>' . implode('</li><li>', $li) . '</li>';
}






 ?>



