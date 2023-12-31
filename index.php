<?php 
  require_once ('dbcontroller.php');
  
  $db = new dbController();
  ?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Memanggil Database</title>
  <!-- Favicon -->
  <link rel="icon" type="image/x-icon" href="./img/favicon/favicon.ico">
  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
  <!-- My CSS -->
  <link rel="stylesheet" href="style.css">

</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg bg-body-tertiary sticky-top ">
  <div class="container">
    <a class="navbar-brand fw-bold" href="#">Alvaro</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#jurusan">Jurusan</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#guru">Guru</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#kelas">Kelas</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="table.php">Siswa</a>
        </li>
      </ul>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>
<!-- End Navbar -->

<!-- card -->
<div class="container" id="guru">
  <h1 class=" text-center mb-5 ">Jurusan</h1>
  <div class="row text-center justify-content-center ">
     <?php 
    $sql1 = "SELECT * FROM t_jurusan";
    $row1 = $db->getALL($sql1);
    foreach($row1 as $jurusan) :
    ?>
      <div class="card-all col-md-4 col-xl-4 mb-3">
                <div class="card" style="width: 18rem;">
                    <img src="img/jurusan/<?php echo $jurusan['f_namajurusan']; ?>.jpg" class="card-img-top" alt="Jurusan">
                    <div class="card-body">
                        <h5 class="card-title text-dark">
                            <?php echo $jurusan['f_namajurusan']; ?>
                        </h5>
                        <p class="card-text" style="font-size: 14px;">
                            <?php echo $jurusan['f_deskripsi']; ?>
                        </p>
                    </div>
                </div>
            </div>
    <?php endforeach; ?>
  </div>
</div>
<!-- card -->

<!-- card guru -->
<div class="container" id="guru">
  <h1 class=" text-center mb-5 ">Guru SMKN 40</h1>
  <div class="row text-center justify-content-center ">
     <?php 
    $sql2 = "SELECT * FROM t_guru";
    $row2 = $db->getALL($sql2);
    foreach($row2 as $guru) :
    ?>
      <div class="card mb-3" style="max-width: 540px;">
        <div class="row g-0">
        <div class="col-md-4">
          <img src="img/guru/<?php echo $guru['f_nama']; ?>.jpg " class="img-fluid rounded-start" alt="...">
        </div>
        <div class="col-md-8">
          <div class="card-body">
            <h5 class="card-title">
              <?= $guru['f_nama']; ?>
            </h5>
            <div class="card-body">
                        <p class="card-text" style="font-size: 14px;">
                            <?php echo $guru['f_deskripsi']; ?>
                        </p>
                    </div>
          </div>
        </div>
      </div>
    </div>
    <?php endforeach; ?>
  </div>
</div>
<!-- card guru -->


<!-- start footer -->
<footer>

  <div class="container-fluid text-white text-center">
  <p class="text-black"> Created by
        <a href="https://instagram.com/alvar0myzx?utm_source=qr&igshid=MzNlNGNkZWQ4Mg%3D%3D" target="_blank" class="text-black fw-bold">Alvaro</a>  
</footer>
  <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
    <script>
      AOS.init({
        once: true,
      });
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>