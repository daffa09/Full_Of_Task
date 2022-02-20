<?php


$conn = mysqli_connect("localhost", "root", "", "uprakkelas12");


function query($query)
{

	global $conn;
	$rows = [];
	$result = mysqli_query($conn, $query);
	while ($row = mysqli_fetch_array($result)) {
		$rows[] = $row;
	}

	return $rows;
}


function tambah($data)
{

	global $conn;

	$nis = $data["nis"];
	$nama = $data["nama"];
	$jenis_kelamin = $data["jns_kelamin"];
	$tempat_lahir = $data["temp_lahir"];
	$tanggal_lahir = $data["tgl_lahir"];
	$alamat = $data["alamat"];
	$asal_sekolah = $data["asal_sekolah"];
	$jurusan = $data["jurusan"];
	$kelas = $data["kelas"];

	mysqli_query($conn, "INSERT INTO `siswa` VALUES('$nis', '$nama', '$jenis_kelamin', '$tempat_lahir', '$tanggal_lahir', '$alamat', '$asal_sekolah', '$kelas', '$jurusan')");

	mysqli_affected_rows($conn);


	return $conn;
}

function hapus($nis)
{

	global $conn;

	mysqli_query($conn, "DELETE FROM siswa WHERE nis=$nis");

	return $conn;
}

function edit($data)
{

	global $conn;

	$nis = $data["nis"];
	$nama = $data["nama"];
	$jenis_kelamin = $data["jns_kelamin"];
	$tempat_lahir = $data["temp_lahir"];
	$tanggal_lahir = $data["tgl_lahir"];
	$alamat = $data["alamat"];
	$asal_sekolah = $data["asal_sekolah"];
	$jurusan = $data["jurusan"];
	$kelas = $data["kelas"];

	mysqli_query($conn, "UPDATE siswa SET 
					nis = '$nis',
 						nama = '$nama',
 	 						jenis_kelamin = '$jenis_kelamin`',
 	 						tempat_lahir = '$tempat_lahir',
 	 						tanggal_lahir = '$tanggal_lahir',
 	 						alamat = '$alamat',
 	 						asal_sekolah = '$asal_sekolah',
 	 						jurusan = '$jurusan',
 	 						kelas = '$kelas'
 	 						WHERE nis=$nis
 	 					");


	return mysqli_affected_rows($conn);
}
