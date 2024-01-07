<main id="main" class="main">
    <div class="pagetitle">
        <h1>Master User</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="<?= BASEURL ?>home/index">Home</a></li>
                <li class="breadcrumb-item active">Master User</li>

            </ol>
        </nav>
    </div><!-- End Page Title -->

    <section class="section masterdata">
        <div class="row">
            <!-- Start Ngoding Disini -->

            <div class="card">
                <div class="card-header">
                    <span class="card-title">Daftar User</span>
                </div>

                <div class="card-body">
                    <table class="table">
                        <thead class="thead-primary">
                            <tr>
                                <th class="text-center">No</th>
                                <th class="text-center">ROLE</th>
                                <th class="text-center">EMAIL</th>
                                <th class="text-center">NAMA</th>
                                <th class="text-center">STATUS AKUN</th>
                                <th class="text-center">MENU</th>
                            </tr>
                        </thead>

                        <tbody>
                            <?php
                            $no = 0;
                            foreach ($data['users'] as $row):

                                $no++; ?>
                                <tr>
                                    <td class="text-center">
                                        <?= $no ?>
                                    </td>
                                    <td class="text-center">
                                        <?= $row['role_tmu'] ?>
                                    </td>
                                    <td class="text-center">
                                        <?= $row['email_tmu'] ?>
                                    </td>
                                    <td class="text-center">
                                        <?= $row['name_tmu'] ?>
                                    </td>
                                    <td class="text-center">
                                        <?= strtolower($row['status_tmu']) ?>
                                    </td>
                                    <td class="text-center" width="20%">

                                        <button class="btn btn-warning col-lg-2" data-bs-toggle="modal"
                                            data-bs-target="#exampleModal"><i class="bx bxs-cog"></i></button>
                                        <button class="btn btn-primary col-lg-2"><i class="bx bxs-lock"></i></button>
                                        <button class="btn btn-danger col-lg-2"><i class="bx bxs-trash"></i></button>

                                    </td>


                                </tr>
                            <?php endforeach ?>
                        </tbody>
                    </table>
                </div>
            </div>
            <!-- End Ngoding Disini -->

        </div>
    </section>


    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Pengaturan Akun</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">

                <div class="row">
                    <div class="col-lg-8">
                        <label for="" class="form-label">Nama Lengkap</label>
                        <input class = "form-control" type="text" name="" id="">
                    </div>
                    <div class="col-lg-3">
                        <label for="" class="form-label">Role</label>
                        <select class = "form-control" name="" id="">
                            <option value="">admin</option>
                            <option value="">owner</option>
                            <option value="">kasir</option>
                        </select>
                    </div>
                </div>

                <div class="col-lg-10">
                    <label for="" class="form-label">Email</label>
                    <input type="email" name="" id="" class="form-control">
                </div>
                <div class="col-lg-10">
                    <label for="" class="form-label">Status</label>
                    <select name="" class = "form-control" id="">
                        <option value="">aktif</option>
                        <option value="">tidak aktif</option>
                    </select>
                </div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
                </div>
            </div>
        </div>
    </div>