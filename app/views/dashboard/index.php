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

            <?php 
            foreach($data['product'] as $row) :
            ?>
            <div class="card m-2" style="width: 18rem;">
                <img src="<?=BASEURL?>img/product/<?=$row['img_tmp']?>" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title"><?=$row['name_tmp'] ?></h5>
                    <h6 class="card-title">Rp. <?=$row['selling_price_tmp'] ?></h6>
                    <p class="card-text"><?=$row['description_tmp']?></p>
                    <a href="<?=BASEURL?>dashboard/detail/<?=$row['id_product_tmp']?>" class="btn btn-primary" data-bs-toggle="modal"
                    data-bs-target="#detail">Detail</a>
                </div>
            </div>
            <?php endforeach;?>
            <!-- End Ngoding Disini -->

        </div>
    </section>



    <!-- Modal -->
    <div class="modal fade" id="detail" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
        aria-labelledby="detailLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="detailLabel">Tambah Produk</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    
                </div>
            </div>
        </div>
    </div>