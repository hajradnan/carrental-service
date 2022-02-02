-- Host: 127.0.0.1


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrental`
--

-- --------------------------------------------------------

--
-- Admin table details
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- data for table admin
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '5c428d8875d2948607f3e3fe134d71b4', '2017-06-18 12:22:38');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE IF NOT EXISTS `tblbooking` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `message`, `Status`, `PostingDate`) VALUES
(1, 'test@gmail.com', 2, '04/12/2021', '08/12/2021', 'test message', 1, '2021-11-30 01:15:43'),
(2, 'fari@gmail.com', 4, '13/02/2022', '15/02/2022', 'Please book lamborghini for me, preferred color is black', 2, '2021-11-30 08:25:43'),
(3, 'ali@gmail.com', 7, '30/12/2021', '07/01/2022', 'I want to book it for a wedding with decoration for coming saturday', 0, '2021-10-30 02:10:06');

-- --------------------------------------------------------

--
-- Table structure for table `tblbrands`
--

CREATE TABLE IF NOT EXISTS `tblbrands` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(1, 'Maruti', '2021-11-01 21:24:34', '2022-01-21 19:40:04'),
(2, 'Exor', '2021-11-01 21:24:50', '2022-01-21 19:40:39'),
(3, 'Audi', '2021-11-02 21:25:03', '2022-01-21 19:40:46'),
(4, 'Lambhorginni', '2021-11-02 00:01:50', '2022-01-21 19:40:51'),
(5, 'LandCruiser', '2021-11-02 00:02:24', '2022-01-21 19:40:57'),
(7, 'Toyota', '2021-11-02 00:04:13', '2022-01-21 19:41:03');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE IF NOT EXISTS `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'Karachi, Pakistan																									', 'onlinecarrental@gmail.com', '0342-966528');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE IF NOT EXISTS `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(1, 'Faraiha','fari@gmail.com', '0301986966', 'Can we book car on the same day', '2022-01-21 15:03:07', 1);
(2, 'hajra adnan','hajradnan@gmail.com', '03002676008', 'abcd', '2022-01-16 01:16:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE IF NOT EXISTS `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '<p> align=justify><FONT size=2><STRONG><FONT color=#990000>(1) ACCEPTANCE OF TERMS</FONT><BR><BR></STRONG>Under these Terms and Conditions, the Company shall rent a car vehicle (hereinafter referred to as "Rental Vehicle") to the
 Renter, and the Renter shall rent such Rental Vehicle from the Company. In provision with Article , should a driver other 
than the renter drive the Rental Vehicle, this other driver must be made aware of and adhere to these Terms and Conditions. Particulars not provided in these Terms and
Conditions shall be construed in accordance with the subsidiary rules provided in Article, laws, regulations and general customs. The Company may enter into 
any special contract, provided that it is not contrary to the purport of these Terms and Conditions or the subsidiary rules, the laws, the administrative notices 
nd general customs. In the event special contracts are entered into, such special contracts shall prevail over the Terms and Conditions. Provided that the Renter 
agrees to the Terms and Conditions and the price list, etc. as set forth separately, the Renter can, upon renting the Rental Vehicle, by the method provided separately,
 make reservations by specifying in advance the class of the Rental Vehicle, the commencement date and time of rental, the renting place, the period of rental, the returning place, the driver(s) name(s), use or non-use of a child seat or other accessories, and other rental conditions (hereinafter referred to as "Renting Conditions"). With regard to microbuses, the Renter shall make reservations by additionally specifying the driving area or the destination(s), as well as the number of passengers and the purpose of rental, as part of the Renting Conditions. If the Renter or the Driver, during the period of use of the Rental Vehicle, violates these Terms and Conditions, or if it falls under any of the cases stipulated in Article, the Company may terminate the Rental Agreement without any notification or reminder whatsoever and immediately demand that the Renter or the Driver return the Rental Vehicle. In such case, the Company shall deduct the rental charge for the period the Rental Vehicle was used from the total rental charge received and return the remaining rental charge to the Renter. All agreements, rentals and acts incidental to rentals made under these Terms and Conditions shall be governed by and interpreted in accordance with law.</p>'),
