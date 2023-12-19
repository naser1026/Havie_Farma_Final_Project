<main id="main" class="main">
    <div class="pagetitle">
        <h1>Master Data</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="dashboard.php">Home</a></li>
                <li class="breadcrumb-item active">Master Data</li>
            </ol>
        </nav>
    </div><!-- End Page Title -->

    <section class="section masterdata">
        <div class="row">
            <!-- Start Ngoding Disini -->

            <div class="row">
                <div class="col-lg-6">
                    <?php Flasher::flash(); ?>
                </div>
            </div>
            <div class='addproduct'>
                <button type="button" class="btn btn-primary addProduct" data-bs-toggle="modal"
                    data-bs-target="#staticBackdrop">Tambah Produk</button>
                <br><br>
            </div>

            <table id="product" class="table table-striped " border="2" style="width:100%">
                <thead class="thead-primary">
                    <tr>
                        <th>Barcode</th>
                        <th>Nama Produk</th>
                        <th>Pabrik</th>
                        <th>Suplier</th>
                        <th>Sat.Besar</th>
                        <th>Hrg Sat.Besar</th>
                        <th>PPN</th>
                        <th>Sat.Kecil</th>
                        <th>Isi</th>
                        <th>Hrg. Sat.Kecil</th>
                        <th>Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    <?php

                    $products = $data['product'];
                    $ppn = 11;
                    foreach ($products as $row):
                        ?>
                        <tr>
                            <td>
                                <?= $row['large_barcode_tmp']; ?>
                            </td>
                            <td>
                                <?= $row['name_tmp']; ?>
                            </td>
                            <td>
                                <?= $row['name_tmf']; ?>
                            </td>
                            <td>
                                <?= $row['name_tms'] ?>
                            </td>
                            <td>
                                <?= $row['name_tmun'] ?>
                            </td>
                            <td>
                                Rp.
                                <?= $row['large_price_tmp'] ?>
                            </td>
                            <td>
                                <?= $ppn ?>%
                            </td>
                            <td>
                                <?= $row['name_tmun'] ?>
                            </td>
                            <td>
                                <?= $row['fill_tmp'] ?>
                            </td>
                            <td>
                                Rp.
                                <?= $row['small_price_tmp'] ?>
                            </td>
                            <td>
                                <a class="btn btn-success changeModal" href="#" data-bs-toggle="modal"
                                    data-bs-target="#staticBackdrop" role="button" data-id="<?= $row['id_product_tmp']; ?>"
                                    data-url="<?= BASEURL; ?>">Edit</a>
                                <a class="btn btn-danger"
                                    href="<?= BASEURL ?>masterdata/masterproductDelete/<?= $row['id_product_tmp'] ?>" role="button"
                                    onclick="return confirm('Hapus <?= $row['name_tmp'] ?>')">Hapus</a>
                            </td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
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
                    <h1 class="modal-title fs-5" id="staticBackdropLabel">Tambah Unit</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form action="<?= BASEURL ?>masterdata/masterproductAdd" method="post"
                        enctype="multipart/form-data">

                        <input type="hidden" id="id" name = "id">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="card card-body">
                                    <div class="form-group">
                                        <label>Nama Produk</label>
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                            </div>
                                            <input name="name" id="name" type="text" class="form-control">
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-5">
                                            <div class="form-group">
                                                <label>Pabrik</label>
                                                <div class="input-group">

                                                    <select class=form-control id='factory' name="factory" id="">
                                                        <option selected value="">Pilih Pabrik</option>
                                                        <?php
                                                        foreach ($data['factory'] as $row):
                                                            ?>
                                                            <option value="<?= $row['id_factory_tmf'] ?>">
                                                                <?= $row['name_tmf'] ?>
                                                            </option>
                                                        <?php endforeach; ?>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-5">
                                            <div class="form-group">
                                                <label>Supplier</label>
                                                <div class="input-group">

                                                    <select style="width:180px;" name="suplier" id="suplier"
                                                        class="form-control" required="">
                                                        <option selected value="" disabled="">Pilih Suplier</option>
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
                                        </div>
                                        <div class="col-md-2">
                                            <div class="form-group">
                                                <label>PPN</label>
                                                <div class="input-group">

                                                    <select name="ppn" id = "ppn" class="form-control" readonly="" required="">
                                                        <option selected value = "11">11 %</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="card">
                                    <h6 class="card-header">
                                        <label for="">Satuan Besar</label>
                                    </h6>
                                    <div class="card-body">
                                        <div class="form-group">
                                            <label for="barcode">Barcode satuan besar</label>
                                            <div class="input-group">

                                                <input name="large_barcode" id="large_barcode" type="text"
                                                    placeholder="Jika belum memiliki maka kosongkan"
                                                    class="form-control">
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label for="large_unit">Satuan besar</label>
                                            <div class="input-group">

                                                <select style="width:180px;" name="large_unit" id="large_unit"
                                                    class="form-control" required="">
                                                    <option selected value="">Pilih Satuan</option>
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

                                        <div class="row">
                                            <div class="col-md-7">
                                                <div class="form-group">
                                                    <label>Harga satuan besar</label>
                                                    <div class="input-group">
                                                        <div class="input-group-prepend">
                                                            <span class="input-group-text">Rp.</span>
                                                        </div>
                                                        <input name="large_price" id="large_price" type="text"
                                                            class="form-control" id="large_price"
                                                            onkeyup="sumPriceSmallMp()" required="">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-5">
                                                <div class="form-group">
                                                    <label>Total isi barang</label>
                                                    <div class="input-group">
                                                        <input name="fill" id="fill" type="number" class="form-control"
                                                            id="content_mp" onkeyup="sumPriceSmallMp()" required="">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="card">
                                    <h6 class="card-header">
                                        <label for="">Satuan Kecil</label>
                                    </h6>
                                    <div class="card-body">
                                        <div class="form-group">
                                            <label for="barcode">Barcode satuan kecil</label>
                                            <div class="input-group">

                                                <input name="small_barcode" id="small_barcode" type="text"
                                                    placeholder="Jika belum memiliki maka kosongkan"
                                                    class="form-control">
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label>Satuan Kecil</label>
                                            <div class="input-group">

                                                <select style="width:180px;" name="small_unit" id = "small_unit" class="form-control"
                                                    required="">
                                                    <option value="" disabled="" selected="">Pilih Satuan</option>
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

                                        <div class="form-group">
                                            <label>Harga satuan kecil</label>
                                            <div class="input-group">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text">Rp.</span>
                                                </div>
                                                <input name="small_price" type="text" class="form-control"
                                                    id="small_price" readonly required="">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>


                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Batal</button>
                            <button type="submit" name='submit' class="btn btn-primary "
                                id="modalSubmit">Tambah</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>