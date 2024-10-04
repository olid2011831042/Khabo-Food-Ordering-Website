-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2023 at 03:14 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `code_camp_bd_fos`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(11) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(1, 'admin1', 'password123', 'admin1@example.com', 'ABCD123', '2023-06-09 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `d_id` int(11) NOT NULL,
  `rs_id` int(11) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(17, 6, 'Plain Polao Platter 1:1', 'Plain Polao served with a roast, mutton curry, jali kabab, borhani & firni', '649.00', '648c463472329.png'),
(18, 6, 'Plain Polao, Chicken Roast & Borhani', 'Plain Polao served with a roast & borhani', '299.00', '648c46e283795.png'),
(19, 6, 'Mutton Tehari Half', 'A traditional mutton teheri biriyani serving with salad.', '230.00', '648c4743267b6.png'),
(20, 6, 'Morog Polao Platter 1:5', 'A traditional morog polaw serving with salad', '1340.00', '648c47825eaf3.png'),
(22, 6, 'Kacchi Basmati 1:2', 'Mutton kacchi for standard 2 person', '699.00', '648c4822622f5.png'),
(23, 6, 'Borhani 250ml', '250ml borhani', '60.00', '648c4855591fd.png'),
(24, 6, 'Firni', 'Dessert item', '60.00', '648c48744b094.png'),
(25, 6, 'Jali kabab 1 piece', '1 peice jali kabab', '60.00', '648c489a96275.png'),
(26, 6, 'Water 500 ml', '500 ml Water', '15.00', '648c4920a965a.png'),
(28, 9, 'Oreo Cheesecake', 'Thick, creamy cake filled with cookies & cream', '275.00', '648c523063b91.png'),
(29, 9, 'Tiramisu Cake', 'Iconic italian dessert', '225.00', '648c525f62010.png'),
(30, 9, 'Pasta Alfresco', 'Prepared with white sauce, tomato sauce, beef, cheese, shrimp, garlic, mushroom, tomato, capsicum, green chili & oregano', '390.00', '648c52a34dfba.png'),
(31, 9, 'Pasta Basta', 'Prepared with white sauce, tomato sauce, chicken, cheese, garlic, mushroom, capsicum & oregano', '360.00', '648c52dbf25e5.png'),
(32, 9, 'Chicken Shawarma', 'A delicious popular dish originating from the middle east with good amount of meat chunks inside & fresh bread outside', '210.00', '648c54414e018.png'),
(34, 9, 'Chicken Pizza Delicia', '10\" - Topped with bbq sauce, tomato sauce, chicken sausage, mozzarella cheese, onion, tomato, chicken, green pepper, oregano, mushroom, cheddar cheese & mustard paste', '690.00', '648c54b1c9cc3.png'),
(36, 9, 'Pizza Bolognese', '10\'-Topped with bolognese beef, mozzarella cheese, cheddar cheese & black olive', '600.00', '648c554e7c36f.png'),
(37, 9, 'Sea Food Pasta', '1:2-  A delicious dish that combines with a variety of fresh seafood such as shrimp, clams, mussels, and scallops with pasta.', '430.00', '648c56457cee8.png'),
(38, 9, 'Dory Meal', 'Consists of vegetable fried rice, pan fried dory fish with lemon butter sauce, roasted potato & sauteed vegetable', '410.00', '648c5681b7cd0.png'),
(40, 9, 'Sizzle Meal', 'Consists of egg fried rice, bbq chicken, roasted potato & sauteed vegetable', '370.00', '648c56eb1cc07.png'),
(41, 5, 'Tandoori Zinger', 'Combining the signature Tandoori sauce on top of Hot & Crispy fillet, along with a veggie mix of capsicum, tomato, jalapeno, onion, dressed with fiery Dynamite Mayo and oozing Cheese. Experience the flavorful masterpiece.', '399.00', '648c9d46924fe.jpg'),
(42, 8, 'Naga-Tastic', 'Chicken wings/ Bangkok style fried chicken dipped in spicy naga sauce.', '399.00', '648ca64d9fe36.jpg'),
(43, 8, ' Gyro Chicken over Cajun Fries', 'Cajun falvored potato fries topped with GYRO CHICKEN, Mint Yogurt & Spicy Sauce', '379.00', '648ca6b1afd03.jpg'),
(44, 5, '6 PC Hot Wings', 'Chicken wings', '299.00', '648ca6f59956d.jpg'),
(45, 8, 'Shah Poutine', 'Potato fries topped with brown gravy, beef bacon, garlic mushroom, melted cheddar cheese...', '379.00', '648ca73bb3ef7.jpg'),
(46, 8, 'Mango Habanero Grilled Chicken', 'A glorious platter starring juicy chicken legs marinated with mouth-watering spices, sla...', '649.00', '648ca82be428c.jpg'),
(47, 5, 'Big 8 meal', 'The BIG Meal with a bigger deal is here! Enjoy Big 8 Meal with 4 pcs of Smoky Red & 4pcs of Hot & Crispy along with 2 Regular Fries & 2 Pepsi go pack only at Tk.1249.', '1249.00', '648ca8feaf951.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

CREATE TABLE `remark` (
  `id` int(11) NOT NULL,
  `frm_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `rs_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(5, 4, 'KFC', 'kfc@gmail.com', ' 09613-666111', 'https://kfcbd.com/menu/valuebox?gclid=Cj0KCQjw7aqkBhDPARIsAKGa0oI6s2GikhaKScqvsdyoz3ksAOAvf6dLPapMFWD8Kb6ciDmGXAt3LQ0aAvwuEALw_wcB', '--Select your Hours--', '9pm', '24hr-x7', ' 41, AK Famous Tower, Rankin St, Dhaka 1203', '648c094b0f7d0.png', '2023-06-16 07:03:39'),
(6, 5, 'Sultans Dine', 'sultan@gmail.com', '00000000001', 'www.sultansdine.com', '11am', '8pm', 'mon-wed', '  Ka- 11/2, Below Apex Showroom, Bashundhara Rd, Dhaka 1229 ', '648c1a3b16347.png', '2023-06-16 08:15:55'),
(8, 4, 'cheez (madchef)', 'cheez@gmail.com', '01316-195220', 'https://madchef.com.bd/', '10am', '10pm', 'Mon-Wed', '2nd Floor, House 37 Rd 12, Dhaka 1213', '648c105a9f2e8.png', '2023-06-16 07:33:46'),
(9, 6, 'Alfresco', 'alfrescobd@gmail.com', '01977-738900', 'https://www.facebook.com/Alfrescorooftop', '--Select your Hours--', '--Select your Hours--', '24hr-x7', '   House#01, road#19, sector#11, Gausul Azam Ave, Dhaka 1230\r\n  ', '648c57468ebf9.png', '2023-06-16 12:36:22');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int(11) NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`, `date`) VALUES
(5, 'Bangladeshi', '2023-06-16 08:07:22'),
(6, 'Italian', '2023-06-16 12:35:24'),
(7, 'American', '2023-06-16 12:35:50'),
(8, 'Chinese', '2023-06-16 12:35:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(11) NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
(9, 'ratul', 'Ratul', 'Bhattarcharjee', 'ratul@gmail.com', '00000000000', '123456', 'dhaka', 1, '2023-06-16 08:26:12'),
(10, 'kuddus', 'kuddus boyati', 'fokirlal', 'ratul.bhattarcharjee@northsouth.edu', '01705443109', '123456789', 'amar basa Narinda..', 1, '2023-06-17 14:36:47');

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_orders`
--

INSERT INTO `users_orders` (`o_id`, `u_id`, `title`, `quantity`, `price`, `status`, `date`) VALUES
(24, 9, 'Pasta Basta', 1, '360.00', NULL, '2023-06-16 17:10:50'),
(25, 9, 'Kacchi Platter 1:1', 1, '799.00', NULL, '2023-06-16 17:10:50'),
(26, 10, 'Firni', 1, '60.00', NULL, '2023-06-17 14:37:21'),
(27, 10, 'Plain Polao, Chicken Roast & Borhani', 46, '299.00', NULL, '2023-06-17 14:37:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `remark`
--
ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`rs_id`);

--
-- Indexes for table `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `d_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `rs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
