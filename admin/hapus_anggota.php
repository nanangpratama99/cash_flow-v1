<?php
include 'koneksi.php';
$delete = mysqli_query($conn, "DELETE FROM konfirmasi WHERE id = '".$_GET['id']."'");

 if($delete){
	header('location: konfirmasi.php?hapus=sukses');
}
else{
		header('location: konfirmasi.php?hapus=gagal');
}

?>
