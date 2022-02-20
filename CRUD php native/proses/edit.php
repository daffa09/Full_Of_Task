<?php

require 'functions.php';

$nis = $_GET["nis"];

$siswa = query("SELECT * FROM siswa WHERE nis=$nis")[0];


if (isset($_POST["submit"])) {

	if (edit($_POST) > 0) {
		echo "
			<script>
			alert('Data berhasil diedit');
			document.location.href='../index.php';
			</script>
		";
	} else {
		echo "
			<script>
			alert('Data gagal diedit');
			document.location.href='edit.php';
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


	<h1>Update</h1>

	<form action="" method="post" enctype="multipart/form-data">

		<li>
			<label for="nis">Nis Siswa</label>
			<input type="text" name="nis" id="nis" value="<?= $siswa['nis'] ?>">
		</li>
		<li>
			<label for="nama">Nama Siswa</label>
			<input type="text" name="nama" id="nama" value="<?= $siswa['nama'] ?>">
		</li>
		<li>
			<label for="jenis_kelamin">jenis Kelamin Siswa</label>
			<input type="radio" name="jenis_kelamin" id="laki-laki" <?php if ($siswa['jns_kelamin'] == 'Laki-Laki') echo 'checked' ?> value="Laki-Laki">
			<label for="laki-laki"> Laki-Laki</label>
			<input type="radio" name="jenis_kelamin" id="perempuan" <?php if ($siswa['jns_kelamin'] == 'Perempuan') echo 'checked' ?> value="Perempuan">
			<label for="perempuan"> Perempuan</label>
		</li>
		<li>
			<label for="tempat_lahir">Tempat lahir Siswa</label>
			<input type="text" name="tempat_lahir" id="tempat_lahir" value="<?= $siswa['temp_lahir'] ?>">
		</li>
		<li>
			<label for="tanggal_lahir">Tanggal lahir Siswa</label>
			<input type="date" name="tanggal_lahir" id="tanggal_lahir" value="<?= $siswa['tgl_lahir'] ?>">
		</li>
		<li>
			<label for="alamat">Alamat Siswa</label>
			<input type="text" name="alamat" id="alamat" value="<?= $siswa['alamat'] ?>">
		</li>
		<li>
			<label for="asal_sekolah">Asal Sekolah Siswa</label>
			<input type="text" name="asal_sekolah" id="asal_sekolah" value="<?= $siswa['asal_sekolah'] ?>">
		</li>
		<li>
			<label for="jurusan">Jurusan Siswa</label>
			<select name="jurusan" id="jurusan" value="<?= $siswa['jurusan'] ?>">
				<?php
				$query_jurusan = "SELECT * FROM jurusan";
				$sql_jurusan = mysqli_query($conn, $query_jurusan);
				while ($data_jurusan = mysqli_fetch_assoc($sql_jurusan)) {

					if ($siswa['jurusan'] == $data_jurusan['jurusan']) {
						$select = 'selected';
					} else {
						$select = 'selected';
					}

					echo "<option $select>" . $data_jurusan["jurusan"] . "</option>";
				}
				?>

			</select>
		</li>
		<li>
			<label for="kelas">Kelas Siswa</label>
			<input type="text" name="kelas" id="kelas" value="<?= $siswa['kelas'] ?>">
		</li>

		<button type="submit" name="submit" onclick="return confirm('Anda yakin?')">update</button>
		<br>
		<a href="../index.php">Kembali</a>
	</form>

</body>

</html>