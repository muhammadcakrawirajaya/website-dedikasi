<?php
include "partials/header.php";
if (!isset($_SESSION['user_is_admin'])) {
    header("location: " . ROOT_URL . "logout.php");
    //destroy all sessions and redirect user to login page
    session_destroy();
}

if (isset($_GET['id'])) {
    $id = filter_var($_GET['id'], FILTER_SANITIZE_NUMBER_INT);
    $query = "SELECT * FROM hero WHERE id='$id'";
    $result = mysqli_query($connection, $query);
    $hero = mysqli_fetch_assoc($result);
} else {
    header('location: ' . ROOT_URL . 'admin/manage-hero.php');
}
?>

<section class="form__section">
    <div class="container form__section-container">
        <h2>Edit Hero</h2>

        <form action="<?= ROOT_URL ?>admin/edit-hero-logic.php" method="POST">
            <input type="hidden" value="<?= $id ?>" name='id'>
            <label for="date">tanggal</label>
            <input type="text" name="date" value="<?= $hero['date'] ?>" placeholder="Tanggal">
            <label for="date">Judul</label>
            <input type="text" name="title" value="<?= $hero['title'] ?>" placeholder="Judul">
            <label for="date">Sub-judul</label>
            <input type="text" name="subtitle" value="<?= $hero['subtitle'] ?>" placeholder="Sub Judul">
            <label for="date">Deskripsi</label>
            <textarea rows="4" name="description" placeholder="Deskripsi"><?= $hero['description'] ?></textarea>
            <label for="date">link panduan</label>
            <input type="text" name="link_panduan" value="<?= $hero['link_panduan'] ?>" placeholder="Link Panduan">
            <label for="date">link daftar</label>
            <input type="text" name="link_daftar" value="<?= $hero['link_daftar'] ?>" placeholder="Link Daftar">
            <label for="date">link video</label>
            <input type="text" name="link_video" value="<?= $hero['link_video'] ?>" placeholder="Link Video">
            <button type="submit" name="submit" class="btn">Update Hero</button>
        </form>
    </div>
</section>