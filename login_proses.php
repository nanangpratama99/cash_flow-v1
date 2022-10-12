<?php
include 'config/koneksi.php';
if(isset($_POST['login'])){
    $username   = addslashes($_POST['username']);
    $pass       = md5($_POST['password']);

    $user = mysqli_query($conn, "select * from admin where username='$username' and password='$pass'");
    $chek = mysqli_num_rows($user);
    if($chek>0)
    {
  	 session_start();
     $row = mysqli_fetch_array($user);
     $_SESSION['password'] = $row['password'];
     $_SESSION['kode'] = $row['kode'];
     if($row['kode']==1){
         header("location: admin/admin.php");
    }else{
         header("location: index.php");
    }
   

    }else{
     header("location: login.php?pesan=gagal");


    }
}
if(isset($_POST['daftar'])){
    header('Location: daftar_akun.php');
}
/*if(isset($_POST['daftar'])){
 $username = $_POST['username'];
 $password = md5($_POST['password']);
 $kode = "2";
  // buat query
  $sql = "INSERT INTO admin (username, password,kode) VALUE ('$username', '$password', '$kode')";
  $query = mysqli_query($conn, $sql);

  // apakah query simpan berhasil?
 if( $query ) {

    // kalau berhasil alihkan ke halaman index.php dengan status=sukses
    header('Location: login.php');

 } else {
    // kalau gagal alihkan ke halaman indek.php dengan status=gagal
    header('Location: index.php?status=daftar_gagal');

 }
}*/
?>
