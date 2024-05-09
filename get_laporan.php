<?php
// Koneksi ke database
$database = new mysqli('localhost', 'root', '', 'desa_tanggap');
// Cek koneksi database
if ($database->connect_error) {
    die('Koneksi database gagal: ' . $database->connect_error);
}
// Query untuk mengambil data laporan
$sql = "SELECT * FROM laporan";

// menyimpan hasil query ke dalam var. hasil
$hasil = $database->query($sql);

// deklarasi var laporans untuk menyimpan data laporan
$laporans = array();

// menyimpan data laporan ke dalam 
while ($row = $hasil->fetch_assoc()) {
    $laporans[] = $row;
}

// encode ke json
$laporan = json_encode($laporans);

// menyimpan data yang sudah di encode ke dalam file laporan.json
file_put_contents('laporans.json', $laporan);

// menampilkan json
echo $laporan;