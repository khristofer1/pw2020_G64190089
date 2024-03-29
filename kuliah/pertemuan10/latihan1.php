<?php
// Koneksi ke DB & pilih DB
$conn = mysqli_connect('localhost', 'root', '', 'phpdasar');

// Query isi tabel mahasiswa
$result = mysqli_query($conn, "SELECT * FROM mahasiswa");

// ubah data ke dalam bentuk array
// $row = mysqli_fetch_row($result);    // array numerik
// $row = mysqli_fetch_assoc($result);     // array asosiatif
// $row = mysqli_fetch_array($result);     // keduanya
$rows = [];
while ($row = mysqli_fetch_assoc($result)) {
    $rows[] = $row;
}

// tampung ke variabel mahasiswa
$mahasiswa = $rows;
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Daftar Mahasiswa</title>
    <style>
        img {
            height: 60px;
        }
    </style>
</head>

<body>
    <h3>Daftar Mahasiswa</h3>

    <table border="1" cellpadding="10" cellspacing="0">
        <tr>
            <th>#</th>
            <th>Gambar</th>
            <th>NRP</th>
            <th>Nama</th>
            <th>Email</th>
            <th>Jurusan</th>
            <th>Aksi</th>
        </tr>
        <?php $i = 0;
        foreach ($mahasiswa as $m): ?>
        <tr>
            <td><?= ++$i; ?></td>
            <td><img src="img/<?= $m['gambar']; ?>"></td>
            <td><?= $m['nim']; ?></td>
            <td><?= $m['nama']; ?></td>
            <td><?= $m['email']; ?></td>
            <td><?= $m['jurusan']; ?></td>
            <td>
                <a href="">ubah</a> | <a href="">hapus</a>
            </td>
        </tr>
        <?php endforeach; ?>
    </table>
</body>

</html>