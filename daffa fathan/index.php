<?php

require 'proses/functions.php';

$siswa = query("SELECT * FROM siswa");

?>



<!DOCTYPE html>
<html>

<head>
	<title>PPDB FORM</title>
</head>

<body>
	<h1>PPDB SMP</h1>


	<a href="proses/tambah.php">Tambah</a>
	<a href="proses/cetak.php" target="_blank">cetak</a>

	<table border="1">

		<thead>
			<tr>
				<th>Nama</th>
				<th>Nis</th>
				<th>jenis kelamin</th>
				<th>tempat lahir</th>
				<th>tanggal lahir</th>
				<th>alamat</th>
				<th>asal sekolah</th>
				<th>jurusan</th>
				<th>kelas</th>
				<th>Aksi</th>
			</tr>
		</thead>
		<tbody>

			<?php $i = 1; ?>
			<?php foreach ($siswa as $row) : ?>
				<tr>
					<th><?= $row["nama"] ?></th>
					<th><?= $row["nis"] ?></th>
					<th><?= $row["jns_kelamin"] ?></th>
					<th><?= $row["temp_lahir"] ?></th>
					<th><?= $row["tgl_lahir"] ?></th>
					<th><?= $row["alamat"] ?></th>
					<th><?= $row["asal_sekolah"] ?></th>
					<th><?= $row["kelas"] ?></th>
					<th><?= $row["jurusan"] ?></th>
					<th>
						<a href="proses/edit.php?nis=<?= $row["nis"] ?>">Edit</a>
						<a href="proses/hapus.php?nis=<?= $row["nis"] ?>" onclick="return confirm('Anda yakin?')">hapus</a>
					</th>
				</tr>
				<?php $i++; ?>
			<?php endforeach ?>

		</tbody>

	</table>

</body>

</html>