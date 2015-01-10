-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 11, 2015 at 02:35 AM
-- Server version: 5.5.40-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `Doa`
--

-- --------------------------------------------------------

--
-- Table structure for table `doa`
--

CREATE TABLE IF NOT EXISTS `doa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` text CHARACTER SET latin1,
  `arab` text,
  `baca` text CHARACTER SET latin1,
  `arti` text CHARACTER SET latin1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `doa`
--

INSERT INTO `doa` (`id`, `nama`, `arab`, `baca`, `arti`) VALUES
(1, 'Doa Akan Tidur', 'بِسْمِكَ اللّهُمَّ اَحْيَا وَاَمُوْتُ', 'bismikalloohumma ahyaa wa amuut', 'Dengan menyebut nama-Mu ya Allah aku hidup dan aku mati'),
(2, 'Doa Mohon Penjagaan Allah di Waktu Tidur', 'اَللّهُمَّ قِنِى عَذَابَكَ يَوْمَ تَبْعَثُ عِبَادَكَ', 'alloohumma qinii ''adzaabaka yauma tab''atsu ''ibaadaka', 'Peliharalah aku dari siksa-Mu ketika Engkau bangunkan hamba-hamba-Mu'),
(3, 'Doa Bangun Tidur', 'اَلْحَمْدُ لِلّهِ الَّذِيْ اَحْيَانَا بَعْدَ مَا اَمَاتَنَا وَاِلَيْهِ النُّشُوْرِ', 'alhamdulillaahilladzii ahyaanaa ba''da maa amaatanaa wa ilaihin nusyuur', 'Segala puji bagi Allah yang telah menghidupkan kami sesudah mati (membangunkan kami dari tidur) dan hanya kepada-Nya kami dikembalikan'),
(4, 'Doa Membuka Pakaian', 'بِسْمِ اللّهِ الَّذِى لَا اِلهَ اِلَّا هُوَ', 'bismillaahil ladzii laa ilaaha illaa huwa', 'Dengan nama Allah yang tiada Tuhan selain dia'),
(5, 'Doa Masuk WC', 'اَللّهُمَّ اِنِّى اَعُوْذُبِكَ مِنَ الْخُبُثِ وَالْخَبَائِثِ', 'alloohumma inni a''uudzu bika minal khubutsi walkhobaaits', 'Yaa Allah, sesungguhnya aku berlindung kepada-Mu dari segala kejahatan dan kotoran'),
(6, 'Doa Keluar WC', 'اَلْحَمْدُ لِلّهِ الَّذِى اَذْهَبَ عَنِّى الْاَذَى وَعَافنِى', 'alhamdulillaahilladzii adzhaba ''annil adzaa wa''aafaanii', 'Segala puji bagi Allah yang telah menghilangkan kotoran dari badanku dan yang telah menyelamatkan aku'),
(7, 'Doa Sebelum Mandi', 'اَللّهُمَّ اغْفِرْلِى ذَنْبِى وَوَسِّعْ لِى فِى دَارِى وَبَارِكْ لِى فِى رِزْقِى', 'alloohummaghfirlii dzambii wawassi''lii fii daarii wabaariklii fii rizqii', 'Ya Alloh, ampunilah dosaku dan berilah keluasan dirumahku serta berkatkanlah rezekiku'),
(8, 'Doa Sebelum Berwudlu', 'اَلْحَمْدُ لِلّهِ الَّذِى جَعَلَ الْمَاءَ طَهُوْرًا', 'alhamdulillaahilladzii ja''alal maa-a thahuuraa', 'Segala puji bagi Allah yang telah menjadikan air suci'),
(9, 'Doa Memakai Pakaian Biasa', 'اَللّهُمَّ اِنِّى اَسْأَلُكَ مِنْ خَيْرِهِ وَخَيْرِ مَا هُوَلَهُ وَاَعُوْذُبِكَ مِنْ شَرِّ هِ وَشَرِّ مَا هُوَلَهُ', 'alloohumma inni as aluka min khoirihi wakhoiri maa huwa lahu waa''uudzu bika min syarrihii wa syarrimaa huwa lahu', 'Ya Allah aku minta kepada-Mu kebaikan pakaian ini dan kebaikan yang ada padanya, dan aku berlindung kepada-Mu dari kejahatan yang ada padanya'),
(10, 'Doa Memakai Pakaian Baru', 'اَلْحَمْدُ لِلّهِ الَّذِى كَسَانِى هذَا وَرَزَقَنِيْهِ مِنْ غَيْرِ حَوْلٍ مِنِّى وَلَا قُوَّةٍ', 'alhamdulillaahilladzii kasaanii haadzaa warozaqoniihi min ghoiri haulin minnii walaa quwwatin', 'Segala puji bagi Allah yang memberi aku pakaian dan memberi rezeki pakaian ini dengan tiada upaya dan kekuatan dariku'),
(11, 'Doa Ketika Bercermin', 'اَلْحَمْدُ لِلّهِ كَمَا حَسَنْتَ خَلْقِى فَحَسِّنْ خُلُقِى', 'alhamdulillaahi kamaa hasanta kholqii fahassin khuluqi', 'Segala puji bagi Allah, elokkanlah kiranya kelakuanku sebagaimana Engkau telah mengelokkan rupaku'),
(12, 'Doa Menghadapi Hidangan', 'اَللَهُمَّ بَارِكْ لَنَا فِيْمَا رَزَقْتَنَا وَقِنَا عَذَابَ النَّارِ', 'allhohumma baarik lanaa fiimaa rozaqtanaa waqinaa ''adzaabannaar', 'Ya Allah! Berilah kami keberkahan di dalam sesuatu yang telah Engkau rezekikan kepada kami dan periharalah kami dari siksa api neraka'),
(13, 'Doa Sesudah Makan dan Minum', 'اَلْحَمْدُ لِلّهِ الَّذِيْ اَطْعَمَنَا وَسَقَانَا وَجَعَلَنَا مِنَ الْمُسْلِمِيْنَ', 'alhamdulillaahilladzii ath''amanaa wasaqoonaa waja''alanaa minal muslimiin', 'Segala puji bagi Allah yang telah memberi kami makan dan minum dan telah menjadikan kami sebagai orang-orang muslim'),
(14, 'Doa Masuk Rumah', 'اَللّهُمَّ اِنِّى اَسْأَلَُكَ خَيْرَالْمُوْلَجِ وَخَيْرَ الْمُخْرَجِ بِسْمِ اللهِ وَلَجْنَا وَبِسْمِ اللهِ خَرَجْنَا وَعَلَى اللهِ تَوَكَّلْنَا', 'allhohumma innii as-aluka khoirol muulaji wa khoirol mukhroji bismillaahi walajnaa wa bismillaahi khorojnaa wa''alallohi tawakkalnaa', 'Ya Allah! Sesungguhnya aku memohon kepada Engkau kebaikan rumah yang kumasuki dan kebaikan rumah yang kutinggalkan. Dengan nama Allah aku masuk dan dengan nama Allah aku keluar rumah, dan kepada Allah aku berserah diri'),
(15, 'Doa Keluar Rumah', 'بِسْمِ اللّهِ تَوَكَّلْتُ عَلَى اللّهِ لَاحَوْلَ وَلَا قُوَّةَ اِلَّا بِاللّهِ', 'bismillaahi tawakkaltu ''alalloohi wa laa haula wa laa quwwata illaa billaah', 'Dengan menyebut nama Allah, aku berserah diri kepada-Nya dan tiada daya updaya melainkan dengan pertolongan Allah'),
(16, 'Doa Masuk Masjid', 'اَللّهُمَّ اغْفِرْلِيْ ذُنُوْبِى وَافْتَحْ لِى اَبْوَابَ رَحْمَتِكَ', 'allhohummagh firlii dzunuubii waftahlii abwaaba rohmatik', 'Ya Allah! Ampunilah dosaku dan bukalah bagiku pintu rahmatmu'),
(17, 'Doa Keluar Masjid', 'اَللّهُمَّ افْتَحْ لِيْ اَبْوَابَ فَضْلِكَ', 'alloohummaf tahlii abwaaba fadhlik', 'Ya Allah! Bukalah bagiku pintu-pintu keutamaan-Mu'),
(18, 'Doa Memohon Ampunan Untuk Diri Sendiri dan Kedua Orang Tua', 'اَللّهُمَّ اغْفِرْ لِى وَلِوَالِدَيَّ وَارْحَمْهُمَا كَمَا رَبَّيَانِى صَغِيْرًا', 'alloohummaghfirlii wa liwaalidayya warhamhumaa kamaa robbayaanii shoghiiroo', 'Ya Allah! Ampunilah aku dan kedua orang tuaku, dan kasihanilah keduanya sebagaimana mereka mengasihani aku sejak kecil'),
(19, 'Doa Diwaktu Hujan Turun', 'اَللّهُمَّ صَيِّبًا نَافِعًا', 'alloohumma shoyyiban naafi''an', 'Ya Allah! Semoga (hujan yang engkau turunkan ini) lebat dan membawa manfaat'),
(20, 'Doa Sesudah Hujan', 'مُطِرْنَا بِفَضْلِ اللهِ وَرَحْمَتِه', 'muthirnaa bifadhlillaahi wa rohmatihii', 'Kita diberi hujan karena keutamaan dan rahmat-Nya'),
(21, 'Doa Mohon Pertolongan', 'اَللّهُمَّ اَعِنِّى عَلى ذِكْرِكَ وَشُكْرِكَ وَحُسْنِ عِبَادَتِكَ', 'allhohumma a''innii ''alaa dzikrika wa syukrika wa husni ''ibaadatik', 'Ya Allah! Tolonglah aku agar dapat berdzikir kepada-Mu, bersyukur kepada-Mu dan membaguskan ibadah kepada-Mu'),
(22, 'Doa Mohon Dilapangkan Dada dan Dimudahkan Segala Urusan', 'رَبِّ اشْرَحْ لِى صَدْرِى وَيَسِّرْ لِى اَمْرِى وَاحْلُلْ عُقْدَةً مِنْ لِسَانِى يَفْقَهُوْا قَوْلِى', 'robbisy-rohlii shodrii wa yassir lii amrii wahlul ''uqdatam millisaanii yafqohuu qowlii', 'Ya Allah! Tuhan kami, lapangkanlah dadaku, mudahkanlah urusanku, lepaskanlah ikatan lisanku, agar mereka paham ucapanku'),
(23, 'Doa Sebelum Belajar', 'رَبِّ زِدْنِى عِلْمًا وَارْزُقْنِى فَهْمًا', 'robbi zidnii ''ilmaa warzuqnii fahmaa', 'Ya Allah! Tambahkanlah kepadaku ilmu dan berilah aku pegertian yang baik'),
(24, 'Doa Ketika Lupa', 'سُبْحَانَ مَنْ لَا يَنَامُ وَلَا يَسْهُوْ', 'subhaana man laa yanaamu wa laa yashuu', 'Maha suci dzat yang tidak tidur dan tidak lupa'),
(25, 'Doa Mohon Diberi Kecerdasan Berfikir', 'اَللّهُمَّ اَلْهِمْنِى رُشْدِى وَاَعِذْنِى مِنْ شَرِّ نَفْسِى', 'alloohumma alhimnii rusydii wa a''idznii min syarri nafsii', 'Ya Allah! Ilhamkanlah kepadaku kecerdasan dan lindungilah aku dari kejahatan nafsuku'),
(26, 'Doa Ketika Ada Petir', 'اَللّهُمَّ لَا تَقْتُلْنَا بِغَضَبِكَ وَلَا تُهْلِكْنَا بِعَذَابِكَ وَعَافِنَا قَبْلَ ذلِكَ', 'allhohumma laa taqtulnaa bighodhobika wa laa tuhlik naa bi''adzaabika wa''aafinaa qobla dzaalika', 'Ya Allah! Janganlah Engkau bunuh kami dengan kemurkaan-Mu, janganlah Engkau binasakan dengan siksaan-Mu, dan selamatkanlah kami sebelum kejadian ini'),
(27, 'Doa Setelah Belajar', 'اَللّهُمَّ اَرِنَا الْحَقَّ حَقًّا وَارْزُقْنَا اتِّبَاعَهُ وَاَرِنَا الْبَاطِلَ بَاطِلًا وَارْزُقْنَا اجْتِنَابَهُ', 'Allahumma arinal haqqo haqqon warzuqnat tibaa''ah wa arinal baathila baathilan warzuqnaj tinaabah', 'Ya Allah! Tunjukkanlah kepada kami kebenaran sehingga kami dapat mengikutinya dan tunjukkanlah kepada kami kejelekan sehingga kami dapat menjauhinya'),
(28, 'Doa Naik Kendaraan Darat', 'سُبْحَانَ الَّذِى سَخَّرَ لَنَا هَذَا وَمَا كُنَّا لَهُ مُقْرِنِيْنَ وَاِنَّا اِلَى رَبِّنَا لَمُنْقَلِبُوْنَ', 'Subhaanal ladzii sakh-khoro lanaa haadzaa wamaa kunnaa lahuu muqriniin wa innaa ilaa robbinaa lamungqolibuun', 'Maha Suci (Tuhan)yang telah menundukkan semua ini bagi kami padahal kami sebelumnya tidak mampu menguasainya dan sesungguhnya kami akan kembali kepada Tuhan kami'),
(29, 'Doa Naik Kendaraan Laut dan Pesawat Terbang', 'بِسْمِ اللهِ مَجْرَاهَا وَمُرْسَاهَا', 'Bismillaahi majreehaa wa mursaahaa', 'Dengan menyebut nama Allah di waktu berlayar dan berlabuhnya'),
(30, 'Doa Ketika Menghadapi Kesusahan', 'اَللّهُمَّ ﻻَ سَهْلَ اِلَّا مَا جَعَلْتَهُ سَهْلًا وَاَنْتَ تَجْعَلُ الْحَجْنَ اِذَا شِئْتَ سَهْلًا', 'Allahumma laa sahla illaa maa ja''altahuu sahlan wa anta taj''alulhajna idzaa syi''ta sahlan', 'Ya Allah, tidak ada kemudahan kecuali apa yang Engkau jadikan mudah. Dan apabila Engkau berkehendak, Engkau akan menjadikan kesusahan menjadi kemudahan'),
(31, 'Doa Ketika Marah', 'اَللّهُمَّ اغْفِرْلِى ذَنْبِى وَاَذْهِبْ غَيْظَ قَلْبِى وَآجِرْنِى مِنَ الشَّيْطَانِ الرَّجِيْمِ', 'Allahummaghfirlii dzambii wa adzhib ghoidzho qolbii wa aajirnii minasy syaithoonirrojiim', 'Wahai Tuhanku, ampunilah dosaku dan hilangkanlah akan kepanasan hatiku serta lepaskanlah aku dari godaan syetan yang terkutuk');

