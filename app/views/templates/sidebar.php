<!-- ======= Sidebar ======= -->
<aside id="sidebar" class="sidebar">

  <ul class="sidebar-nav" id="sidebar-nav">

    <li class="nav-item">
      <a class="nav-link " href="<?= BASEURL ?>home/index">
        <i class="bi bi-grid"></i>
        <span>Dashboard</span>
      </a>
    </li><!-- End Dashboard Nav -->

    <li class="nav-item">
      <a class="nav-link collapsed" data-bs-target="#components-nav" data-bs-toggle="collapse" href="#">
        <i class="bi bi-bookmark-fill"></i><span>Master Data</span><i class="bi bi-chevron-down ms-auto"></i>
      </a>
      <ul id="components-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
        <li>
          <a href="<?= BASEURL ?>masterdata/masterproduct">
            <i class="bi bi-circle"></i><span>Master Produk</span>
          </a>
        </li>
        <li>
          <a href="<?= BASEURL ?>masterdata/masterunit">
            <i class="bi bi-circle"></i><span>Master Unit</span>
          </a>
        </li>

        <li>
          <a href="<?= BASEURL ?>masterdata/masterfactory">
            <i class="bi bi-circle"></i><span>Master Pabrik</span>
          </a>
        </li>

        <li>
          <a href="<?= BASEURL ?>masterdata/mastersuplier">
            <i class="bi bi-circle"></i><span>Master Suplier</span>
          </a>
        </li>

      </ul>

    </li>

    <li class="nav-item">
      <a class="nav-link collapsed" data-bs-target="#components-nav-product" data-bs-toggle="collapse" href="#">
        <i class="ri-send-plane-fill"></i><span>Barang</span><i class="bi bi-chevron-down ms-auto"></i>
      </a>
      <ul id="components-nav-product" class="nav-content collapse " data-bs-parent="#sidebar-nav">
        <li>
          <a href="<?= BASEURL ?>masterdata/masterproduct">
            <i class="bi bi-circle"></i><span>Retur Produk</span>
          </a>
        </li>
        <li>
          <a href="<?= BASEURL ?>masterdata/masterunit">
            <i class="bi bi-circle"></i><span>Stok Opname</span>
          </a>
        </li>

        <li>
          <a href="<?= BASEURL ?>purchase/index">
            <i class="bi bi-circle"></i><span>Penerimaan Produk</span>
          </a>
        </li>

      </ul>

    </li>

    <li class="nav-heading">Pages</li>

    <li class="nav-item">
      <a class="nav-link collapsed" href="<?=BASEURL?>cashier">
        <i class="bi bi-cart-fill"></i>
        <span>Kasir</span>
      </a>
    </li><!-- End Profile Page Nav -->

    <li class="nav-item">
      <a class="nav-link collapsed" href="../pembeliantiket/pembeliantiket">
        <i class="bi bi-book-half"></i>
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