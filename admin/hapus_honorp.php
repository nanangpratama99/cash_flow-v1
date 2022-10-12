<?php
include 'koneksi.php';
$delete = mysqli_query($conn, "DELETE FROM konfir_honor WHERE id = '".$_GET['id']."'");

 if($delete){
	header('location: konfir_honor.php?hapus=sukses');
}
else{
		header('location: konfir_honor.php?hapus=gagal');
}

?>
