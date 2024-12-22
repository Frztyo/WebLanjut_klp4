<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    try {
        // Ambil data dari form
        $kode_ruangan = $_POST['kode_ruangan'];
        $nama_ruangan = $_POST['nama_ruangan'];
        $gedung = $_POST['gedung'];
        $lantai = $_POST['lantai'];
        $jenis_ruangan = $_POST['jenis_ruangan'];
        $kapasitas = $_POST['kapasitas'];
        $keterangan = $_POST['keterangan'];

        // Query untuk menyimpan data
        $stmt = $db->prepare("INSERT INTO ruangan (kode_ruangan, nama_ruangan, gedung, lantai, jenis_ruangan, kapasitas, keterangan) VALUES (?, ?, ?, ?, ?, ?, ?)");
        $stmt->execute([$kode_ruangan, $nama_ruangan, $gedung, $lantai, $jenis_ruangan, $kapasitas, $keterangan]);

        echo "Data berhasil disimpan.";
    } catch (PDOException $e) {
        echo "Error: " . $e->getMessage();
    }
} else {
    echo "Metode tidak valid.";
}
?>