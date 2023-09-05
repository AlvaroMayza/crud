<!-- Table -->
<section id="siswa">
<div class="row text-center mb-3">
          <div class="col"><h2>Siswa</h2></div>
     </div>

<div class="row justify-content-center mb-5">
  <div class="col-8">
<table class="table">
  <thead>
    <tr>
      <th scope="col">No</th>
      <th scope="col">Nama</th>
      <th scope="col">Kelas</th>
      <th scope="col">Jurusan</th>
    </tr>
  </thead>
  <tbody class="table-group-divider">
    
    <!-- Query data siswa -->
  <?php
    $i=1;
    $sql = "select f_nama, f_idkelas, f_idjurusan from t_siswa";
    $row = $db->getALL($sql);
    foreach ($row as $siswa) :
    
?>  
    <tr>
      <th scope="row">
      <?php echo $i++; ?>
      </th>
      <td><?php echo $siswa['f_nama']?></td>
      <td><?php echo $siswa['f_idkelas']?></td>
      <td><?php echo $siswa['f_idjurusan']?></td>
    </tr>
  <?php endforeach ?>

  </tbody>
</table>
</div>
</section>
<!-- End table -->