<?php 

require 'functions.php';

$siswa = query("SELECT * FROM siswa");


 ?>



 <!DOCTYPE html>
 <html>
 <head>
 	<title>PPDB FORM</title>
 </head>
 <body>
 <h1>PPDB SMP</h1>

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
	</tr>
</thead>
<tbody>

<?php $i = 1; ?>
<?php foreach ($siswa as $row) : ?>
	<tr>
		<th><?= $row["nama"] ?></th>
		<th><?= $row["nis"] ?></th>
		<th><?= $row["jenis_kelamin"] ?></th>
		<th><?= $row["tempat_lahir"] ?></th>
		<th><?= $row["tanggal_lahir"] ?></th>
		<th><?= $row["alamat"] ?></th>
		<th><?= $row["asal_sekolah"] ?></th>
		<th><?= $row["kelas"] ?></th>
		<th><?= $row["jurusan"] ?></th>
	</tr>
	<?php $i++; ?>
<?php endforeach ?>

</tbody>

</table>

<script>
window.print();
</script>
 </body>
 </html>