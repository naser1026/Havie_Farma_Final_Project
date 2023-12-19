<main id="main" class="main">
    <div class="pagetitle">
        <h1>Master Data</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="dashboard.php">Home</a></li>
                <li class="breadcrumb-item active">Master Pabrik</li>
            </ol>
        </nav>
    </div><!-- End Page Title -->

    <section class="section masterdata">
        <div class="row">
            <!-- Start Ngoding Disini -->
                <div class="col-lg-6">
                    <?php Flasher::flash(); ?>
                </div>
            <div class=''>
                <a class="btn btn-primary modalUnitAdd" data-bs-toggle="modal"
                    data-bs-target="#staticBackdrop">Tambah Pabrik</a>
                <br><br>
            </div>
            
            <table id="unit" class="table table-striped " border="2" style="width:100%">
                <thead class="thead-primary">
                    <tr>
                        <th>No</th>
                        <th>Nama Pabrik</th>
                        <th>Menu</th>
                    </tr>
                </thead>
                <tbody>
                    <?php

                    $unit = $data['factory'];
                    $no = 0;
                    foreach ($unit as $row):
                        $no +=1;
                        ?>
                        <tr>
                            <td>
                                <?= $no?>
                            </td>
                            <td>
                                <?= $row['name_tmf']; ?>
                            </td>
                           
                            <td >
                                <a class="btn btn-success factoryModalUpdate" href="#" data-bs-toggle="modal"
                                    data-bs-target="#staticBackdrop" role="button" data-id="<?= $row['id_factory_tmf']; ?>"
                                    data-url="<?= BASEURL; ?>">Edit</a>
                                <a class="btn btn-danger"
                                    href="<?= BASEURL ?>masterdata/masterfactoryDelete/<?= $row['id_factory_tmf'] ?>" role="button"
                                    onclick="return confirm('Hapus <?= $row['name_tmf'] ?>')">Hapus</a>
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
                    <h1 class="modal-title fs-5" id="staticBackdropLabel">Tambah Data Pabrik</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form action="<?= BASEURL ?>masterdata/masterfactoryAdd" method="post" enctype="multipart/form-data">

                    <input type="hidden" id = "id" name = "id">
                    <div class="row">
                            <div class="col-md-12">
                                <div class="card card-body">
                                    <div class="form-group">
                                        <label>Nama Pabrik</label>
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                            </div>
                                            <input name="name"  id="name" type="text" class="form-control">
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
