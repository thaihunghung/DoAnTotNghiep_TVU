-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2024 at 08:28 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tvu`
--

-- --------------------------------------------------------

--
-- Table structure for table `map_po_plos`
--

CREATE TABLE `map_po_plos` (
  `id_po_plo` int(10) UNSIGNED NOT NULL,
  `po_id` int(10) UNSIGNED NOT NULL,
  `plo_id` int(10) UNSIGNED NOT NULL,
  `isDelete` tinyint(1) NOT NULL DEFAULT 0,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `map_po_plos`
--

INSERT INTO `map_po_plos` (`id_po_plo`, `po_id`, `plo_id`, `isDelete`, `createdAt`, `updatedAt`) VALUES
(1, 1, 1, 0, '2024-05-02 05:50:30', '2024-05-02 05:50:30'),
(2, 2, 2, 0, '2024-05-02 05:50:30', '2024-05-02 05:50:30'),
(3, 3, 3, 0, '2024-05-02 05:50:30', '2024-05-02 05:50:30'),
(4, 4, 4, 0, '2024-05-02 05:50:30', '2024-05-02 05:50:30'),
(5, 5, 5, 0, '2024-05-02 05:50:30', '2024-05-02 05:50:30'),
(6, 1, 7, 0, '2024-05-02 15:43:09', '2024-05-02 15:43:09'),
(7, 1, 6, 0, '2024-05-02 15:43:09', '2024-05-02 15:43:09');

-- --------------------------------------------------------

--
-- Table structure for table `plos`
--

CREATE TABLE `plos` (
  `plo_id` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) NOT NULL,
  `ploName` varchar(255) NOT NULL,
  `program_id` int(10) UNSIGNED NOT NULL,
  `isDelete` tinyint(1) NOT NULL DEFAULT 0,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `plos`
--

INSERT INTO `plos` (`plo_id`, `description`, `ploName`, `program_id`, `isDelete`, `createdAt`, `updatedAt`) VALUES
(1, 'Vận dụng kiến thức cơ bản về khoa học tự \nnhiên, khoa học xã hội, khoa học chính trị \nvà pháp luật để giải quyết vấn đề liên quan \nchuyên ngành. ', 'PLO1', 1, 0, '2024-05-02 05:50:30', '2024-05-02 18:23:50'),
(2, 'Kết hợp kiến thức chuyên môn để giải \nquyết các vấn đề liên quan chuyên ngành', 'PLO2', 1, 0, '2024-05-02 05:50:30', '2024-05-02 18:23:59'),
(3, 'Phân tích các vấn đề tính toán phức tạp, áp \ndụng các nguyên lý của máy tính và  kiến \nthức liên quan khác để xác định các giải \npháp. ', 'PLO3', 1, 0, '2024-05-02 05:50:30', '2024-05-02 18:24:08'),
(4, 'Thiết kế, cài đặt, triển khai và đánh giá các \ngiải pháp dựa trên máy tính để đáp ứng yêu \ncầu thực tế.', 'PLO4', 1, 0, '2024-05-02 05:50:30', '2024-05-02 18:24:20'),
(5, 'Kết hợp các giải pháp có tính hệ thống để \nlựa chọn, phát triển, áp dụng, tích hợp và \nquản trị an toàn các hệ thống công nghệ \nthông tin nhằm đạt được các mục tiêu của \nngười dùng.', 'PLO5', 1, 0, '2024-05-02 05:50:30', '2024-05-02 18:24:30'),
(6, 'Sử dụng tốt tiếng Anh trong soạn thảo, đọc \r\ntài liệu và giao tiếp, đạt bậc 4/6 theo khung \r\nnăng lực ngoại ngữ của Việt Nam. ', 'PLO6', 1, 0, '2024-05-02 05:50:30', '2024-05-02 18:24:58'),
(7, 'Phối hợp tốt các kỹ năng giao tiếp trong \r\nbối cảnh nghề nghiệp.', 'PLO7', 1, 0, '2024-05-02 05:50:30', '2024-05-02 18:25:16'),
(8, 'Phối hợp hiệu quả các kỹ năng làm việc \r\nnhóm với tư cách là thành viên hoặc người \r\nlãnh đạo ', 'PLO8', 1, 0, '2024-05-02 05:50:30', '2024-05-02 18:25:31'),
(9, 'Coi trọng trách nhiệm nghề nghiệp để đưa \nra các đánh giá chuyên môn dựa trên \nchuẩn mực đạo đức và pháp luật. ', 'PLO9', 1, 0, '2024-05-02 05:50:30', '2024-05-02 18:25:41'),
(10, 'Coi trọng sự cần thiết của quá trình học tập \nsuốt đời. ', 'PLO10', 1, 0, '2024-05-02 05:50:30', '2024-05-02 18:25:57');

-- --------------------------------------------------------

--
-- Table structure for table `pos`
--

CREATE TABLE `pos` (
  `po_id` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) NOT NULL,
  `poName` varchar(255) NOT NULL,
  `program_id` int(10) UNSIGNED NOT NULL,
  `isDelete` tinyint(1) NOT NULL DEFAULT 0,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pos`
