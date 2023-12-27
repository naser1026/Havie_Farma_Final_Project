<?php

class Util
{
    public static function setFlash($massage , $type) 
    {
        $_SESSION['flash'] = [
            'massage'=> $massage,
            'type'=> $type
        ];

    }
    public static function flash()
    {                    
        if (isset($_SESSION['flash']))
        {
            echo '<div class="alert alert-'.$_SESSION['flash']['type'].' alert-dismissible fade show " role="alert">'.$_SESSION['flash']['massage'].'
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
          </div>';

          unset($_SESSION['flash']);
        }
    }   

    public static function format_rupiah($angka) {
        return "Rp " . number_format($angka, 0, ',', '.');
    }
}