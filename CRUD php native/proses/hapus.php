<?php

require 'functions.php';

$id_barang = $_GET["id_barang"];

if (hapus($id_barang) > 0) {
    echo "
            <script>
                alert('Data berhasil dihapus');
                document.location.href='../index.php';
            </script>";
} else {

    echo "
            <script>
                alert('Data gagal dihapus');
                document.location.href='../index.php';
            </script>";
}