--

INSERT INTO `pos` (`po_id`, `description`, `poName`, `program_id`, `isDelete`, `createdAt`, `updatedAt`) VALUES
(1, 'Có kiến thức cơ bản về khoa học xã hội, khoa học chính trị, pháp luật, ngoại \nngữ, có tinh thần trách nhiệm và ý thức tổ chức kỷ luật tốt.', 'PO1', 1, 0, '2024-05-02 05:50:30', '2024-05-02 18:20:47'),
(2, 'Có kiến thức và kỹ năng chuyên môn trong lĩnh vực công nghệ thông tin, \r\nđáp ứng yêu cầu của cách mạng công nghiệp 4.0.', 'PO2', 1, 0, '2024-05-02 05:50:30', '2024-05-02 18:21:44'),
(3, 'Có khả năng làm việc hiệu quả trong lĩnh vực công nghệ thông tin, tạo ra \r\nnhững đóng góp tích cực cho xã hội.', 'PO3', 1, 0, '2024-05-02 05:50:30', '2024-05-02 18:21:30'),
(4, 'Có khả năng làm việc độc lập hoặc làm việc theo nhóm, hướng dẫn, giám \r\nsát những người khác thực hiện nhiệm vụ trong lĩnh vực công nghệ thông tin.', 'PO4', 1, 0, '2024-05-02 05:50:30', '2024-05-02 18:22:03'),
(5, 'Có khả năng khám phá tri thức, giải quyết vấn đề, tư duy hệ thống, phát triển \r\nphẩm chất cá nhân và nghề nghiệp thông qua hoạt động học tập suốt đời.', 'PO5', 1, 0, '2024-05-02 05:50:30', '2024-05-02 18:22:20');

-- --------------------------------------------------------

--
-- Table structure for table `programs`
--

CREATE TABLE `programs` (
  `program_id` int(10) UNSIGNED NOT NULL,
  `programName` text NOT NULL,
  `isDelete` tinyint(1) DEFAULT 0,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `programs`
--

INSERT INTO `programs` (`program_id`, `programName`, `isDelete`, `createdAt`, `updatedAt`) VALUES
(1, 'Chương trình A', 0, '2024-05-02 05:50:30', '2024-05-02 16:01:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `map_po_plos`
--
ALTER TABLE `map_po_plos`
  ADD PRIMARY KEY (`id_po_plo`),
  ADD KEY `po_id` (`po_id`),
  ADD KEY `plo_id` (`plo_id`);

--
-- Indexes for table `plos`
--
ALTER TABLE `plos`
  ADD PRIMARY KEY (`plo_id`),
  ADD KEY `program_id` (`program_id`);

--
-- Indexes for table `pos`
--
ALTER TABLE `pos`
  ADD PRIMARY KEY (`po_id`),
  ADD KEY `program_id` (`program_id`);

--
-- Indexes for table `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`program_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `map_po_plos`
--
ALTER TABLE `map_po_plos`
  MODIFY `id_po_plo` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `plos`
--
ALTER TABLE `plos`
  MODIFY `plo_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pos`
--
ALTER TABLE `pos`
  MODIFY `po_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `programs`
--
ALTER TABLE `programs`
  MODIFY `program_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `map_po_plos`
--
ALTER TABLE `map_po_plos`
  ADD CONSTRAINT `map_po_plos_ibfk_1` FOREIGN KEY (`po_id`) REFERENCES `pos` (`po_id`),
  ADD CONSTRAINT `map_po_plos_ibfk_2` FOREIGN KEY (`plo_id`) REFERENCES `plos` (`plo_id`);

--
-- Constraints for table `plos`
--
ALTER TABLE `plos`
  ADD CONSTRAINT `plos_ibfk_1` FOREIGN KEY (`program_id`) REFERENCES `programs` (`program_id`);

--
-- Constraints for table `pos`
--
ALTER TABLE `pos`
  ADD CONSTRAINT `pos_ibfk_1` FOREIGN KEY (`program_id`) REFERENCES `programs` (`program_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
