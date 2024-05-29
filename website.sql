-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 27, 2024 at 05:22 PM
-- Server version: 5.7.39
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `website`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `description`) VALUES
(1, 'Pengabdian', 'Kategori yang membahas suputar pengabdian masyarakat'),
(13, 'Tips &amp; Trick', 'Seputar Tips dan Trick apapun'),
(14, 'Event', 'Artikel event kegiatan'),
(15, 'Opini', 'Artikel opini pribadi');

-- --------------------------------------------------------

--
-- Table structure for table `hero`
--

CREATE TABLE `hero` (
  `id` int(11) UNSIGNED NOT NULL,
  `date` varchar(50) NOT NULL,
  `title` varchar(25) NOT NULL,
  `subtitle` varchar(50) NOT NULL,
  `description` varchar(225) NOT NULL,
  `link_panduan` varchar(1000) NOT NULL,
  `link_daftar` varchar(1000) NOT NULL,
  `link_video` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hero`
--

INSERT INTO `hero` (`id`, `date`, `title`, `subtitle`, `description`, `link_panduan`, `link_daftar`, `link_video`) VALUES
(1, 'Pendaftaran 21 Maret - 15 Mei 2024', 'AKSAMALA', 'Aksi Alami Nusantara', 'Desa Argosari adalah salah satu desa tertinggi di Jawa Timur. Dengan ketinggian mencapai &plusmn;2000 MDPL dan terletak di atas awan, Desa Argosari menjadi salah satu desa yang menyimpan banyak pesona alam yang indah sekali.', 'https://drive.google.com/file/d/1uNewXd8TjUkemkcAtuMh3jHrXFsHpLN2', 'https://linktr.ee/dedikasi.in', 'https://www.youtube.com/embed/pDZIRsdid4k?si=3pLvFjmE4Xd-3uSB');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `category_id` int(11) UNSIGNED DEFAULT NULL,
  `author_id` int(11) UNSIGNED NOT NULL,
  `is_featured` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `thumbnail`, `date_time`, `category_id`, `author_id`, `is_featured`) VALUES
(32, 'Pengabdian Masyarakat: Menciptakan Ruang Belajar untuk Membantu dalam Membaca Al-Qur&#039;an', 'Mengeksplorasi kontribusi pengabdian masyarakat dalam meningkatkan lancar baca Al-Qur&#039;an. Tujuan &nbsp;pengabdian &nbsp;ini &nbsp;adalah memberikan solusi atas sulitnya membaca Al-Qur&#039;an terutama dikalangan kaum tua. Pengabdian menggunakan metode pendampingan keagamaan berupa bimbingan mengaji, dan membaca Al-Qur&rsquo;an. Hadirnya pengabdian ini dapat &nbsp;menjadi alternatif &nbsp;untuk &nbsp;membantu &nbsp;meringankan &nbsp;masyarakat dalam masalah sulitnya membaca Al-Qur&#039;an. Kegiatan pengabdian masyarakat ini dilakukan melalui pendampingan keagamaan yang terdiri dari bimbingan membaca Iqra, membaca dan membaca Al-qur&#039;an dalam rutinitas mengaji setiap malam.\r\n\r\nSaat ini telah banyak bermunculan berbagai metode untuk membantu para santri belajar membaca Al-Qur&#039;an sesuai dengan kaidah-kaidahnya. Kemunculan metode-metode ini tentu bukan tanpa alasan. Alasan sederhana dan nyata di masyarakat bahwa metode-metode pembelajaran membaca Al-Qur&#039;an ini dikembangkan oleh para ulama atau guru/syaikh adalah membantu mempermudah dan menarik minat membaca dan mempelajari Al-Qur&#039;an di masyarakat secara umum\r\n\r\nKegiatan pendampingan dilaksanakan secara rutin setiap malam pada bulan Mei 2024, di Masjid Al-Ikhlas, Perumahan Bhakti Persada Indah, Kecamatan Ngaliyan, Kota Semarang. Adapun sasaran kegiatan pendampingan adalah semua warga yang datang di masjid untuk mengikuti kegiatan mengaji bersama dengan ustad agar lebih memahami bagaimana tata cara membaca Al-Qur&#039;an dengan menggunakan ilmu tajwid. Kegiatan mengaji bersama dilaksanakan di Masjid Al-Ikhlas setiap hari setelah selesai sholat taraweh. Mereka sangat antusias dalam mengikuti kegiatan tersebut. Pengajian di ikuti oleh anak usia dini, anak-anak, remaja, orang tua dengan jumlah 12 orang. Kegiatan pendamping juga dilakukan untuk mampu membaca Al-Qur&#039;an dengan menggunakan tajwid dan makhorijul huruf dengan baik.', '1716173003whatsapp-image-2024-05-02-at-10-28-32-6633089c14709349ca3ce252.jpeg', '2024-05-20 02:43:24', 1, 14, 0),
(33, 'Mengungkap Rahasia Sukses di Focus Group Discussion', 'FGD, atau Focus Group Discussion, bukan sekadar diskusi biasa. Bagi para pencari kerja, ini adalah momen krusial untuk menunjukkan potensi dan kepribadian mereka. Dalam dunia seleksi, berikut adalah lima kunci sukses untuk tampil beda dan meraih perhatian perekrut.\r\n\r\n1. Riset Topik:\r\nSebelum FGD, riset adalah kunci. Mempelajari isu terkini dan menggali informasi perusahaan akan memberi Anda keunggulan. Dalam diskusi, pengetahuan yang kuat akan membuat argumen Anda lebih meyakinkan, mencerminkan kualitas dan ketajaman pikiran Anda.\r\n\r\n2. Aktif Berpendapat dan Mendengarkan\r\nAktivitas adalah kunci di FGD. Berpendapat dengan percaya diri, tetapi jadilah pendengar yang baik. Menghargai ide orang lain menciptakan dinamika positif dan memberi kesan positif pada perekrut. Jangan sampai keseriusan berubah menjadi dominasi.\r\n\r\n3. Etika dan Sikap Baik\r\nFGD adalah panggung pribadi Anda. Etika dan sikap baik adalah senjata ampuh. Kontrol emosi, bicara dengan sopan, dan berikan pandangan dengan tenang. Kesopanan bukanlah kelemahan, tapi kekuatan yang menciptakan kesan positif dan profesional.\r\n\r\n4. Bangun Kepercayaan Diri (75 kata)\r\nPercaya diri adalah kunci untuk bersaing di FGD. Meski dihadapkan pada pesaing berkelas, tunjukkan keunikan dan kompetensi Anda. Kedewasaan dalam berpendapat dan sikap positif akan memberi Anda daya tarik yang tak terbantahkan.\r\n\r\n5. Sikapi Perbedaan Pendapat \r\nPerbedaan pendapat adalah hal biasa. Bagaimana Anda meresponsnya adalah yang membuat Anda berbeda. Kuasai seni menanggapi dengan sopan, tanpa mengorbankan pandangan Anda. Kontrol emosi dan kedewasaan akan membuat Anda bersinar di tengah perbedaan.\r\n\r\nFocus Group Discussion bukanlah ujian menjadi orang lain. Jadilah versi terbaik dari diri Anda. Dengan riset, komunikasi aktif, etika baik, kepercayaan diri, dan sikap dewasa, Anda akan menjadi kandidat yang tak terlupakan di mata perekrut. Latihan dan keyakinan diri adalah kunci keberhasilan di panggung FGD.\r\n', '1716173328what-is-FGD-750x460.jpg', '2024-05-20 02:48:48', 13, 15, 0),
(34, 'Pengabdian Masyarakat: Mahasiswa Geografi Bantu Kembangkan Objek Wisata Telaga Sari Garden melalui Platform Digital TikTok', 'Malang, 12 Mei 2024 - Melihat adanya potensi objek wisata Telaga Sari Garden yang berada di dusun Pandansari Lor Kecamatan Jabung Kabupaten Malang, Mahasiswa Jurusan Geografi bekerjasama dengan pengelola objek wisata melakukan projek pengabdian masyarakat dengan judul &quot;Peningkatan Kualitas Pelayanan dan Promosi Objek Wisata Telaga Sari Garden Desa Pandansari Lor Kecamatan Jabung, Kabupaten Malang&quot; Kegiatan pengabdian masyarakat ini dilakukan oleh Kelompok 1 yang terdiri atas 5 orang dari Jurusan Geografi Universitas Negeri Malang. Kegiatan ini bertujuan untuk meningkatkan kualitas pelayanan dan promosi di Objek Wisata Telaga Sari Garden. Wahyu Okta Gegana &nbsp;Putra selaku Ketua Kelompok mengungkapkan &quot;Dengan diadakanya kegiatan pengabdian masyarakat maka, Saya bersama tim akan mengupayakan membantu dan mendukung pengembangan Objek Wisata melalui promosi platform digital.\r\n\r\nKegiatan ini dilakukan tidak hanya untuk kualitas pelayan dan promosi tetapi juga bertujuan untuk memberdayakan masyarakat agar dapat berperan sebagai pelaku langsung dalam upaya peningkatan kesiapan dan kepedulian dalam memanfaatkan potensi pariwisata di suatu desa yang memiliki daya tarik tersendiri seperti yang ada di wisata Telaga Sari Garden. Selain itu, dengan adanya desa wisata juga akan memberikan dampak terhadap sektor ekonomi seperti peningkatan pendapatan dan lapangan kerja.\r\n', '1716173791gambar-1-664183fede948f61e50aa756.jpg', '2024-05-20 02:56:31', 1, 16, 0),
(35, 'Mahasiswa Universitas Bhayangkara Surabaya Sukses Menyelenggarakan Event Lomba MC &amp; Presenter', 'Mahasiswa prodi Ilmu Komunikasi Humas 6B Universitas Bhayangkara Surabaya sukses menyelenggarakan event lomba MC &amp; Presenter dengan mengusung tema &quot;Inovasi Dalam Mengembangkan Masa Depan Melalui Pembelajaran Kreatif&quot; pada Kamis (16/05/2024) di Gedung Pasca Sarjana, Universitas Bhayangkara Surabaya.\r\n\r\nTujuan diselenggarakannya event ini adalah untuk memberikan kesempatan kepada masyarakat umum dan mahasiswa di luar kampus untuk menunjukan bakat mereka dalam bidang public speaking khususnya MC dan Presenter.\r\n\r\nEvent ini diikuti oleh 14 peserta lomba MC &amp; Presenter, dengan menghadirkan juri-juri hebat Dewi Anora (MC dan Announcer Pro 2 RRI Surabaya) dan Linda Ariska Ambarsari. S,H (Juara 1 News Presenter Forwas). Dalam sambutannya, Dewi Annora mengatakan &quot;alasan saya menjadi juri dalam event MC &amp; Presenter Humas 6B ini karena banyak ilmu yang harus dibagi, karena rasanya jika tidak berbagi ilmu sayang banget.&quot;\r\n\r\nSelain itu, event ini juga dihadiri oleh Julyanto Ekantoro S.E., S.S M.Si (Kaprodi Ilmu Komunikasi Universitas Bhayangkara Surabaya) dan Dr. Fitria Widiyani RS.Sos, M. Si (Dosen Pengampu mata kuliah perencaan event Universitas Bhayangkara Surabaya). &quot;Kegiatan event ini sebetulnya mata kuliah, karena mata kuliah ini bentuknya harus event apa pun itu. Saya percaya bahwa kegiatan ini akan berdampak nantinya didunia kerja&quot;, ujar Fitria Widiyani selaku dosen pengampu mata kuliah.\r\n\r\nJuara 1 lomba MC diraih oleh Safrina Putri Indira, mahasiswa Universitas Airlangga. &quot;Perasaan yang saya rasakan pastinya senang dan nervous karena merupakan pengalaman pertama bagi saya mengikuti lomba MC. Rencana saya untuk kedepannya adalah terus menggali ilmu khususnya pada bidang MC baik di dalam maupun luar kampus&quot;, ujarnya dalam wawancara singkat.\r\n', '1716174233ae01dbf1-a495-4eac-a959-b1d9301bfc11-664791411470933c1f1c2462.jpeg', '2024-05-20 03:03:53', 1, 17, 0),
(36, 'Salahkah Kita Saling Berlomba', 'Umumnya pada setiap perlombaan akan mendapatkan hadiah, tapi kenapa pengakuan dari orang lain melebihi dari pada hadiah? Sulit untuk menerima kenyataan, namun hal tersebut adalah fakta stigma.\r\n\r\nKita mulai dengan kata &lsquo;Mungkin&rsquo;. Apa mungkin teman-teman di kepala 2 lebih kompetitif dalam berlomba? Apa mungkin di kepala 3 seattle dengan jalur perlombaannya sendiri ?\r\n\r\nLalu,Kemungkinan-kemungkinan diatas di dukung oleh bonus demografi.\r\n\r\nNamun umur dalam konteks diatas bukanlah satu-satunya hal yang dapat menghambat ide ataupun gagasan untuk saling berkompetisi, sudah banyak ide yang tergagas dari generasi kita. Tapi ide saja tidak cukup perlu adanya added value, keberlanjutan, proporsi, dan masih banyak hal lainnya.\r\n\r\nLalu, apabila kita buat 2 asumsi :\r\n\r\nFauzi senang dengan dunia pertanian, ia ber tekad untuk mengikuti perlombaan pertanian nasional karena ia tahu hadiah di level nasional pasti sangat besar, dan apabila mendapatkan uang tersebut akan dibuat bisnis pertanian oleh Fauzi.\r\nFauzi senang dengan dunia pertanian, ia bertekad mengikuti perlombaan pertanian nasional dan memenangkannya, untuk membuktikan kepada orang yang merendahkan Fauzi bahwa ia mampu berdiri di level nasional.\r\nPertanyaan adalah apakah kita semua sama seperti cerita asumsi diatas?\r\n\r\nSalah atau benar bukanlah jawaban tepat untuk menjawab semua itu, karena ukuran kebenaran maupun kesalahan kita sendiri toh yang menentukan.\r\n\r\nJiwa kompetitiflah yang membuat kita terus berjalan apa yang kita tuju, walaupun akan selalu ada yang dikorbankan. Baik pikiran, kesehatan, ataupun energi, bahkan yang lebih buruk adalah hubungan (pertemanan,sahabat,keluarga) untuk menuju apa yang kita inginkan.\r\n\r\nTeruslah berlomba, teruslah juara karena kita tahu hadiah akan habis apabila nominalnya berkurang dan pengakuan akan terlupakan apabila juara dimenangkan orang lain.', '1716174810Screenshot 2024-05-20 at 10.12.45.png', '2024-05-20 03:13:30', 15, 15, 1),
(37, '6 kebiasaan sederhana, keluar dari &lsquo;stressful&rsquo;', 'Selayaknya seorang manusia tentu kita semua pernah mengalami stres, tidak ada yang bisa menghindari dari hal tersebut.\r\n\r\nPekerjaan, percintaan, pertemanan, perkuliahan, perhitungan masa depan, adalah tragedi yang pasti akan kita temui dalam menjalani hidup sebagai seorang manusia.\r\n\r\nMungkin dahulu, sekarang, atau bahkan kedepannya pasti kita akan menemuinya, hanya waktu saja yang dapat mempertemukan kita dengan hal tersebut.\r\n\r\nApabila tragedi tersebut adalah hal yang pasti, tentu hal yang pasti tidak bisa kita hindari. Lalu bagaimana kita menyikapi?\r\n\r\nKita perlu tahu, stres bersangkar didalam pikiran dan pikiran memiliki daya imaginasi yang kompleks. Artinya kita tidak bisa menghilangkan halusinasi yang terjadi ketika stres datang. namun halusinasi bisa kita positifkan dengan kebiasaan berpikir.\r\n\r\n6 cara membiasakan pikiran\r\n1.Biasakan pikiran kita untuk tetap bekerja.\r\n\r\nOtak kita adalah organ tubuh yang paling bekerja keras, walaupun melakukan pekerjaan fisik sekalipun, otak dapat terus bekerja untuk memikirkan bagaimana pekerjaan tersebut cepat selesai.\r\n\r\nSehingga apabila kita memberi celah untuk otak kita berhenti melakukan pekerjaan yang sedang dilakukan, tentunya otak akan mencari pekerjaan lain yang kita tidak hendaki seperti berhalusinasi.\r\n\r\n2. Biasakan membagi sistem kerja pikiran.\r\n\r\nMalam hari adalah waktu yang paling sering kita lakukan untuk berhalusinasi. Hal tersebut bukan tanpa dasar, daya kerja otak sudah bekerja dengan baik namun sama halnya dengan tubuh kita yang lain, otak juga memiliki kekuatannya kapan untuk bekerja dan beristirahat.\r\n\r\nSehingga sering sekali malam hari adalah waktu untuk kita memberi celah untuk otak berhalusinasi karna daya kerja otak sudah mencapai batasnya. Oleh karenanya perlu kita atur kembali sistem kerja otak sesuai dengan porsi waktunya &ldquo;pagi-siang-malam&rdquo; dalam melakukan pekerjaan pikiran produktif.\r\n\r\n3. Biasakan menghibur pikiran\r\n\r\nOtak kita juga butuh hiburan, berilah hiburan pikiran kita dengan melakukan imaginasi positif seperti mendengarkan lagu, bermain online games, melihat pemandangan.\r\n\r\n4. Biasakan memberi ilmu pikiran\r\n\r\nOtak kita perlu diberi ilmu untuk menambah refrensi daya pikir otak, lakukan minimal 1 Minggu 1 kali untuk membaca.\r\n\r\nBanyak cara untuk membaca seperti buku, artikel, jurnal, atau apapun untuk memberi ilmu untuk otak dan pikiran kita.\r\n\r\n5. Biasakan mengasah pikiran\r\n\r\nMengasah pikiran dapat dilakukan dengan cara berdiskusi dengan lawan bicara, tempatkan posisi sebagai lawan atau oposisi dalam berdiskusi.\r\n\r\nTentunya hal tersebut akan membantu pikiran kita untuk terus terasah dan mencari keakuratan tingkat pikiran.\r\n\r\n6. Biasakan berbicara dengan pikiran\r\n\r\nBuatlah dialog interaktif dengan pikiran kita sendiri, kita bisa melakukan diruangan privasi seperti di kamar. Hal ini akan membantu kita untuk mengasah, memberi, dan menghibur pikiran kita sekaligus.\r\n\r\nSemua rasa sakit baik fisik/mental awalnya berasal dari pikiran kita. Oleh karenanya penting untuk kita mengatur dan mengelola pola pikiran dengan membiasakan pikiran.\r\n\r\nSelf-awareness\r\nLife Lessons\r\n', '1716174968Screenshot 2024-05-20 at 10.15.39.png', '2024-05-20 03:16:08', 13, 17, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `is_admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `avatar`, `is_admin`) VALUES
(14, 'Aiko', 'Mawardi', 'aikomawardi', 'aikomawardi@gmail.com', '$2y$10$zHWU5eqxLkt46yXZW4toB.8KDJs5egY5Ibc0ML8TeYc0zmBY7R/fG', '1716172574image1-8.jpg', 1),
(15, 'Khoirul', 'Azka', 'khoirulazka', 'khoirulazka@gmail.com', '$2y$10$NY44om82jl0hAge/sPclF.LrsSA3DizkmJcikH9wQ1yNhGLBnTtIm', '1716173050azka.jpg', 1),
(16, 'Bintang', 'Lazuardi', 'bintanglazuardi', 'bintanglazuardi@gmail.com', '$2y$10$hWxERxEGQKoT.tH9mlXAX.GINZFnoTJ.FT4qIkUDir7hSFqVl2rnC', '1716173639bintang.jpg', 0),
(17, 'Januarin', 'Dwi', 'januarindwi', 'januarindwinuraini@gmail.com', '$2y$10$YvMsVTiLN6TQCN72nx/gFe2OGlunh2tJqSFZA1g7pW.WJ4Pc98u2W', '1716174057januarin.jpg', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hero`
--
ALTER TABLE `hero`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_blog_category` (`category_id`),
  ADD KEY `FK_blog_author` (`author_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `hero`
--
ALTER TABLE `hero`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `FK_blog_author` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_blog_category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
