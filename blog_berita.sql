-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2021 at 03:47 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog_berita`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(4) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(2001, 'Politics'),
(2002, 'Sport'),
(2003, 'Health'),
(2004, 'Tech');

-- --------------------------------------------------------

--
-- Table structure for table `konten`
--

CREATE TABLE `konten` (
  `id_konten` int(4) NOT NULL,
  `id_kategori` int(4) NOT NULL,
  `judul_berita` varchar(100) NOT NULL,
  `waktu_penulisan` date NOT NULL,
  `isi_berita` text NOT NULL,
  `gambar` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `konten`
--

INSERT INTO `konten` (`id_konten`, `id_kategori`, `judul_berita`, `waktu_penulisan`, `isi_berita`, `gambar`) VALUES
(1001, 2003, 'Sudah Patuhi Protokol Kesehatan, Dari Mana Doni Monardo Bisa Terpapar Covid-19?', '2021-01-23', '<b>Liputan69.com,</b> Jakarta Ketua Satuan Tugas Penanganan Covid-19 Doni Monardo meyakini, terpapar Covid-19 saat tengah makan. Sebeb menurut dia, ada momentum saat makan masker pelindung virus corona dilepasnya.<br/><br/>“Karena saat makan kita pasti lepas masker, celah penularan terbuka,\" kata Doni dalam keterangan resminya, Sabtu (23/1/2021).<br/><br/>Doni menyarankan agar kegiatan makan tidak menjadi celah penularan, maka disarankan untuk tidak makan secara beramai-ramai. Tujuannya agar menghindari celah penularan virus corona.<br/><br/>\"Sebaiknya saat makan, tidak ada orang lain di sekitar kita untuk mencegah penularan. Makan bisa sendiri atau terpisah dari orang lain, ” saran Doni.<br/><br/>Kepala BNPB itu mengakui, selama sepekan memimpin langsung penanganan bencana di Sulawesi Barat dan Kalimantan Selatan, terjadi momen makan bersama dan Doni pun melepas maskernya.<br/><br/>“Jadi saya yakin pada saat melepas masker dan makan itu saya tertular,” urai dia.<br/><br/>\r\nSebelumnnya diberitakan, Doni Monardo terdiagnosa positif Covid-19 pagi ini. Melalui siaran pers resminya, Doni mengakui hal itu dan meminta publik untuk terus waspadai ancaman Covid-19 dimana pun dan kapan pun.<br/><br/>“Dari hasil tes PCR tadi malam, pagi ini mendapatkan hasil positif Covid-19 dengan CT Value 25, Covid-19 ini begitu dekat di sekitar kita. Saya berusaha sekuat tenaga patuh dan disiplin menjalan protokol kesehatan,” Doni menandasi.', '1001.jpg'),
(1002, 2003, '21 Makanan yang Mengandung Zat Besi ini Patut Ada di Meja Makan', '2021-01-23', 'Merdeka.com - Zat besi termasuk jenis mineral penting bagi tubuh. Zat ini berperan mengangkut oksigen dari paru-paru ke setiap jaringan. Serta menghantarkan elektron dalam proses pembentukan energi dalam sel.\r\n\r\nZat besi erat kaitannya dengan hemoglobin, yaitu protein kaya zat besi dalam sel darah merah yang mengangkut oksigen ke seluruh tubuh. Dalam kondisi normal, jumlah hemoglobin bagi pria adalah 13,5 sampai 17,5 g/dL, dan 12 sampai 15,5 g/dL bagi wanita.\r\n\r\nJumlah hemoglobin yang rendah dapat menyebabkan kekurangan zat besi yang memicu buruknya kesehatan darah. Banyak kasus hemoglobin rendah, serta anemia yang berawal dari kekurangan zat besi.\r\n\r\nAnemia defisiensi zat besi (IDA) merupakan salah satu jenis anemia yang paling umum, suatu kondisi ketika darah kekurangan sel darah merah sehat yang cukup yang membantu mengangkut oksigen ke jaringan tubuh. Sesuai namanya, IDA disebabkan oleh zat besi yang tidak mencukupi.\r\n\r\nGejala umum jika tubuh anda mengalami anemia defisiensi besi tidak bisa dianggap sepele, seperti mudah lelah, lesu, merasa pusing, rambut rontok, kulit pucat dan kuku mudah patah. Walau demikian, tak sedikit orang yang mengabaikan nutrisi yang perlu dikonsumsi sehari-hari untuk memenuhi kebutuhan zat besi. Karenanya, mari terlebih dahulu kenali Hemoglobin (Hb) level normal di setiap tahapan kehidupan.', 'ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0C\0	\Z!\Z\"$\"$ÿÛ\0C'),
(1003, 2003, 'Bio Farma; 4,7 Juta Dosis Vaksin Covid-19 Siap Edar Februari', '2021-01-08', 'Jakarta, CNBC Indonesia - PT Bio Farma, induk perusahaan BUMN Farma dan sekaligus salah satu produsen vaksi dunua, menyatakan siap mproduksi 4,7 Juta dosis vaksin Covid-19 dan siap untuk langsung di gunankan pada Februari 2021. Bio Farma sudah menerima 15 juta dosis bulk vaksin Covid-19 dari Sinovac, pada 12 Januari 2021.\r\n\r\nDirektur Utama Bio Farma, Honesti Basyir mengatakan, hasil dari proses produksi bahan baku tersebut, akan melengkapi pasokan vaksin Covid-19, dalam kemasan finish product sebanyak tiga juga dosis yang sudah diterima sebelumnya pada Desember 2020 yang lalu.\r\n\r\n\"Sampai dengan hari ini (Kamis/21/1/2021), sudah ada 4 juta dosis yang sudah selesai diproduksi. Status produk- produk tersebut, saat ini sedang dalam tahap proses quality control, yang akan dikirimkan ke Badan POM untuk mendapatkan lot release agar dapat didistribusikan, dan diperkirakan sampai dengan bulan Februari 2021 mendatang, akan siap sebanyak 4 juta dosis vaksin\", Kata Honesti dalam siaran pers yang diterima CNBC Indonesia, Sabtu (23/1/2021).', 'ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0C\0\n\n\n		\n\Z%\Z# , #&\')*)-0-(0%()(ÿÛ\0C\n\n\n\n(\Z\Z(((((((((((((((((((((((((((((((((((((((((('),
(1004, 2001, 'Tanggapi SBY Soal Drama Politik AS, Hidayat Nur Wahid: Demokrasi Bukan Tuhan Apalagi Hantu', '2021-02-11', 'PR TASIKMALAYA - Hidayat Nur Wahid selaku Ketua MPR RI menanggapi pernyataan dari Presiden Republik Indonesia ke-6 Susilo Bambang Yudhoyono (SBY) terkait demokrasi di Amerika Serikat (AS).\r\n\r\nHidayat Nur Wahid menganggap apa yang disampaikan oleh SBY soal drama politik AS benar adanya.\r\n\r\nHal tersebut disampaikan Hidayat Nur Wahid melalui cuitan di Twitter @hnurwahid pada Rabu 20 Januari 2021.', 'ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0C\0\n\n\n		\n\Z%\Z# , #&\')*)-0-(0%()(ÿÛ\0C\n\n\n\n(\Z\Z(((((((((((((((((((((((((((((((((((((((((('),
(1005, 2001, 'Menelisik \'Panggung Belakang\' Risma yang Dinilai Bikin Gerah Elit Politik', '2021-03-09', 'JAKARTA - Model kepemimpinan Menteri Sosial (Mensos) Tri Rismaharini terus menjadi sasaran kritik dan tak jarang bikin gerah elit politik kita. Setelah anggota DPR, Fadli Zon, baru-baru ini Wakil Ketua MPR Hidayat Nur Wahid (HNW) melontarkan kritik terhadap langkah Risma . Di akun Twitter-nya, politikus Partai Keadilan Sejahtera (PKS) itu mengatakan bukan tugas Mensos mewacanakan penyebab erupsi Gunung Semeru, atau ikut membungkus nasi untuk korban banjir.\r\n\r\nMenurut HNW, karena bencana alam makin banyak dan luas, maka Mensos lebih baik segera membuat kebijakan-kebijakan yang solutif dan visioner, memperbaiki data-data bantuan sosial (bansos) agar rakyat benar-benar terbantu, dan Risma bisa husnul khatimah sebagai menteri.\r\n', 'ÿØÿà\0JFIF\0\0`\0`\0\0ÿþ\0;CREATOR: gd-jpeg v1.0 (using IJG JPEG v62), quality = 70\nÿÛ\0C\0\n\n\n\n\r\r#%$\"\"!&+7/&)4)!\"0A149;>>>%.DIC<H7=>;'),
(1006, 2001, 'Utang Luar Negeri RI Membengkak, Syarief Hasan Pertanyakan Komitmen Pemerintahan Jokowi', '2021-01-23', 'jpnn.com, JAKARTA - Wakil Ketua MPR RI dari Fraksi Partai Demokrat Syarief Hasan mempertanyakan komitmen pemerintah untuk tidak ketergantungan terhadap utang luar negeri.\r\n\r\nPasalnya, utang luar negeri Indonesia selama enam tahun Presiden Jokowi memimpin mencapai Rp 3.148,09 triliun atau melonjak 124 persen dari periode sebelumnya. Syarief menilai besarnya utang luar negeri yang dimiliki Indonesia harusnya menjadi prioritas pemerintah untuk dikelola dengan baik sebagaimana janji mereka.\r\n\r\n\"Utang luar negeri yang makin membludak akan makin membebani keuangan negara di tengah pandemi Covid-19 dan akan menimbulkan banyak masalah di bidang ekonomi,\" ungkap Syarief dalam keterangannya, Sabtu (23/1)', 'ÿØÿà\0JFIF\0\0`\0`\0\0ÿþ\0;CREATOR: gd-jpeg v1.0 (using IJG JPEG v62), quality = 90\nÿÛ\0C\0\n\n\n\r\r'),
(1007, 2001, 'Habis Manis FPI Dibuang: Elite Meninggalkan, Pemerintah Membubarkan', '2021-01-25', ' Kembalinya M. Rizieq Shihab ke Indonesia pada 10 November 2020 sempat membuat para anggota dan simpatisan Front Pembela Islam (FPI) bergembira. Tapi kegembiraan ini cuma berlangsung singkat, tepatnya hanya satu setengah bulan. Persis sehari sebelum tahun 2020 berakhir, FPI dibubarkan oleh pemerintahan Joko Widodo.\r\n\r\nPembubaran FPI itu dilakukan dengan dasar hukum Peraturan Pemerintah Pengganti Undang-undang Nomor 2 tahun 2017 tentang Organisasi Kemasyarakatan. Peraturan ini menganulir UU Nomor 2 tahun 2013 tentang Ormas yang dikeluarkan pada masa kepresidenan Susilo Bambang Yudhoyono. Dengan peraturan baru ini, pemerintah bisa membubarkan ormas manapun yang dianggap anti-Pancasila dan membahayakan negara\r\n\r\nFPI akhirnya menyusul Hizbut Tahrir Indonesia yang dibubarkan pada 2017. Pemerintah menggunakan Surat Keputusan Bersama (SKB) enam lembaga untuk melegalkan pembubaran FPI. Enam pejabat itu adalah Menteri Dalam Negeri, Menteri Hukum dan HAM, Menteri Komunikasi dan Informatika, Jaksa Agung, Kapolri, dan Kepala Badan Nasional Penanggulangan Terorisme.\r\n\r\n\r\nKetika Perppu ini hendak diterbitkan tahun 2017, FPI adalah salah satu yang menolak mati-matian. Kekhawatiran mereka, Perppu ini bisa digunakan untuk menjerat ormas-ormas Islam termasuk FPI sendiri. PAN, PKS, dan Partai Gerindra sudah menolak Perppu ini saat hendak disahkan di DPR, tapi sia-sia. Mereka kalah suara dari partai pendukung Jokowi di parlemen', 'ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0C\0	\Z!\Z\"$\"$ÿÛ\0C'),
(1008, 2002, 'Hasil Toyota Thailand Open: Ahsan/Hendra Gagal ke Final', '2021-09-15', 'Jakarta, CNN Indonesia -- Ganda putra Indonesia Mohammad Ahsan/Hendra Setiawan gagal melangkah ke final Toyota Thailand Open usai dihentikan Lee Yang/Wang Chi Lin 21-14, 20-22, dan 12-21 di Impact Arena, Sabtu (23/1).\r\nPoin pertama yang diraih Lee/Wang dibalas Hendra dengan menempatkan kok ke sisi kiri lawan. Usai skor imbang 2-2, Ahsan/Hendra terus memimpin, mulai dari 4-2, hingga 7-3.\r\n\r\nSempat mendapat tekanan dari Lee/Wang lewat smes keras, Ahsan/Hendra tetap tenang guna unggul 6-3. Smes bertubi-tubi dari Wang tanpa kesulitan dikembalikan Hendra dengan mengubah arah kok yang membuat Lee tidak dapat mengantisipasinya.\r\n\r\n', 'ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0C\0\n\n\n		\n\Z%\Z# , #&\')*)-0-(0%()(ÿÛ\0C\n\n\n\n(\Z\Z(((((((((((((((((((((((((((((((((((((((((('),
(1009, 2002, 'Rekomendasi Pakaian Olahraga untuk HIjabers Modern\r\n', '2021-04-21', 'jpnn.com, JAKARTA - Para wanita muslimah mungkin masih suka bingung bagaimana berolahraga dengan pakaian sporty namun tetap sesuai syariat Islam.\r\n\r\nSebab, pakaian olahraga sering tidak sesuai dengan syariat Islam, sehingga menjadi keresahan hijabers ketika ingin berolahraga. Livigi Sport Hijabs hadir menjawab keresahan para hijabers dengan menghadirkan pakaian olahraga khusus muslimah.\r\n\r\n“Kami berharap dapat memberikan sebuah inovasi yang terus menerus berkembang untuk mempermudah para muslimah bebas bergerak tanpa ada batasan,” kata Desnowidiya selaku Owner & CEO Livigi Sport Hijabs, dalam keterangan tertulis, Sabtu (23/1). Salah satu inovasi yang dihadirkan yaitu varian sportwear Radya 3 in 1 Skirt. Model ini memungkinkan para muslimah mengubah Radya Skirt menjadi kulot atau joger.', 'ÿØÿà\0JFIF\0\0`\0`\0\0ÿþ\0;CREATOR: gd-jpeg v1.0 (using IJG JPEG v62), quality = 90\nÿÛ\0C\0\n\n\n\r\r'),
(1010, 2002, 'Skandal Olahraga, Kevin-Prince Boateng Hiperseks Sampai Sering Cedera\r\n', '2021-05-13', 'VIVA –  Masih ingatkah Anda dengan sosok Kevin-Prince Boateng? Gelandang asal Ghana ini kini memperkuat klub Serie B, Monza.\r\n\r\nDi Monza, Boateng bermain bersama mantan rekan setimnya di AC Milan, Mario Balotelli. Mereka berjuang keras mengantarkan Monza promosi ke Serie A.\r\n\r\nBicara mengenai Boateng, sebenarnya dia sempat memperkuat sejumlah tim papan atas Eropa. Dari mulai Tottenham Hotspur, Borussia Dortmund, AC Milan, dan Barcelona.', 'RIFF°a\0\0WEBPVP8 ¤a\0\0I*™v>I\"D¢¢!9•Ì(„¦¶9>IDŒd\r‘ÄD\"$*çn‚Ø¢õßvbOÑ£ü3ûÞx\\ƒßgÆÿû;ügÍÇùüø/ün=Iÿwïä‡þ/`ÿÆ¿Ýz>ÿ×þûþ_~áwVßBgþiÜ¿Ü¬©‘yaù_÷ÞÙ'),
(1011, 2002, 'Skandal Olahraga, Kecanduan Seks David Beckham Tiduri Asisten Pribadi', '2021-01-06', 'VIVA – Pecinta sepakbola era 2000-an tentu sudah tidak asing lagi dengan nama David Beckham. Mantan pemain yang identik dengan tendangan melengkung mematikan itu pernah membela klub-klub besar Eropa.\r\n\r\nNama Beckham pertama kali mencuat kala dirinya berseragam Manchester United pada 1993-2003.\r\n\r\nSepanjang kariernya di Old Trafford, Beckham membantu MU memenangi 6 Premier League (1996, 1997, 1999, 2000, 2001, 2003).', 'RIFF\\õ\0\0WEBPVP8 Põ\0\0pÂ*™v>I ŒD¢¢![5Ä(„²¶SÌ\\XäÌÜÇ“3ûT¿’¹8­\'ùú½äŸŸç/Øn¤~–.õ{oÌ×§~i>ZÞöû#Ø·¡?œÿ3Ì^³î¬ÿJ?6?þ~Ô^Tx0ü§ûOÿ8úïõŸÞ¿ÏÖÿ!óù‡û'),
(1012, 2004, 'Miliarder Elon Musk Janjikan Hadiah Rp 1,4 Triliun buat Pencipta Teknologi Penangkap Karbondioksida', '2021-01-22', 'Dia mengatakan akan memberikan informasi detail lebih lanjut tentang hadiah ini pada minggu depan. \"Saya siap mendonasikan USD 100 juta sebagai hadiah bagi yang teknologi penangkapan karbon terbaik,\" tweet Musk kepada 42,7 juta pengikutnya seperti melansir laman CNBC, Jumat (22/1/2021).\r\n\r\nPenangkapan karbon adalah proses menangkap limbah karbondioksida baik langsung dari udara, atau sesaat sebelum dikeluarkan dari pabrik dan pembangkit listrik.\r\n\r\nAdapun teknologi pertama yang biasanya sering dilakukan adalah memasang filter pelarut di cerobong asap pabrik, yang menangkap emisi karbon sebelum dilepaskan ke atmosfer bumi.\r\n\r\nUsai ditangkap, karbondioksida kemudian dikirim atau disalurkan ke suatu tempat lain, di mana seringkali jauh di bawah tanah untuk mencegahnya berkontribusi pada pemanasan global.\r\n\r\nSebagian besar karbondioksida yang ditangkap tetap berada di bawah tanah, tetapi beberapa di antaranya juga dapat digunakan untuk membuat plastik dan minuman bersoda.', 'ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0C\0		\n\r\Z\Z $.\' \",#(7),01444\'9=82<.342ÿÛ\0C			\r\r2!!222222222222222222222222222222222222222222'),
(1013, 2004, 'Guru Besar Unpad Ingatkan Komjen Listyo Akan Konsekuensi Polri Melek Teknologi', '2021-01-29', 'jpnn.com, JAKARTA - Kapolri terpilih Komisaris Jenderal Listyo Sigit Prabowo diingatkan konsekuensi penggunaan teknologi secara masif dalam kepemimpinan seperti yang dijanjikannya dalam uji kelayakan dan kepatutan di Komisi Tiga DPR, Rabu lalu.\r\n\r\n“Kalau teknologi, Polri 4.0, maka jumlah personel Polri bakal berkurang,” kata Guru Besar Universitas Padjadjaran, Muradi, dalam diskusi daring Jumat, (22/1). Menurut dia, bila dilaksanakan, “Mungkin nanti tidak mencapai 800 ribu personel. Cukup 350 atau 400 ribu. Sisanya ya teknologi semua. Ini kalau mau konsekwen.”\r\n', 'ÿØÿà\0JFIF\0\0`\0`\0\0ÿþ\0;CREATOR: gd-jpeg v1.0 (using IJG JPEG v62), quality = 90\nÿÛ\0C\0\n\n\n\r\r'),
(1014, 2003, 'Seorang Mahasiswa Sedang Duduk', '2021-01-24', 'ya duduk ajalah', '');

-- --------------------------------------------------------

--
-- Table structure for table `userpassword`
--

CREATE TABLE `userpassword` (
  `id` int(4) NOT NULL,
  `userName` char(15) NOT NULL,
  `passWord` char(15) NOT NULL,
  `levelUser` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userpassword`
--

INSERT INTO `userpassword` (`id`, `userName`, `passWord`, `levelUser`) VALUES
(1, 'khoirony', 'akuoke', 1),
(2, 'arief', 'anjay', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `konten`
--
ALTER TABLE `konten`
  ADD PRIMARY KEY (`id_konten`);

--
-- Indexes for table `userpassword`
--
ALTER TABLE `userpassword`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2005;

--
-- AUTO_INCREMENT for table `konten`
--
ALTER TABLE `konten`
  MODIFY `id_konten` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1015;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
