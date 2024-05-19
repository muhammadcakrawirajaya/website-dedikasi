<?php
require 'config/database.php';
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Denah Pengabdi Kangsa Pertiwi</title>

    <!-- TAB ICON -->
    <link rel="shortcut icon" type="x-icon" href="<?= ROOT_URL ?>assets/icon/tab_icon.png">

    <!-- CSS LINK -->
    <link rel="stylesheet" href="<?= ROOT_URL ?>css/style.css">

    <!-- FONT AWESOME -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
        integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />

    <!-- REMIX ICON -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/remixicon/4.2.0/remixicon.min.css"
        integrity="sha512-MqL4+Io386IOPMKKyplKII0pVW5e+kb+PI/I3N87G3fHIfrgNNsRpzIXEi+0MQC0sR9xZNqZqCYVcC61fL5+Vg=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />

    <!-- OWL CAROUSEL -->
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />

    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css" />

    <!-- SWIPER -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/css/swiper.css"
        integrity="sha512-2ee+T+ASicQEbOrpbZ+hHFErxetDeQnlidit9FVQLwoYoAD/KXQDM2d9wcAWtYaKujj0OQ5v2pkFD8UXpIBqNA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>

<body>
    <header>
        <div class="header-container">
            <input type="checkbox" name="check" id="check">
            <div class="logo-container">
                <div class="logo"><img src="<?= ROOT_URL ?>assets/icon/header_logo.png" alt=""><span>DEDIKASI</span>
                </div>
            </div>
            <div class="nav-btn">
                <div class="nav-links">
                    <ul>
                        <li class="nav-link" style="--i: .6s">
                            <a href="<?= ROOT_URL ?>">Beranda</a>
                        </li>
                        <li class="nav-link" style="--i: .6s">
                            <a href="#">Tentang</a>
                        </li>
                        <li class="nav-link" style="--i: .85s">
                            <a href="#">Program<i class="fas fa-caret-down"></i></a>
                            <div class="dropdown">
                                <ul>
                                    <li class="dropdown-link">
                                        <a href="#">Self Funded</a>
                                    </li>
                                    <li class="dropdown-link">
                                        <a href="#">Partial Funded</a>
                                    </li>
                                    <li class="dropdown-link">
                                        <a href="#">Fully Funded<i class="fas fa-caret-down"></i></a>
                                        <div class="dropdown second">
                                            <ul>
                                                <li class="dropdown-link">
                                                    <a href="#">Reguler</a>
                                                </li>
                                                <li class="dropdown-link">
                                                    <a href="#">Premium</a>
                                                </li>
                                                <div class="arrow"></div>
                                            </ul>
                                        </div>
                                    </li>
                                    <div class="arrow"></div>
                                </ul>
                            </div>
                        </li>
                        <li class="nav-link" style="--i: 1.35s">
                            <a href="#">Dokumentasi</a>
                        </li>
                        <li class="nav-link" style="--i: 1.35s">
                            <a href="<?= ROOT_URL ?>blog.php">Artikel</a>
                        </li>
                    </ul>
                </div>
                <div class="button" style="--i: 1.8s">
                    <a href="<?= ROOT_URL ?>login.php">More Info</a>
                </div>
            </div>
            <div class="hamburger-menu-container">
                <div class="hamburger-menu">
                    <div></div>
                </div>
            </div>
        </div>
    </header>