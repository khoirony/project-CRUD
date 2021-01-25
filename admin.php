<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/style.css">
    

    <title>Liputan 69</title>
  </head>
  <body>
	<?php
	error_reporting(0);
	$conn=mysqli_connect("localhost","root","","blog_berita");
	$userName=$_GET['userName'];
	$passWord=$_GET['passWord'];
	$qry=mysqli_query( $conn,"SELECT * FROM userpassword WHERE
	userName='$userName' AND passWord='$passWord' ");
	$jumlahBaris= mysqli_num_rows($qry);
	$arrayHasil=mysqli_fetch_array($qry);

	if($jumlahBaris > 0 ){
		session_start();
		$_SESSION[uName] = $arrayHasil[userName];
		$_SESSION[pWord] = $arrayHasil[passWord];
		$_SESSION[lUser] = $arrayHasil[levelUser];

		include('header.php');
		echo '
		
    	<div class="jumbotron jumbotron-fluid">
		<div class="container"> ';
    	    if (!$conn) {
    	        die ('Gagal terhubung MySQL: ' . mysqli_connect_error());   
    	    }
        	$sql = 'SELECT* FROM konten';
    	    $query = mysqli_query($conn, $sql);
    	    if (!$query) {
    	        die ('SQL Error: ' . mysqli_error($conn));
    	    }
    	    $index=0;
			echo '
			<table class="table table-borderless">
    	    <thead>';
    	    echo '<li class="list-group-item" style="width: 300px;">Menu Admin</li>';
    	    while ($row = mysqli_fetch_array($query)){
    	        echo '
    	            <li class="list-group-item"><a href="konten.php?id='.$row['id_konten'].'" method="GET"> '.$row['judul_berita'].'</a><br/>
    	            <a href="edit_berita.php?id='.$row['id_konten'].'" method="GET">Edit</a> | <a href="hapus_berita.php?id='.$row['id_konten'].'" method="GET">Delete</a> </li>
    	            ';
    	    }
			echo '
			</thead>
    	    </table>
		</div>
    	</div>';
	}else{
		echo("Login Gagal ");
	}
	?>

	<footer>
    <div class="container text-center">
      <div class="row">
        <div class="col-sm-12 mt-3">
          <p> &copy; Copy Right 2021 PT. Liputan69 Cyber Media (Brengkok Gramedia Digital Group). All rights reserved.</p>
        </div>
      </div>
    </div>
    </footer>
    
    
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>

  </body>
</html>