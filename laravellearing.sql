-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Feb 2023 pada 01.08
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravellearing`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `chatbots`
--

CREATE TABLE `chatbots` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answere` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `diskusis`
--

CREATE TABLE `diskusis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) NOT NULL,
  `komentar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `isimateris`
--

CREATE TABLE `isimateris` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_materi` bigint(20) UNSIGNED NOT NULL,
  `sub_bab` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `isimateris`
--

INSERT INTO `isimateris` (`id`, `id_materi`, `sub_bab`, `image`, `youtube`, `isi`, `created_at`, `updated_at`) VALUES
(1, 1, 'Pengertian Bedsite Teaching', NULL, 'L2-Jm58DPKQ', 'Bedside teaching menurut dewi dkk (2019) merupakan metode pengajaran berbasis pasien dimana mahasiswa keperawatan yang menerima pelatihan bedside teaching mempraktekan kemampuan klinis dengan melihat dan mempelajari suatu kasus secara langsung, bedside teaching merupakan salah satu metode pembelajaran yang telah lama diterapkan pada pendidikan kesehatan di samping metode-metode pembelajaran klinik lainnya.<br>\n            Sedangkan menurut Dorvil  (2016) Bedside teaching merupakan proses  pertukaran informasi penting pasien, tanggung jawab, dan akuntabilitas antara perawat yang pergi dan yang akan datang dalam upaya untuk memastikan kesinambungan perawatan yang aman dan pengiriman klinis terbaik. Dari  pengertian tersebut dapat disimpulkan bahwa bedside teaching merupakan metode pembelajaran yang dilakukan disamping tempat tidur yang melibatkan pasien secara aktif.', '2023-02-18 17:04:21', '2023-02-18 17:04:21'),
(2, 1, 'Manfaat Bedsite Teaching', NULL, NULL, 'Metode bedside teaching bermanfaat memberikan kesempatan pada mahasiswa untuk mempelajari pasien kelolaannya sehingga dapat memberikan  asuhan keperawatan dengan baik. Pada pelaksanaanya metode ini dilakukan kepada pasien hanya beberapa menit saja kemudian mahasiswa lebih banyak diskusi di ruang rapat (Yulistika, 2022).\n            Selain itu metode bedside teaching juga bermanfaat membantu mahasiswa untuk mencapai kompetensi klinis dan mengembangkan keterampilan komunikasi, karena ada kesempatan bagi mahasiswa untuk berkomunikasi langsung dengan pasien (Manginte et al., 2019).\n            ', '2023-02-18 17:04:21', '2023-02-18 17:04:21'),
(3, 1, 'Cara Melakukan Bedsite Teaching', NULL, NULL, 'Adapun Cara Melakukan Metode bedside teaching yaitu tidur serta bermanfaat memberikan kesempatan pada mahasiswa untuk mempelajari pasien kelolaannya sehingga dapat memberikan  asuhan keperawatan dengan baik. Pada pelaksanaanya metode ini dilakukan kepada pasien hanya beberapa menit saja kemudian mahasiswa lebih banyak diskusi di ruang rapat (Yulistika, 2022).\n            Selain itu metode bedside teaching juga bermanfaat membantu mahasiswa untuk mencapai kompetensi klinis dan mengembangkan keterampilan komunikasi, karena ada kesempatan bagi mahasiswa untuk berkomunikasi langsung dengan pasien (Manginte et al., 2019).\n            ', '2023-02-18 17:04:21', '2023-02-18 17:04:21'),
(4, 2, 'Defenisi Discharge Planing', NULL, 'L2-Jm58DPKQ', 'Discharge planning adalah pengembangan perencanaan yang dilakukan dan diberikan kepada pasien juga keluarga yang didalamnya terdapat penilaian pasien, pengembangan rencana yang disesuaikan dengan kebutuhan pasien, penyediaan layanan, termasuk pendidikan keluarga dan layanan rujukan serta tindak lanjut berupa evaluasi (Rezkiki & Fardilah, 2019).\n            Mustikaningsih et al., (2020) juga berpendapat bawah discharge planning memiliki pengaruh yang besar dan penting dalam pelaksanaan pelayana kesehatan yaitu dapat mengurangi rawat inap pasien, memberikan intervensi yang tepat  untuk perawatan berkelanjutan dan kebutuhan pasien, sehingga terdapat kesinambungan perawatan antara pengaturan perawatan kesehatan dan masyarakat berdasarkan kebutuhan individu.\n            ', '2023-02-18 17:04:21', '2023-02-18 17:04:21'),
(5, 2, 'Manfaat Discharge Planing', NULL, NULL, 'Adapun Manfaat Discharge planning adalah pengembangan perencanaan yang dilakukan dan diberikan kepada pasien juga keluarga yang didalamnya terdapat penilaian pasien, pengembangan rencana yang disesuaikan dengan kebutuhan pasien, penyediaan layanan, termasuk pendidikan keluarga dan layanan rujukan serta tindak lanjut berupa evaluasi (Rezkiki & Fardilah, 2019).\n            Mustikaningsih juga berpendapat bawah discharge planning memiliki pengaruh yang besar dan penting dalam pelaksanaan pelayana kesehatan yaitu dapat mengurangi rawat inap pasien, memberikan intervensi yang tepat  untuk perawatan berkelanjutan dan kebutuhan pasien, sehingga terdapat kesinambungan perawatan antara pengaturan perawatan kesehatan dan masyarakat berdasarkan kebutuhan individu.\n            ', '2023-02-18 17:04:21', '2023-02-18 17:04:21'),
(6, 2, 'Tujuan Discharge Planning', NULL, NULL, 'Menurut Lin et al., (2012) bahwa tujuan dari discharge planning ialah: <br>\n            1.	Meningkatkan pemahaman pasien dan keluarga mengenai masalah kesehatan dan kemungkinan terjadinya kompliasi dari penyakit yang di derita dan hal-hal yang perlu pembatasan yang akan diberlakukan pada pasien di rumah. <br>\n            2.	Mengembangkan kemampuan pasien dan keluarga untuk merawat dan memenuhi kebutuhan pasien dan memberikan lingkungan yang aman dan nyaman untuk pasien di rumah. <br>\n            3.	Memastikan bahwa rujukan yang diperlukan untuk perawatan selanjutnya pada pasien adalah benar.\n            ', '2023-02-18 17:04:21', '2023-02-18 17:04:21'),
(7, 3, 'Pengertian BOR', NULL, NULL, 'Menurut Lin et al., (2012) bahwa tujuan dari discharge planning ialah: <br>\n            1.	Meningkatkan pemahaman pasien dan keluarga mengenai masalah kesehatan dan kemungkinan terjadinya kompliasi dari penyakit yang di derita dan hal-hal yang perlu pembatasan yang akan diberlakukan pada pasien di rumah. <br>\n            2.	Mengembangkan kemampuan pasien dan keluarga untuk merawat dan memenuhi kebutuhan pasien dan memberikan lingkungan yang aman dan nyaman untuk pasien di rumah. <br>\n            3.	Memastikan bahwa rujukan yang diperlukan untuk perawatan selanjutnya pada pasien adalah benar.\n            ', '2023-02-18 17:04:21', '2023-02-18 17:04:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kuis`
--

