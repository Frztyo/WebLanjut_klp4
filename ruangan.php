<?php
include 'admin/config.php';

try {
    $stmt = $db->prepare("SELECT * FROM ruangan");
    $stmt->execute();
    $ruangan = $stmt->fetchAll(PDO::FETCH_ASSOC);
} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
    exit;
}
?>

<h2>Data Ruangan</h2>
<table id="example" class="table table-bordered">
    <thead>
        <tr>
            <th>No</th>
            <th>Kode Ruangan</th>
            <th>Nama Ruangan</th>
            <th>Gedung</th>
            <th>Lantai</th>
            <th>Jenis Ruangan</th>
            <th>Kapasitas</th>
            <th>Keterangan</th>
        </tr>
    </thead>
    <tbody>
        <?php
        $no = 1;
        foreach ($ruangan as $data) {
        ?>
            <tr>
                <td><?php echo $no ?></td>
                <td><?= $data['kode_ruangan'] ?></td>
                <td><?= $data['nama_ruangan'] ?></td>
                <td><?= $data['gedung'] ?></td>
                <td><?= $data['lantai'] ?></td>
                <td><?= $data['jenis_ruangan'] ?></td>
                <td><?= $data['kapasitas'] ?></td>
                <td><?= $data['keterangan'] ?></td>
            </tr>
        <?php
            $no++;
        }
        ?>
    </tbody>
</table>

