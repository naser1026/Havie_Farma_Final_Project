
<main id="main" class="main">
    <div class="pagetitle">
        <h1>Master Data</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="dashboard.php">Home</a></li>
                <li class="breadcrumb-item active">Master Unit</li>
            </ol>
        </nav>
    </div><!-- End Page Title -->

    <section class="section masterdata">
        <div class="row">
            <!-- Start Ngoding Disini -->
            <div class="col-lg-6">
                <?php Util::flash(); ?>
            </div>



            <div class="card col-lg-7">
                <form action="<?= BASEURL ?>cashier/addCart" method="post">
                    <input type="hidden" name="id" id="id">
                    <div class="card-header">
                        <b>Informasi</b>
                    </div>
                    <div class="card-body">
                        <span class="badge rounded-pill text-bg-secondary"><b>No Invoice</b></span>
                        <h2><b><?=$data['invoice_number']?></b></h2>

                        <div class="card col-lg-12">
                            <div class="card-header">
                                <div class="form-group">
                                    <label for="">
                                        <span class="badge rounded-pill text-bg-secondary"><b>Produk</b></span>
                                    </label>
                                </div>
                            </div>
                            <div class="card-body">
                                <label for=""><b>Item</b></label>
                                <select id="produk" class="form-select">
                                    <option selected disabled>Pilih Produk</option>
                                    <?php

                                    foreach ($data['product'] as $row):
                                        ?>

                                        <option
                                            value="<?= $row['stock_tmp']; ?>,<?= $row['small_price_tmp']; ?>,<?= $row['id_product_tmp']; ?>">
                                            <?= $row['name_tmp']; ?>
                                        </option>

                                    <?php endforeach; ?>
                                </select>


                                <div class="row">
                                    <div class="col-lg-3 mt-3">
                                        <label for=""><b>Harga</b></label>
                                        <div class="row"></div>
                                        <input type="text" name="price" id="price" class="form-control" readonly>
                                    </div>
                                    <div class="col-lg-3 mt-3">
                                        <label for=""><b>Stok</b></label>
                                        <input type="text" name="stock" id="stock" class="form-control" readonly>
                                    </div>
                                    <div class="col-lg-3 mt-3">
                                        <label for=""><b>Jumlah</b></label>
                                        <input type="number" name="qty" id="qty" class="form-control">
                                    </div>
                                    <div class="col-lg-3 mt-3">
                                        <label for=""><b>Diskon (%)</b></label>
                                        <input type="number" value="0" name="discount" id="discount"
                                            class="form-control">
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="card-footer">
                        <div class="row">
                            <div class="col-10 col-md-10 col-lg-10 col-xl-10"></div>
                            <div class="col-2 col-md-2 col-lg-2 col-xl-2"><button type="submit" name="submit"
                                    class="btn btn-success btn-block"><i class="ri ri-add-fill"></i> Tambah </button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>

            <div class="card col-lg-4 mx-5">
                <form action="<?= BASEURL ?>cashier/payment" method="post">
                    <div class="card-header">
                        <b>Pembayaran</b>
                    </div>

                    <input type="hidden" name="invoice_number" value="<?=$data['invoice_number']?>">
                    <input type="hidden" name="capital_price" id="capitalPrice">
                    <div class="card-body">
                        <label for="">
                            <h3><b>Total Bayar</b></h3>
                        </label>

                        <input class=form-control readonly name="total_payment" type="number" id="totalPayment" required>

                        <div class="row mt-3">
                            <div class="col-lg-8 mt-3">
                                <label for=""><b>Sub Total Bayar</b></label>
                                <input type="number" readonly name="sub_total_payment" id="subTotalPayment" 
                                    class="form-control">
                            </div>
                            <div class="col-lg-4 mt-3">
                                <label for=""><b>Diskon (%)</b></label>
                                <input type="number" value="0" name="general_discount" id="discount2"
                                    class="form-control">
                            </div>
                        </div>

                        <div class="row mt-3">
                            <div class="col-lg-6 mt-3">
                                <label for=""><b>Bayar</b></label>
                                <input type="number" id="payment" name="payment" class="form-control" required>
                            </div>
                            <div class="col-lg-6 mt-3">
                                <label for=""><b>Kembali</b></label>
                                <input type="number" readonly name="return" id="return" class="form-control">
                            </div>
                        </div>

                    </div>
                    <div class="card-footer">
                        <div class="row">
                            <div class="col-xl-9"></div>
                            <div class="col">
                                <button type="submit" class="btn btn-success btn-block" onclick="return confirm('Yakin?')"><i
                                        class="ri-money-dollar-circle-line"></i> Bayar
                                </button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>

            <table class="table" border="2">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Barcode</th>
                        <th>Nama Barang</th>
                        <th>Harga</th>
                        <th>Jumlah</th>
                        <th>Diskon</th>
                        <th>Total Harga</th>
                        <th><i class="bx bxs-cog"></i></th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    $no = 1;
                    $total_price = 0;
                    $total_capital = 0;
                    foreach ($data['cart'] as $row):
                        $price = $row['price_ttc'];
                        $total_product_price = $price * $row['qty_ttc'];
                        $total_discount = $total_product_price * $row['discount_ttc'] / 100;
                        $total_product_price = $total_product_price - $total_discount;
                        $total_price += $total_product_price;
                        $sub_capital_price = $row['qty_ttc'] * $row['small_price_tmp'];
                        $total_capital += $sub_capital_price;

                        ?>
                        <tr>
                            <td>
                                <?= $no ?>
                            </td>
                            <td>
                                <?= $row['small_barcode_tmp'] ?>
                            </td>
                            <td>
                                <?= $row['name_tmp'] ?>
                            </td>
                            <td>Rp.
                                <?= $row['price_ttc'] ?>
                            </td>
                            <td>
                                <?= $row['qty_ttc'] ?>
                            </td>
                            <td>
                                <?= $row['discount_ttc'] ?>%
                            </td>
                            <td>Rp.
                                <?= $total_product_price ?>
                            </td>
                            <td><a href="<?=BASEURL?>cashier/deleteProductCart/<?=$row['id_ttc']?>" class="btn btn-danger"><i class="bx  bxs-trash"></i></a></td>

                            <?php $no += 1
                            ;
                    endforeach ?>

                    </tr>
                </tbody>

            </table>


            <!-- End Ngoding Disini -->

        </div>
    </section>



    <script>

        function formatRupiah(angka) {
            var bilangan = angka;

            var numberFormatOptions = {
                style: 'currency',
                currency: 'IDR',
                minimumFractionDigits: 0
            };

            return bilangan.toLocaleString('id-ID', numberFormatOptions);
        }
        var selectOption = document.getElementById('produk');
        var textInput1 = document.getElementById('stock');
        var textInput2 = document.getElementById('price');
        var textInput3 = document.getElementById('id');
        var subTotalPayment = document.getElementById('subTotalPayment');
        var discount = document.getElementById('discount2');
        var totalPayment = document.getElementById('totalPayment');
        var payment = document.getElementById('payment');
        var returnPayment = document.getElementById('return');
        var capitalPrice =document.getElementById('capitalPrice');




        // Mendengarkan perubahan pada elemen select
        selectOption.addEventListener('change', function () {
            // Mendapatkan nilai yang dipilih
            var selectedValue = selectOption.value;
            array = selectedValue.split(",");
            var final_price = parseInt(array[1]);
            var final_price = Math.floor((final_price + (final_price * 0.25)) / 100) * 100;
            // Memberikan nilai ke elemen input teks
            textInput1.value = array[0];
            textInput2.value = "Rp. " + final_price.toString();
            textInput3.value = array[2]
        });

        subTotalPayment.value = <?= $total_price; ?>



        discount.addEventListener('input', function () {

            totalPayment.value = subTotalPayment.value - (subTotalPayment.value * discount.value / 100);
            totalPayment.value = Math.floor(totalPayment.value / 10) * 10
        })

        payment.addEventListener('input', function () {
            returnPayment.value = payment.value - totalPayment.value;
        })

        capitalPrice.value = <?= $total_capital; ?>
    </script>