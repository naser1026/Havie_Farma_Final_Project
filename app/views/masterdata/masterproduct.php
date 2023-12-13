<main id="main" class="main">
    <div class="pagetitle">
        <h1>Master Data</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="dashboard.php">Home</a></li>
                <li class="breadcrumb-item active">Dashboard</li>
            </ol>
        </nav>
    </div><!-- End Page Title -->

    <section class="section masterdata">
        <div class="row">


            <!-- Start Ngoding Disini -->
            <div class='addproduct'>
                <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                    data-bs-target="#staticBackdrop">Tambah Produk</button>
                <br><br>
            </div>

            <table id="product" class="table table-striped " border="2" style="width:100%">
                <thead class="thead-primary">
                    <tr>
                        <th>#</th>
                        <th>No Lot</th>
                        <th>Nama Produk</th>
                        <th>Harga</th>
                        <th>Kategori</th>
                        <th>Gudang</th>
                        <th>Rak</th>
                        <th>Suplier</th>
                        <th>Stok</th>
                        <th>Tanggal Kadaluarsa</th>
                        <th>Gambar Produk</th>
                        <th>Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    <?php

                    $products = $data['product'];
                    $no = 1;
                    foreach ($products as $row):
                        ?>
                        <tr>
                            <td>
                                <?= $no++; ?>
                            </td>
                            <td>
                                <?= $row['id_product_tmp']; ?>
                            </td>
                            <td>
                                <?= $row['name_tmp']; ?>
                            </td>
                            <td>
                                <?= $row['selling_price_tmp']; ?>
                            </td>
                            <td>
                                <?= $row['id_category_tmc'] ?>
                            </td>
                            <td>
                                <?= $row['id_warehouse_tmw']; ?>
                            </td>
                            <td>
                                <?= $row['id_rack_tmr']; ?>
                            </td>
                            <td>
                                <?= $row['id_suplier_tms']; ?>
                            </td>
                            <td>
                                <?= $row['stock_tmp']; ?>
                            </td>
                            <td>
                                <?= $row['expired_date_tmp']; ?>
                            </td>
                            <td><img width=100 src="<?=BASEURL?>img/product/<?= $row['img_tmp']; ?>" alt=""></td>

                            <td>
                                <a class="btn btn-success" href="#" role="button">Edit</a>
                                <a class="btn btn-danger" href="<?=BASEURL?>masterdata/delete/<?=$row['id_product_tmp']?>" role="button" onclick="return confirm('Hapus produk dengan id <?=$row['id_product_tmp']?>')">Hapus</a>
                            </td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
                <tfoot>
                    <tr>
                        <th>#</th>
                        <th>No Lot</th>
                        <th>Nama Produk</th>
                        <th>Harga</th>
                        <th>Kategori</th>
                        <th>Gudang</th>
                        <th>Rak</th>
                        <th>Suplier</th>
                        <th>Stok</th>
                        <th>Tanggal Kadaluarsa</th>
                        <th>Gambar Produk</th>
                        <th>Aksi</th>

                    </tr>
                </tfoot>
            </table>


            <!-- End Ngoding Disini -->

        </div>
    </section>



    <!-- Modal -->
    <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
        aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="staticBackdropLabel">Tambah Produk</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form action = "<?=BASEURL?>masterdata/add" method="post" enctype="multipart/form-data">
                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label">Nama Obat</label>
                            <div class="col-sm-10">
                                <input type="text" name='name' class="form-control">
                            </div>
                        </div>

                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label">Kode Produksi</label>
                            <div class="col-sm-10">
                                <input type="text" name='id' class="form-control">
                            </div>
                        </div>

                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label">Kategori</label>
                            <div class="col-sm-10">
                                <select class=form-control name="category" id="">
                                    <option selected>Pilih Kategori</option>
                                    <?php
                                    foreach ($data['category'] as $row):
                                        ?>
                                        <option value="<?= $row['id_category_tmc'] ?>">
                                            <?= $row['name_tmc'] ?>
                                        </option>
                                    <?php endforeach; ?>
                                </select>
                            </div>
                        </div>
                        
                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label">Satuan</label>
                            <div class="col-sm-10">
                                <select class=form-control name="unit" id="">
                                    <option selected>Pilih Satuan</option>
                                    <?php
                                    foreach ($data['unit'] as $row):
                                        ?>
                                        <option value="<?= $row['id_unit_tmun'] ?>">
                                            <?= $row['name_tmun'] ?>
                                        </option>
                                    <?php endforeach; ?>
                                </select>
                            </div>
                        </div>

                        <div class="row mb-3">
                            <label for="inputNumber" class="col-sm-2 col-form-label">Jumlah Obat</label>
                            <div class="col-sm-10">
                                <input type="number" class="form-control" name='amount'>
                            </div>
                        </div>

                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label">Suplier</label>
                            <div class="col-sm-10">
                                <select class="form-control" name="suplier" id="">
                                    <option selected>Pilih Suplier</option>
                                    <?php
                                    foreach ($data['suplier'] as $row):
                                        ?>
                                        <option value="<?= $row['id_suplier_tms'] ?>">
                                            <?= $row['name_tms'] ?>
                                        </option>
                                    <?php endforeach; ?>
                                </select>
                            </div>
                        </div>

                        <div class="row mb-3">
                            <label for="inputDate" class="col-sm-2 col-form-label">Tanggal Kadaluarsa</label>
                            <div class="col-sm-10">
                                <input type="date" name = 'exp_date' class="form-control">
                            </div>
                        </div>
                        
                        <div class="row mb-3">
                            <label for="inputDate" class="col-sm-2 col-form-label">Zat Aktif</label>
                            <div class="col-sm-10">
                                <input type="text" name ='active_zat'  class="form-control">
                            </div>
                        </div>
                        
                        <div class="row mb-3">
                            <label for="inputDate" class="col-sm-2 col-form-label">Deskripsi Tambahan</label>
                            <div class="col-sm-10">
                                <input type="text" name = 'description'  class="form-control">
                            </div>
                        </div>

                        <div class="row mb-3">
                            <label for="inputNumber" class="col-sm-2 col-form-label">Harga Beli</label>
                            <div class="col-sm-10">
                                <input type="number" name = 'purchase_price' class="form-control">
                            </div>
                        </div>

                        <div class="row mb-3">
                            <label for="inputNumber" class="col-sm-2 col-form-label">Harga Jual</label>
                            <div class="col-sm-10">
                                <input type="number" name = "selling_price" class="form-control">
                            </div>
                        </div>

                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label">Gambar Produk</label>
                            <div class="col-sm-10">
                                <input class="form-control" name='image'  type="file">
                            </div>
                        </div>

                        <div class="row mb-3 d-inline_block">
                            <label class="col-sm-2 col-form-label">Gudang</label>
                            <div class="col-sm-3">
                                <select class="form-control" name="warehouse" id="">
                                    <option selected>Pilih Gudang</option>
                                    <?php
                                    foreach ($data['warehouse'] as $row):
                                        ?>
                                        <option value="<?= $row['id_warehouse_tmw'] ?>">
                                            <?= $row['name_tmw'] ?>
                                        </option>
                                    <?php endforeach; ?>
                                </select>
                            </div>

                            <label class="col-sm-1 col-form-label">Rak</label>
                            <div class="col-sm-3">
                                <select class="form-control" name="rack" id="">
                                    <option selected>Pilih Rak</option>
                                    <?php
                                    foreach ($data['rack'] as $row):
                                        ?>
                                        <option value="<?= $row['id_rack_tmr'] ?>">
                                            <?= $row['name_tmr'] ?>
                                        </option>
                                    <?php endforeach; ?>
                                </select>
                            </div>
                        </div>


                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Batal</button>
                            <button type="submit" name = 'submit' class="btn btn-primary">Tambah</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>