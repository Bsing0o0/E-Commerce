-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2024 at 07:49 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(255) NOT NULL,
  `user_id` int(255) NOT NULL,
  `pid` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(255) NOT NULL,
  `user_id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(101, 1, 'Bsingh', 'bsinghsangha80@gmail.com', '99008877', 'I have a friend that was looking for a laptop to make some document would you be able to recommend something'),
(102, 1, 'Jashan', 'sanghasaab98765@gmail.com', '7780493422', 'Hi, is the the price shown the final price or are their any offers?');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(255) NOT NULL,
  `user_id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `method` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `total_products` varchar(255) NOT NULL,
  `total_price` varchar(255) NOT NULL,
  `placed_on` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(5, 3, 'bsingh', '88997700', 'sanghasaab98765@gmail.com', 'credit card', '44 23st  Vancouver, BC', '3', '540', '13/01/2024', 'complete');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `product_detail` varchar(1000) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `product_detail`, `image`) VALUES
(19, 'XPS 15 Laptop', '1800', 'Tech Specs\r\nProcessor\r\n13th Generation Intel® Core™ i7-13620H Processor (24MB Cache, up to 4.9GHz)\r\n\r\nOperating System\r\n(Dell Technologies recommends Windows 11 Pro for business)\r\nWindows 11 Pro, English, French, Spanish\r\n\r\nVideo Card\r\nIntel® Arc™ Graphics A370M, 4 GB GDDR6\r\n\r\nDisplay\r\n15.6\", FHD+ 1920x1200, 60Hz, Non-Touch, Anti-Glare, 500 nit, InfinityEdge\r\n\r\nMemory \r\n32GB, 2x16GB, DDR5, 4800MT/s\r\n\r\nStorage\r\n1 TB, M.2, PCIe NVMe, SSD\r\n\r\nMicrosoft Office\r\nActivate Your Microsoft 365 For A 30 Day Trial\r\n\r\nHome and Small Business Security Solutions\r\nMcAfee® Business Protection 1-year\r\n\r\nSupport Services\r\n1Y ProSupport Next Business Day Onsite Service after remote diagnosis with HW-SW Support\r\n\r\nAccidental Damage Protection\r\nNone\r\n\r\nKeyboard\r\nEnglish US backlit keyboard\r\n\r\nPorts\r\n1 USB 3.2 Gen 2 Type-C™ port with DisplayPort™\r\n2 Thunderbolt™ 4 (USB Type-C™ 3.2 Gen 2) ports\r\n1 headset (headphone and microphone combo) port\r\n\r\n\r\nSlots\r\n1 SD-card slot\r\n1 Wedge-shaped lock slot\r\n\r\nDimensions ', 'XPS 15.jpg'),
(1001, 'Apple MacBook Air M2', '1200', '8-Core CPU\r\n8-Core GPU\r\n8GB Unified Memory\r\n256GB SSD Storage footnote \r\n16-core Neural Engine\r\n13.6-inch Liquid Retina display with True Tone²\r\n1080p FaceTime HD camera\r\nMagSafe 3 charging port\r\nTwo Thunderbolt / USB 4 ports\r\nSupport for one external display\r\nMagic Keyboard with Touch ID\r\nForce Touch trackpad\r\n30W USB-C Power Adapter', '9.jpg'),
(1002, 'HP Spectre', '1000', 'Operating system\r\n\r\n\r\nINCLUDED IN CURRENT CONFIGURATION\r\n\r\nWindows 11 Home\r\n\r\nALTERNATE OPTIONS\r\n\r\nWindows 11 Home\r\nWindows 11 Pro\r\n\r\nProcessor, graphics & memory\r\n\r\nINCLUDED IN CURRENT CONFIGURATION\r\n\r\nIntel® Core™ Ultra 5 125H (up to 4.5 GHz, 18 MB L3 cache, 14 cores, 18 threads) + Intel® Arc™ Graphics + 16 GB(Onboard)\r\n\r\nALTERNATE OPTIONS\r\n\r\nIntel® Core™ Ultra 7 155H (up to 4.8 GHz, 24 MB L3 cache, 16 cores, 22 threads) + Intel® Arc™ Graphics + 16 GB(Onboard)\r\nIntel® Core™ Ultra 7 155H (up to 4.8 GHz, 24 MB L3 cache, 16 cores, 22 threads) + Intel® Arc™ Graphics + 32 GB(Onboard)\r\n\r\nPerformance Technology\r\n\r\n\r\nIntel® Evo™ laptop\r\n\r\nChipset\r\n\r\n\r\nIntel® integrated SoC\r\n\r\nStorage\r\n\r\nINCLUDED IN CURRENT CONFIGURATION\r\n\r\n512 GB PCIe® NVMe™ TLC M.2 SSD (4x4 SSD)\r\n\r\nALTERNATE OPTIONS\r\n\r\n1 TB PCIe® NVMe™ M.2 SSD (4x4 SSD)\r\n2 TB PCIe® NVMe™ TLC M.2 SSD (4x4 SSD)\r\n\r\nExternal optical drive\r\n\r\nALTERNATE OPTIONS\r\n\r\nExternal DVD burner\r\n\r\nDisplay\r\n\r\nINCLUDED IN CURRENT CONFIGURATION\r\n\r\n14\" diagonal', 'HP Spectre.jpg'),
(1003, 'Skytech Chronos Gaming PC Desktop', '1360', 'Intel Core i5 12400F 2.5 GHz, NVIDIA RTX 4060, 1TB NVME SSD, 16GB DDR4 RAM 3200, 650W Gold PSU, 11AC Wi-Fi, Windows 11 Home 64-bit\r\nStanding screen display size	‎1\r\nDisplay Resolution	‎1920 x 1080\r\nMax screen resolution	‎3840 x 2160 pixels\r\nProcessor	‎2.5 GHz core_i5\r\nRAM	‎16 DDR4\r\nMemory Speed	‎3200 MHz\r\nHard Drive	‎1 TB SSD\r\nGraphics coprocessor	‎4060\r\nChipset brand	‎NVIDIA\r\nCard description	‎Dedicated\r\nGraphics Memory Size	‎8 GB\r\nWireless Standard	‎802.11ac\r\nNumber of USB 2.0 Ports	‎1\r\nNumber of USB 3.0 Ports	‎1\r\nBrand	‎Skytech Gaming\r\nSeries	‎Chronos\r\nItem model number	‎ST-CHRONOS-0826-W-AM\r\nHardware Platform	‎PC\r\nOperating System	‎Windows 11 Home\r\nParcel Dimensions	‎55.5 x 49 x 30.5 cm; 14.56 kg\r\nColour	‎White\r\nProcessor Brand	‎Intel\r\nNumber of Processors	‎6\r\nMemory Type	‎DDR4 SDRAM\r\nHard Disk Interface	‎Solid State\r\nHard drive rotational speed	‎7200 RPM', 'Skytech Chronos Gaming PC Desktop.jpg'),
(1004, 'ROG Strix G15CK Gaming Desktop PC', '2800', 'Standing screen display size	‎1 Inches\r\nDisplay Resolution	‎1920 x 1080\r\nProcessor	‎5 GHz core_i7\r\nRAM	‎16 GB DDR4\r\nMemory Speed	‎3200 MHz\r\nHard Drive	‎512 GB SSD\r\nGraphics coprocessor	‎NVIDIA GeForce RTX 2060 SUPER\r\nChipset brand	‎NVIDIA\r\nCard description	‎Dedicated\r\nWireless Standard	‎Bluetooth, 802.11ax\r\nBrand	‎Asus\r\nSeries	‎ROG Strix G15CK\r\nItem model number	‎G15CK-BS764\r\nHardware Platform	‎PC\r\nOperating System	‎Windows 10 Home\r\nProduct Dimensions	‎18.54 x 42.16 x 49.78 cm; 11.02 kg\r\nItem dimensions L x W x H	‎18.5 x 42.2 x 49.8 Centimetres\r\nColour	‎Star Black\r\nProcessor Brand	‎Intel\r\nNumber of Processors	‎8\r\nMemory Type	‎DDR4 SDRAM\r\nFlash memory size	‎512 GB\r\nHard Disk Interface	‎Solid State\r\nHard drive rotational speed	‎10000 RPM\r\nBatteries	‎1 Lithium Ion batteries required. (included)', 'ROG Strix G15CK Gaming Desktop PC.jpg'),
(1005, 'Skytech Nebula Gaming PC Desktop', '2000', 'Standing screen display size	‎1\r\nDisplay Resolution	‎3840 x 2160\r\nMax screen resolution	‎3840 x 2160 Pixels\r\nProcessor	‎3.7 GHz ryzen_5\r\nRAM	‎16 DDR4\r\nMemory Speed	‎3200 MHz\r\nHard Drive	‎1 TB SSD\r\nGraphics coprocessor	‎4070\r\nChipset brand	‎NVIDIA\r\nCard description	‎Dedicated\r\nGraphics Memory Size	‎12 GB\r\nWireless Standard	‎802.11ac\r\nNumber of USB 2.0 Ports	‎1\r\nNumber of USB 3.0 Ports	‎1\r\nBrand	‎Skytech Gaming\r\nSeries	‎Nebula\r\nItem model number	‎ST-NEBULA-0698-B-AM\r\nOperating System	‎Windows 11 Home\r\nParcel Dimensions	‎57.15 x 52.07 x 33.02 cm; 12.93 kg\r\nColour	‎Black\r\nProcessor Brand	‎AMD\r\nNumber of Processors	‎6\r\nMemory Type	‎DDR4 SDRAM\r\nHard Disk Interface	‎Solid State\r\nHard drive rotational speed	‎7200 RPM', 'Skytech Nebula Gaming PC Desktop.jpg'),
(1006, 'Bose QuietComFort 45', '365', 'Noise cancelling wireless headphones: the perfect balance of quiet, comfort and sound bose uses tiny mics to measure, compare and react to outside noise, cancelling it with opposite signals\r\nHigh-fidelity audio: the triport acoustic architecture offers depth and fullness volume-optimised active eq maintains balanced performance at any volume, so the bass stays consistent when turned down and the music remains clear when turned up\r\nQuiet and aware modes: choose quiet mode for full noise cancelling or aware mode to bring the outside into the around-ear headphones and hear your environment alongside your music\r\nOver-ear headphones: these comfortable wireless headphones are suitable for all-day wearing crafted with plush synthetic leather and impact-resistant nylon, and designed with minimal clamping force, they’re as luxurious as they are durable\r\nUp to 22 hours battery life: enjoy 22 hours of battery life from a single charge a quick 15-minute charge offers 3 hours when you’re on the go ', 'Bose QuietComFort 45.jpg'),
(1007, 'Apple AirPods Max', '770', 'Type: Over-ear, Wireless\r\nDriver Type: Custom acoustic design with 40mm driver\r\nActive Noise Cancellation (ANC): Yes, with Transparency mode\r\nSpatial Audio: Yes, with dynamic head tracking\r\nChip: Apple H1 chip in each ear cup\r\nBattery Life: Up to 20 hours of listening time with ANC and spatial audio enabled\r\nCharging: Lightning connector for charging, or use a compatible wireless charging case (sold separately)\r\nConnectivity: Bluetooth 5.0\r\nMicrophones: Nine microphones for voice pickup and noise cancellation\r\nSensors: Optical sensors, position sensors, and accelerometer\r\nControls: Digital crown for volume control and playback; noise control button\r\nMaterials: Stainless steel frame with breathable knit mesh canopy, and memory foam ear cushions\r\nWeight: Approximately 384.8 grams (13.6 ounces)\r\nAudio Formats Supported: AAC, Apple Lossless, and others', 'Apple AirPods Max.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(255) NOT NULL,
  `thumb1` varchar(255) NOT NULL,
  `thumb2` varchar(255) NOT NULL,
  `thumb3` varchar(255) NOT NULL,
  `thumb4` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `thumb1`, `thumb2`, `thumb3`, `thumb4`) VALUES
(1, '8.webp', '9.webp', '10.webp', '11.webp'),
(2, 'product-1-2.png', 'product-1-3.png', 'product-1-6.png', 'product-1-7.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` varchar(255) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(1, 'Balkaran', 'balkaran.singh2209@gmail.com', 'Karan@2002', 'admin'),
(101, 'Bsingh', 'bsinghsangha80@gmail.com', 'Karan@2002', 'user'),
(102, 'Bsingh2', 'sanghasaab98765@gmail.com', 'Karan@2002', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(255) NOT NULL,
  `user_id` int(255) NOT NULL,
  `pid` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1008;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
