<?php
if (empty($data['list_product'])) {
    unset($_SESSION['invoice_number']);
}
?>
<main id="main" class="main">
    <div class="pagetitle">
        <h1>Master Data</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="dashboard.php">Home</a></li>
                <li class="breadcrumb-item active">Master Unit</li>
            </ol>
        </nav>
    </div>
    <?php Util::flash() ?>
    <!-- End Page Title -->

    <section class="section masterdata">
        <div class="row">
            <!-- Start Ngoding Disini -->
            <div class="card">
                <div class="card-header text-light bg-success color-palette ">
                    <h2 class="card-title display-7 py-2"> <i class=" bx bx-list-ul fa-2x mt-2"></i>Form Transaksi
                        Penerimaan Barang</h2>
                </div>

                <div class="row mx-2 py-3">
                    <div class="card col-8">
                        <form action="<?= BASEURL ?>purchase/addToList" method="post">
                            <input type="hidden" name="id" id="id">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-4">
                                        <label for="">Nomor Faktur</label>
                                        <input type="text" name="invoice_number" value="<?php if (empty($_SESSION['invoice_number'])) {
                                            echo "";
                                        } else {
                                            echo $_SESSION['invoice_number'];
                                        } ?>" class="form-control">
                                    </div>
                                    <div class="col-4">
                                        <label for="">Tanggal Faktur</label>
                                        <input type="date" class="form-control">
                                    </div>
                                    <div class="col-4">
                                        <label for="">Tanggal Bayar</label>
                                        <input type="Date" class="form-control">
                                    </div>
                                </div>

                                <div class="col-3 mt-4">
                                    <label for="">Suplier</label>
                                    <select class="form-control" name="" id="">
                                        <option selected="0" disabled>Pilih suplier</option>

                                        <?php
                                        foreach ($data['suplier'] as $suplier):
                                            ?>
                                            <option value="<?= $suplier['id_suplier_tms'] ?>">
                                                <?= $suplier['name_tms'] ?>
                                            </option>

                                        <?php endforeach ?>
                                    </select>
                                </div>
                                <hr>

                                <div class="row ">
                                    <div class="col-6">
                                        <div class="col-6">
                                            <label for="">Nama Produk</label>
                                            <select class="form-control" name="product_name" id="productName">
                                                <option selected="" disabled>Pilih Produk</option>

                                                <?php
                                                foreach ($data['product'] as $product):
                                                    ?>
                                                    <option
                                                        value="<?= $product['name_tmun'] ?>,<?= $product['id_product_tmp'] ?>">
                                                        <?= $product['name_tmp'] ?>
                                                    </option>

                                                <?php endforeach ?>
                                            </select>
                                        </div>


                                    </div>
                                    <div class="col-2">

                                        <label for="">Satuan besar</label>
                                        <input type="text" name="large_unit" id="largeUnit" class="form-control"
                                            readonly>

                                    </div>
                                    <div class="col-2">

                                        <label for="">Jumlah</label>
                                        <input type="number" class="form-control" name="qty" id="">
                                    </div>
                                    <div class="col-2">

                                        <label for="">PPN</label>
                                        <select class="form-control" name="" id="">
                                            <option value="" selected>11%</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="card-footer">
                                <div class="row">
                                    <div class="col-10"></div>
                                    <div class="col-2">
                                        <button class="form-control btn btn-primary" type="submit">Tambahkan</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                    
                    <div class="card col-3 ms-5" style="height :250px;">
                        <form action="<?=BASEURL?>purchase/done_purchase" method = "post">
                        <div class="card-body">
                            <label for=""><b>Total Pembelanjaan :</b></label>
                            <input class="form-control mt-2"
                                style="background: blue; height: 70px; font-size : 30px; color : white;"
                                id="totalPayment" name = "total_payment" readonly>
                        </div>

                            <input type="hidden" name="list_id" id="listId">
                            <input type="hidden" name="list_qty" id="listQty">
                            

                            <div class="card-footer">
                                <button onclick="confirm('Yakin?')" class="form-control btn btn-success"
                                    id="submit" type = "submit">Submit</button>
                            </div>
                        </form>

                    </div>
                </div>


                <div class="card mt-1">

                    <div class="px-3 my-2">
                        <table id="product" class="table table-striped " border="2" style="width:100%">
                            <thead class="thead-primary">
                                <tr>
                                    <th>#</th>
                                    <th>Barcode</th>
                                    <th>Nama Barang</th>
                                    <th>Harga</th>
                                    <th>PPN</th>
                                    <th>Jumlah</th>
                                    <th>Total Harga</th>
                                    <th><i class="bx bxs-cog"></i></th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                $no = 0;
                                $total_payment = 0;
                                $id_product_list = [];
                                $qty_list = [];
                                foreach ($data['list_product'] as $row):
                                    array_push($id_product_list, $row['id_product_ttlp']);
                                    array_push($qty_list, $row['qty_ttlp']);
                                    $no++;
                                    $sub_total_price = $row['qty_ttlp'] * $row['large_price_tmp'];
                                    $tax = $sub_total_price * 0.11;
                                    $total_price = $sub_total_price + $tax;
                                    $total_payment += $total_price;

                                    ?>
                                    <tr>
                                        <td>
                                            <?= $no ?>
                                        </td>
                                        <td>
                                            <?= $row['large_barcode_tmp'] ?>
                                        </td>
                                        <td>
                                            <?= $row['name_tmp'] ?>
                                        </td>
                                        <td>
                                            <?= Util::format_rupiah($row['large_price_tmp']) ?>
                                        </td>
                                        <td>11%</td>
                                        <td>
                                            <?= $row['qty_ttlp'] ?>
                                        </td>
                                        <td>
                                            <?= Util::format_rupiah($total_price) ?>
                                        </td>
                                        <td><a href="<?= BASEURL ?>purchase/deleteFromList/<?= $row['id_list_ttlp'] ?>"
                                                class="btn btn-danger"><i class="bx  bx-trash"></i></a></td>

                                    <?php endforeach;  ?>


                                </tr>
                            </tbody>
                        </table>

                    </div>


                </div>
            </div>


            <!-- End Ngoding Disini -->


            <script>
                var product = document.getElementById('productName');
                var largeUnit = document.getElementById('largeUnit');
                var id = document.getElementById('id');
                var totalPayment = document.getElementById('totalPayment');
                
                productName.addEventListener('change', function () {
                    arrayProduct = productName.value.split(',');
                    largeUnit.value = arrayProduct[0];
                    id.value = arrayProduct[1];
                })
                totalPayment.value = "Rp. " + <?= $total_payment ?>;

              



            </script>