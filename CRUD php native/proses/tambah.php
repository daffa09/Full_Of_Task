<?php

require 'functions.php';

if (isset($_POST["submit"])) {

    if (tambah($_POST) > 0) {
        echo "
            <script>
                alert('Data berhasil ditambah');
                document.location.href='../index.php';
            </script>";
    } else {

        echo "
            <script>
                alert('Data gagal ditambah');
                document.location.href='tambah.php';
            </script>";
    }
}

?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tambah Barang</title>
</head>

<body>

    <h1>Tambah barang</h1>

    <form action="" method="post" enctype="multipart/form-data" id="tambah">
        <li>
            <label for="nama">nama Barang</label>
            <input type="text" name="nama" id="nama">
        </li>
        <li>
            <label for="stok">Stok barang</label>
            <input type="text" name="stok" id="stok">
        </li>

        <button type="submit" name="submit" onclick="return confirm('Anda yakin?')">Kirim</button>
        <br>
        <button onclick="reset()">Reset</button>
    </form>

    <script>
        function reset() {
            document.getElementById("tambah").reset();
        }
    </script>
</body>

</html>