CREATE TABLE `kuis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `soal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jawaban` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opsi1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opsi2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opsi3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opsi4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kuis`
--

INSERT INTO `kuis` (`id`, `soal`, `jawaban`, `opsi1`, `opsi2`, `opsi3`, `opsi4`, `created_at`, `updated_at`) VALUES
(1, 'Tujuan dari pemberian senam nifas yaitu?', '1', 'Mempercepat proses pemulihan keadaan ibu', 'Memperlambat proses pemulihan', 'Memudahkan melakukan aktivitas', 'Menambah nafsu makan', '2023-02-18 17:04:21', '2023-02-18 17:04:21'),
(2, 'Apa yang dimaksud dengan senam nifas?', '1', 'Gerakan-gerakan yang dilakukan ibu setelah melahirkan ', 'Gerakan-gerakan yang dilakukan ibu sebelum melahirkan', 'Gerakan-gerakan waktu ibu melahirkan', 'Senam nifas dilakukan pada bulan ke 20 saja', '2023-02-18 17:04:21', '2023-02-18 17:04:21'),
(3, 'Kapan ibu mulai menyusi?', '2', 'Seminggu setelah melahirkan', 'Segara setelah melahirkan', '1 hari setelah melahirkan', '1 hari sebelum melahirkan', '2023-02-18 17:04:21', '2023-02-18 17:04:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `landing_images`
--

CREATE TABLE `landing_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `landing_images`
--

INSERT INTO `landing_images` (`id`, `image`, `created_at`, `updated_at`) VALUES
(1, 'isimateri-images/X1ebIYrdvoERI8cVHY06YOB9fmnsStsaoMPVvEKO.png', '2023-02-18 17:04:22', '2023-02-18 17:04:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `materis`
--

CREATE TABLE `materis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `materis`
--

INSERT INTO `materis` (`id`, `name`, `desc`, `created_at`, `updated_at`) VALUES
(1, 'Bedsite Teaching', 'Yuk pahami lebih lanjut apa itu bedsite teaching', '2023-02-18 17:04:21', '2023-02-18 17:04:21'),
(2, 'Discharge Planning', 'Pahami lebih lanjut apa itu discharge planning', '2023-02-18 17:04:21', '2023-02-18 17:04:21'),
(3, 'BOR', 'Belajar bagaimana cara menghitung BOR', '2023-02-18 17:04:21', '2023-02-18 17:04:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_09_24_175431_create_materis_table', 1),
(6, '2022_09_25_124946_create_isimateris_table', 1),
(7, '2022_10_03_140236_create_diskusis_table', 1),
(8, '2022_10_03_164144_create_kuis_table', 1),
(9, '2022_10_03_164328_create_user_answers_table', 1),
(10, '2022_10_03_164359_create_user_results_table', 1),
(11, '2022_10_05_173823_create_welcomes_table', 1),
(12, '2022_10_23_080540_create_news_table', 1),
(13, '2022_11_26_041255_craete_chatbots_table', 1),
(14, '2022_12_13_203742_create_landing_images_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `news`
--

INSERT INTO `news` (`id`, `title`, `slug`, `image`, `excerpt`, `isi`, `created_at`, `updated_at`) VALUES
(1, 'Sebanyak 37.871 Peserta Ikuti UTBK-SBMPTN USU', 'acara-puncak-dies-natalis-ke-23-fakultas-keperawatan-usu', NULL, 'Dilansir Dari USU Rabu, 28 September 2022, Fakultas Keperawatan USU mengadakan Peringatan Dies Nata...', '<div> Dilansir Dari USU Rabu, 28 September 2022, Fakultas Keperawatan USU mengadakan Peringatan Dies Natalis ke-23 Fakultas Keperawatan USU yang merupakan acara puncak dari beberapa rangkaian kegiatan yang telah diadakan sebelumnya yaitu berupa Funwalk, Pemeriksaan Kesehatan gratis, aneka lomba dan bazaar.&nbsp;</div><div>Dies Natalis ke-23 Fakultas Keperawatan USU dihadiri oleh para undangan seperti Rektor USU, para Wakil Rektor USU, Direktur Utama RSP USU, Direktur Direktorat di lingkungan USU, Kepala Badan di lingkungan USU, para Dekan di lingkungan USU, Dinas Kesehatan Kota Medan, Dinas Kesehatan Provinsi Sumatera Utara, Institusi Pendidikan Kesehatan di kota Medan, dan undangan lainnya.&nbsp;<br>Diawali dengan Sambutan oleh Ketua Panitia Dies Natalis ke-23 Fakultas Keperawatan USU, Ikhsanuddin A. Harahap, S.Kp., MNS menyampaikan terima kasih kepada para tamu undangan yang telah hadir dalam acara puncak Dies Natalis ke-23 Fakultas Keperawatan USU dan juga kepada seluruh panitia yang terlibat pada acara ini.&nbsp;<br>&nbsp;Dilanjutkan dengan Pidato Dekan Fakultas Keperawatan USU, Dr. Dudut Tanjung, S.Kp., M.Kep., Sp.KMB menyampaikan bahwa Fakultas Keperawatan di usianya yang ke-23 mengalami perkembangan yang cukup pesat, baik dari aspek sarana, prasarana, kualitas tenaga dosen, tenaga kependidikan, serta kerjasama yang dibina baik dalam maupun luar negeri. Fakultas Keperawatan telah mendapatkan apresiasi besar oleh Rektor USU mewakili universitas bersama dengan 12 PTN se-Indonesia diajukan ke Kemendikbud Ristek RI dalam upaya Pembangunan Zona Integritas menuju Wilayah Bebas Korupsi (ZI-WBK).Rektor USU, Dr. Muryanto Amin, S.Sos., M.Si dalam sambutannya menyampaikan Selamat Ulang Tahun kepada Fakultas Keperawatan USU yang ke-23. Diibaratkan manusia, usia 23 merupakan periode awal masa dewasa seorang manusia, usia enerjik untuk melakukan hal-hal besar. Muryanto Amin juga mengingatkan bahwa dalam mengelola fakultas tidak bisa dilakukan tanpa rencana yang baik. Kegiatan apapun yang akan dilakukan tahun depan, wajib direncanakan secara matang di tahun ini agar dapat terealisasi dengan baik.Peringatan Dies Natalis ke-23 Fakultas Keperawatan USU ditutup dengan Orasi Ilmiah oleh Ketua Umum DPP PPNI, Dr. Harif Fadhillah, S.Kp., SH., M.Kep., MH. dengan judul “Penguatan Kompetensi Perawat melalui Pendidikan Keperawatan Berorientasi Global”. Institusi pendidikan keperawatan sebagai institusi yang mempersiapkan SDM Perawat yang berkualitas secara formal tidaklah mudah dan penuh tantangan dalam penyelenggaraan pendidikan keperawatan apalagi untuk menjawab tantangan global, karenanya selain mengacu pada standar kompetensi dan kecenderungan keperawatan dunia. Pendidikan keperawatan di Indonesia juga tak lepas dari isu tantangan global yaitu Disrupsi. Disrupsi merupakan penetrasi dari Revolusi Industri 4.0 (RI 4.0) dan bahkan ada beberapa negara mengembangkan diskusinya pada RI 5.0.&nbsp;</div>', '2023-02-18 17:04:22', '2023-02-18 17:04:22'),
(2, 'Dies Natalis FKEP USU', 'dies-natalis-fkep-usu', NULL, 'Dilansir Dari USU Rabu, 28 September 2022, Fakultas Keperawatan USU mengadakan Peringatan Dies Nata...', '<div> Dilansir Dari USU Rabu, 28 September 2022, Fakultas Keperawatan USU mengadakan Peringatan Dies Natalis ke-23 Fakultas Keperawatan USU yang merupakan acara puncak dari beberapa rangkaian kegiatan yang telah diadakan sebelumnya yaitu berupa Funwalk, Pemeriksaan Kesehatan gratis, aneka lomba dan bazaar.&nbsp;</div><div>Dies Natalis ke-23 Fakultas Keperawatan USU dihadiri oleh para undangan seperti Rektor USU, para Wakil Rektor USU, Direktur Utama RSP USU, Direktur Direktorat di lingkungan USU, Kepala Badan di lingkungan USU, para Dekan di lingkungan USU, Dinas Kesehatan Kota Medan, Dinas Kesehatan Provinsi Sumatera Utara, Institusi Pendidikan Kesehatan di kota Medan, dan undangan lainnya.&nbsp;<br>Diawali dengan Sambutan oleh Ketua Panitia Dies Natalis ke-23 Fakultas Keperawatan USU, Ikhsanuddin A. Harahap, S.Kp., MNS menyampaikan terima kasih kepada para tamu undangan yang telah hadir dalam acara puncak Dies Natalis ke-23 Fakultas Keperawatan USU dan juga kepada seluruh panitia yang terlibat pada acara ini.&nbsp;<br>&nbsp;Dilanjutkan dengan Pidato Dekan Fakultas Keperawatan USU, Dr. Dudut Tanjung, S.Kp., M.Kep., Sp.KMB menyampaikan bahwa Fakultas Keperawatan di usianya yang ke-23 mengalami perkembangan yang cukup pesat, baik dari aspek sarana, prasarana, kualitas tenaga dosen, tenaga kependidikan, serta kerjasama yang dibina baik dalam maupun luar negeri. Fakultas Keperawatan telah mendapatkan apresiasi besar oleh Rektor USU mewakili universitas bersama dengan 12 PTN se-Indonesia diajukan ke Kemendikbud Ristek RI dalam upaya Pembangunan Zona Integritas menuju Wilayah Bebas Korupsi (ZI-WBK).Rektor USU, Dr. Muryanto Amin, S.Sos., M.Si dalam sambutannya menyampaikan Selamat Ulang Tahun kepada Fakultas Keperawatan USU yang ke-23. Diibaratkan manusia, usia 23 merupakan periode awal masa dewasa seorang manusia, usia enerjik untuk melakukan hal-hal besar. Muryanto Amin juga mengingatkan bahwa dalam mengelola fakultas tidak bisa dilakukan tanpa rencana yang baik. Kegiatan apapun yang akan dilakukan tahun depan, wajib direncanakan secara matang di tahun ini agar dapat terealisasi dengan baik.Peringatan Dies Natalis ke-23 Fakultas Keperawatan USU ditutup dengan Orasi Ilmiah oleh Ketua Umum DPP PPNI, Dr. Harif Fadhillah, S.Kp., SH., M.Kep., MH. dengan judul “Penguatan Kompetensi Perawat melalui Pendidikan Keperawatan Berorientasi Global”. Institusi pendidikan keperawatan sebagai institusi yang mempersiapkan SDM Perawat yang berkualitas secara formal tidaklah mudah dan penuh tantangan dalam penyelenggaraan pendidikan keperawatan apalagi untuk menjawab tantangan global, karenanya selain mengacu pada standar kompetensi dan kecenderungan keperawatan dunia. Pendidikan keperawatan di Indonesia juga tak lepas dari isu tantangan global yaitu Disrupsi. Disrupsi merupakan penetrasi dari Revolusi Industri 4.0 (RI 4.0) dan bahkan ada beberapa negara mengembangkan diskusinya pada RI 5.0.&nbsp;</div>', '2023-02-18 17:04:22', '2023-02-18 17:04:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nickname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` int(11) NOT NULL DEFAULT 0,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `nickname`, `role`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Yudha Triya', 'Yudha', 2, 'yudhatriya07@gmail.com', NULL, '$2y$10$4/yOTGPqBD7/2bKvlO0ajedwBp9Xgjv6bMgQ2W97csEfuKXdDrWDW', NULL, '2023-02-18 17:04:21', '2023-02-18 17:04:21'),
(2, 'Ary Boby Siregar', 'Boby', 1, 'arybobyku@gmail.com', NULL, '$2y$10$rXNVv3eSZGvqkkJU3nDZquQpNuobYNIBDRv9ESjY2LZ65mm1Lgw5i', NULL, '2023-02-18 17:04:21', '2023-02-18 17:04:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_answers`
--

CREATE TABLE `user_answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `id_kuis` bigint(20) UNSIGNED NOT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_result_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_results`
--

CREATE TABLE `user_results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nilai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `welcomes`
--

CREATE TABLE `welcomes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `welcomes`
--

INSERT INTO `welcomes` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(1, 'TIS', 'isimateri-images/KhcGVWs3vJyMhLXMN6gN570NnNZvlvOwveS09LFR.png', '2023-02-18 17:04:21', '2023-02-18 17:04:21'),
(2, 'BOR', 'isimateri-images/hSdgDtv9U86NscL6P30rDNcrb4MnvRetEdeOOOxv.png', '2023-02-18 17:04:22', '2023-02-18 17:04:22'),
(3, 'Bedsite', 'isimateri-images/fdRgXWW6L9vB6UF75sjX7RK9ZKah8zkrCzNcQOMa.png', '2023-02-18 17:04:22', '2023-02-18 17:04:22'),
(4, 'Discharge', 'isimateri-images/A5JTB7nyv2FHcomWrZi4CRppAH4wD2l9dgpnBrn4.png', '2023-02-18 17:04:22', '2023-02-18 17:04:22'),
(5, 'Evaluasi Kerja', 'isimateri-images/jAclDZ972g4RFhL8crvoUPTan0AmwVSZDhrTQrsj.png', '2023-02-18 17:04:22', '2023-02-18 17:04:22');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `chatbots`
--
ALTER TABLE `chatbots`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `diskusis`
--
ALTER TABLE `diskusis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `isimateris`
--
ALTER TABLE `isimateris`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kuis`
--
ALTER TABLE `kuis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `landing_images`
--
ALTER TABLE `landing_images`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `materis`
--
ALTER TABLE `materis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeks untuk tabel `user_answers`
--
ALTER TABLE `user_answers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_results`
--
ALTER TABLE `user_results`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `welcomes`
--
ALTER TABLE `welcomes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `chatbots`
--
ALTER TABLE `chatbots`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `diskusis`
--
ALTER TABLE `diskusis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `isimateris`
--
ALTER TABLE `isimateris`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `kuis`
--
ALTER TABLE `kuis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `landing_images`
--
ALTER TABLE `landing_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `materis`
--
ALTER TABLE `materis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `user_answers`
--
ALTER TABLE `user_answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `user_results`
--
ALTER TABLE `user_results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `welcomes`
--
ALTER TABLE `welcomes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