(2, 'Privacy Policy', 'privacy', '<span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;">Car Rental strongly supports individual privacy, customer and consumer data rights, and the protection of consumer data. We value every consumer(s) individual right to protect data about that consumer and exercise control over use. We give all consumers the right of access to the data we collect about them and we give all consumers the option to control our use of that data—including correction and deletion upon request. Car Rental only obtains consumer data through lawful and
        transparent processes and will obtain explicit consent to collection of personal information where required by law.
        For clarification, this Policy also describes Car Rental(s) collection, use, and disclosure practices with respect to any personal information and Usage Data (as defined below) that is provided to Cars.com by parties other than the actual consumers, such as its advertisers, data providers,
        and third-party distribution partners that display Car Rental(s) vehicle listings.By using this Site, you acknowledge that you have read and agree to be bound by this Policy and agree that you are subject to the Car Rental(s) Terms of Service </span>'),
(3, 'About Us ', 'aboutus', '<span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;">Welcome to Car rental Service. Our very educated company really have an enthusiasm for displaying out a wide range of high
 quality car vehicles . The amenable and agreeable group at ‘CAR RENTAL’ has such huge numbers of faithful and long haul 
customers since we meet due dates, surpass guarantees, and go well beyond inevitably. Clients can browse an extensive variety
of vehicles. Since opening, Car Rental’s devotion to consumer loyalty has helped them 
assemble an unwavering and awesome client base, and in addition a long-standing, phenomenal group of cars.
 We pride ourselves on our notoriety for trustworthiness and decency and will work with you to locate the best answer for 
your specific car or upkeep needs.</span>'),
(11, 'FAQs', 'faqs', '<span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;">Q)What do I need to rent a car? <BR><BR>
A)Each person who intends to drive must submit a valid driver(s) license to drive, passport, and a valid means of payment (generally via credit card).
All of these items must be submitted on the day the car will be picked up. Kindly pay with an affiliated credit card. If you wish to pay in cash, 
you must also submit an item of identification (copies are acceptable) in addition to your driver(s) license.<BR><BR>
Q)Will there be a problem if the person who made the reservation is different from the one who will drive the car?<BR><BR> 
A)No. Persons who will not drive the car can also make the reservation; however, they need to confirm first the driver of the vehicle before making the reservation.<BR><BR>
Q)How many days in advance can a reservation be made? <BR><BR>
A)Vehicles can be reserved six months in advance. Reservations can also be made 30 minutes* prior to pick-up if a vehicle is required at the last minute.
*Some stations cannot accept reservations made 30 minutes or less prior to pick-up.
*If the vehicle needs to be picked up within 30 minutes of the opening time of the station, the reservation must be made the day before, 30 minutes prior to the closing time.<BR><BR>
Q)Can I rent a car without a reservation? <BR><BR>
A)Yes, as long as a vehicle is available in the station; however, we recommend making a reservation because no vehicle may be available during busy periods.<BR><BR>
Q)Can I cancel my reservation?<BR><BR>
A)Yes, reservations can be cancelled. Please contact us as soon as possible if you wish to cancel your reservation. The reservation number issued when you made the
 reservation and the email address you registered at the time of reservation are required to cancel or make changes to your reservation.</span>');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE IF NOT EXISTS `tblsubscribers` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubscribers`
--

INSERT INTO `tblsubscribers` (`id`, `SubscriberEmail`, `PostingDate`) VALUES
(1, 'ali@gmail.com', '2021-12-22 21:35:32');
(2, 'hajradnan999@gmail.com', '2022-01-14 09:51:05')

-- --------------------------------------------------------

--
-- Table structure for table `tbltestimonial`
--

CREATE TABLE IF NOT EXISTS `tbltestimonial` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltestimonial`
--

INSERT INTO `tbltestimonial` (`id`, `UserEmail`, `Testimonial`, `PostingDate`, `status`) VALUES
(1, 'test@gmail.com', 'Really enjoyed the service. Smooth dealing', '2021-12-30 12:44:31', 1),
(2, 'hajradnan999@gmail.com', 'Great experience at a great value. Highly professional', '2022-01-23 12:46:05', 1);
(3, 'fari@gmail.com', 'good experience', '2022-01-26 13:21:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE IF NOT EXISTS `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(1, 'John', 'john@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2147483647', NULL, NULL, NULL, NULL, '2021-06-18 00:59:27', NULL),
(2, 'sana', 'sana@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '8285703354', NULL, NULL, NULL, NULL, '2021-08-18 01:00:49', NULL),
(3, 'ali', 'ali@gmail.com', 'f09df7868d52e12bba658982dbd79821', '09999857868', '03/02/1990', 'Gulistan e johar', 'khi', 'Pakistan', '2021-10-20 01:01:43', '2022-01-21 08:55:34'),
(4, 'Test User', 'test@gmail.com', '5c428d8875d2948607f3e3fe134d71b4', '0303999022', NULL, 'XYZ
', 'XYZ', 'XYZ', '2021-11-18 01:03:36', '2022-01-30 01:09:52');
(5, 'hajra adnan', 'hajradnan@gmail.com', 'ab4f4d4ab813f90c8408bfcb5783bd47', '03002676008', '09/10/2001', 'Gulshan e iqbal', 'khi', 'pakistan', '2022-01-20 22:49:00', '2022-01-21 19:17:17');
(6, 'Faraiha', 'fari@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '0301986966', NULL, NULL, NULL, NULL, '2022-01-21 08:49:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicles`
--

CREATE TABLE IF NOT EXISTS `tblvehicles` (
  `id` int(11) NOT NULL,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext,
  `PricePerDay` int(11) DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblvehicles`
--

INSERT INTO `tblvehicles` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(1, 'BMW X1', 2, 'Sheer driving pleasure', 345345, 'Petrol', 3453, 7, 'bmw-new.png', 'bmw-new-1.png', 'bmw-new-2.png', 'bmw-new-3.png', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2017-06-19 11:46:23', '2017-06-20 18:38:13'),
(2, 'Ferrari', 2, 'Zoom zoom', 859, 'Diesel', 2015, 4, 'ferrari-new.png', 'ferrari-new-1.png', 'ferrari-new-2.png', 'ferrari-new-3.png', '', 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, NULL, NULL, '2017-06-19 16:16:17', '2017-06-21 16:57:11'),
(3, 'Black Panther', 4, 'Closer to roads', 563, 'Diesel', 2020, 5, 'lam-new-1.png', 'lam-new-2.png', 'lam-new-3.png', 'lam-new-4.png', '', 1, 1, 1, 1, 1, 1, NULL, 1, 1, NULL, NULL, NULL, '2017-06-19 16:18:20', '2017-06-20 18:40:11'),
(4, 'Civic', 1, 'Grace, space, pace', 150, 'Petrol', 2021, 5, 'civic-new-2.png', 'civic-new.png', 'civic-new-1.png', 'civic-new-3.png', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, NULL, '2017-06-19 16:18:43', '2017-06-20 18:44:12'),
(5, 'v8', 5, 'Passion for the road', 345345, 'Petrol', 3453, 7, 'v8-new.png','v8-new-1.png','v8-new-2.png','v8-new-3.png', NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2017-06-20 17:57:09', '2017-06-21 16:56:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbrands`
--
ALTER TABLE `tblbrands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
