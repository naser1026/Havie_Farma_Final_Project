  <!-- ======= Sidebar ======= -->
  <aside id="sidebar" class="sidebar">

    <ul class="sidebar-nav" id="sidebar-nav">

      <li class="nav-item">
        <a class="nav-link " href="<?=BASEURL?>home/index">
          <i class="bi bi-grid"></i>
          <span>Dashboard</span>
        </a>
      </li><!-- End Dashboard Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#components-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-menu-button-wide"></i><span>Master Data</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="components-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="<?=BASEURL?>masterdata/masterproduct">
              <i class="bi bi-circle"></i><span>Data Produk</span>
            </a>
          </li>
          <li>
            <a href="<?=BASEURL?>masterdata/mastercategory">
              <i class="bi bi-circle"></i><span>Data Kategori</span>
            </a>
          </li>
          <li>
            <a href="<?=BASEURL?>masterdata/masterunit">
              <i class="bi bi-circle"></i><span>Data Satuan</span>
            </a>
          </li>
          <li>
            <a href="<?=BASEURL?>masterdata/masterwarehouse">
              <i class="bi bi-circle"></i><span>Data Gudang</span>
            </a>
          </li>
          <li>
            <a href="<?=BASEURL?>masterdata/masterrack">
              <i class="bi bi-circle"></i><span>Data Rak</span>
            </a>
          </li>
          <li>
            <a href="<?=BASEURL?>masterdata/mastersuplier">
              <i class="bi bi-circle"></i><span>Data Suplier</span>
            </a>
          </li>
        </ul>
      </li><!-- End Components Nav -->

      <li class="nav-heading">Pages</li>

      <li class="nav-item">
        <a class="nav-link collapsed" href="users-profile.html">
          <i class="bi bi-ticket-perforated"></i>
          <span>Kasir</span>
        </a>
      </li><!-- End Profile Page Nav -->
      
      <li class="nav-item">
        <a class="nav-link collapsed" href="../pembeliantiket/pembeliantiket">
          <i class="bi bi-bag"></i>
          <span>Laporan</span>
        </a>
      </li><!-- End Profile Page Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" href="../masteruser/masteruser">
          <i class="bi bi-people"></i>
          <span>Master User</span>
        </a>
      </li><!-- End Profile Page Nav -->

    </ul>

  </aside><!-- End Sidebar-->