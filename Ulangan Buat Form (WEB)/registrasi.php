 <!DOCTYPE html>
 <html lang="en">
 <head>
 	<meta charset="UTF-8">
 	<title>Registrasi</title>
 	<link rel="stylesheet" href="css/style.css">
 	<script src="http://localhost:35729/livereload.js" type="text/javascript" charset="utf-8" async defer></script>
 </head>
 <body>


<img src="img/bg.jpg" alt="">

<div class="container">

 	<h1>Registrasi</h1>


	<form action="" method="post">
		
		<ul>

<div class="kotakKiri">

			<li>
				<label for="username" class="username">Nama</label>
				<input type="text" name="username" id="username" class="username" placeholder="..." autocomplete="off">
			</li>

			<li>
				<label for="tempat" class="tempat">Tempat</label>
				<input type="text" name="tempat" class="tempat" id="tempat" placeholder="..." autocomplete="off">
			</li>
			
			<li>
				<label for="jeniskelamin" class="gender">Jenis Kelamin</label>
				<input type="radio" id="gender" class="gender" name="jeniskelamin" value="Laki-Laki">Laki-Laki
				<input type="radio" id="gender" class="gender" name="jenisKelamin" value="Perempuan">Perempuan
			</li>
			
			<li>
				<label for="mapel" class="mapel">Pelajaran</label>
				<input type="checkbox" id="pbo" class="mapel" name="mapel[]" value="Pemrograman Berorientasi Objek">Pemrograman Berorientasi Objek<br>
				<input type="checkbox" id="web" class="mapel" name="mapel[]" value="Website dan Perangkat Bergerak">Website dan Perangkat Bergerak

			</li>


</div>

<div class="kotakKanan">

			<li>
				<label for="NIS" class="NIS">NIS</label>
				<input type="text" name="NIS" class="NIS" id="NIS" placeholder="..." autocomplete="off">
			</li>

			<li>
				<label for="tanggal" class="tanggal">Tanggal lahir</label>
				<input type="text" name="tanggal" class="tanggal" id="tanggal" placeholder="..." autocomplete="off">
			</li>


			<li>
				<label for="jurusan" class="jurusan">Jurusan</label>
					<select name="jurusan" class="jurusan" id="jurusan">
						<option name="jurusan[]" value="">...</option>
						<option name="jurusan[]" value="Rekayasa Perangkat Lunak">Rekayasa Perangkat Lunak</option>
						<option name="jurusan[]" value="Multimedia">Multimedia</option>
						<option name="jurusan[]" value="Administrasi Perkantoran">Administrasi Perkantoran</option>
					</select>
			</li>

</div>

			<li>
				<button type="submit" name="submit">Save</button>
			</li>
		</ul>

	</form>

</div>
 	
 </body>
 </html>