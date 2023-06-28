<ul class="nav">
          <li class="nav-item">
            <a class="nav-link" href="<?= base_url("dashboard"); ?>">
              <i class="mdi mdi-home menu-icon"></i>
              <span class="menu-title">Dashboard</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
              <i class="mdi mdi-account-card-details menu-icon"></i>
              <span class="menu-title">Master Data</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="ui-basic">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item">
                  <a class="nav-link" href="<?= base_url('users'); ?>">Data Users</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="<?= base_url('dokter'); ?>">Data Dokter</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="<?= base_url('pasien'); ?>">Data Pasien</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="<?= base_url('obat'); ?>">Data Obat</a>
                </li>
              </ul>
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="<?= base_url("kunjungan"); ?>">
              <i class="mdi mdi-file-pdf menu-icon"></i>
              <span class="menu-title">Kunjungan/Berobat</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#ui-basic1" aria-expanded="false" aria-controls="ui-basic1">
              <i class="mdi mdi-file-document-box menu-icon"></i>
              <span class="menu-title">Laporan</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="ui-basic1">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item">
                  <a class="nav-link" href="<?= base_url('laporan/data_dokter'); ?>">Data Dokter</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="<?= base_url('laporan/data_pasien'); ?>">Data Pasien</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="<?= base_url('laporan/data_kunjungan'); ?>">Data Kunjungan</a>
                </li>
              </ul>
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="<?= base_url("auth/logout"); ?>">
              <i class="mdi mdi-exit-to-app menu-icon"></i>
              <span class="menu-title">Logout</span>
            </a>
          </li>
        </ul>