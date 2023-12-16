$(function() {

    $('.addProduct').on('click', function(){
        $('#staticBackdropLabel').html("Tambah Data Produk");
        $('.modal-footer button[type=submit]').html('Tambah');

        $('#name').val("");
        $('#id').val("");
        $('#category').val("");
        $('#unit').val("");
        $('#amount').val("");
        $('#suplier').val("");
        $('#exp_date').val("");
        $('#active_zat').val("");
        $('#description').val("");
        $('#purchase_price').val("");
        $('#selling_price').val("");
        $('#image').val("");
        $('#warehouse').val("");
        $('#rack').val("");
    });


    $('.changeModal').on('click', function(){

        const id = $(this).data('id');
        const baseurl = $(this).data('url');
       
        $('#staticBackdropLabel').html("Ubah Data Produk");
        $('.modal-footer button[type=submit]').html('Ubah Data');
        $('.modal-body form').attr('action', baseurl + 'masterdata/update');


        

        $.ajax({
            url: baseurl + 'masterdata/getEdit',
            data: {id : id},
            method: 'post', 
            dataType: 'json',
            success: function(data) {
                $('#name').val(data.name_tmp);
                $('#code').val(data.production_code_tmp);
                $('#category').val(data.id_category_tmp);
                $('#unit').val(data.id_unit_tmp);
                $('#amount').val(data.stock_tmp);
                $('#suplier').val(data.id_suplier_tmp);
                $('#exp_date').val(data.expired_date_tmp);
                $('#active_zat').val(data.active_zat_tmp);
                $('#description').val(data.description_tmp);
                $('#purchase_price').val(data.purchase_price_tmp);
                $('#selling_price').val(data.selling_price_tmp);
                $('#previous_img').val(data.img_tmp);
                $('#warehouse').val(data.id_warehouse_tmp);
                $('#rack').val(data.id_rack_tmp);
                $('#id').val(data.id_product_tmp);

            }
        });
    }); 

});