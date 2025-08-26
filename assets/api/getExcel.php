<?php
include '../../vendor/autoload.php';
include '../../element/config.php';
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

$tanggalQuery = $conn->query("SELECT DISTINCT tanggal FROM absen ORDER BY tanggal DESC");

$spreadsheet = new Spreadsheet();
$spreadsheet->removeSheetByIndex(0); // Hapus default sheet

while ($rowTanggal = $tanggalQuery->fetch_assoc()) {
    $tanggal = $rowTanggal['tanggal'];
    
    // Buat sheet baru per tanggal
    $sheet = $spreadsheet->createSheet();
    $sheet->setTitle(date('M-d', strtotime($tanggal))); 
    
    // Header
    $sheet->setCellValue('A1', 'No');
    $sheet->setCellValue('B1', 'Nama');
    $sheet->setCellValue('C1', 'Kelas');
    $sheet->setCellValue('D1', 'Tanggal');

    // Ambil data siswa berdasarkan tanggal
    $absenQuery = $conn->query("SELECT nama, tanggal FROM absen WHERE tanggal = '$tanggal'");

    $rowIndex = 2;
    $no = 1;
    while ($data = $absenQuery->fetch_assoc()) {
        $nama = $data['nama'];
        $getKelas = $conn->query("SELECT kelas FROM anggota WHERE nama = '$nama'");
        while($x = $getKelas->fetch_assoc()){
        $sheet->setCellValue("A$rowIndex", $no++);
        $sheet->setCellValue("B$rowIndex", $nama);
        $sheet->setCellValue("C$rowIndex", $x['kelas']);
        $sheet->setCellValue("D$rowIndex", $data['tanggal']);
        $rowIndex++;
        }
    }
}

$spreadsheet->setActiveSheetIndex(0);

// Export ke Excel
header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
header('Content-Disposition: attachment;filename="absensi_'.date("Y-m-d h:i:sa").'.xlsx"');
header('Cache-Control: max-age=0');

$writer = new Xlsx($spreadsheet);
$writer->save('php://output');
?>
