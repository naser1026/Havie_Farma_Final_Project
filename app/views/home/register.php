<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Register</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="<?=BASEURL?>img/icon.png" rel="icon">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="<?=BASEURL?>vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="<?=BASEURL?>vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="<?=BASEURL?>vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="<?=BASEURL?>vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="<?=BASEURL?>vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="<?=BASEURL?>vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="<?=BASEURL?>vendor/simple-datatables/style.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="<?=BASEURL?>css/style.css" rel="stylesheet">

</head>

<body>

  <main>
    <div class="container">

      <section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">

              <div class="d-flex justify-content-center py-4">
                <a href="index.html" class="logo d-flex align-items-center w-auto">
                  <img src="<?=BASEURL?>img/logoapotek.png" alt="">
                  <span class="d-none d-lg-block">Havie Farma</span>
                </a>
              </div><!-- End Logo -->

              <div class="card mb-3">

                <div class="card-body">

                  <div class="pt-4 pb-2">
                    <h5 class="card-title text-center pb-0 fs-4">Form Registrasi</h5>
                    <p class="text-center small">Silahkan masukan data diri anda</p>
                  </div>

                  <form class="row g-3 needs-validation" action="./backend/register" method = 'post'>
                    <div class="col-12">
                      <label for="yourName" class="form-label">Nama Lengkap</label>
                      <input type="text" name="name" class="form-control" id="yourName" required>
                    </div>

                    <div class="col-12">
                      <label for="yourEmail" class="form-label">Email</label>
                      <input type="email" name="email" class="form-control" id="yourEmail" required>
                    </div>
                    <div class="col-12">
                      <label class="form-label">No Hp</label>
                      <input type="text" name="phone_number" class="form-control"required>
                    </div>

                    <div class="col-12">
                      <label class="form-label">Jenis Kelamin</label>
                        <select name = "gender" class="form-select" aria-label="Default select example">
                          <option selected="LAKI-LAKI">Laki-laki</option>
                          <option value="PEREMPUAN">Perempuan</option>
                        </select>
                    </div>

                    <div class="col-12">
                      <label class="form-label">Alamat</label>
                      <input type = 'text' name = 'address' class="form-control" style="height: 100px">
                    </div>

                    <div class="col-12">
                      <label for="yourPassword" class="form-label">Password</label>
                      <input type="password" name="password" id="password" class="form-control" id="yourPassword" required>
                      <div class="invalid-feedback">Masukan password</div>
                    </div>

                    <div class="col-12">
                      <label for="yourPassword" class="form-label">Konfirmasi Password</label>
                      <input type="password" name="confirm" id = "confirm" class="form-control" id="yourPassword" required>
                    </div>

                    <div class="col-12">
                      <button class="btn btn-primary w-100" name = 'submit' type="submit">Create Account</button>
                    </div>
                    <div class="col-12">
                      <p class="small mb-0">Sudah punya akun? <a href="<?=BASEURL?>home/login;">Log in</a></p>
                    </div>
                  </form>

                </div>
              </div>

            </div>
          </div>
        </div>

      </section>

    </div>
  </main><!-- End #main -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="<?=BASEURL?>vendor/apexcharts/apexcharts.min.js"></script>
  <script src="<?=BASEURL?>vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="<?=BASEURL?>vendor/chart.js/chart.umd.js"></script>
  <script src="<?=BASEURL?>vendor/echarts/echarts.min.js"></script>
  <script src="<?=BASEURL?>vendor/quill/quill.min.js"></script>
  <script src="<?=BASEURL?>vendor/simple-datatables/simple-datatables.js"></script>
  <script src="<?=BASEURL?>vendor/tinymce/tinymce.min.js"></script>
  <script src="<?=BASEURL?>vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="<?=BASEURL?>js/main.js"></script>

</body>

</html>