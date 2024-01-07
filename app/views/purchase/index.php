<main id="main" class="main">
    <div class="pagetitle">
        <h1>Produk</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="<?=BASEURL?>home/index">Home</a></li>
                <li class="breadcrumb-item active">Penerimaan Produk</li>
               
            </ol>
        </nav>
    </div><!-- End Page Title -->

    <section class="section masterdata">
        <div class="row">
            <!-- Start Ngoding Disini -->
            <h2 class="card-title display-7 py-2 bg-success text-white rounded-3"> <i class=" bx bx-list-ul mt-2 mx-2"></i>LIst Penerimaan Produk</h2>
            <div class="card">

                
                    <div class="my-3 px-2">
                        <a class="btn btn-primary" href="<?=BASEURL?>purchase/purchase_form"> <i class="ri-add-fill"></i> Tambah Penerimaan Produk</a>
                    </div>

                    <div class="px-3">
                        <table id="product" class="table table-striped " border="2" style="width:100%">
                            <thead class="thead-primary">
                                <tr>
                                    <th>#</th>
                                    <th>No.Faktur</th>
                                    <th>Suplier</th>
                                    <th>Tgl Faktur</th>
                                    <th>Tgl Pembayaran</th>
                                    <th>Total</th>
                                    <th>Status</th>
                                    <th>Dibuat Oleh</th>
                                    <th>Tgl Dibuat</th>
                                    <th><i class="bx bxs-cog"></i></th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                $no = 0;
                                foreach ($data['purchase'] as $row):
                                    $no++;

                                    ?>
                                    <tr>
                                        <td>
                                            <?= $no ?>
                                        </td>
                                        <td>
                                            <?= $row['invoice_number_ttp'] ?>
                                        </td>
                                        <td>
                                            <?= $row['name_tms'] ?>
                                        </td>
                                        <td>
                                            <?= $row['invoice_date_ttp'] ?>
                                        </td>
                                        <td>
                                            <?= $row['payment_date_ttp'] ?>
                                        </td>
                                        <td>
                                            <?= Util::format_rupiah($row['total_payment_ttp']) ?>
                                        </td>
                                        <td>
                                            <?= $row['status_ttp'] ?>
                                        </td>
                                        <td>
                                            <?= $row['created_by_ttp'] ?>
                                        </td>
                                        <td>
                                            <?= $row['created_date_ttp'] ?>
                                        </td>
                                        <td><a href="<?= BASEURL ?>purchase/detail/<?= $row['id_purchase_ttp'] ?>"
                                                class="btn btn-primary"><i class="bx  bx-detail"></i></a></td>

                                    <?php endforeach ?>
                                </tr>
                            </tbody>
                        </table>

                    </div>


                
            </div>


            <!-- End Ngoding Disini -->