-- --------------------------------------------------------

--
-- Table structure for table `kuis`
--

CREATE TABLE IF NOT EXISTS `kuis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `soal` text NOT NULL,
  `keterangan` text NOT NULL,
  `a` varchar(255) NOT NULL,
  `b` varchar(255) NOT NULL,
  `c` varchar(255) NOT NULL,
  `jawaban` char(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `kuis`
--

INSERT INTO `kuis` (`id`, `soal`, `keterangan`, `a`, `b`, `c`, `jawaban`) VALUES
(1, 'بِسْمِكَ اللّهُمَّ اَحْيَا وَاَمُوْتُ', 'Doa tersebut dibaca ketika. . .', 'Akan Tidur', 'Bercermin', 'Bangun Tidur', 'a'),
(2, 'اَلْحَمْدُ لِلّهِ الَّذِيْ اَحْيَانَا بَعْدَ مَا اَمَاتَنَا وَاِلَيْهِ النُّشُوْرِ', 'Doa tersebut dibaca ketika. . .', 'Membuka Pakaian', 'Bangun Tidur', 'Akan Tidur', 'b'),
(3, 'بِسْمِ اللّهِ الَّذِى لَا اِلهَ اِلَّا هُوَ', 'Doa tersebut dibaca ketika. . .', 'Bercermin', 'Memakai Pakaian Baru', 'Membuka Pakaian', 'c'),
(4, 'اَللّهُمَّ اِنِّى اَعُوْذُبِكَ مِنَ الْخُبُثِ وَالْخَبَائِثِ', 'Doa tersebut dibaca ketika. . .', 'Masuk Rumah', 'Masuk WC', 'Keluar WC', 'b'),
(5, 'اَلْحَمْدُ لِلّهِ الَّذِى اَذْهَبَ عَنِّى الْاَذَى وَعَافنِى', 'Doa tersebut dibaca ketika. . .', 'Keluar WC', 'Keluar Rumah', 'Masuk WC', 'a'),
(6, 'اَلْحَمْدُ لِلّهِ الَّذِى جَعَلَ الْمَاءَ طَهُوْرًا', 'Doa tersebut dibaca ketika. . .', 'Hujan Turun', 'Sebelum Berwudlu', 'Sesudah Makan dan Minum', 'b'),
(7, 'اَلْحَمْدُ لِلّهِ الَّذِى كَسَانِى هذَا وَرَزَقَنِيْهِ مِنْ غَيْرِ حَوْلٍ مِنِّى وَلَا قُوَّةٍ', 'Doa tersebut dibaca ketika. . .', 'Bercermin', 'Membuka Pakaian', 'Memakai Pakaian Baru', 'c'),
(8, 'اَلْحَمْدُ لِلّهِ كَمَا حَسَنْتَ خَلْقِى فَحَسِّنْ خُلُقِى', 'Doa tersebut dibaca ketika. . .', 'Membuka Pakaian', 'Bercermin', 'Memakai Pakaian Baru', 'b'),
(9, 'اَللَهُمَّ بَارِكْ لَنَا فِيْمَا رَزَقْتَنَا وَقِنَا عَذَابَ النَّارِ', 'Doa tersebut dibaca ketika. . .', 'Menghadapi Hidangan', 'Sesudah Makan dan Minum', 'Masuk Masjid', 'a'),
(10, 'اَلْحَمْدُ لِلّهِ الَّذِيْ اَطْعَمَنَا وَسَقَانَا وَجَعَلَنَا مِنَ الْمُسْلِمِيْنَ', 'Doa tersebut dibaca ketika. . .', 'Menghadapi Hidangan', 'Sesudah Makan dan Minum', 'Keluar Masjid', 'b'),
(11, 'اَللّهُمَّ اِنِّى اَسْأَلَُكَ خَيْرَالْمُوْلَجِ وَخَيْرَ الْمُخْرَجِ بِسْمِ اللهِ وَلَجْنَا وَبِسْمِ اللهِ خَرَجْنَا وَعَلَى اللهِ تَوَكَّلْنَا', 'Doa tersebut dibaca ketika. . .', 'Keluar Masjid', 'Keluar Rumah', 'Masuk Rumah', 'c'),
(12, 'بِسْمِ اللّهِ تَوَكَّلْتُ عَلَى اللّهِ لَاحَوْلَ وَلَا قُوَّةَ اِلَّا بِاللّهِ', 'Doa tersebut dibaca ketika. . .', 'Masuk Masjid', 'Keluar Rumah', 'Masuk Rumah', 'b'),
(13, 'اَللّهُمَّ اغْفِرْلِيْ ذُنُوْبِى وَافْتَحْ لِى اَبْوَابَ رَحْمَتِكَ', 'Doa tersebut dibaca ketika. . .', 'Masuk Masjid', 'Keluar Rumah', 'Keluar Masjid', 'a'),
(14, 'اَللّهُمَّ افْتَحْ لِيْ اَبْوَابَ فَضْلِكَ', 'Doa tersebut dibaca ketika. . .', 'Masuk Rumah', 'Keluar Masjid', 'Masuk Masjid', 'b'),
(15, 'اَللّهُمَّ اغْفِرْ لِى وَلِوَالِدَيَّ وَارْحَمْهُمَا كَمَا رَبَّيَانِى صَغِيْرًا', 'Doa tersebut dibaca ketika. . .', 'Sebelum Belajar', 'Setelah Belajar', 'Memohon Ampunan Untuk Diri Sendiri dan Kedua Orang Tua', 'c'),
(16, 'اَللّهُمَّ صَيِّبًا نَافِعًا', 'Doa tersebut dibaca ketika. . .', 'Naik Kendaraan Darat', 'Hujan Turun', 'Ada Petir', 'b'),
(17, 'رَبِّ زِدْنِى عِلْمًا وَارْزُقْنِى فَهْمًا', 'Doa tersebut dibaca ketika. . .', 'Sebelum Belajar', 'Memohon Ampunan Untuk Diri Sendiri dan Kedua Orang Tua', 'Setelah Belajar', 'a'),
(18, 'سُبْحَانَ مَنْ لَا يَنَامُ وَلَا يَسْهُوْ', 'Doa tersebut dibaca ketika. . .', 'Marah', 'Lupa', 'Menghadapi Kesusahan', 'b'),
(19, 'اَللّهُمَّ لَا تَقْتُلْنَا بِغَضَبِكَ وَلَا تُهْلِكْنَا بِعَذَابِكَ وَعَافِنَا قَبْلَ ذلِكَ', 'Doa tersebut dibaca ketika. . .', 'Hujan Turun', 'Marah', 'Ada Petir', 'c'),
(20, 'اَللّهُمَّ اَرِنَا الْحَقَّ حَقًّا وَارْزُقْنَا اتِّبَاعَهُ وَاَرِنَا الْبَاطِلَ بَاطِلًا وَارْزُقْنَا اجْتِنَابَهُ', 'Doa tersebut dibaca ketika. . .', 'Memohon Ampunan Untuk Diri Sendiri dan Kedua Orang Tua', 'Setelah Belajar', 'Sebelum Belajar', 'b'),
(21, 'سُبْحَانَ الَّذِى سَخَّرَ لَنَا هَذَا وَمَا كُنَّا لَهُ مُقْرِنِيْنَ وَاِنَّا اِلَى رَبِّنَا لَمُنْقَلِبُوْنَ', 'Doa tersebut dibaca ketika. . .', 'Naik Kendaraan Darat', 'Naik Kendaraan Laut dan Pesawat Terbang', 'Hujan Turun', 'a'),
(22, 'بِسْمِ اللهِ مَجْرَاهَا وَمُرْسَاهَا', 'Doa tersebut dibaca ketika. . .', 'Hujan Turun', 'Naik Kendaraan Laut dan Pesawat Terbang', 'Naik Kendaraan Darat', 'b'),
(23, 'اَللّهُمَّ ﻻَ سَهْلَ اِلَّا مَا جَعَلْتَهُ سَهْلًا وَاَنْتَ تَجْعَلُ الْحَجْنَ اِذَا شِئْتَ سَهْلًا', 'Doa tersebut dibaca ketika. . .', 'Lupa', 'Marah', 'Menghadapi Kesusahan', 'c'),
(24, 'اَللّهُمَّ اغْفِرْلِى ذَنْبِى وَاَذْهِبْ غَيْظَ قَلْبِى وَآجِرْنِى مِنَ الشَّيْطَانِ الرَّجِيْمِ', 'Doa tersebut dibaca ketika. . .', 'Lupa', 'Marah', 'Menghadapi Kesusahan', 'b');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
