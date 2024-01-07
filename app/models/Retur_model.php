<?php

class Retur_model
{
    public function getListProdukRetur($list_product, $action, $id)
    {

        if(empty($_SESSION['id'])) {
            $_SESSION['id'][] = $id;
        }else{
            if(in_array($id, $_SESSION['id'])){
                return $_SESSION['list_product_retur'];
            }
        }
        if (!is_null($action)) {
            if ($action == 'add') {
                $_SESSION['list_product_retur'][] = $list_product[$id];
                return $_SESSION['list_product_retur'];
            }

        }

    }

    public function addRetur($post) 
    {
        
    }

}

?>