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
	<?php include('header.php');?>
	<div class="jumbotron jumbotron-fluid">
    <div class="container">
	<form action="tambah_berita.php" method="post" name="form1">
		<table width="90%" border="0">
			<tr> 
				<td>Judul Berita</td>
				<td><input type="text" name="judul_berita"></td>
			</tr>
			<tr> 
				<td>Waktu Penulisan (YYYY-MM-DD)</td>
				<td><input type="text" name="waktu_penulisan"></td>
			</tr>
			<tr> 
				<td>Isi Berita</td>
				<td><textarea type="text" name="isi_berita"></textarea></td>
			</tr>
            <tr> 
				<td>Kategori</td>
				<td>
                <input type='radio' name='kategori' value='2001'>Politics</input>
                <input type='radio' name='kategori' value='2002'>Sport</input>
                <input type='radio' name='kategori' value='2003'>Health</input>
                <input type='radio' name='kategori' value='2004'>Tech</input>
                </td>
			</tr>
            
			<tr> 
				<td></td>
				<td><input type="submit" name="Submit" value="Submit"></td>
			</tr>
		</table>
	</form>
	</div>
	</div>
	
	<?php
 
	// Check If form submitted, insert form data into users table.
	if(isset($_POST['Submit'])) {
		$judul_berita = $_POST['judul_berita'];
		$waktu_penulisan = $_POST['waktu_penulisan'];
        $isi_berita = $_POST['isi_berita'];
        $id_kategori = $_POST['kategori'];
		
		// include database connection file
		$conn=mysqli_connect("localhost","root","","blog_berita");
				
		// Insert user data into table
		$result = mysqli_query($conn, "INSERT INTO konten(judul_berita,waktu_penulisan,id_kategori,isi_berita) VALUES('$judul_berita','$waktu_penulisan','$id_kategori','$isi_berita')");
		
		// Show message when user added
		echo "New Berita added successfully. <a href='index.php'>Lihat Berita</a>";
	}
	?>
</body>
</html>