<?php
// Menghubungkan ke file database.php
// Query untuk mengambil teks dari database
$query = "SELECT * FROM hero WHERE id=1";
$result = mysqli_query($connection, $query);

// Periksa apakah query berhasil dieksekusi
if (!$result) {
    die("Query gagal: " . mysqli_error($connection));
}

// Lakukan iterasi pada hasil query dan tampilkan di dalam elemen h1
$row = mysqli_fetch_assoc($result);
$date = $row['date'];
$title = $row['title'];
$subtitle = $row['subtitle'];
$descripton = $row['description'];
$guide_link = $row['link_panduan'];
$sign_link = $row['link_daftar'];
$video_url = $row['link_video'];
?>

<section class="hero">
    <div class="hero-container">
        <div class="content">
            <p class="date"><?php echo $date; ?></p>
            <h1 class="title"><?php echo $title; ?></h1>
            <h2 class="subtitle"><?php echo $subtitle; ?></h2>
            <p class="description"><?php echo $descripton; ?></p>
            <div class="action-btns">
                <a href="<?php echo $guide_link; ?>" target="blank"><button class="guide-btn">Panduan</button></a>
                <a href="<?php echo $sign_link; ?>" target="blank"><button class="sign-btn">Daftar Sekarang</button></a>
            </div>
        </div>
        <div class="image">
            <?php echo $video_url; ?>
        </div>
    </div>
    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320">
        <path fill="#FFF" fill-opacity="1"
            d="M0,64L40,106.7C80,149,160,235,240,240C320,245,400,171,480,170.7C560,171,640,245,720,250.7C800,256,880,192,960,170.7C1040,149,1120,171,1200,160C1280,149,1360,107,1400,85.3L1440,64L1440,320L1400,320C1360,320,1280,320,1200,320C1120,320,1040,320,960,320C880,320,800,320,720,320C640,320,560,320,480,320C400,320,320,320,240,320C160,320,80,320,40,320L0,320Z">
        </path>
    </svg>
</section>