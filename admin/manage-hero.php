<?php
include "partials/header.php";


$current_admin_id = $_SESSION['user-id'];
if(!isset($_SESSION['user_is_admin'])){
    header("location: " . ROOT_URL . "logout.php");
    //destroy all sessions and redirect user to login page
    session_destroy();
}
$query="SELECT * FROM hero WHERE id=1";
$hero=mysqli_query($connection,$query);
?>


    <section class="dashboard">
    <?php if(isset($_SESSION['edit-hero-success'])) : ?>  
            <div class="alert__message success container">
            <p>
                <?= $_SESSION['edit-hero-success'];
                unset($_SESSION['edit-hero-success']);
                ?>
            </p>
            
            </div>
    <?php
        elseif(isset($_SESSION['edit-hero'])): ?> 
            <div class="alert__message error container">
            <p>
                <?= $_SESSION['edit-hero'];
                unset($_SESSION['edit-hero']);
                ?>
            </p>
            
            </div>
            <?php endif?>
        <div class="container dashboard__container">
    
            <button id="show__sidebar-btn" class="sidebar__toggle"><i class="uil uil-angle-right-b"></i></button>
            <button id="hide__sidebar-btn" class="sidebar__toggle"><i class="uil uil-angle-left-b"></i></button>
    
            <aside>
            <ul>
                <li>
                    <a href="<?= ROOT_URL ?>admin/manage-hero.php" class="active">
                        <i class="uil uil-postcard"></i>
                        <h5>Edit Hero</h5>
                    </a>
                </li>
                <li>
                    <a href="<?= ROOT_URL ?>admin/add-post.php">
                        <i class="uil uil-pen"></i>
                        <h5>Tambah Artikel</h5>
                    </a>
                </li>

                <li>
                    <a href="<?= ROOT_URL ?>admin/index.php">
                        <i class="uil uil-postcard"></i>
                        <h5>Edit Artikel</h5>
                    </a>
                </li>
                <?php if (isset($_SESSION['user_is_admin'])): ?>
                    <li>
                        <a href="<?= ROOT_URL ?>admin/add-user.php">
                            <i class="uil uil-user-plus"></i>
                            <h5>Tambah Pengguna</h5>
                        </a>
                    </li>

                    <li>
                        <a href="<?= ROOT_URL ?>admin/manage-users.php">
                            <i class="uil uil-users-alt"></i>
                            <h5>Edit Pengguna</h5>
                        </a>
                    </li>
                    <li>
                        <a href="<?= ROOT_URL ?>admin/add-category.php">
                            <i class="uil uil-edit"></i>
                            <h5>Tambah Kategori Artikel</h5>
                        </a>
                    </li>
                    <li>
                        <a href="<?= ROOT_URL ?>admin/manage-categories.php">
                            <i class="uil uil-list-ul"></i>
                            <h5>Edit Kategori Artikel</h5>
                        </a>
                    </li>
                <?php endif ?>
            </ul>
            </aside>
            <main>
                <h2>Edit Hero</h2>
                <?php if(mysqli_num_rows($hero)>0): ?>
                <table>
                    <thead>
                        <tr>
                            <th>Tanggal</th>
                            <th>Judul</th>
                            <th>Sub Judul</th>
                            <th>Edit</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php while($hero=mysqli_fetch_assoc($hero)): ?>
                        <tr>
                            <td><?= $hero["date"]?></td>
                            <td><?= $hero["title"]?></td>
                            <td><?= $hero["subtitle"]?></td>
                            <td><a href="<?= ROOT_URL ?>admin/edit-hero.php?id=<?= $hero['id'] ?>" class="btn sm">Edit</a></td>
                        </tr>
                        <?php endwhile ?>
    
                    </tbody>
                </table>
                <?php else : ?>
                    <div class="alert__message error">No users found</div>
                    <?php endif?>
            </main>
        </div>
    </section>
 
