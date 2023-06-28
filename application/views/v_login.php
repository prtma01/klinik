

<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>Klinik Pontianak</title>
    <link rel="stylesheet" href="<?= base_url('assets/vendors/mdi/css/materialdesignicons.min.css'); ?>" />
    <link rel="stylesheet" href="<?= base_url('assets/vendors/flag-icon-css/css/flag-icon.min.css'); ?>" />
    <link rel="stylesheet" href="<?= base_url('assets/vendors/css/vendor.bundle.base.css'); ?>" />
    <link rel="stylesheet" href="<?= base_url('assets/vendors/select2/select2.min.css'); ?>" />
    <link rel="stylesheet" href="<?= base_url('assets/vendors/select2-bootstrap-theme/select2-bootstrap.min.css'); ?>" />
    <link rel="stylesheet" href="<?= base_url('assets/css/style.css'); ?>" />
    <link rel="shortcut icon" href="<?= base_url('assets/images/logo-anggrek.jpeg'); ?>" />
  </head>
  <body style="background-image: url('<?= base_url('/assets/images/bg_login.png'); ?>'); background-size: cover;">
    <div class="d-flex flex-column justify-content-center align-items-center" style="min-height:100vh;">
      <div class="card">
        <div class="card-body">
          <h1>Klinik Anggrek</h1>
          <div style="color:red;">
            <?= validation_errors(); ?>
          </div>
          <form action="<?= base_url('auth/login_aksi'); ?>" method="post">
            <div class="form-group">
              <label for="username">Username</label>
              <input type="text" name="username" class="form-control" placeholder="Isi Username">
            </div>
            <div class="form-group">
              <label for="password">Password</label>
              <input name="password" type="password" class="form-control" placeholder="Isi Password">
             </div>
            <div class="form-group">
              <button class="btn btn-primary" type="submit">Kirim</button>
            </div>
          </form>
        </div>
      </div>
    </div>
    <!-- container-scroller -->
    <script src="<?= base_url('assets/vendors/js/vendor.bundle.base.js'); ?>"></script>
  </body>
</html>