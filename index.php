<?php
session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    
    <title>Aplikasi Absensi Siswa</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
	<style type="text/css">
	body {
	padding-top: 40px;
	padding-bottom: 40px;
	background-color: #eee;
	background-image: url(background langit.jpg);
	}

	.form-signin {
	max-width: 330px;
	padding: 15px;
	margin: 0 auto;
	color: #006666;
	}
	.form-signin .form-signin-heading,
	.form-signin .checkbox {
	margin-bottom: 10px;
	text-align: center;
	}
	.form-signin .checkbox {
	  font-weight: normal;
	}
	.form-signin .form-control {
	  position: relative;
	  height: auto;
	  -webkit-box-sizing: border-box;
		 -moz-box-sizing: border-box;
			  box-sizing: border-box;
	  padding: 10px;
	  font-size: 16px;
	}
	.form-signin .form-control:focus {
	  z-index: 2;
	}
	.form-signin input[type="text"] {
	  margin-bottom: -1px;
	  border-bottom-right-radius: 0;
	  border-bottom-left-radius: 0;
	}
	.form-signin input[type="password"] {
	  margin-bottom: 10px;
	  border-top-left-radius: 0;
	  border-top-right-radius: 0;
	}
	</style>
	
</head>

<body background = "background.jpg">
  <link rel="stylesheet" type="text/css" href="css.css">
<center>
<div class="box"><br><br>
<img src = "logo_smk_9-removebg-preview.png" WIDTH ="170" HEIGHT = "200"><br>
<font color = "yellow">
<h2><b>APLIKASI ABSENSI SISWA</h2></b>
<h2><b>SMK NEGERI 9 SEMARANG</h2></b></font>

</div>
    <div class="container">
	<?php
	include "koneksi.php";
	
	if( isset( $_REQUEST['submit'] ) ){
		$username = $_REQUEST['username'];
		$password = $_REQUEST['password'];
		
		$sql = mysql_query("SELECT iduser,username,admin,fullname FROM user WHERE username='$username' AND password=md5('$password')");
		
		if( mysql_num_rows($sql) > 0 ){
			list($iduser,$username,$admin,$fullname) = mysql_fetch_array($sql);
			
			//session_start();
			$_SESSION['iduser'] = $iduser;
			$_SESSION['username'] = $username;
			$_SESSION['admin'] = $admin;
			$_SESSION['fullname'] = $fullname;
			
			header("Location: ./admin.php");
			die();
		} else {
			//$err = '<strong>ERROR!</strong> Username dan Password tidak ditemukan.';
			//header('Location: ./?err='.urlencode($err));
			
			$_SESSION['err'] = '<strong>ERROR!</strong> Username dan Password tidak ditemukan.';
			header('Location: ./');
			die();
		}
		
	} else {
	?>
      <form class="form-signin" method="post" action="" role="form">
		<?php
		if(isset($_SESSION['err'])){
			$err = $_SESSION['err'];
			echo '<div class="alert alert-warning alert-message">'.$err.'</div>';
		}
		?>
    
        <input type="text" name="username" class="form-control" placeholder="Username" required autofocus>
        <input type="password" name="password" class="form-control" placeholder="Password" required>
        <button class="btn btn-lg btn-primary btn-block" type="submit" name="submit">Login</button>
        <p></p>
      </form>
	  
	  
	  <font color = "black">
	  <h4><b>Copyright @Rana Salsabila</h4></font></b>
	<?php
	}
	?>
    </div> <!-- /container -->
	
	<!-- Bootstrap core JavaScript, Placed at the end of the document so the pages load faster -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
	
	<script type="text/javascript">
		$(".alert-message").alert().delay(3000).slideUp('slow');
	</script>
  </body>
</html>