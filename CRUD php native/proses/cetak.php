<?php

require 'functions.php';

$barang = query("SELECT * FROM `barang`");

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inventory sederhana</title>
</head>

<body>


    <h1>Inventory sederhana</h1>

    <a href="proses/tambah.php">Tambah</a>
    <a href="#">Cetak</a>

    <table border="1">
        <thead>
            <tr>
                <th>No Barang</th>
                <th>Nama barang</th>
                <th>Jumlah barang</th>
                <th>Aksi</th>
            </tr>
        </thead>
        <tbody>
            <?php $i = 0; ?>
            <?php foreach ($barang as $brg) : ?>
                <tr>
                    <th><?= $brg["id_barang"]; ?></th>
                    <th><?= $brg["nama_barang"]; ?></th>
                    <th><?= $brg["stok"]; ?></th>
                    <th>
                        <a href="proses/edit.php?id_barang=<?= $brg["id_barang"] ?>">Edit</a>
                        <a href="proses/hapus.php?id_barang=<?= $brg["id_barang"] ?>" onclick="return confirm('Anda yakin?')">Hapus</a>
                    </th>
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