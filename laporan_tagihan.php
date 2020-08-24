<?php
if( empty( $_SESSION['iduser'] ) ){
   //session_destroy();
   $_SESSION['err'] = '<strong>ERROR!</strong> Anda harus login terlebih dahulu.';
   header('Location: ./');
   die();
} else {
   if( isset( $_REQUEST['aksi'] )){
      $aksi = $_REQUEST['aksi'];
      switch($aksi){
         case 'baru':
            include 'siswa_baru.php';
            break;
         case 'edit':
            include 'siswa_edit.php';
            break;
         case 'hapus':
            include 'siswa_hapus.php';
            break;
      }
   } else {
      $sql = mysql_query("SELECT * FROM siswa ORDER BY nis");
      echo '<h2>Cetak Absensi Siswa</h2><hr>';
       echo '<a class="noprint pull-right btn btn-default" onclick="fnCetak()"><span class="glyphicon glyphicon-print" aria-hidden="true"></span> Cetak</a>';
      echo '<div class="row">';
      echo '<div class="col-md-9"><table class="table table-bordered">';
      echo '<tr class="info"><th>#</th><th width="100">NIS</th><th>Tanggal</th><th>Nama Lengkap</th><th>Kelas</th><th>Prodi</th><th>Keterangan</th>';
   
      
      if( mysql_num_rows($sql) > 0 ){
         $no = 1;
         while(list($nis,$tanggal,$nama,$kelas,$idprodi,$keterangan) = mysql_fetch_array($sql)){
            echo '<tr><td>'.$no.'</td>';
            echo '<td>'.$nis.'</td>';
            echo '<td>'.$tanggal.'</td>';
            echo '<td>'.$nama.'</td>';
             echo '<td>'.$kelas.'</td>';
            $qprodi = mysql_query("SELECT prodi FROM prodi WHERE idprodi='$idprodi'");
            list($prodi) = mysql_fetch_array($qprodi);
            echo '<td>'.$prodi.'</td>';
            echo '<td>'.$keterangan.'</td>';
           
            echo '</tr>';
            $no++;
         }
      } else {
         echo '<tr><td colspan="5"><em>Belum ada data</em></td></tr>';
      }
      
      echo '</table></div></div>';
   }
}
?>