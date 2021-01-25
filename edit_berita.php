<?php
$id = $_GET['id'];
$conn=mysqli_connect("localhost","root","","blog_berita");

// Display selected user data based on id
// Getting id from url
// Fetch user data based on id
$sql = "SELECT * FROM konten WHERE id_konten=$id";
$result = mysqli_query($conn,$sql);
 
while($row = mysqli_fetch_array($result)){    
    echo'
	<form name="update_user" method="post" action="edit_berita.php">
		<table width="50%" border="0">
			<tr> 
				<td>Judul Berita</td>
				<td><input type="text" name="judul_berita" value="'.$row['judul_berita'].'"></td>
			</tr>
			<tr> 
				<td>Waktu Penulisan (YYYY-MM-DD)</td>
				<td><input type="text" name="waktu_penulisan" value="'.$row['waktu_penulisan'].'"></td>
			</tr>
			<tr> 
				<td>Isi Berita</td>
				<td><textarea type="text" name="isi_berita" value="'.$row['isi_berita'].'"></textarea></td>
			</tr>
            <tr> 
				<td>Kategori</td>
				<td>
                <input type="radio" name="kategori" value="2001">Politics</input>
                <input type="radio" name="kategori" value="2002">Sport</input>
                <input type="radio" name="kategori" value="2003">Health</input>
                <input type="radio" name="kategori" value="2004">Tech</input>
                </td>
			</tr>
            
			<tr> 
				<td></td>
				<td><input type="submit" name="update" value="update"></td>
			</tr>
		</table>
    </form>';
}  
?>
<?php
    // Check if form is submitted for user update, then redirect to homepage after update
    if(isset($_POST['update'])){	
        $id = $_GET['id'];
    	$judul_berita = $_POST['judul_berita'];
	    $waktu_penulisan = $_POST['waktu_penulisan'];
        $isi_berita = $_POST['isi_berita'];
        $id_kategori = $_POST['kategori'];
		
	    // update user data
	    $result = mysqli_query($conn, "UPDATE konten SET judul_berita='$judul_berita',waktu_penulisan='$waktu_penulisan',isi_berita='$isi_berita',id_kategori='$id_kategori' WHERE id=$id");
	
	    // Redirect to homepage to display updated user in list
	    header("Location: admin.php");
    }
?>