<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Admin Login</title>

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body class="bg-gradient-primary">

  <div class="container">

    <!-- Outer Row -->
    <div class="row justify-content-center">

      <div class="col-xl-10 col-lg-12 col-md-9">

        <div class="card o-hidden border-0 shadow-lg my-5">
          <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">
              <div class="col-lg-2"></div>
              <div class="col-lg-8">
                <div class="p-5">
                  <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4">Silahkan Isi Datas</h1>
                  </div>
                  <form action=" " method="post" enctype="multipart/form-data">
                    <div class="form-group">
                      <input type="text" name='nidn' class="form-control form-control-user" id="exampleInputEmail" placeholder="NIDN" required>
                    </div>
                    <div class="form-group">
                      <input type="text" name='nama' class="form-control form-control-user" id="exampleInputEmail" placeholder="Nama Lengkap" required>
                    </div>
                    <div class="form-group">
                      <input type="text" name='email' class="form-control form-control-user" id="exampleInputEmail" placeholder="Email" required>
                    </div>
                    <div class="form-group">
                      <input type="text" name='username' class="form-control form-control-user" id="exampleInputEmail" placeholder="Username" required>
                    </div>
                    <div class="form-group">
                      <input type="password" name='password' class="form-control form-control-user" id="exampleInputPassword" placeholder="Password" required>
                    </div>
                    <button class="btn btn-primary btn-user btn-block" name="daftar" value="daftar">Daftar</button>

                    <hr>

                  </form>

                  <?php
                  include 'config/koneksi.php';
                  if (isset($_POST['daftar'])) {
                    $username   = ($_POST['username']);
                    $nama       = $_POST['nama'];
                    $password   = md5($_POST['password']);
                    $kode       = "2";
                    $nidn       = $_POST['nidn'];
                    $email      = $_POST['email'];

                    $user = mysqli_query($conn, "select * from admin where username='$username'");
                    $chek = mysqli_num_rows($user);
                    if ($chek > 0) {
                      echo "<div class='col-md-10 col-sm-12 col-xs-12 ml-5'>";
                      echo "<div class='alert alert-danger mt-4 ml-5' role='alert'>";
                      echo "<p><center>Username Sudah Ada</center></p>";
                      echo   "</div>";
                      echo "</div>";
                    } else {
                      $user1 = mysqli_query($conn, "select * from konfirmasi where username='$username'");
                      $chek1 = mysqli_num_rows($user1);
                      if ($chek1 > 0) {
                        echo "<div class='col-md-10 col-sm-12 col-xs-12 ml-5'>";
                        echo "<div class='alert alert-danger mt-4 ml-5' role='alert'>";
                        echo "<p><center>Username Sudah Ada</center></p>";
                      } else {
                        $sql = "INSERT INTO konfirmasi (nama,username, password,kode,nidn,email) VALUE ('$nama','$username', '$password', '$kode','$nidn','$email')";
                        $query = mysqli_query($conn, $sql);

                        // apakah query simpan berhasil?
                        if ($query) {

                          // kalau berhasil alihkan ke halaman index.php dengan status=sukses
                          header('Location: login.php');
                        } else {
                          // kalau gagal alihkan ke halaman indek.php dengan status=gagal
                          header('Location: index.php?status=daftar_gagal');
                        }
                      }
                    }
                  }
                  ?>





                </div>
              </div>
              <div class="col-lg-2"></div>
            </div>


          </div>
        </div>

      </div>


    </div>

  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin-2.min.js"></script>

</body>

</html>