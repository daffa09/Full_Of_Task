<?php

require 'functions.php';



if (isset($_POST["submit"])) {


	if (tambah($_POST) > 0) {
		echo "
			<script>
				alert('Data berhasil ditambah');
				document.location.href='../index.php';
			</script>
		";
	} else {
		echo "
			<script>
				alert('Data gagal ditambah');
				document.location.href='tambah.php';
			</script>
		";
	}
}

?>


<!DOCTYPE html>
<html>

<head>
	<title>PPDB Siswa</title>
</head>

<body>


	<h1>Daftar</h1>

	<form action="" method="post" enctype="multipart/form-data" id="tambah">
		<li>
			<label for="nis">Nis Siswa</label>
			<input type="text" name="nis" id="nis">
		</li>
		<li>
			<label for="nama">Nama Siswa</label>
			<input type="text" name="nama" id="nama">
		</li>
		<li>
			<label for="jenis_kelamin">jenis Kelamin Siswa</label>
			<input type="radio" name="jenis_kelamin" id="laki-laki" value="Laki-Laki">
			<label for="laki-laki"> Laki-Laki</label>
			<input type="radio" name="jenis_kelamin" id="perempuan" value="Perempuan">
			<label for="perempuan"> Perempuan</label>
		</li>
		<li>
			<label for="tempat_lahir">Tempat lahir Siswa</label>
			<input type="text" name="tempat_lahir" id="tempat_lahir">
		</li>
		<li>
			<label for="tanggal_lahir">Tanggal lahir Siswa</label>
			<input type="date" name="tanggal_lahir" id="tanggal_lahir">
		</li>
		<li>
			<label for="alamat">Alamat Siswa</label>
			<input type="text" name="alamat" id="alamat">
		</li>
		<li>
			<label for="asal_sekolah">Asal Sekolah Siswa</label>
			<input type="text" name="asal_sekolah" id="asal_sekolah">
		</li>
		<li>
			<label for="jurusan">Jurusan Siswa</label>
			<select name="jurusan" id="jurusan">
				<option value="#" selected>Pilih jurusan..</option>
				<option value="Multimedia">Multimedia</option>
				<option value="Rekayasa Perangkat Lunak">Rekayasa Perangkat Lunak</option>
				<option value="Administrasi Perkantoran">Administrasi Perkantoran</option>
			</select>
		</li>
		<li>
			<label for="kelas">Kelas Siswa</label>
			<input type="text" name="kelas" id="kelas">
		</li>

		<button type="" name="submit" onclick="return confirm('Anda yakin?')">Daftar</button>
		<br>
		<button onclick="reset()">Clear Input</button>
		<br>
		<a href="../index.php">Kembali</a>
	</form>

	<script>
		function reset() {
			document.getElementById("tambah").reset();
		}
	</script>
</body>

</html>