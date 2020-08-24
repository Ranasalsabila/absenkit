<?php
if( empty( $_SESSION['iduser'] ) ){
	//session_destroy();
	$_SESSION['err'] = '<strong>ERROR!</strong> Anda harus login terlebih dahulu.';
	header('Location: ./');
	die();
} else {
	if( isset( $_REQUEST['submit'] )){
		$nis = $_REQUEST['nis'];
		$tanggal = $_REQUEST['tanggal'];
		$nama = $_REQUEST['nama'];
		$kelas = $_REQUEST['kelas'];
		$idprodi = $_REQUEST['idprodi'];
		$keterangan = $_REQUEST['keterangan'];
		
		$sql = mysql_query("UPDATE siswa SET tanggal='$tanggal', nama='$nama', kelas='$kelas', idprodi='$idprodi', keterangan='$keterangan' WHERE nis='$nis'");
		
		if($sql > 0){
			header('Location: ./admin.php?hlm=master&sub=siswa');
			die();
		} else {
			echo 'ERROR! Periksa penulisan querynya.';
		}
	} else {
		$nis = $_REQUEST['nis'];
		$sql = mysql_query("SELECT * FROM siswa WHERE nis='$nis'");
		list($nis,$tanggal,$nama,$kelas,$idprodi,$keterangan) = mysql_fetch_array($sql);
?>
<h2>Edit Data Siswa</h2>
<hr>
<form method="post" action="admin.php?hlm=master&sub=siswa&aksi=edit" class="form-horizontal" role="form">
	<div class="form-group">
		<label for="nis" class="col-sm-2 control-label">NIS</label>
		<div class="col-sm-2">
			<input type="text" class="form-control" id="nis" name="nis" value="<?php echo $nis; ?>" readonly>
		</div>
	</div>
	<div class="form-group">
		<label for="tanggal" class="col-sm-2 control-label">Tanggal</label>
		<form class="form-inline" role="form" method="post" action="">
  	<div class="col-sm-3">
    <label class="sr-only" for="tgl1">Tanggal</label>
    <input type="date" class="form-control" id="tanggal" name="tanggal">
		</div>
	</div>
	<div class="form-group">
		<label for="nama" class="col-sm-2 control-label">Nama Siswa</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" id="nama" name="nama" value="<?php echo $nama; ?>">
		</div>
	</div>
	<div class="form-group">
		<label for="kelas" class="col-sm-2 control-label">Kelas</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" id="kelas" name="kelas" value="<?php echo $kelas; ?>">
		</div>
	</div>
	<div class="form-group">
		<label for="prodi" class="col-sm-2 control-label">Program Studi</label>
		<div class="col-sm-4">
			<select name="idprodi" class="form-control">
			<?php
			$qprodi = mysql_query("SELECT * FROM prodi ORDER BY idprodi");
			while(list($id,$prodi)=mysql_fetch_array($qprodi)){
				echo '<option value="'.$id.'"';
				echo ($id==$idprodi) ? 'selected' : '';
				echo '>'.$prodi.'</option>';
			}
			?>
			</select>
		</div>
	</div>
	<div class="form-group">
		<label for="keterangan" class="col-sm-2 control-label">Keterangan</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" id="keterangan" name="keterangan" value="<?php echo $keterangan; ?>">
		</div>
	</div>
	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
			<button type="submit" name="submit" class="btn btn-default">Simpan</button>
			<a href="./admin.php?hlm=master&sub=siswa" class="btn btn-link">Batal</a>
		</div>
	</div>
</form>
<?php
	}
}
?>