<?php
require "config/database.php";
if(!isset($_SESSION['user_is_admin'])){
    header("location: " . ROOT_URL . "logout.php");
    //destroy all sessions and redirect user to login page
    session_destroy();
}
if(isset($_POST['submit'])){    
    $id = filter_var($_POST['id'], FILTER_SANITIZE_NUMBER_INT);
    $date=filter_var($_POST['date'],FILTER_SANITIZE_FULL_SPECIAL_CHARS);
    $title = filter_var($_POST['title'], FILTER_SANITIZE_FULL_SPECIAL_CHARS);
    $subtitle = filter_var($_POST['subtitle'], FILTER_SANITIZE_FULL_SPECIAL_CHARS);
    $description = filter_var($_POST['description'], FILTER_SANITIZE_FULL_SPECIAL_CHARS);
    $guide_link = filter_var($_POST['link_panduan'], FILTER_SANITIZE_FULL_SPECIAL_CHARS);
    $sign_link = filter_var($_POST['link_daftar'], FILTER_SANITIZE_FULL_SPECIAL_CHARS);
    $video_url = filter_var($_POST['link_video'], FILTER_SANITIZE_FULL_SPECIAL_CHARS);

    if(!$title || !$subtitle){
        $_SESSION['edit-category'] = "Invalid form input on edit category page";
    }else{
        $query = "UPDATE hero SET date='$date',title='$title',subtitle='$subtitle',description='$description',link_panduan='$guide_link',link_daftar='$sign_link',link_video='$video_url' WHERE id=$id LIMIT 1";
        $result=mysqli_query($connection, $query);  

        if(mysqli_errno($connection)){
            $_SESSION['edit-hero'] = "Could'nt update hero";

        }else{
            $_SESSION['edit-hero-success'] = "Hero telah berhasil diupdate";
        }
    }
}

header('location: ' . ROOT_URL . "admin/manage-hero.php");
die();