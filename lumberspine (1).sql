-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2024 at 03:33 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lumberspine`
--

-- --------------------------------------------------------

--
-- Table structure for table `adddoctorvideos`
--

CREATE TABLE `adddoctorvideos` (
  `id` int(11) NOT NULL,
  `video_name` varchar(255) NOT NULL,
  `video_path` varchar(255) NOT NULL,
  `introduction` text NOT NULL,
  `custom_file_name` varchar(255) NOT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adddoctorvideos`
--

INSERT INTO `adddoctorvideos` (`id`, `video_name`, `video_path`, `introduction`, `custom_file_name`, `uploaded_at`) VALUES
(34, '1000132501.mp4', 'uploads/video_673c4457f2bfc1.13915384.mp4', 'Bridging is an exercise that strengthens the lower back, hips, and core. Lying on your back with knees bent, you lift your hips to form a straight line from shoulders to knees. It improves spinal stability, posture, and is commonly used in rehabilitation for lower back injuries.', 'bridging ', '2024-11-19 03:25:03');

-- --------------------------------------------------------

--
-- Table structure for table `appt`
--

CREATE TABLE `appt` (
  `date` varchar(50) NOT NULL,
  `time` varchar(50) NOT NULL,
  `pid` varchar(50) NOT NULL,
  `dname` varchar(50) NOT NULL,
  `did` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appt`
--

INSERT INTO `appt` (`date`, `time`, `pid`, `dname`, `did`, `status`) VALUES
('Tue Sep 17 2024', '15:28', '5555', 'Sidhu', '192111479', 'accepted'),
('Tue Sep 17 2024', '15:28', '5555', 'Sidhu', '192111479', 'accepted'),
('Sat Sep 21 2024', '18:01', 'Krishna', 'Sidhu', '192111479', 'rejected'),
('Tue Sep 17 2024', '15:28', '5555', 'Sidhu', '192111479', 'accepted'),
('Tue Oct 08 2024', '5:01', '5555', 'Sidhu', '192110145', 'accepted'),
('Fri Oct 18 2024', '4:54', '5555', 'Sidhu', '192111479', 'pending'),
('Wed Oct 16 2024', '4:56', '5555', 'Madhu', '192211711', 'pending'),
('Wed Oct 16 2024', '5:00', '5555', 'Sidhu', '192110145', 'accepted'),
('Fri Oct 18 2024', '6:32', '9999', 'Sidhu', '192110145', 'rejected'),
('2024-11-20', '11:20 PM', '5555', '', '192111438', 'Pending'),
('2024-11-21', '2:56 PM', '5555', '', '192110172', 'accepted');

-- --------------------------------------------------------

--
-- Table structure for table `logs1`
--

CREATE TABLE `logs1` (
  `id` int(11) NOT NULL,
  `userId` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `phn` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `doctorId` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logs1`
--

INSERT INTO `logs1` (`id`, `userId`, `name`, `age`, `gender`, `phn`, `password`, `image`, `doctorId`) VALUES
(28, '192111263', 'KOja', 32, 'M', '1234567890', '123', 'uploads/66e91e6e0ddd9_figma1.png', '192111479'),
(29, '5555', 'Siav', 25, 'M', '1234567890', '55', 'uploads/66e921604f39d_image.jpg', 'undefined'),
(30, '1234', 'Puni', 25, 'M', '1234567890', '22', 'uploads/66e926aee46fa_image.jpg', 'default_doctor_id'),
(31, '0000', 'Pappa', 20, 'M', '7890456123', '$2y$10$3SgBrCtDYCT9zWLafgRGku8f75RomPwj.Pkja1FGXJzaK4KVNGDvW', 'uploads/66e92757e05ef_image.jpg', 'default_doctor_id'),
(32, '7777', 'Sidhu', 60, 'M', '1234567890', '$2y$10$UdywBfP.4.lu/MPmdaXWO.C9Nw8NrsCscMPRh4028RqMcPjPz/qTS', 'uploads/66e9287c71b7d_image.jpg', 'default_doctor_id'),
(33, '1111', 'Dileep', 21, 'M', '1234567890', '$2y$10$h3OiQ3yFHxuOC9XADHJuUuJH2qNitNAU75Brs7bMGeD8WcdBtKHh2', 'uploads/66e92919914d2_image.jpg', 'undefined'),
(34, 'Krishna', 'Krishna', 25, 'M', '1234567890', '1234', 'uploads/66e939b85e29d_image.jpg', '192111479'),
(35, 'Dileep', 'Dileep', 21, 'Male', '1234567890', '1234', 'uploads/670379da078ec_image.jpg', '192111479'),
(36, 'Sidhu123', 'Siddharth ', 22, 'Male', '+91 83413 88963', '$2y$10$r2oWRM6fQGpo.xvKCtoiI.tYCglGAcT7Fn/sNqbn7ycN6EeDTITZy', 'uploads/6704c7b18a5a4_image.jpg', '192110145'),
(37, 'Praneeth123', 'Praneeth', 22, 'Male', '9701201425', '3333', 'uploads/6704c9e4d82fb_image.jpg', '192110145'),
(38, '9999', 'Dharnesh ', 25, 'Male', '1234567890', '99', 'uploads/670dfeee8884b_image.jpg', '192110145'),
(39, '1111', 'babu', 55, 'male', '1254870963', '11', 'uploads/672d34bd3cfa0_1000140939.png', '192110145'),
(40, '1111', 'babu', 55, 'male', '1254870963', '11', 'uploads/672d34bfe804e_1000140939.png', '192110145'),
(41, '1111', 'babu', 55, 'male', '1254870963', '11', 'uploads/672d34c3b0949_1000140939.png', '192110145'),
(42, 'AAAA', 'amma', 25, 'female', '2580741369', 'AA', 'uploads/6731e8cb4777f_1000141936.jpg', '192110145'),
(43, '1234', 'dileep', 20, 'male', '7093950943', '1234', 'uploads/673c4b6b33d82_1000142862.jpg', '192110145');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `name` varchar(35) NOT NULL,
  `age` int(30) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `mob` varchar(30) NOT NULL,
  `mail` varchar(30) NOT NULL,
  `addr` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`name`, `age`, `gender`, `mob`, `mail`, `addr`) VALUES
('sidha', 25, 'mail', '1234567890', 'sidha@gmail.com', 'sidha,rajampet'),
('sidha', 25, 'mail', '1234567890', 'sidha@gmail.com', 'sidha,rajampet');

-- --------------------------------------------------------

--
-- Table structure for table `question1`
--

CREATE TABLE `question1` (
  `question_id` int(11) NOT NULL,
  `question` text NOT NULL,
  `option1` text NOT NULL,
  `option2` text NOT NULL,
  `option3` text NOT NULL,
  `option4` text NOT NULL,
  `option5` text DEFAULT NULL,
  `option6` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `question1`
--

INSERT INTO `question1` (`question_id`, `question`, `option1`, `option2`, `option3`, `option4`, `option5`, `option6`) VALUES
(1, 'Section 1 - Pain Intensity', 'I can tolerate the pain I have without having to use pain medication.\n\nநான் வலி நிவாரணி மருந்துகளைப் பயன்படுத்தாமல் எனக்கு இருக்கும் வலியை தாங்க முடியும்.\n\n', 'The pain is bad but I manage without having to take pain medication.\n \nவலி மோசமாக உள்ளது, ஆனால் வலி நிவாரணி மருந்துகளை எடுத்துக் கொள்ளாமல் நான் சமாளிக்கிறேன்', 'Pain medication provides me complete relief from pain.\n \nவலி நிவாரணி மருந்து எனக்கு வலியிலிருந்து முழு நிவாரணம் அளிக்கிறது', 'Pain medication provides me moderate relief from pain. \n\nவலி நிவாரணி மருந்து எனக்கு சிறிதளவு நிவாரணம் அளிக்கிறது.', 'Pain medication provides me little relief from pain. \n\nவலி நிவாரணி மருந்து எனக்கு சிறிதளவு நிவாரணம் அளிக்கிறது.', 'Pain medication has no effect on the pain. \n\nவலி நிவாரணி மருந்து வலியில் எந்தவிதமான விளைவையும் அளிக்கவில்லை.'),
(2, 'Section 2 - Personal Care (Washing, Dressing, etc.)', 'I can take care of myself normally without causing increased pain.\n\nஎன்னுடைய சுய பராமரிப்பு காரியங்களை வலி அதிகரிக்காமல், வழக்கம் போல செய்பா முடிகிறது.\n', 'I can take care of myself normally but it increases my pain.\n \nவலி இருந்தாலும் என்னுடைய சுய பராமரிப்பு காரியங்களை வழக்கம் போல செய்ய முடிகிறது.\n', 'It is painful to take care of myself and I am slow and careful.\n\nவலி அதிகமாக உள்ளதால், என்னுடைய சுய பராமரிப்பு காரி பங்களை கவனமாகவும், மெதுவாகவும் செய்கிறேன்.\n', 'I need help but I am able to manage most of my personal care.\n\nபெரும்பாலான கய பராமரிப்பு காரி யங்களை என்னால் செய்ய முடிந்தாலும், ஒரு சில காரியங்களில் பிறரின் உதவி தேவைப்படுகிறது.\n', 'I need help every day in most aspects of my care.\n\nபெரும்பாலான சுய பராமரிப்பு காரியங்களில் தினமும் பிறரின் உதவி தேவைப்படுகிறது.\n', 'I do not get dressed, wash with difficulty, and stay in bed.\n\nஎன்னால் எந்த சுய பராமரிப்பு காரியங்களையும் செய்ய முடிவதில்லை; படுக்கையிலேயே இருக்கிறேன்.\n'),
(3, 'Section 3 - Lifting', 'I can lift heavy weights without increased pain.\n என்னால் அதிக எடையுள்ள பொருட்களை வலி அதிகரிக்காமலேயே தூக்க முடிகிறது.\n', 'I can lift heavy weights but it causes increased pain. \n\nஎன்னால் அதிக எடையுள்ள பொருட்களை தூக்க முடிகிறது; ஆனால் வலி அதிகரிக்கிறது.\n', 'Pain prevents me from lifting heavy weights off the floor, but I can manage if weights are conveniently positioned, e.g. on a table.\n\nவலியின் காரணமாக அதிக எடையுள்ள பொருட்களை தரையிலிருந்து தூக்க முடிவதில்லை;\nஆனால் சரியான உயரத்திலிருந்து பொருட்களை தூக்க முடிகிறது (எ.கா) மேசை மேலிருந்து,\n', 'Pain prevents me from lifting heavy weights but I can manage light to medium weights if they are conveniently positioned.\n \nவளியின் காரணமாக அதிக எடையுள்ள பொருட்களை தூக்க முடிவதில்லை; ஆனால் குறைவான\nமற்றும் மிதமான எடையுள்ள பொருட்களை சரியான உமரத்திலிருந்து துாக்க முடிகிறது.\n', ' I can lift only very light weights.\n\nஎன்னால் மிகவும் குறைவான எடையுள்ள பொருட்களை மட்டுமே தூக்க முடிகிறது', '\nI cannot lift or carry anything at all.\n\nஎன்னால் எந்த பொருளையும் தூக்கவோ, தூக்கி கொண்டு நடக்கவோ முடிவதில்லை.\n'),
(4, 'Section 4 - Walking', 'Pain does not prevent me from walking any distance. \n\nஎவ்வளவு துமரம் நடப்பதற்கும் வலி தடையாக இருப்பதில்லை.\n', 'Pain prevents me from walking more than 1 mile.\n\nவலியின் காரணமாக 1 கிலோ மீட்டருக்கு மேல் என்னால் நடக்கமுடிவதில்லை.\n', 'Pain prevents me from walking more than ½ mile.\n\n\nவலியின் காரணமாக 250 மீட்டருக்கு மேல் என்னால் நடக்கமுடிவதில்லை.\n', 'Pain prevents me from walking more than ¼ mile.\n\nவளியின் காரணமாக 100 மீட்டருக்கு மேல் என்னால் நடக்கமுடிவதில்லை.\n\n', 'I can only walk using crutches or a cane.\n\nஊன்றுகோல் அல்லது கை தடியின் உதவியோடுதான் என்னால் நடக்க முடிகிறது.\n\n', 'I am in bed most of the time and have to crawl to move.\n\nஊன்றுகோல் அல்லது கை தடியின் உதவியோடுதான் என்னால் நடக்க முடிகிறது.\n\n'),
(5, 'Section 5 - Sitting', 'I can sit in any chair as long as I like.\n\nஎந்த வகையான இருக்கையிலும் எவ்வளவு நேரம் வேண்டுமானாலும் என்னால் உட்கார முடிகிறது.\n', 'I can only sit in my favorite chair as long as I like.\n\nஎனக்கு மிகவும் வாட் பான இருக்கையில், எவ்வளவு நேரம் வேண்டுமானாலும் என்னால் உட்கார முடிகிறது.\n', 'Pain prevents me from sitting more than 1 hour. \n\nவலியின் காரணமாக 1 மணி நேரத்திற்கு மேல் என்னால் உட்கார முடிவதில்லை.\n', 'Pain prevents me from sitting more than ½ hour. \n \nவளிரின் காரணமாக ½மணி நேரத்திற்கு மேல் என்னால் உட்கார முடிவதில்லை.\n', 'Pain prevents me from sitting more than 10 minutes. \n \nவலியின் காரணமாக 10 நிமிடத்திற்கு மேல் என்னால் உட்கார முடிவதில்லை.\n', 'Pain prevents me from sitting at all.\n \n வலியின் காரணமாக என்னால் உட்காரவே முடிவதில்லை.\n'),
(6, 'Section 6 - Standing', 'I can stand as long as I want without increased pain. \n\nஎன்னால் வளி அதிகரிக்காமல் எவ்வளவு நேரம் வேண்டுமானலும் நிற்க முடிகிறது.\n', 'I can stand as long as I want but it increases my pain. \n\nஎன்னால் எவ்வளவு நேரம் வேண்டுமானாலும் நிற்க முடியும்; ஆனால் வலி அதிகாக்கிறது.\n', 'Pain prevents me from standing for more than 1 hour. \n\nவலியின் காரணமாக 1 மணி நேரத்திற்கு மேல் என்னால் நிற்கமுடிவதில்லை.\n', 'Pain prevents me from standing for more than ½ hour. \n\nவலியின் காரணமாக ½ மணி நேரத்திற்கு மேல் என்னால் நிற்கமுடிவதில்லை.\n', 'Pain prevents me from standing for more than 10 minutes. \n\nவலியின் காரணமாக 10 நிமிடத்திற்கு மேல் என்னால் நிற்கமுடிவதில்லை.\n', 'Pain prevents me from standing at all. \n\nவலியின் காரணமாக என்னால் நிற்கவே முடிவதில்லை.\n'),
(7, 'Section 7 - Sleeping', 'Pain does not prevent me from sleeping well. \n\nவலியின் காரணமாக என் தூக்கம் எப்போதுமே தடைபடுவதில்லை.\n\n', 'I can sleep well only by using pain medication. \n\nவலியின் காரணமாக என் தூக்கம் எப்போதாவது தடைபடுகிறது.\n\n', 'Even when I take pain medication, I sleep less than 6 hours. \n\nவலியின் காரணமாக என்னால் 6 மணி நேரத்திற்கும் குறைவாகவே தூதூங்க முடிகிறது.\n', 'Even when I take pain medication, I sleep less than 4 hours. \n\nவலியின் காரணமாக என்னால் 4 மணி நேரத்திற்கும் குறைவாகவே தூங்க முடிகிறது.\n\n', 'Even when I take pain medication, I sleep less than 2 hours. \n\nவலான் காரணமாக என்னால் 2 மணி நேரத்திற்கும் குறைவாகவே தாங்க முடிகிறது.\n', 'Pain prevents me from sleeping at all. \n\nவலியின் காரணமாக என்னால் தூங்கவே முடிவதில்லை.\n'),
(8, 'Section 8 - Social Life', 'My social life is normal and does not increase my pain. \n\nஎனது பாலியல் வாழ்க்கை இயல்பாக உள்ளது; வலி அதிகரிப்பதில்லை.\n\n', 'My social life is normal, but it increases my level of pain. \n\nஎனது பாலியல் வாழ்க்கை இயல்பாக உள்ளது; ஆனால் சற்று வலி அதிகரிக்கிறது.\n', 'Pain prevents me from participating in more energetic activities. \n\nஎனது பாலியல் வாழ்க்கை ஏறக்குறைய இயல்பாக உள்ளது; ஆனால் வலி அதிகமாக உள்ளது.\n', 'Pain prevents me from going out very often. \n\nஎனது பாலியல் வாழ்க்கை வலியின் காரணமாக கடுமையாக தடைபடுகிறது.\n', 'Pain has restricted my social life to my home. \n\nஎனது பாலியல் வாழ்க்கை வலியின் காரணமாக ஏறக்குறைய நிகழ்வதே இல்லை.\n', 'I have no social life because of my pain. \n\nஎனது பாலியல் வாழ்க்கை வலியின் காரணமாக முற்றிலுமாக தடைபடுகிறது.\n'),
(9, 'Section 9 - Traveling', 'I can travel anywhere without increased pain. \n\nஎனது சமூக வாழ்வு இயல்பாக உள்ளது; வளி அதிகரிப்பதில்லை.\n', 'I can travel anywhere but it increases my pain. \n\nவலி அதிகமாக இருந்தாலும் எனது சமூக வாழ்வு இயல்பாக உள்ளது.\n', 'Pain restricts me to trips of less than 2 hours. \n\nவலி எனது சமூக வாழ்வில் குறிப்பிடதக்க விளைவுகள் ஒன்றையும் ஏற்படுத்தவில்லை என்றாலும் விளையாட்டு போன்ற சுறுசுறுப்பான செயல்களில் ஈடுபடுவதற்கு தடையாக உள்ளது.\n\n', 'Pain restricts me to trips of less than 1 hour. \n\nஎனது சமூக வாழ்வை வளி தடை செய்கிறது; என்னால் அதிகமாக வெளியே செல்ல முடிவதில்லை.\n\n', 'Pain restricts me to short necessary trips under 30 minutes. \n\nவலியின் காரணமாக எனது சமூக வாழ்வு வீட்டிற்குள்ளேயே முடங்கி உள்ளது.\n\n', 'Pain prevents me from traveling except to receive care. \n\nவலியின் காரணமாக எனது சமூக வாழ்வு முற்றிலுமாக தடைபட்டு உள்ளது.\n'),
(10, 'Section 10 - Employment/Homemaking', 'My normal homemaking/job activities do not cause pain.\n\nவலியே வராமல் எங்கு வேண்டுமானாலும் என்னால் பயணம் செய்ய முடிகிறது.\n', 'My normal homemaking/job activities increase my pain, but I can still perform all that is required of me.\n\nஎங்கு வேண்டுமானாலும் என்னால் பயணம் செய்ய முடிகிறது; ஆனால் வலி அதிகரிக்கிறது.\n\n', 'I can perform most of my homemaking/job duties, but pain prevents me from performing more physically stressful activities (ex. Lifting, vacuuming).\n\nவளிரின் காரணமாக 2 மணி நேரத்திற்கு மேலாக என்னால் பயணம் செய்ய முடிவதில்லை.\n\n', 'Pain prevents me from doing anything but light duties.\n\nவலியின் காரணமாக 1 மணி நேரத்திற்கும் குறைவாகவே என்னால் பயணம் செய்ய முடிகிறது.\n', 'Pain prevents me from doing even light duties.\n\nவலிமீன் காரணமாக 30 நிமிடத்திற்கு குறைவான மற்றும் தேவையான பயணங்களையே செய்யமுடிகிறது\n', 'Pain prevents me from performing any job/homemaking chores.\n\nவலியின் காரணமாக மருத்துவ சிகிச்சைக்கு செல்வதை தவிர வேறு எங்கும் பயணம் செய்ய முடிவதில்லை.\n');

-- --------------------------------------------------------

--
-- Table structure for table `questionaries`
--

CREATE TABLE `questionaries` (
  `user_Id` varchar(100) NOT NULL,
  `score` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `name` varchar(100) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `mob` varchar(30) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `dept` varchar(30) NOT NULL,
  `place` varchar(30) NOT NULL,
  `docid` varchar(30) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `cpass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`name`, `mail`, `mob`, `gender`, `dept`, `place`, `docid`, `pass`, `cpass`) VALUES
('', '', '', '', '', '', '', '', ''),
('Praneeth', 'Praneeth@gmail.com', '9876543210', 'Male', 'Cse', 'Chennai', '192111438', '4038', ''),
('NIMMAKAYALA DILEEP KUMAR REDDY K', 'nimmakayaladileepkumarreddy@gmail.com', '7093950943', 'Male', 'Cse', 'Chennai', '192110172', '4938', ''),
('Sidhu', 'Sidhu@gmail.com', '7093950943', 'Male', 'Ortho', 'Chennai ', '192111479', '6754', ''),
('', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', ''),
('Madhu', 'madhu@gamil.com', '9885426287', 'Female', 'Cse', 'Chennai', '192211711', '4444', ''),
('Kumar', 'Kumar@gmail.com', '+917093950943', 'Male', 'Cse', 'Chennai', '192110185', '1234', '1234'),
('', '', '', '', '', '', '', '', ''),
('Sidhu', 'Sidhu@gmail.com', '+917093950943', 'Male', 'Cse', 'Chennai', '192110145', '2222', '2222'),
('', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', ''),
('rama', 'rama@123', '0981237654', 'male', 'bio', 'chennai', '192211711', '6666', '6666'),
('rama', 'rama@123', '0981237654', 'male', 'bio', 'chennai', '192211711', '6666', '6666'),
('rama', 'rama@123', '0981237654', 'male', 'bio', 'chennai', '192211711', '6666', '6666'),
('rama', 'rama@123', '0981237654', 'male', 'bio', 'chennai', '192211711', '6666', '6666'),
('rama', 'rama@123', '0981237654', 'male', 'bio', 'chennai', '192211711', '6666', '6666'),
('', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', ''),
('rama', 'rama@123', '1234567890', 'male', 'bio', 'chennai', '192211711', '6666', '6666'),
('rama', 'rama@123', '1234567890', 'male', 'bio', 'chennai', '192211711', '6666', '6666'),
('rama', 'rama@123', '1234567890', 'male', 'bio', 'chennai', '192211711', '6666', '6666'),
('rama', 'rama@123', '1234567890', 'male', 'bio', 'chennai', '192211711', '6666', '6666'),
('rama', 'rama@123', '1234567890', 'male', 'bio', 'chennai', '192211711', '6666', '6666'),
('rama', 'rama@123', '1234567890', 'male', 'bio', 'chennai', '192211711', '6666', '6666'),
('', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', ''),
('rama', 'rama@123', '1234567890', 'male', 'bio', 'chennai', '192211711', '6666', '6666'),
('', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', ''),
('lakshman', 'lakshman@123', '6666666666', 'male', 'cse', 'kadap', '192110673', '0000', '0000'),
('', '', '', '', '', '', '', '', ''),
('indu', 'indu@123', '7777777777', 'female', 'cse', 'chennai', '192110185', '4545', '4545'),
('indu', 'indu@123', '7777777777', 'female', 'cse', 'chennai', '192110185', '4545', '4545'),
('', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_results`
--

CREATE TABLE `user_results` (
  `date` varchar(200) NOT NULL,
  `result_id` int(11) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `total_score` int(11) NOT NULL,
  `disability_level` varchar(100) DEFAULT NULL,
  `percentage` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_results`
--

INSERT INTO `user_results` (`date`, `result_id`, `user_id`, `total_score`, `disability_level`, `percentage`) VALUES
('', 1, '0', 32, 'Moderate disability', 32.00),
('', 2, 'Hari123', 32, 'Moderate disability', 32.00),
('', 3, 'Hari123', 29, 'Moderate disability', 29.00),
('', 4, 'Hari123', 50, 'Bed-bound or exaggerating symptoms', 100.00),
('', 5, 'Hari123', 32, 'Cripple, pain impinges on all aspects of life', 64.00),
('', 6, '5555', 0, '', 0.00),
('', 7, '5555', 0, '', 0.00),
('', 8, '5555', 0, '', 0.00),
('', 9, '5555', 0, '', 0.00),
('', 10, '5555', 0, '', 0.00),
('', 11, '5555', 0, '', 0.00),
('', 12, '5555', 0, '', 0.00),
('', 13, '5555', 0, '', 0.00),
('', 14, '', 0, '', 0.00),
('', 15, '', 0, '', 0.00),
('', 16, '5555', 37, 'Cripple, pain impinges on all aspects of life', 74.00),
('', 17, '5555', 33, 'Cripple, pain impinges on all aspects of life', 66.00),
('', 18, '5555', 55, 'Bed-bound or exaggerating symptoms', 110.00),
('', 19, '5555', 37, 'Cripple, pain impinges on all aspects of life', 74.00),
('', 20, '5555', 31, 'Cripple, pain impinges on all aspects of life', 62.00),
('', 21, '5555', 37, 'Cripple, pain impinges on all aspects of life', 74.00),
('', 22, '5555', 43, 'Bed-bound or exaggerating symptoms', 86.00),
('2024-10-26', 23, '5555', 24, 'Severe disability', 48.00),
('2024-11-11', 28, '5555', 20, 'Moderate disability', 40.00),
('2024-11-11', 29, '5555', 26, 'Severe disability', 52.00),
('2024-11-11', 30, '5555', 12, 'Moderate disability', 24.00),
('2024-11-11', 31, '5555', 6, 'Minimal disability', 12.00),
('2024-11-11', 32, '5555', 6, 'Minimal disability', 12.00),
('2024-11-11', 33, '5555', 6, 'Minimal disability', 12.00),
('2024-11-11', 34, '5555', 6, 'Minimal disability', 12.00),
('', 35, '', 0, '', 0.00),
('2024-11-11', 36, '123', 85, 'moderate', 70.00),
('2024-11-11', 37, '5555', 6, 'Minimal disability', 12.00),
('2024-11-11', 38, '5555', 6, 'Minimal disability', 12.00),
('2024-11-11', 39, '5555', 6, 'Minimal disability', 12.00),
('2024-11-12', 40, '5555', 11, 'Moderate disability', 22.00),
('2024-11-13', 41, '5555', 18, 'Moderate disability', 36.00),
('2024-11-14', 42, '5555', 28, 'Severe disability', 56.00),
('2024-11-14', 43, '1111', 24, 'Severe disability', 48.00),
('2024-11-14', 44, 'praneeth123', 10, 'Minimal disability', 20.00),
('2024-11-19', 45, '5555', 13, 'Moderate disability', 26.00);

-- --------------------------------------------------------

--
-- Table structure for table `user_scores`
--

CREATE TABLE `user_scores` (
  `id` int(11) NOT NULL,
  `user_id` varchar(19) NOT NULL,
  `question_id` int(11) NOT NULL,
  `question` text NOT NULL,
  `selected_option` varchar(255) NOT NULL,
  `score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_scores`
--

INSERT INTO `user_scores` (`id`, `user_id`, `question_id`, `question`, `selected_option`, `score`) VALUES
(1, '0', 1, '', 'Pain medication provides me little relief from pain.', 1),
(2, '0', 2, '', 'I can take care of myself normally but it increases my pain.', 1),
(3, '0', 3, '', 'I can lift heavy weights without increased pain.', 1),
(4, '0', 4, '', 'Pain prevents me from walking more than ½ mile.', 1),
(5, '0', 5, '', 'Pain prevents me from sitting more than ½ hour.', 1),
(6, '0', 6, '', 'I can stand as long as I want without increased pain.', 1),
(7, '0', 7, '', 'Even when I take pain medication, I sleep less than 6 hours.', 1),
(8, '0', 8, '', 'My social life is normal, but it increases my level of pain.', 1),
(9, '0', 9, '', 'Pain restricts travel over 1 hour.', 1),
(10, '0', 10, '', 'My normal homemaking/job activities do not cause pain.', 1),
(11, '0', 1, 'Section 1 - Pain Intensity', 'I can tolerate the pain I have without having to use pain medication.', 1),
(12, '0', 2, 'Section 2 - Personal Care (Washing, Dressing, etc.)', 'I can take care of myself normally without causing increased pain.', 1),
(13, '0', 3, 'Section 3 - Lifting', 'I can lift heavy weights without increased pain.', 1),
(14, '0', 4, 'Section 4 - Walking', 'Pain does not prevent me from walking any distance.', 1),
(15, '0', 5, 'Section 5 - Sitting', 'I can sit in any chair as long as I like.', 1),
(16, '0', 6, 'Section 6 - Standing', 'I can stand as long as I want without increased pain.', 1),
(17, '0', 7, 'Section 7 - Sleeping', 'Pain does not prevent me from sleeping well.', 1),
(18, '0', 8, 'Section 8 - Social Life', 'My social life is normal and does not increase my pain.', 1),
(19, '0', 9, 'Section 9 - Traveling', 'I can travel anywhere without increased pain.', 1),
(20, '0', 10, 'Section 10 - Employment/Homemaking', 'My normal homemaking/job activities do not cause pain.', 1),
(21, 'Hari123', 1, 'Section 1 - Pain Intensity', 'I can tolerate the pain I have without having to use pain medication.', 1),
(22, 'Hari123', 2, 'Section 2 - Personal Care (Washing, Dressing, etc.)', 'I can take care of myself normally without causing increased pain.', 1),
(23, 'Hari123', 3, 'Section 3 - Lifting', 'I can lift heavy weights without increased pain.', 1),
(24, 'Hari123', 4, 'Section 4 - Walking', 'Pain does not prevent me from walking any distance.', 1),
(25, 'Hari123', 5, 'Section 5 - Sitting', 'I can sit in any chair as long as I like.', 1),
(26, 'Hari123', 6, 'Section 6 - Standing', 'I can stand as long as I want without increased pain.', 1),
(27, 'Hari123', 7, 'Section 7 - Sleeping', 'Pain does not prevent me from sleeping well.', 1),
(28, 'Hari123', 8, 'Section 8 - Social Life', 'My social life is normal and does not increase my pain.', 1),
(29, 'Hari123', 9, 'Section 9 - Traveling', 'I can travel anywhere without increased pain.', 1),
(30, 'Hari123', 10, 'Section 10 - Employment/Homemaking', 'My normal homemaking/job activities do not cause pain.', 1),
(31, 'Hari123', 1, 'Section 1 - Pain Intensity', 'I can tolerate the pain I have without having to use pain medication.', 0),
(32, 'Hari123', 2, 'Section 2 - Personal Care (Washing, Dressing, etc.)', 'I can take care of myself normally without causing increased pain.', 0),
(33, 'Hari123', 3, 'Section 3 - Lifting', 'I can lift heavy weights without increased pain.', 0),
(34, 'Hari123', 4, 'Section 4 - Walking', 'Pain does not prevent me from walking any distance.', 0),
(35, 'Hari123', 5, 'Section 5 - Sitting', 'I can sit in any chair as long as I like.', 0),
(36, 'Hari123', 6, 'Section 6 - Standing', 'I can stand as long as I want without increased pain.', 0),
(37, 'Hari123', 7, 'Section 7 - Sleeping', 'Pain does not prevent me from sleeping well.', 0),
(38, 'Hari123', 8, 'Section 8 - Social Life', 'My social life is normal and does not increase my pain.', 0),
(39, 'Hari123', 9, 'Section 9 - Traveling', 'I can travel anywhere without increased pain.', 0),
(40, 'Hari123', 10, 'Section 10 - Employment/Homemaking', 'My normal homemaking/job activities do not cause pain.', 0),
(41, 'Hari123', 1, 'Section 1 - Pain Intensity', 'Pain medication has no effect on the pain.', 5),
(42, 'Hari123', 2, 'Section 2 - Personal Care (Washing, Dressing, etc.)', 'I do not get dressed, wash with difficulty, and stay in bed.', 5),
(43, 'Hari123', 3, 'Section 3 - Lifting', 'I cannot lift or carry anything at all.', 5),
(44, 'Hari123', 4, 'Section 4 - Walking', 'I am in bed most of the time and have to crawl to the toilet.', 5),
(45, 'Hari123', 5, 'Section 5 - Sitting', 'Pain prevents me from sitting at all.', 5),
(46, 'Hari123', 6, 'Section 6 - Standing', 'Pain prevents me from standing at all.', 5),
(47, 'Hari123', 7, 'Section 7 - Sleeping', 'Pain prevents me from sleeping at all.', 5),
(48, 'Hari123', 8, 'Section 8 - Social Life', 'I have hardly any social life because of my pain.', 5),
(49, 'Hari123', 9, 'Section 9 - Traveling', 'Pain prevents all travel except for visits to the doctor/therapist or hospital.', 5),
(50, 'Hari123', 10, 'Section 10 - Employment/Homemaking', 'Pain prevents me from performing any job/homemaking chores.', 5),
(51, 'Hari123', 1, 'Section 1 - Pain Intensity', 'The pain is bad but I manage without having to take pain medication.', 1),
(52, 'Hari123', 2, 'Section 2 - Personal Care (Washing, Dressing, etc.)', 'I can take care of myself normally but it increases my pain.', 1),
(53, 'Hari123', 3, 'Section 3 - Lifting', 'Pain prevents me from lifting heavy weights off the floor, but I can manage if weights are conveniently positioned, e.g. on a table.', 2),
(54, 'Hari123', 4, 'Section 4 - Walking', 'Pain prevents me from walking more than ¼ mile.', 3),
(55, 'Hari123', 5, 'Section 5 - Sitting', 'Pain prevents me from sitting more than ½ hour.', 3),
(56, 'Hari123', 6, 'Section 6 - Standing', 'Pain prevents me from standing for more than ½ hour.', 3),
(57, 'Hari123', 7, 'Section 7 - Sleeping', 'Even when I take pain medication, I sleep less than 4 hours.', 3),
(58, 'Hari123', 8, 'Section 8 - Social Life', 'Pain prevents me from participating in more energetic activities (e.g. sports, dancing).', 2),
(59, 'Hari123', 9, 'Section 9 - Traveling', 'Pain restricts travel over 1 hour.', 3),
(60, 'Hari123', 10, 'Section 10 - Employment/Homemaking', 'I can perform most of my homemaking/job duties, but pain prevents me from performing more physically stressful activities (e.g. Lifting, vacuuming).', 2),
(61, 'Hari123', 1, 'Section 1 - Pain Intensity', 'I can tolerate the pain I have without having to use pain medication.', 0),
(62, 'Hari123', 2, 'Section 2 - Personal Care (Washing, Dressing, etc.)', 'I can take care of myself normally without causing increased pain.', 0),
(63, 'Hari123', 3, 'Section 3 - Lifting', 'I can lift only very light weights.', 4),
(64, 'Hari123', 4, 'Section 4 - Walking', 'I can only walk using crutches or a cane.', 4),
(65, 'Hari123', 5, 'Section 5 - Sitting', 'Pain prevents me from sitting more than 10 minutes.', 4),
(66, 'Hari123', 6, 'Section 6 - Standing', 'Pain prevents me from standing for more than 10 minutes.', 4),
(67, 'Hari123', 7, 'Section 7 - Sleeping', 'Even when I take pain medication, I sleep less than 2 hours.', 4),
(68, 'Hari123', 8, 'Section 8 - Social Life', 'Pain has restricted my social life to my home.', 4),
(69, 'Hari123', 9, 'Section 9 - Traveling', 'Pain restricts my travel to short necessary journeys under ½ hour.', 4),
(70, 'Hari123', 10, 'Section 10 - Employment/Homemaking', 'Pain prevents me from doing even light duties.', 4),
(71, 'Hari123', 10, 'Section 10 - Employment/Homemaking', 'Pain prevents me from doing even light duties.', 4),
(72, 'Hari123', 10, 'Section 10 - Employment/Homemaking', 'Pain prevents me from performing any job/homemaking chores.', 5),
(73, 'Hari123', 10, 'Section 10 - Employment/Homemaking', 'Pain prevents me from performing any job/homemaking chores.', 5),
(74, 'Hari123', 10, 'Section 10 - Employment/Homemaking', 'Pain prevents me from doing anything but light duties.', 3),
(75, 'Hari123', 10, 'Section 10 - Employment/Homemaking', 'Pain prevents me from doing anything but light duties.', 3),
(76, 'Hari123', 1, 'Section 1 - Pain Intensity', 'I can tolerate the pain I have without having to use pain medication.', 0),
(77, 'Hari123', 2, 'Section 2 - Personal Care (Washing, Dressing, etc.)', 'I can take care of myself normally but it increases my pain.', 1),
(78, 'Hari123', 3, 'Section 3 - Lifting', 'Pain prevents me from lifting heavy weights off the floor, but I can manage if weights are conveniently positioned, e.g. on a table.', 2),
(79, 'Hari123', 4, 'Section 4 - Walking', 'Pain prevents me from walking more than ½ mile.', 2),
(80, 'Hari123', 5, 'Section 5 - Sitting', 'Pain prevents me from sitting more than ½ hour.', 3),
(81, 'Hari123', 6, 'Section 6 - Standing', 'Pain prevents me from standing for more than 10 minutes.', 4),
(82, 'Hari123', 7, 'Section 7 - Sleeping', 'Pain prevents me from sleeping at all.', 5),
(83, 'Hari123', 8, 'Section 8 - Social Life', 'I have hardly any social life because of my pain.', 5),
(84, 'Hari123', 9, 'Section 9 - Traveling', 'Pain restricts my travel to short necessary journeys under ½ hour.', 4),
(85, 'Hari123', 10, 'Section 10 - Employment/Homemaking', 'Pain prevents me from doing anything but light duties.', 3),
(86, 'Hari123', 1, 'Section 1 - Pain Intensity', 'Pain medication has no effect on the pain.', 5),
(87, 'Hari123', 2, 'Section 2 - Personal Care (Washing, Dressing, etc.)', 'I do not get dressed, wash with difficulty, and stay in bed.', 5),
(88, 'Hari123', 3, 'Section 3 - Lifting', 'I cannot lift or carry anything at all.', 5),
(89, 'Hari123', 4, 'Section 4 - Walking', 'I am in bed most of the time and have to crawl to the toilet.', 5),
(90, 'Hari123', 5, 'Section 5 - Sitting', 'Pain prevents me from sitting at all.', 5),
(91, 'Hari123', 6, 'Section 6 - Standing', 'Pain prevents me from standing at all.', 5),
(92, 'Hari123', 7, 'Section 7 - Sleeping', 'Pain prevents me from sleeping at all.', 5),
(93, 'Hari123', 8, 'Section 8 - Social Life', 'I have hardly any social life because of my pain.', 5),
(94, 'Hari123', 9, 'Section 9 - Traveling', 'Pain prevents all travel except for visits to the doctor/therapist or hospital.', 5),
(95, 'Hari123', 10, 'Section 10 - Employment/Homemaking', 'Pain prevents me from performing any job/homemaking chores.', 5),
(96, 'Hari123', 10, 'Section 10 - Employment/Homemaking', 'Pain prevents me from performing any job/homemaking chores.', 5),
(97, 'Hari123', 10, 'Section 10 - Employment/Homemaking', 'Pain prevents me from doing anything but light duties.', 3),
(98, 'Hari123', 1, 'Section 1 - Pain Intensity', 'The pain is bad but I manage without having to take pain medication.', 1),
(99, 'Hari123', 2, 'Section 2 - Personal Care (Washing, Dressing, etc.)', 'It is painful to take care of myself and I am slow and careful.', 2),
(100, 'Hari123', 3, 'Section 3 - Lifting', 'Pain prevents me from lifting heavy weights off the floor, but I can manage if weights are conveniently positioned, e.g. on a table.', 2),
(101, 'Hari123', 4, 'Section 4 - Walking', 'Pain prevents me from walking more than ¼ mile.', 3),
(102, 'Hari123', 5, 'Section 5 - Sitting', 'Pain prevents me from sitting more than ½ hour.', 3),
(103, 'Hari123', 6, 'Section 6 - Standing', 'Pain prevents me from standing for more than ½ hour.', 3),
(104, 'Hari123', 7, 'Section 7 - Sleeping', 'Even when I take pain medication, I sleep less than 2 hours.', 4),
(105, 'Hari123', 8, 'Section 8 - Social Life', 'Pain has restricted my social life to my home.', 4),
(106, 'Hari123', 9, 'Section 9 - Traveling', 'Pain prevents all travel except for visits to the doctor/therapist or hospital.', 5),
(107, 'Hari123', 10, 'Section 10 - Employment/Homemaking', 'Pain prevents me from performing any job/homemaking chores.', 5),
(108, '5555', 1, 'Section 1 - Pain Intensity', 'Pain medication provides me moderate relief from pain.', 3),
(109, '5555', 2, 'Section 2 - Personal Care (Washing, Dressing, etc.)', 'I need help but I am able to manage most of my personal care.', 3),
(110, '5555', 3, 'Section 3 - Lifting', 'Pain prevents me from lifting heavy weights but I can manage light to medium weights if they are conveniently positioned.', 3),
(111, '5555', 4, 'Section 4 - Walking', 'I can only walk using crutches or a cane.', 4),
(112, '5555', 5, 'Section 5 - Sitting', 'Pain prevents me from sitting more than 10 minutes.', 4),
(113, '5555', 6, 'Section 6 - Standing', 'Pain prevents me from standing for more than 10 minutes.', 4),
(114, '5555', 7, 'Section 7 - Sleeping', 'Even when I take pain medication, I sleep less than 2 hours.', 4),
(115, '5555', 8, 'Section 8 - Social Life', 'Pain has restricted my social life to my home.', 4),
(116, '5555', 9, 'Section 9 - Traveling', 'Pain restricts my travel to short necessary journeys under ½ hour.', 4),
(117, '5555', 10, 'Section 10 - Employment/Homemaking', 'Pain prevents me from doing even light duties.', 4),
(118, '5555', 1, 'Section 1 - Pain Intensity', 'Pain medication provides me complete relief from pain.', 2),
(119, '5555', 2, 'Section 2 - Personal Care (Washing, Dressing, etc.)', 'I need help but I am able to manage most of my personal care.', 3),
(120, '5555', 3, 'Section 3 - Lifting', 'I can lift only very light weights.', 4),
(121, '5555', 4, 'Section 4 - Walking', 'I can only walk using crutches or a cane.', 4),
(122, '5555', 5, 'Section 5 - Sitting', 'Pain prevents me from sitting more than ½ hour.', 3),
(123, '5555', 6, 'Section 6 - Standing', 'Pain prevents me from standing for more than 1 hour.', 2),
(124, '5555', 7, 'Section 7 - Sleeping', 'I can sleep well only by using pain medication.', 1),
(125, '5555', 8, 'Section 8 - Social Life', 'I have hardly any social life because of my pain.', 5),
(126, '5555', 9, 'Section 9 - Traveling', 'Pain prevents all travel except for visits to the doctor/therapist or hospital.', 5),
(127, '5555', 10, 'Section 10 - Employment/Homemaking', 'Pain prevents me from doing even light duties.', 4),
(128, '5555', 1, 'Section 1 - Pain Intensity', 'Pain medication has no effect on the pain.', 5),
(129, '5555', 1, 'Section 1 - Pain Intensity', 'Pain medication has no effect on the pain.', 5),
(130, '5555', 2, 'Section 2 - Personal Care (Washing, Dressing, etc.)', 'I do not get dressed, wash with difficulty, and stay in bed.', 5),
(131, '5555', 3, 'Section 3 - Lifting', 'I cannot lift or carry anything at all.', 5),
(132, '5555', 4, 'Section 4 - Walking', 'I am in bed most of the time and have to crawl to the toilet.', 5),
(133, '5555', 5, 'Section 5 - Sitting', 'Pain prevents me from sitting at all.', 5),
(134, '5555', 6, 'Section 6 - Standing', 'Pain prevents me from standing at all.', 5),
(135, '5555', 7, 'Section 7 - Sleeping', 'Pain prevents me from sleeping at all.', 5),
(136, '5555', 8, 'Section 8 - Social Life', 'I have hardly any social life because of my pain.', 5),
(137, '5555', 9, 'Section 9 - Traveling', 'Pain prevents all travel except for visits to the doctor/therapist or hospital.', 5),
(138, '5555', 10, 'Section 10 - Employment/Homemaking', 'Pain prevents me from performing any job/homemaking chores.', 5),
(139, '5555', 1, 'Section 1 - Pain Intensity', 'Pain medication has no effect on the pain. | வலி நிவாரணி மருந்து வலியில் எந்தவிதமான விளைவையும் அளிக்கவில்லை.', 5),
(140, '5555', 2, 'Section 2 - Personal Care (Washing, Dressing, etc.)', 'I do not get dressed, wash with difficulty, and stay in bed. | நான் உடையை அணிவதில்லை, கஷ்டமாக குளிக்கிறேன், மேலும் படுக்கையில் இருக்கும்.', 5),
(141, '5555', 1, 'Section 1 - Pain Intensity', 'Pain medication has no effect on the pain. | வலி நிவாரணி மருந்து வலியில் எந்தவிதமான விளைவையும் அளிக்கவில்லை.', 5),
(142, '5555', 2, 'Section 2 - Personal Care (Washing, Dressing, etc.)', 'It is painful to take care of myself and I am slower than usual. | என்னை பராமரிப்பது மிகவும் வலியுடனானது, மேலும் நான் வழக்கத்தைவிட மெதுவாக இருக்கிறேன்.', 2),
(143, '5555', 3, 'Section 3 - Lifting', 'I can lift only very light weights. | நான் மிக லேசான எடைகளை மட்டுமே உயர்த்த முடியும்.', 4),
(144, '5555', 4, 'Section 4 - Walking', 'I am in bed most of the time and have to crawl to move. | நான் பெரும்பாலான நேரம் படுக்கையில் இருப்பேன், மேலும் நகர்வதற்காக குலுங்கி நகர வேண்டும்.', 5),
(145, '5555', 5, 'Section 5 - Sitting', 'Pain prevents me from sitting more than ½ hour. | ½ மணி நேரத்திற்கு மேல் உட்கார்வதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 3),
(146, '5555', 6, 'Section 6 - Standing', 'Pain prevents me from standing for more than 10 minutes. | 10 நிமிடத்திற்கு மேல் நிற்பதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 4),
(147, '5555', 7, 'Section 7 - Sleeping', 'Even when I take pain medication, I sleep less than 6 hours. | நான் வலி நிவாரணி மருந்துகளை எடுத்தாலும், 6 மணி நேரத்திற்கு குறைவாகவே நான் தூங்குகிறேன்.', 2),
(148, '5555', 8, 'Section 8 - Social Life', 'I have no social life because of my pain. | எனக்கு வலியால் சமூக வாழ்க்கையே இல்லை.', 5),
(149, '5555', 9, 'Section 9 - Traveling', 'Pain restricts me to short necessary trips under 30 minutes. | 30 நிமிடத்திற்கு குறைவான, அவசியமான குறுகிய பயணங்களுக்கு மட்டுமே வலி என்னை கட்டுப்படுத்துகிறது.', 4),
(150, '5555', 10, 'Section 10 - Employment/Homemaking', 'My pain is neither getting better nor worse. | என்னுடைய வலி சரியாகவோ, மோசமாகவோ ஆகவில்லை.', 3),
(151, '5555', 1, 'Section 1 - Pain Intensity', 'Pain medication provides me little relief from pain. | வலி நிவாரணி மருந்து எனக்கு சிறிதளவு நிவாரணம் அளிக்கிறது.', 4),
(152, '5555', 2, 'Section 2 - Personal Care (Washing, Dressing, etc.)', 'I need help but I am able to manage most of my personal care. | எனக்கு உதவி தேவை, ஆனால் நான் என் பெரும்பாலான தனிப்பட்ட பராமரிப்பை மேலாண்மை செய்ய முடிகிறது.', 3),
(153, '5555', 3, 'Section 3 - Lifting', 'Pain prevents me from lifting heavy weights off the floor. | வலி, என்னால் தரையில் இருந்து கனமான எடைகளை உயர்த்த முடியாமல் தடுக்கிறது.', 2),
(154, '5555', 4, 'Section 4 - Walking', 'I can only walk using crutches or a cane. | நான் மரவடி அல்லது குச்சி உதவியுடன் மட்டுமே நடக்க முடியும்.', 4),
(155, '5555', 5, 'Section 5 - Sitting', 'I can only sit in my favorite chair as long as I like. | நான் விரும்பும் அளவிற்கு என் விருப்பமான நாற்காலியில் மட்டுமே உட்கார முடியும்.', 1),
(156, '5555', 6, 'Section 6 - Standing', 'Pain prevents me from standing for more than 10 minutes. | 10 நிமிடத்திற்கு மேல் நிற்பதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 4),
(157, '5555', 7, 'Section 7 - Sleeping', 'Even when I take pain medication, I sleep less than 4 hours. | நான் வலி நிவாரணி மருந்துகளை எடுத்தாலும், 4 மணி நேரத்திற்கு குறைவாகவே நான் தூங்குகிறேன்.', 3),
(158, '5555', 8, 'Section 8 - Social Life', 'My social life is normal, but it increases my level of pain. | என் சமூக வாழ்க்கை சாதாரணமாக உள்ளது, ஆனால் அது என் வலியை அதிகரிக்கிறது.', 1),
(159, '5555', 9, 'Section 9 - Traveling', 'Pain restricts me to short necessary trips under 30 minutes. | 30 நிமிடத்திற்கு குறைவான, அவசியமான குறுகிய பயணங்களுக்கு மட்டுமே வலி என்னை கட்டுப்படுத்துகிறது.', 4),
(160, '5555', 10, 'Section 10 - Employment/Homemaking', 'My pain is rapidly worsening. | என்னுடைய வலி வேகமாக மோசமாகிறது.', 5),
(161, '5555', 1, 'Section 1 - Pain Intensity', 'Pain medication provides me little relief from pain. | வலி நிவாரணி மருந்து எனக்கு சிறிதளவு நிவாரணம் அளிக்கிறது.', 4),
(162, '5555', 2, 'Section 2 - Personal Care (Washing, Dressing, etc.)', 'I do not get dressed, wash with difficulty, and stay in bed. | நான் உடையை அணிவதில்லை, கஷ்டமாக குளிக்கிறேன், மேலும் படுக்கையில் இருக்கும்.', 5),
(163, '5555', 3, 'Section 3 - Lifting', 'I can lift only very light weights. | நான் மிக லேசான எடைகளை மட்டுமே உயர்த்த முடியும்.', 4),
(164, '5555', 4, 'Section 4 - Walking', 'Pain prevents me from walking more than ¼ mile. | ¼ மைலுக்கு மேல் நடப்பதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 3),
(165, '5555', 5, 'Section 5 - Sitting', 'Pain prevents me from sitting at all. | என்னால் உட்கார முடியவில்லை, ஏனெனில் வலி என்னை தடுக்கிறது.', 5),
(166, '5555', 6, 'Section 6 - Standing', 'Pain prevents me from standing for more than ½ hour. | ½ மணி நேரத்திற்கு மேல் நிற்பதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 3),
(167, '5555', 7, 'Section 7 - Sleeping', 'Even when I take pain medication, I sleep less than 2 hours. | நான் வலி நிவாரணி மருந்துகளை எடுத்தாலும், 2 மணி நேரத்திற்கு குறைவாகவே நான் தூங்குகிறேன்.', 4),
(168, '5555', 8, 'Section 8 - Social Life', 'Pain has restricted my social life to my home. | வலி என்னுடைய சமூக வாழ்க்கையை என் வீட்டிற்குள் மட்டுமே கட்டுப்படுத்தியுள்ளது.', 4),
(169, '5555', 9, 'Section 9 - Traveling', 'I can travel anywhere but it increases my pain. | நான் எங்கு வேண்டுமானாலும் பயணம் செய்ய முடிகிறது, ஆனால் அது என் வலியை அதிகரிக்கிறது.', 1),
(170, '5555', 10, 'Section 10 - Employment/Homemaking', 'My pain is gradually worsening. | என்னுடைய வலி படிப்படியாக மோசமாகிறது.', 4),
(171, '5555', 1, 'Section 1 - Pain Intensity', 'Pain medication has no effect on the pain. | வலி நிவாரணி மருந்து வலியில் எந்தவிதமான விளைவையும் அளிக்கவில்லை.', 5),
(172, '5555', 1, 'Section 1 - Pain Intensity', 'Pain medication has no effect on the pain. | வலி நிவாரணி மருந்து வலியில் எந்தவிதமான விளைவையும் அளிக்கவில்லை.', 5),
(173, '5555', 2, 'Section 2 - Personal Care (Washing, Dressing, etc.)', 'I need help every day in most aspects of my care. | எனது பராமரிப்பின் பெரும்பாலான அம்சங்களில் எனக்கு தினமும் உதவி தேவை.', 4),
(174, '5555', 3, 'Section 3 - Lifting', 'I cannot lift or carry anything at all. | நான் எதையும் உயர்த்தவோ அல்லது சுமக்கவோ முடியாது.', 5),
(175, '5555', 4, 'Section 4 - Walking', 'I can only walk using crutches or a cane. | நான் மரவடி அல்லது குச்சி உதவியுடன் மட்டுமே நடக்க முடியும்.', 4),
(176, '5555', 5, 'Section 5 - Sitting', 'Pain prevents me from sitting more than 10 minutes. | 10 நிமிடத்திற்கு மேல் உட்கார்வதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 4),
(177, '5555', 6, 'Section 6 - Standing', 'Pain prevents me from standing for more than 10 minutes. | 10 நிமிடத்திற்கு மேல் நிற்பதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 4),
(178, '5555', 7, 'Section 7 - Sleeping', 'Even when I take pain medication, I sleep less than 2 hours. | நான் வலி நிவாரணி மருந்துகளை எடுத்தாலும், 2 மணி நேரத்திற்கு குறைவாகவே நான் தூங்குகிறேன்.', 4),
(179, '5555', 8, 'Section 8 - Social Life', 'Pain prevents me from going out very often. | அடிக்கடி வெளியே செல்வதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 3),
(180, '5555', 9, 'Section 9 - Traveling', 'Pain restricts me to trips of less than 1 hour. | 1 மணி நேரத்திற்கு குறைவான பயணங்களுக்கு மட்டுமே வலி என்னை கட்டுப்படுத்துகிறது.', 3),
(181, '5555', 10, 'Section 10 - Employment/Homemaking', 'My pain is neither getting better nor worse. | என்னுடைய வலி சரியாகவோ, மோசமாகவோ ஆகவில்லை.', 3),
(182, '5555', 1, 'Section 1 - Pain Intensity', 'Pain medication provides me little relief from pain. | வலி நிவாரணி மருந்து எனக்கு சிறிதளவு நிவாரணம் அளிக்கிறது.', 4),
(183, '5555', 1, 'Section 1 - Pain Intensity', 'Pain medication has no effect on the pain. | வலி நிவாரணி மருந்து வலியில் எந்தவிதமான விளைவையும் அளிக்கவில்லை.', 5),
(184, '5555', 2, 'Section 2 - Personal Care (Washing, Dressing, etc.)', 'I need help every day in most aspects of my care. | எனது பராமரிப்பின் பெரும்பாலான அம்சங்களில் எனக்கு தினமும் உதவி தேவை.', 4),
(185, '5555', 3, 'Section 3 - Lifting', 'I cannot lift or carry anything at all. | நான் எதையும் உயர்த்தவோ அல்லது சுமக்கவோ முடியாது.', 5),
(186, '5555', 4, 'Section 4 - Walking', 'I can only walk using crutches or a cane. | நான் மரவடி அல்லது குச்சி உதவியுடன் மட்டுமே நடக்க முடியும்.', 4),
(187, '5555', 5, 'Section 5 - Sitting', 'Pain prevents me from sitting more than 10 minutes. | 10 நிமிடத்திற்கு மேல் உட்கார்வதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 4),
(188, '5555', 6, 'Section 6 - Standing', 'Pain prevents me from standing at all. | என்னால் நிற்க முடியவில்லை, ஏனெனில் வலி என்னை தடுக்கிறது.', 5),
(189, '5555', 7, 'Section 7 - Sleeping', 'Even when I take pain medication, I sleep less than 2 hours. | நான் வலி நிவாரணி மருந்துகளை எடுத்தாலும், 2 மணி நேரத்திற்கு குறைவாகவே நான் தூங்குகிறேன்.', 4),
(190, '5555', 8, 'Section 8 - Social Life', 'Pain prevents me from going out very often. | அடிக்கடி வெளியே செல்வதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 3),
(191, '5555', 9, 'Section 9 - Traveling', 'Pain restricts me to short necessary trips under 30 minutes. | 30 நிமிடத்திற்கு குறைவான, அவசியமான குறுகிய பயணங்களுக்கு மட்டுமே வலி என்னை கட்டுப்படுத்துகிறது.', 4),
(192, '5555', 10, 'Section 10 - Employment/Homemaking', 'My pain is rapidly worsening. | என்னுடைய வலி வேகமாக மோசமாகிறது.', 5),
(193, '5555', 1, 'Section 1 - Pain Intensity', 'Pain medication provides me moderate relief from pain. \r\nவலி நிவாரணி மருந்து எனக்கு சிறிதளவு நிவாரணம் அளிக்கிறது.', 3),
(194, '5555', 1, 'Section 1 - Pain Intensity', 'Pain medication provides me complete relief from pain. \r\nவலி நிவாரணி மருந்து எனக்கு வலியிலிருந்து முழு நிவாரணம் அளிக்கிறது', 2),
(195, '5555', 2, 'Section 2 - Personal Care (Washing, Dressing, etc.)', 'I can take care of myself normally without causing extra pain. \r\n கூடுதல் வலி இன்றி நான் சாதாரணமாக என்னை பராமரிக்க முடியும்.', 0),
(196, '5555', 3, 'Section 3 - Lifting', 'I cannot lift or carry anything at all. | நான் எதையும் உயர்த்தவோ அல்லது சுமக்கவோ முடியாது.', 5),
(197, '5555', 4, 'Section 4 - Walking', 'Pain prevents me from walking more than ½ mile. | ½ மைலுக்கு மேல் நடப்பதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 2),
(198, '5555', 5, 'Section 5 - Sitting', 'Pain prevents me from sitting more than ½ hour. | ½ மணி நேரத்திற்கு மேல் உட்கார்வதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 3),
(199, '5555', 6, 'Section 6 - Standing', 'Pain prevents me from standing for more than ½ hour. | ½ மணி நேரத்திற்கு மேல் நிற்பதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 3),
(200, '5555', 7, 'Section 7 - Sleeping', 'Even when I take pain medication, I sleep less than 6 hours. | நான் வலி நிவாரணி மருந்துகளை எடுத்தாலும், 6 மணி நேரத்திற்கு குறைவாகவே நான் தூங்குகிறேன்.', 2),
(201, '5555', 8, 'Section 8 - Social Life', 'Pain prevents me from participating in more energetic activities. | மிகவும் ஆற்றலான செயல்களில் பங்கேற்பதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 2),
(202, '5555', 9, 'Section 9 - Traveling', 'Pain restricts me to short necessary trips under 30 minutes. | 30 நிமிடத்திற்கு குறைவான, அவசியமான குறுகிய பயணங்களுக்கு மட்டுமே வலி என்னை கட்டுப்படுத்துகிறது.', 4),
(203, '5555', 10, 'Section 10 - Employment/Homemaking', 'My pain seems to be getting better, but improvement is slow. | என்னுடைய வலி சிறிதளவு மேம்பட்டுள்ளது, ஆனால் மேம்பாடு மெதுவாக உள்ளது.', 2),
(204, '5555', 1, 'Section 1 - Pain Intensity', 'Pain medication provides me little relief from pain. \r\nவலி நிவாரணி மருந்து எனக்கு சிறிதளவு நிவாரணம் அளிக்கிறது.', 4),
(205, '5555', 1, 'Section 1 - Pain Intensity', 'Pain medication provides me little relief from pain. \r\nவலி நிவாரணி மருந்து எனக்கு சிறிதளவு நிவாரணம் அளிக்கிறது.', 4),
(206, '5555', 1, 'Section 1 - Pain Intensity', 'Pain medication provides me little relief from pain. \r\nவலி நிவாரணி மருந்து எனக்கு சிறிதளவு நிவாரணம் அளிக்கிறது.', 4),
(207, '5555', 2, 'Section 2 - Personal Care (Washing, Dressing, etc.)', 'I do not get dressed, wash with difficulty, and stay in bed.\r\nநான் உடையை அணிவதில்லை, கஷ்டமாக குளிக்கிறேன், மேலும் படுக்கையில் இருக்கும்.', 5),
(208, '5555', 3, 'Section 3 - Lifting', 'Pain prevents me from lifting heavy weights off the floor. | வலி, என்னால் தரையில் இருந்து கனமான எடைகளை உயர்த்த முடியாமல் தடுக்கிறது.', 2),
(209, '5555', 4, 'Section 4 - Walking', 'I can only walk using crutches or a cane. | நான் மரவடி அல்லது குச்சி உதவியுடன் மட்டுமே நடக்க முடியும்.', 4),
(210, '5555', 5, 'Section 5 - Sitting', 'Pain prevents me from sitting more than 1 hour. | 1 மணி நேரத்திற்கு மேல் உட்கார்வதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 2),
(211, '5555', 6, 'Section 6 - Standing', 'Pain prevents me from standing for more than 10 minutes. | 10 நிமிடத்திற்கு மேல் நிற்பதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 4),
(212, '5555', 7, 'Section 7 - Sleeping', 'Even when I take pain medication, I sleep less than 4 hours. | நான் வலி நிவாரணி மருந்துகளை எடுத்தாலும், 4 மணி நேரத்திற்கு குறைவாகவே நான் தூங்குகிறேன்.', 3),
(213, '5555', 8, 'Section 8 - Social Life', 'Pain prevents me from going out very often. | அடிக்கடி வெளியே செல்வதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 3),
(214, '5555', 9, 'Section 9 - Traveling', 'I can travel anywhere but it increases my pain. | நான் எங்கு வேண்டுமானாலும் பயணம் செய்ய முடிகிறது, ஆனால் அது என் வலியை அதிகரிக்கிறது.', 1),
(215, '5555', 10, 'Section 10 - Employment/Homemaking', 'My pain is neither getting better nor worse. | என்னுடைய வலி சரியாகவோ, மோசமாகவோ ஆகவில்லை.', 3),
(216, '5555', 1, 'Section 1 - Pain Intensity', 'Pain medication provides me moderate relief from pain. \r\nவலி நிவாரணி மருந்து எனக்கு சிறிதளவு நிவாரணம் அளிக்கிறது.', 3),
(217, '5555', 2, 'Section 2 - Personal Care (Washing, Dressing, etc.)', 'I need help every day in most aspects of my care.\r\nஎனது பராமரிப்பின் பெரும்பாலான அம்சங்களில் எனக்கு தினமும் உதவி தேவை.', 4),
(218, '5555', 3, 'Section 3 - Lifting', 'I can lift only very light weights. | நான் மிக லேசான எடைகளை மட்டுமே உயர்த்த முடியும்.', 4),
(219, '5555', 4, 'Section 4 - Walking', 'I can only walk using crutches or a cane. | நான் மரவடி அல்லது குச்சி உதவியுடன் மட்டுமே நடக்க முடியும்.', 4),
(220, '5555', 5, 'Section 5 - Sitting', 'Pain prevents me from sitting more than 10 minutes. | 10 நிமிடத்திற்கு மேல் உட்கார்வதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 4),
(221, '5555', 6, 'Section 6 - Standing', 'Pain prevents me from standing for more than 1 hour. | 1 மணி நேரத்திற்கு மேல் நிற்பதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 2),
(222, '5555', 7, 'Section 7 - Sleeping', 'Even when I take pain medication, I sleep less than 4 hours. | நான் வலி நிவாரணி மருந்துகளை எடுத்தாலும், 4 மணி நேரத்திற்கு குறைவாகவே நான் தூங்குகிறேன்.', 3),
(223, '5555', 8, 'Section 8 - Social Life', 'My social life is normal, but it increases my level of pain. | என் சமூக வாழ்க்கை சாதாரணமாக உள்ளது, ஆனால் அது என் வலியை அதிகரிக்கிறது.', 1),
(224, '5555', 9, 'Section 9 - Traveling', 'Pain prevents me from traveling except to receive care. | நான் சிகிச்சை பெறுவதற்காக மட்டுமே பயணம் செய்ய முடியும், ஏனெனில் வலி என்னால் தடுக்கப்படுகிறது.', 5),
(225, '5555', 10, 'Section 10 - Employment/Homemaking', 'My pain seems to be getting better, but improvement is slow. | என்னுடைய வலி சிறிதளவு மேம்பட்டுள்ளது, ஆனால் மேம்பாடு மெதுவாக உள்ளது.', 2),
(226, '5555', 10, 'Section 10 - Employment/Homemaking', 'My pain is rapidly worsening. | என்னுடைய வலி வேகமாக மோசமாகிறது.', 5),
(227, '5555', 1, 'Section 1 - Pain Intensity', 'Pain medication provides me little relief from pain. \r\nவலி நிவாரணி மருந்து எனக்கு சிறிதளவு நிவாரணம் அளிக்கிறது.', 4),
(228, '5555', 2, 'Section 2 - Personal Care (Washing, Dressing, etc.)', 'It is painful to take care of myself and I am slower than usual.\r\nஎன்னை பராமரிப்பது மிகவும் வலியுடனானது, மேலும் நான் வழக்கத்தைவிட மெதுவாக இருக்கிறேன்.', 2),
(229, '5555', 3, 'Section 3 - Lifting', 'I can lift heavy weights but it causes increased pain. | நான் கனமான எடைகளை உயர்த்த முடிகிறது, ஆனால் அது அதிக வலியை ஏற்படுத்துகிறது.', 1),
(230, '5555', 4, 'Section 4 - Walking', 'I am in bed most of the time and have to crawl to move. | நான் பெரும்பாலான நேரம் படுக்கையில் இருப்பேன், மேலும் நகர்வதற்காக குலுங்கி நகர வேண்டும்.', 5),
(231, '5555', 1, 'Section 1 - Pain Intensity', 'The pain is bad but I manage without having to take pain medication. \r\nவலி மோசமாக உள்ளது, ஆனால் வலி நிவாரணி மருந்துகளை எடுத்துக் கொள்ளாமல் நான் சமாளிக்கிறேன்', 1),
(232, '5555', 2, 'Section 2 - Personal Care (Washing, Dressing, etc.)', 'I need help every day in most aspects of my care.\r\nஎனது பராமரிப்பின் பெரும்பாலான அம்சங்களில் எனக்கு தினமும் உதவி தேவை.', 4),
(233, '5555', 3, 'Section 3 - Lifting', 'Pain prevents me from lifting heavy weights off the floor. | வலி, என்னால் தரையில் இருந்து கனமான எடைகளை உயர்த்த முடியாமல் தடுக்கிறது.', 2),
(234, '5555', 4, 'Section 4 - Walking', 'I am in bed most of the time and have to crawl to move. | நான் பெரும்பாலான நேரம் படுக்கையில் இருப்பேன், மேலும் நகர்வதற்காக குலுங்கி நகர வேண்டும்.', 5),
(235, '5555', 5, 'Section 5 - Sitting', 'Pain prevents me from sitting more than 10 minutes. | 10 நிமிடத்திற்கு மேல் உட்கார்வதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 4),
(236, '5555', 6, 'Section 6 - Standing', 'Pain prevents me from standing for more than ½ hour. | ½ மணி நேரத்திற்கு மேல் நிற்பதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 3),
(237, '5555', 7, 'Section 7 - Sleeping', 'Even when I take pain medication, I sleep less than 4 hours. | நான் வலி நிவாரணி மருந்துகளை எடுத்தாலும், 4 மணி நேரத்திற்கு குறைவாகவே நான் தூங்குகிறேன்.', 3),
(238, '5555', 8, 'Section 8 - Social Life', 'My social life is normal and does not increase my pain. | என்னுடைய சமூக வாழ்க்கை சாதாரணமாக உள்ளது, மேலும் அது என்னுடைய வலியை அதிகரிக்கவில்லை.', 0),
(239, '5555', 9, 'Section 9 - Traveling', 'Pain prevents me from traveling except to receive care. | நான் சிகிச்சை பெறுவதற்காக மட்டுமே பயணம் செய்ய முடியும், ஏனெனில் வலி என்னால் தடுக்கப்படுகிறது.', 5),
(240, '5555', 10, 'Section 10 - Employment/Homemaking', 'My pain is rapidly worsening. | என்னுடைய வலி வேகமாக மோசமாகிறது.', 5),
(241, '5555', 1, 'Section 1 - Pain Intensity', 'Pain medication provides me moderate relief from pain. \r\nவலி நிவாரணி மருந்து எனக்கு சிறிதளவு நிவாரணம் அளிக்கிறது.', 3),
(242, '5555', 2, 'Section 2 - Personal Care (Washing, Dressing, etc.)', 'I can take care of myself normally without causing extra pain. \r\n கூடுதல் வலி இன்றி நான் சாதாரணமாக என்னை பராமரிக்க முடியும்.', 0),
(243, '5555', 3, 'Section 3 - Lifting', 'Pain prevents me from lifting heavy weights but I can manage light weights. | வலி, என்னால் கனமான எடைகளை உயர்த்த முடியாமல் தடுக்கிறது, ஆனால் லேசான எடைகளை நான் மேலாண்மை செய்ய முடிகிறது.', 3),
(244, '5555', 4, 'Section 4 - Walking', 'I am in bed most of the time and have to crawl to move. | நான் பெரும்பாலான நேரம் படுக்கையில் இருப்பேன், மேலும் நகர்வதற்காக குலுங்கி நகர வேண்டும்.', 5),
(245, '5555', 5, 'Section 5 - Sitting', 'I can sit in any chair as long as I like. | நான் விரும்பும் அளவிற்கு எந்த நாற்காலியிலும் உட்கார முடியும்.', 0),
(246, '5555', 6, 'Section 6 - Standing', 'Pain prevents me from standing for more than 1 hour. | 1 மணி நேரத்திற்கு மேல் நிற்பதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 2),
(247, '5555', 7, 'Section 7 - Sleeping', 'Even when I take pain medication, I sleep less than 4 hours. | நான் வலி நிவாரணி மருந்துகளை எடுத்தாலும், 4 மணி நேரத்திற்கு குறைவாகவே நான் தூங்குகிறேன்.', 3),
(248, '5555', 8, 'Section 8 - Social Life', 'Pain has restricted my social life to my home. | வலி என்னுடைய சமூக வாழ்க்கையை என் வீட்டிற்குள் மட்டுமே கட்டுப்படுத்தியுள்ளது.', 4),
(249, '5555', 9, 'Section 9 - Traveling', 'Pain prevents me from traveling except to receive care. | நான் சிகிச்சை பெறுவதற்காக மட்டுமே பயணம் செய்ய முடியும், ஏனெனில் வலி என்னால் தடுக்கப்படுகிறது.', 5),
(250, '5555', 10, 'Section 10 - Employment/Homemaking', 'My pain fluctuates but overall is definitely getting better. | என்னுடைய வலி மாறி மாறி வருகிறது, ஆனால் மொத்தத்தில் நல்லபடி சரியாகிறது.', 1),
(251, '5555', 1, 'Section 1 - Pain Intensity', 'Pain medication provides me moderate relief from pain. \r\nவலி நிவாரணி மருந்து எனக்கு சிறிதளவு நிவாரணம் அளிக்கிறது.', 3),
(252, '5555', 2, 'Section 2 - Personal Care (Washing, Dressing, etc.)', 'I can take care of myself normally but it increases my pain. \r\nநான் என்னை சாதாரணமாக பராமரிக்க முடிகிறது, ஆனால் அது என் வலியை அதிகரிக்கிறது.', 1),
(253, '5555', 3, 'Section 3 - Lifting', 'Pain prevents me from lifting heavy weights but I can manage light weights. | வலி, என்னால் கனமான எடைகளை உயர்த்த முடியாமல் தடுக்கிறது, ஆனால் லேசான எடைகளை நான் மேலாண்மை செய்ய முடிகிறது.', 3),
(254, '5555', 4, 'Section 4 - Walking', 'I am in bed most of the time and have to crawl to move. | நான் பெரும்பாலான நேரம் படுக்கையில் இருப்பேன், மேலும் நகர்வதற்காக குலுங்கி நகர வேண்டும்.', 5),
(255, '5555', 5, 'Section 5 - Sitting', 'I can only sit in my favorite chair as long as I like. | நான் விரும்பும் அளவிற்கு என் விருப்பமான நாற்காலியில் மட்டுமே உட்கார முடியும்.', 1),
(256, '5555', 6, 'Section 6 - Standing', 'Pain prevents me from standing for more than ½ hour. | ½ மணி நேரத்திற்கு மேல் நிற்பதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 3),
(257, '5555', 7, 'Section 7 - Sleeping', 'Even when I take pain medication, I sleep less than 2 hours. | நான் வலி நிவாரணி மருந்துகளை எடுத்தாலும், 2 மணி நேரத்திற்கு குறைவாகவே நான் தூங்குகிறேன்.', 4),
(258, '5555', 8, 'Section 8 - Social Life', 'My social life is normal and does not increase my pain. | என்னுடைய சமூக வாழ்க்கை சாதாரணமாக உள்ளது, மேலும் அது என்னுடைய வலியை அதிகரிக்கவில்லை.', 0),
(259, '5555', 9, 'Section 9 - Traveling', 'Pain restricts me to short necessary trips under 30 minutes. | 30 நிமிடத்திற்கு குறைவான, அவசியமான குறுகிய பயணங்களுக்கு மட்டுமே வலி என்னை கட்டுப்படுத்துகிறது.', 4),
(260, '5555', 10, 'Section 10 - Employment/Homemaking', 'My pain seems to be getting better, but improvement is slow. | என்னுடைய வலி சிறிதளவு மேம்பட்டுள்ளது, ஆனால் மேம்பாடு மெதுவாக உள்ளது.', 2),
(261, '5555', 1, 'Section 1 - Pain Intensity', 'Pain medication provides me little relief from pain. \r\nவலி நிவாரணி மருந்து எனக்கு சிறிதளவு நிவாரணம் அளிக்கிறது.', 4),
(262, '5555', 2, 'Section 2 - Personal Care (Washing, Dressing, etc.)', 'I can take care of myself normally but it increases my pain. \r\nநான் என்னை சாதாரணமாக பராமரிக்க முடிகிறது, ஆனால் அது என் வலியை அதிகரிக்கிறது.', 1),
(263, '5555', 3, 'Section 3 - Lifting', 'I can lift only very light weights. | நான் மிக லேசான எடைகளை மட்டுமே உயர்த்த முடியும்.', 4),
(264, '5555', 4, 'Section 4 - Walking', 'Pain does not prevent me from walking any distance. | எந்த தூரத்திற்கும் நடப்பதற்கு வலி என்னால் தடுக்கப்படவில்லை.', 0),
(265, '5555', 5, 'Section 5 - Sitting', 'Pain prevents me from sitting more than 10 minutes. | 10 நிமிடத்திற்கு மேல் உட்கார்வதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 4),
(266, '5555', 6, 'Section 6 - Standing', 'Pain prevents me from standing for more than 1 hour. | 1 மணி நேரத்திற்கு மேல் நிற்பதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 2),
(267, '5555', 7, 'Section 7 - Sleeping', 'Even when I take pain medication, I sleep less than 4 hours. | நான் வலி நிவாரணி மருந்துகளை எடுத்தாலும், 4 மணி நேரத்திற்கு குறைவாகவே நான் தூங்குகிறேன்.', 3),
(268, '5555', 8, 'Section 8 - Social Life', 'Pain has restricted my social life to my home. | வலி என்னுடைய சமூக வாழ்க்கையை என் வீட்டிற்குள் மட்டுமே கட்டுப்படுத்தியுள்ளது.', 4),
(269, '5555', 9, 'Section 9 - Traveling', 'Pain restricts me to trips of less than 2 hours. | 2 மணி நேரத்திற்கு குறைவான பயணங்களுக்கு மட்டுமே வலி என்னை கட்டுப்படுத்துகிறது.', 2),
(270, '5555', 10, 'Section 10 - Employment/Homemaking', 'My pain is neither getting better nor worse. | என்னுடைய வலி சரியாகவோ, மோசமாகவோ ஆகவில்லை.', 3),
(271, '5555', 1, 'Section 1 - Pain Intensity', 'The pain is bad but I manage without having to take pain medication. \r\nவலி மோசமாக உள்ளது, ஆனால் வலி நிவாரணி மருந்துகளை எடுத்துக் கொள்ளாமல் நான் சமாளிக்கிறேன்', 1),
(272, '5555', 2, 'Section 2 - Personal Care (Washing, Dressing, etc.)', 'It is painful to take care of myself and I am slower than usual.\r\nஎன்னை பராமரிப்பது மிகவும் வலியுடனானது, மேலும் நான் வழக்கத்தைவிட மெதுவாக இருக்கிறேன்.', 2),
(273, '5555', 3, 'Section 3 - Lifting', 'I can lift only very light weights. | நான் மிக லேசான எடைகளை மட்டுமே உயர்த்த முடியும்.', 4),
(274, '5555', 4, 'Section 4 - Walking', 'Pain does not prevent me from walking any distance. | எந்த தூரத்திற்கும் நடப்பதற்கு வலி என்னால் தடுக்கப்படவில்லை.', 0),
(275, '5555', 5, 'Section 5 - Sitting', 'I can sit in any chair as long as I like. | நான் விரும்பும் அளவிற்கு எந்த நாற்காலியிலும் உட்கார முடியும்.', 0),
(276, '5555', 6, 'Section 6 - Standing', 'I can stand as long as I want without increased pain. | நான் விரும்பிய அளவிற்கு வலியின்றி நிற்க முடியும்.', 0),
(277, '5555', 7, 'Section 7 - Sleeping', 'Pain does not prevent me from sleeping well. | வலி என்னால் நல்ல தூக்கத்தை தடுக்கவில்லை.', 0),
(278, '5555', 8, 'Section 8 - Social Life', 'My social life is normal and does not increase my pain. | என்னுடைய சமூக வாழ்க்கை சாதாரணமாக உள்ளது, மேலும் அது என்னுடைய வலியை அதிகரிக்கவில்லை.', 0),
(279, '5555', 9, 'Section 9 - Traveling', 'I can travel anywhere without increased pain. | வலியின்றி நான் எங்கு வேண்டுமானாலும் பயணம் செய்ய முடியும்.', 0),
(280, '5555', 10, 'Section 10 - Employment/Homemaking', 'My pain is rapidly getting better. | என்னுடைய வலி விரைவாகவே சரியாகிறது.', 0),
(281, '5555', 1, 'Section 1 - Pain Intensity', 'Pain medication provides me little relief from pain. \r\nவலி நிவாரணி மருந்து எனக்கு சிறிதளவு நிவாரணம் அளிக்கிறது.', 4),
(282, '5555', 2, 'Section 2 - Personal Care (Washing, Dressing, etc.)', 'I can take care of myself normally without causing extra pain. \r\n கூடுதல் வலி இன்றி நான் சாதாரணமாக என்னை பராமரிக்க முடியும்.', 0),
(283, '5555', 3, 'Section 3 - Lifting', 'I can lift heavy weights without increased pain. | அதிக வலியின்றி நான் கனமான எடைகளை உயர்த்த முடியும்.', 0),
(284, '5555', 4, 'Section 4 - Walking', 'Pain does not prevent me from walking any distance. | எந்த தூரத்திற்கும் நடப்பதற்கு வலி என்னால் தடுக்கப்படவில்லை.', 0),
(285, '5555', 5, 'Section 5 - Sitting', 'I can sit in any chair as long as I like. | நான் விரும்பும் அளவிற்கு எந்த நாற்காலியிலும் உட்கார முடியும்.', 0),
(286, '5555', 6, 'Section 6 - Standing', 'I can stand as long as I want without increased pain. | நான் விரும்பிய அளவிற்கு வலியின்றி நிற்க முடியும்.', 0),
(287, '5555', 7, 'Section 7 - Sleeping', 'Pain does not prevent me from sleeping well. | வலி என்னால் நல்ல தூக்கத்தை தடுக்கவில்லை.', 0),
(288, '5555', 8, 'Section 8 - Social Life', 'My social life is normal and does not increase my pain. | என்னுடைய சமூக வாழ்க்கை சாதாரணமாக உள்ளது, மேலும் அது என்னுடைய வலியை அதிகரிக்கவில்லை.', 0),
(289, '5555', 9, 'Section 9 - Traveling', 'I can travel anywhere without increased pain. | வலியின்றி நான் எங்கு வேண்டுமானாலும் பயணம் செய்ய முடியும்.', 0),
(290, '5555', 10, 'Section 10 - Employment/Homemaking', 'My pain is rapidly getting better. | என்னுடைய வலி விரைவாகவே சரியாகிறது.', 0),
(291, '5555', 1, 'Section 1 - Pain Intensity', 'Pain medication has no effect on the pain. \r\nவலி நிவாரணி மருந்து வலியில் எந்தவிதமான விளைவையும் அளிக்கவில்லை.', 5),
(292, '5555', 2, 'Section 2 - Personal Care (Washing, Dressing, etc.)', 'I need help but I am able to manage most of my personal care.\r\nஎனக்கு உதவி தேவை, ஆனால் நான் என் பெரும்பாலான தனிப்பட்ட பராமரிப்பை மேலாண்மை செய்ய முடிகிறது.', 3),
(293, '5555', 3, 'Section 3 - Lifting', 'I can lift only very light weights. | நான் மிக லேசான எடைகளை மட்டுமே உயர்த்த முடியும்.', 4),
(294, '5555', 4, 'Section 4 - Walking', 'Pain prevents me from walking more than ¼ mile. | ¼ மைலுக்கு மேல் நடப்பதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 3),
(295, '5555', 4, 'Section 4 - Walking', 'Pain prevents me from walking more than ¼ mile. | ¼ மைலுக்கு மேல் நடப்பதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 3),
(296, '5555', 4, 'Section 4 - Walking', 'Pain prevents me from walking more than ¼ mile. | ¼ மைலுக்கு மேல் நடப்பதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 3),
(297, '5555', 4, 'Section 4 - Walking', 'Pain prevents me from walking more than ¼ mile. | ¼ மைலுக்கு மேல் நடப்பதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 3),
(298, '5555', 4, 'Section 4 - Walking', 'Pain prevents me from walking more than ¼ mile. | ¼ மைலுக்கு மேல் நடப்பதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 3),
(299, '5555', 4, 'Section 4 - Walking', 'Pain prevents me from walking more than ¼ mile. | ¼ மைலுக்கு மேல் நடப்பதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 3),
(300, '5555', 4, 'Section 4 - Walking', 'Pain prevents me from walking more than ¼ mile. | ¼ மைலுக்கு மேல் நடப்பதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 3),
(301, '5555', 4, 'Section 4 - Walking', 'Pain prevents me from walking more than ¼ mile. | ¼ மைலுக்கு மேல் நடப்பதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 3),
(302, '5555', 4, 'Section 4 - Walking', 'Pain prevents me from walking more than ¼ mile. | ¼ மைலுக்கு மேல் நடப்பதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 3),
(303, '5555', 4, 'Section 4 - Walking', 'Pain prevents me from walking more than ¼ mile. | ¼ மைலுக்கு மேல் நடப்பதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 3),
(304, '5555', 4, 'Section 4 - Walking', 'Pain prevents me from walking more than ¼ mile. | ¼ மைலுக்கு மேல் நடப்பதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 3),
(305, '5555', 5, 'Section 5 - Sitting', 'Pain prevents me from sitting more than 10 minutes. | 10 நிமிடத்திற்கு மேல் உட்கார்வதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 4),
(306, '5555', 5, 'Section 5 - Sitting', 'I can only sit in my favorite chair as long as I like. | நான் விரும்பும் அளவிற்கு என் விருப்பமான நாற்காலியில் மட்டுமே உட்கார முடியும்.', 1),
(307, '5555', 6, 'Section 6 - Standing', 'Pain prevents me from standing for more than 10 minutes. | 10 நிமிடத்திற்கு மேல் நிற்பதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 4),
(308, '5555', 7, 'Section 7 - Sleeping', 'Pain does not prevent me from sleeping well. | வலி என்னால் நல்ல தூக்கத்தை தடுக்கவில்லை.', 0),
(309, '5555', 8, 'Section 8 - Social Life', 'I have no social life because of my pain. | எனக்கு வலியால் சமூக வாழ்க்கையே இல்லை.', 5),
(310, '5555', 9, 'Section 9 - Traveling', 'Pain restricts me to short necessary trips under 30 minutes. | 30 நிமிடத்திற்கு குறைவான, அவசியமான குறுகிய பயணங்களுக்கு மட்டுமே வலி என்னை கட்டுப்படுத்துகிறது.', 4),
(311, '5555', 10, 'Section 10 - Employment/Homemaking', 'My pain is rapidly worsening. | என்னுடைய வலி வேகமாக மோசமாகிறது.', 5),
(312, '5555', 1, 'Section 1 - Pain Intensity', 'I can tolerate the pain I have without having to use pain medication.\r\nநான் வலி நிவாரணி மருந்துகளைப் பயன்படுத்தாமல் எனக்கு இருக்கும் வலியை தாங்க முடியும்.\r\n\r\n', 0),
(313, '5555', 2, 'Section 2 - Personal Care (Washing, Dressing, etc.)', 'I need help but I am able to manage most of my personal care.\r\nஎனக்கு உதவி தேவை, ஆனால் நான் என் பெரும்பாலான தனிப்பட்ட பராமரிப்பை மேலாண்மை செய்ய முடிகிறது.', 3),
(314, '5555', 3, 'Section 3 - Lifting', 'Pain prevents me from lifting heavy weights off the floor. | வலி, என்னால் தரையில் இருந்து கனமான எடைகளை உயர்த்த முடியாமல் தடுக்கிறது.', 2),
(315, '5555', 4, 'Section 4 - Walking', 'I am in bed most of the time and have to crawl to move. | நான் பெரும்பாலான நேரம் படுக்கையில் இருப்பேன், மேலும் நகர்வதற்காக குலுங்கி நகர வேண்டும்.', 5),
(316, '5555', 5, 'Section 5 - Sitting', 'Pain prevents me from sitting more than 1 hour. | 1 மணி நேரத்திற்கு மேல் உட்கார்வதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 2),
(317, '5555', 6, 'Section 6 - Standing', 'I can stand as long as I want but it increases my pain. | நான் விரும்பிய அளவிற்கு நிற்க முடிகிறது, ஆனால் அது என் வலியை அதிகரிக்கிறது.', 1),
(318, '5555', 7, 'Section 7 - Sleeping', 'Even when I take pain medication, I sleep less than 4 hours. | நான் வலி நிவாரணி மருந்துகளை எடுத்தாலும், 4 மணி நேரத்திற்கு குறைவாகவே நான் தூங்குகிறேன்.', 3),
(319, '5555', 8, 'Section 8 - Social Life', 'Pain prevents me from going out very often. | அடிக்கடி வெளியே செல்வதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 3),
(320, '5555', 9, 'Section 9 - Traveling', 'Pain prevents me from traveling except to receive care. | நான் சிகிச்சை பெறுவதற்காக மட்டுமே பயணம் செய்ய முடியும், ஏனெனில் வலி என்னால் தடுக்கப்படுகிறது.', 5),
(321, '5555', 10, 'Section 10 - Employment/Homemaking', 'My pain seems to be getting better, but improvement is slow. | என்னுடைய வலி சிறிதளவு மேம்பட்டுள்ளது, ஆனால் மேம்பாடு மெதுவாக உள்ளது.', 2),
(322, '5555', 1, 'Section 1 - Pain Intensity', 'I can tolerate the pain I have without having to use pain medication.\r\nநான் வலி நிவாரணி மருந்துகளைப் பயன்படுத்தாமல் எனக்கு இருக்கும் வலியை தாங்க முடியும்.\r\n\r\n', 0),
(323, '5555', 2, 'Section 2 - Personal Care (Washing, Dressing, etc.)', 'I need help but I am able to manage most of my personal care.\r\nஎனக்கு உதவி தேவை, ஆனால் நான் என் பெரும்பாலான தனிப்பட்ட பராமரிப்பை மேலாண்மை செய்ய முடிகிறது.', 3),
(324, '5555', 3, 'Section 3 - Lifting', 'Pain prevents me from lifting heavy weights off the floor. | வலி, என்னால் தரையில் இருந்து கனமான எடைகளை உயர்த்த முடியாமல் தடுக்கிறது.', 2),
(325, '5555', 4, 'Section 4 - Walking', 'Pain prevents me from walking more than ¼ mile. | ¼ மைலுக்கு மேல் நடப்பதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 3),
(326, '5555', 5, 'Section 5 - Sitting', 'Pain prevents me from sitting more than ½ hour. | ½ மணி நேரத்திற்கு மேல் உட்கார்வதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 3),
(327, '5555', 6, 'Section 6 - Standing', 'I can stand as long as I want but it increases my pain. | நான் விரும்பிய அளவிற்கு நிற்க முடிகிறது, ஆனால் அது என் வலியை அதிகரிக்கிறது.', 1),
(328, '5555', 7, 'Section 7 - Sleeping', 'Even when I take pain medication, I sleep less than 2 hours. | நான் வலி நிவாரணி மருந்துகளை எடுத்தாலும், 2 மணி நேரத்திற்கு குறைவாகவே நான் தூங்குகிறேன்.', 4),
(329, '5555', 8, 'Section 8 - Social Life', 'My social life is normal and does not increase my pain. | என்னுடைய சமூக வாழ்க்கை சாதாரணமாக உள்ளது, மேலும் அது என்னுடைய வலியை அதிகரிக்கவில்லை.', 0),
(330, '5555', 9, 'Section 9 - Traveling', 'Pain restricts me to trips of less than 1 hour. | 1 மணி நேரத்திற்கு குறைவான பயணங்களுக்கு மட்டுமே வலி என்னை கட்டுப்படுத்துகிறது.', 3),
(331, '5555', 10, 'Section 10 - Employment/Homemaking', 'My pain is rapidly worsening. | என்னுடைய வலி வேகமாக மோசமாகிறது.', 5),
(332, '9999', 1, 'Section 1 - Pain Intensity', 'The pain is bad but I manage without having to take pain medication. \r\nவலி மோசமாக உள்ளது, ஆனால் வலி நிவாரணி மருந்துகளை எடுத்துக் கொள்ளாமல் நான் சமாளிக்கிறேன்', 1),
(333, '9999', 1, 'Section 1 - Pain Intensity', 'The pain is bad but I manage without having to take pain medication. \r\nவலி மோசமாக உள்ளது, ஆனால் வலி நிவாரணி மருந்துகளை எடுத்துக் கொள்ளாமல் நான் சமாளிக்கிறேன்', 1),
(334, '9999', 2, 'Section 2 - Personal Care (Washing, Dressing, etc.)', 'I need help but I am able to manage most of my personal care.\r\nஎனக்கு உதவி தேவை, ஆனால் நான் என் பெரும்பாலான தனிப்பட்ட பராமரிப்பை மேலாண்மை செய்ய முடிகிறது.', 3),
(335, '9999', 3, 'Section 3 - Lifting', 'I cannot lift or carry anything at all. | நான் எதையும் உயர்த்தவோ அல்லது சுமக்கவோ முடியாது.', 5),
(336, '9999', 4, 'Section 4 - Walking', 'Pain prevents me from walking more than 1 mile. | 1 மைலுக்கு மேல் நடப்பதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 1),
(337, '9999', 5, 'Section 5 - Sitting', 'I can sit in any chair as long as I like. | நான் விரும்பும் அளவிற்கு எந்த நாற்காலியிலும் உட்கார முடியும்.', 0),
(338, '9999', 6, 'Section 6 - Standing', 'Pain prevents me from standing for more than 10 minutes. | 10 நிமிடத்திற்கு மேல் நிற்பதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 4),
(339, '9999', 7, 'Section 7 - Sleeping', 'Pain prevents me from sleeping at all. | வலி என்னால் தூங்கவே முடியவில்லை.', 5),
(340, '9999', 8, 'Section 8 - Social Life', 'Pain prevents me from participating in more energetic activities. | மிகவும் ஆற்றலான செயல்களில் பங்கேற்பதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 2);
INSERT INTO `user_scores` (`id`, `user_id`, `question_id`, `question`, `selected_option`, `score`) VALUES
(341, '9999', 9, 'Section 9 - Traveling', 'Pain restricts me to short necessary trips under 30 minutes. | 30 நிமிடத்திற்கு குறைவான, அவசியமான குறுகிய பயணங்களுக்கு மட்டுமே வலி என்னை கட்டுப்படுத்துகிறது.', 4),
(342, '9999', 10, 'Section 10 - Employment/Homemaking', 'My pain is neither getting better nor worse. | என்னுடைய வலி சரியாகவோ, மோசமாகவோ ஆகவில்லை.', 3),
(343, '5555', 1, 'Section 1 - Pain Intensity', 'Pain medication provides me complete relief from pain. \r\nவலி நிவாரணி மருந்து எனக்கு வலியிலிருந்து முழு நிவாரணம் அளிக்கிறது', 2),
(344, '5555', 2, 'Section 2 - Personal Care (Washing, Dressing, etc.)', 'I need help every day in most aspects of my care.\r\nஎனது பராமரிப்பின் பெரும்பாலான அம்சங்களில் எனக்கு தினமும் உதவி தேவை.', 4),
(345, '5555', 3, 'Section 3 - Lifting', 'Pain prevents me from lifting heavy weights but I can manage light weights. | வலி, என்னால் கனமான எடைகளை உயர்த்த முடியாமல் தடுக்கிறது, ஆனால் லேசான எடைகளை நான் மேலாண்மை செய்ய முடிகிறது.', 3),
(346, '5555', 4, 'Section 4 - Walking', 'I am in bed most of the time and have to crawl to move.\r\nநான் பெரும்பாலான நேரம் படுக்கையில் இருப்பேன், மேலும் நகர்வதற்காக குலுங்கி நகர வேண்டும்.', 5),
(347, '5555', 5, 'Section 5 - Sitting', 'I can only sit in my favorite chair as long as I like. | நான் விரும்பும் அளவிற்கு என் விருப்பமான நாற்காலியில் மட்டுமே உட்கார முடியும்.', 1),
(348, '5555', 6, 'Section 6 - Standing', 'Pain prevents me from standing for more than 10 minutes. | 10 நிமிடத்திற்கு மேல் நிற்பதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 4),
(349, '5555', 7, 'Section 7 - Sleeping', 'Even when I take pain medication, I sleep less than 4 hours. | நான் வலி நிவாரணி மருந்துகளை எடுத்தாலும், 4 மணி நேரத்திற்கு குறைவாகவே நான் தூங்குகிறேன்.', 3),
(350, '5555', 8, 'Section 8 - Social Life', 'Pain prevents me from going out very often. | அடிக்கடி வெளியே செல்வதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 3),
(351, '5555', 9, 'Section 9 - Traveling', 'Pain prevents me from traveling except to receive care. | நான் சிகிச்சை பெறுவதற்காக மட்டுமே பயணம் செய்ய முடியும், ஏனெனில் வலி என்னால் தடுக்கப்படுகிறது.', 5),
(352, '5555', 10, 'Section 10 - Employment/Homemaking', 'My pain is gradually worsening. | என்னுடைய வலி படிப்படியாக மோசமாகிறது.', 4),
(353, '5555', 1, 'Section 1 - Pain Intensity', 'Pain medication provides me complete relief from pain. \r\nவலி நிவாரணி மருந்து எனக்கு வலியிலிருந்து முழு நிவாரணம் அளிக்கிறது', 2),
(354, '5555', 1, 'Section 1 - Pain Intensity', 'Pain medication provides me little relief from pain. \r\nவலி நிவாரணி மருந்து எனக்கு சிறிதளவு நிவாரணம் அளிக்கிறது.', 4),
(355, '5555', 2, 'Section 2 - Personal Care (Washing, Dressing, etc.)', 'It is painful to take care of myself and I am slower than usual.\r\nஎன்னை பராமரிப்பது மிகவும் வலியுடனானது, மேலும் நான் வழக்கத்தைவிட மெதுவாக இருக்கிறேன்.', 2),
(356, '5555', 3, 'Section 3 - Lifting', 'I can lift only very light weights. | நான் மிக லேசான எடைகளை மட்டுமே உயர்த்த முடியும்.', 4),
(357, '5555', 4, 'Section 4 - Walking', 'Pain prevents me from walking more than 1 mile.\r\n1 மைலுக்கு மேல் நடப்பதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 1),
(358, '5555', 5, 'Section 5 - Sitting', 'Pain prevents me from sitting more than 10 minutes. | 10 நிமிடத்திற்கு மேல் உட்கார்வதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 4),
(359, '5555', 6, 'Section 6 - Standing', 'Pain prevents me from standing for more than 1 hour. | 1 மணி நேரத்திற்கு மேல் நிற்பதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 2),
(360, '5555', 7, 'Section 7 - Sleeping', 'Even when I take pain medication, I sleep less than 4 hours. | நான் வலி நிவாரணி மருந்துகளை எடுத்தாலும், 4 மணி நேரத்திற்கு குறைவாகவே நான் தூங்குகிறேன்.', 3),
(361, '5555', 8, 'Section 8 - Social Life', 'Pain has restricted my social life to my home. | வலி என்னுடைய சமூக வாழ்க்கையை என் வீட்டிற்குள் மட்டுமே கட்டுப்படுத்தியுள்ளது.', 4),
(362, '5555', 9, 'Section 9 - Traveling', 'I can travel anywhere but it increases my pain. | நான் எங்கு வேண்டுமானாலும் பயணம் செய்ய முடிகிறது, ஆனால் அது என் வலியை அதிகரிக்கிறது.', 1),
(363, '5555', 10, 'Section 10 - Employment/Homemaking', 'My pain is gradually worsening. | என்னுடைய வலி படிப்படியாக மோசமாகிறது.', 4),
(364, '5555', 10, 'Section 10 - Employment/Homemaking', 'My pain is gradually worsening. | என்னுடைய வலி படிப்படியாக மோசமாகிறது.', 4),
(365, '5555', 10, 'Section 10 - Employment/Homemaking', 'My pain is gradually worsening. | என்னுடைய வலி படிப்படியாக மோசமாகிறது.', 4),
(366, '5555', 10, 'Section 10 - Employment/Homemaking', 'My pain is gradually worsening. | என்னுடைய வலி படிப்படியாக மோசமாகிறது.', 4),
(367, '5555', 1, 'Section 1 - Pain Intensity', 'Pain medication provides me little relief from pain. \r\nவலி நிவாரணி மருந்து எனக்கு சிறிதளவு நிவாரணம் அளிக்கிறது.', 4),
(368, '5555', 2, 'Section 2 - Personal Care (Washing, Dressing, etc.)', 'It is painful to take care of myself and I am slower than usual.\r\nஎன்னை பராமரிப்பது மிகவும் வலியுடனானது, மேலும் நான் வழக்கத்தைவிட மெதுவாக இருக்கிறேன்.', 2),
(369, '5555', 3, 'Section 3 - Lifting', 'I can lift only very light weights. | நான் மிக லேசான எடைகளை மட்டுமே உயர்த்த முடியும்.', 4),
(370, '5555', 4, 'Section 4 - Walking', 'Pain prevents me from walking more than ¼ mile.\r\n¼ மைலுக்கு மேல் நடப்பதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 3),
(371, '5555', 5, 'Section 5 - Sitting', 'Pain prevents me from sitting more than 1 hour. | 1 மணி நேரத்திற்கு மேல் உட்கார்வதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 2),
(372, '5555', 6, 'Section 6 - Standing', 'Pain prevents me from standing for more than ½ hour. | ½ மணி நேரத்திற்கு மேல் நிற்பதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 3),
(373, '5555', 7, 'Section 7 - Sleeping', 'I can sleep well only by using pain medication. | வலி நிவாரணி மருந்துகளை பயன்படுத்தியதன் மூலம் மட்டுமே எனக்கு நல்ல தூக்கம் கிடைக்கும்.', 1),
(374, '5555', 8, 'Section 8 - Social Life', 'Pain prevents me from going out very often. | அடிக்கடி வெளியே செல்வதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 3),
(375, '5555', 9, 'Section 9 - Traveling', 'Pain restricts me to trips of less than 2 hours. | 2 மணி நேரத்திற்கு குறைவான பயணங்களுக்கு மட்டுமே வலி என்னை கட்டுப்படுத்துகிறது.', 2),
(376, '5555', 10, 'Section 10 - Employment/Homemaking', 'My pain seems to be getting better, but improvement is slow. | என்னுடைய வலி சிறிதளவு மேம்பட்டுள்ளது, ஆனால் மேம்பாடு மெதுவாக உள்ளது.', 2),
(377, '5555', 10, 'Section 10 - Employment/Homemaking', 'My pain seems to be getting better, but improvement is slow. | என்னுடைய வலி சிறிதளவு மேம்பட்டுள்ளது, ஆனால் மேம்பாடு மெதுவாக உள்ளது.', 2),
(378, '5555', 10, 'Section 10 - Employment/Homemaking', 'My pain seems to be getting better, but improvement is slow. | என்னுடைய வலி சிறிதளவு மேம்பட்டுள்ளது, ஆனால் மேம்பாடு மெதுவாக உள்ளது.', 2),
(379, '5555', 10, 'Section 10 - Employment/Homemaking', 'My pain seems to be getting better, but improvement is slow. | என்னுடைய வலி சிறிதளவு மேம்பட்டுள்ளது, ஆனால் மேம்பாடு மெதுவாக உள்ளது.', 2),
(380, '5555', 10, 'Section 10 - Employment/Homemaking', 'My pain seems to be getting better, but improvement is slow. | என்னுடைய வலி சிறிதளவு மேம்பட்டுள்ளது, ஆனால் மேம்பாடு மெதுவாக உள்ளது.', 2),
(381, '5555', 10, 'Section 10 - Employment/Homemaking', 'My pain seems to be getting better, but improvement is slow. | என்னுடைய வலி சிறிதளவு மேம்பட்டுள்ளது, ஆனால் மேம்பாடு மெதுவாக உள்ளது.', 2),
(382, '5555', 10, 'Section 10 - Employment/Homemaking', 'My pain seems to be getting better, but improvement is slow. | என்னுடைய வலி சிறிதளவு மேம்பட்டுள்ளது, ஆனால் மேம்பாடு மெதுவாக உள்ளது.', 2),
(383, '5555', 1, 'Section 1 - Pain Intensity', 'Pain medication provides me moderate relief from pain. \r\nவலி நிவாரணி மருந்து எனக்கு சிறிதளவு நிவாரணம் அளிக்கிறது.', 3),
(384, '5555', 2, 'Section 2 - Personal Care (Washing, Dressing, etc.)', 'I need help every day in most aspects of my care.\r\nஎனது பராமரிப்பின் பெரும்பாலான அம்சங்களில் எனக்கு தினமும் உதவி தேவை.', 4),
(385, '5555', 3, 'Section 3 - Lifting', 'Pain prevents me from lifting heavy weights but I can manage light weights. | வலி, என்னால் கனமான எடைகளை உயர்த்த முடியாமல் தடுக்கிறது, ஆனால் லேசான எடைகளை நான் மேலாண்மை செய்ய முடிகிறது.', 3),
(386, '5555', 4, 'Section 4 - Walking', 'Pain prevents me from walking more than ½ mile.\r\n½ மைலுக்கு மேல் நடப்பதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 2),
(387, '5555', 5, 'Section 5 - Sitting', 'I can only sit in my favorite chair as long as I like. | நான் விரும்பும் அளவிற்கு என் விருப்பமான நாற்காலியில் மட்டுமே உட்கார முடியும்.', 1),
(388, '5555', 6, 'Section 6 - Standing', 'Pain prevents me from standing for more than ½ hour. | ½ மணி நேரத்திற்கு மேல் நிற்பதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 3),
(389, '5555', 7, 'Section 7 - Sleeping', 'Even when I take pain medication, I sleep less than 2 hours. | நான் வலி நிவாரணி மருந்துகளை எடுத்தாலும், 2 மணி நேரத்திற்கு குறைவாகவே நான் தூங்குகிறேன்.', 4),
(390, '5555', 8, 'Section 8 - Social Life', 'Pain prevents me from participating in more energetic activities. | மிகவும் ஆற்றலான செயல்களில் பங்கேற்பதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 2),
(391, '5555', 9, 'Section 9 - Traveling', 'I can travel anywhere but it increases my pain. | நான் எங்கு வேண்டுமானாலும் பயணம் செய்ய முடிகிறது, ஆனால் அது என் வலியை அதிகரிக்கிறது.', 1),
(392, '5555', 10, 'Section 10 - Employment/Homemaking', 'My pain is neither getting better nor worse. | என்னுடைய வலி சரியாகவோ, மோசமாகவோ ஆகவில்லை.', 3),
(393, '5555', 1, 'Section 1 - Pain Intensity', 'Pain medication has no effect on the pain. \r\nவலி நிவாரணி மருந்து வலியில் எந்தவிதமான விளைவையும் அளிக்கவில்லை.', 5),
(394, '5555', 2, 'Section 2 - Personal Care (Washing, Dressing, etc.)', 'I do not get dressed, wash with difficulty, and stay in bed.\r\nநான் உடையை அணிவதில்லை, கஷ்டமாக குளிக்கிறேன், மேலும் படுக்கையில் இருக்கும்.', 5),
(395, '5555', 3, 'Section 3 - Lifting', 'I cannot lift or carry anything at all. | நான் எதையும் உயர்த்தவோ அல்லது சுமக்கவோ முடியாது.', 5),
(396, '5555', 4, 'Section 4 - Walking', 'I am in bed most of the time and have to crawl to move.\r\nநான் பெரும்பாலான நேரம் படுக்கையில் இருப்பேன், மேலும் நகர்வதற்காக குலுங்கி நகர வேண்டும்.', 5),
(397, '5555', 5, 'Section 5 - Sitting', 'Pain prevents me from sitting at all. | என்னால் உட்கார முடியவில்லை, ஏனெனில் வலி என்னை தடுக்கிறது.', 5),
(398, '5555', 6, 'Section 6 - Standing', 'Pain prevents me from standing at all. | என்னால் நிற்க முடியவில்லை, ஏனெனில் வலி என்னை தடுக்கிறது.', 5),
(399, '5555', 7, 'Section 7 - Sleeping', 'Even when I take pain medication, I sleep less than 2 hours. | நான் வலி நிவாரணி மருந்துகளை எடுத்தாலும், 2 மணி நேரத்திற்கு குறைவாகவே நான் தூங்குகிறேன்.', 4),
(400, '5555', 8, 'Section 8 - Social Life', 'I have no social life because of my pain. | எனக்கு வலியால் சமூக வாழ்க்கையே இல்லை.', 5),
(401, '5555', 9, 'Section 9 - Traveling', 'Pain prevents me from traveling except to receive care. | நான் சிகிச்சை பெறுவதற்காக மட்டுமே பயணம் செய்ய முடியும், ஏனெனில் வலி என்னால் தடுக்கப்படுகிறது.', 5),
(402, '5555', 10, 'Section 10 - Employment/Homemaking', 'My pain is rapidly worsening. | என்னுடைய வலி வேகமாக மோசமாகிறது.', 5),
(403, '5555', 10, 'Section 10 - Employment/Homemaking', 'My pain is rapidly worsening. | என்னுடைய வலி வேகமாக மோசமாகிறது.', 5),
(404, '5555', 10, 'Section 10 - Employment/Homemaking', 'My pain is rapidly worsening. | என்னுடைய வலி வேகமாக மோசமாகிறது.', 5),
(405, '5555', 1, 'Section 1 - Pain Intensity', 'Pain medication has no effect on the pain. \r\nவலி நிவாரணி மருந்து வலியில் எந்தவிதமான விளைவையும் அளிக்கவில்லை.', 5),
(406, '5555', 2, 'Section 2 - Personal Care (Washing, Dressing, etc.)', 'I can take care of myself normally but it increases my pain. \r\nநான் என்னை சாதாரணமாக பராமரிக்க முடிகிறது, ஆனால் அது என் வலியை அதிகரிக்கிறது.', 1),
(407, '5555', 3, 'Section 3 - Lifting', 'Pain prevents me from lifting heavy weights off the floor. | வலி, என்னால் தரையில் இருந்து கனமான எடைகளை உயர்த்த முடியாமல் தடுக்கிறது.', 2),
(408, '5555', 4, 'Section 4 - Walking', 'Pain prevents me from walking more than 1 mile.\r\n1 மைலுக்கு மேல் நடப்பதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 1),
(409, '5555', 5, 'Section 5 - Sitting', 'I can sit in any chair as long as I like. | நான் விரும்பும் அளவிற்கு எந்த நாற்காலியிலும் உட்கார முடியும்.', 0),
(410, '5555', 6, 'Section 6 - Standing', 'I can stand as long as I want but it increases my pain. | நான் விரும்பிய அளவிற்கு நிற்க முடிகிறது, ஆனால் அது என் வலியை அதிகரிக்கிறது.', 1),
(411, '5555', 7, 'Section 7 - Sleeping', 'I can sleep well only by using pain medication. | வலி நிவாரணி மருந்துகளை பயன்படுத்தியதன் மூலம் மட்டுமே எனக்கு நல்ல தூக்கம் கிடைக்கும்.', 1),
(412, '5555', 8, 'Section 8 - Social Life', 'My social life is normal, but it increases my level of pain. | என் சமூக வாழ்க்கை சாதாரணமாக உள்ளது, ஆனால் அது என் வலியை அதிகரிக்கிறது.', 1),
(413, '5555', 9, 'Section 9 - Traveling', 'I can travel anywhere without increased pain. | வலியின்றி நான் எங்கு வேண்டுமானாலும் பயணம் செய்ய முடியும்.', 0),
(414, '5555', 10, 'Section 10 - Employment/Homemaking', 'My pain fluctuates but overall is definitely getting better. | என்னுடைய வலி மாறி மாறி வருகிறது, ஆனால் மொத்தத்தில் நல்லபடி சரியாகிறது.', 1),
(415, '5555', 10, 'Section 10 - Employment/Homemaking', 'My pain fluctuates but overall is definitely getting better. | என்னுடைய வலி மாறி மாறி வருகிறது, ஆனால் மொத்தத்தில் நல்லபடி சரியாகிறது.', 1),
(416, '5555', 10, 'Section 10 - Employment/Homemaking', 'My pain fluctuates but overall is definitely getting better. | என்னுடைய வலி மாறி மாறி வருகிறது, ஆனால் மொத்தத்தில் நல்லபடி சரியாகிறது.', 1),
(417, '5555', 1, 'Section 1 - Pain Intensity', 'The pain is bad but I manage without having to take pain medication. \r\nவலி மோசமாக உள்ளது, ஆனால் வலி நிவாரணி மருந்துகளை எடுத்துக் கொள்ளாமல் நான் சமாளிக்கிறேன்', 1),
(418, '5555', 2, 'Section 2 - Personal Care (Washing, Dressing, etc.)', 'I can take care of myself normally without causing extra pain. \r\n கூடுதல் வலி இன்றி நான் சாதாரணமாக என்னை பராமரிக்க முடியும்.', 0),
(419, '5555', 3, 'Section 3 - Lifting', 'I can lift heavy weights but it causes increased pain. | நான் கனமான எடைகளை உயர்த்த முடிகிறது, ஆனால் அது அதிக வலியை ஏற்படுத்துகிறது.', 1),
(420, '5555', 4, 'Section 4 - Walking', 'Pain prevents me from walking more than 1 mile.\r\n1 மைலுக்கு மேல் நடப்பதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 1),
(421, '5555', 5, 'Section 5 - Sitting', 'I can sit in any chair as long as I like. | நான் விரும்பும் அளவிற்கு எந்த நாற்காலியிலும் உட்கார முடியும்.', 0),
(422, '5555', 6, 'Section 6 - Standing', 'I can stand as long as I want but it increases my pain. | நான் விரும்பிய அளவிற்கு நிற்க முடிகிறது, ஆனால் அது என் வலியை அதிகரிக்கிறது.', 1),
(423, '5555', 7, 'Section 7 - Sleeping', 'Pain prevents me from sleeping at all. | வலி என்னால் தூங்கவே முடியவில்லை.', 5),
(424, '5555', 8, 'Section 8 - Social Life', 'My social life is normal and does not increase my pain. | என்னுடைய சமூக வாழ்க்கை சாதாரணமாக உள்ளது, மேலும் அது என்னுடைய வலியை அதிகரிக்கவில்லை.', 0),
(425, '5555', 9, 'Section 9 - Traveling', 'Pain restricts me to trips of less than 2 hours. | 2 மணி நேரத்திற்கு குறைவான பயணங்களுக்கு மட்டுமே வலி என்னை கட்டுப்படுத்துகிறது.', 2),
(426, '5555', 10, 'Section 10 - Employment/Homemaking', 'My pain is rapidly getting better. | என்னுடைய வலி விரைவாகவே சரியாகிறது.', 0),
(427, '5555', 10, 'Section 10 - Employment/Homemaking', 'My pain is rapidly getting better. | என்னுடைய வலி விரைவாகவே சரியாகிறது.', 0),
(428, '5555', 10, 'Section 10 - Employment/Homemaking', 'My pain is rapidly getting better. | என்னுடைய வலி விரைவாகவே சரியாகிறது.', 0),
(429, '5555', 1, 'Section 1 - Pain Intensity', 'Pain medication provides me moderate relief from pain. \r\nவலி நிவாரணி மருந்து எனக்கு சிறிதளவு நிவாரணம் அளிக்கிறது.', 3),
(430, '5555', 2, 'Section 2 - Personal Care (Washing, Dressing, etc.)', 'It is painful to take care of myself and I am slower than usual.\r\nஎன்னை பராமரிப்பது மிகவும் வலியுடனானது, மேலும் நான் வழக்கத்தைவிட மெதுவாக இருக்கிறேன்.', 2),
(431, '5555', 3, 'Section 3 - Lifting', 'I cannot lift or carry anything at all. | நான் எதையும் உயர்த்தவோ அல்லது சுமக்கவோ முடியாது.', 5),
(432, '5555', 4, 'Section 4 - Walking', 'I can only walk using crutches or a cane. நான் மரவடி அல்லது குச்சி உதவியுடன் மட்டுமே நடக்க முடியும்.', 4),
(433, '5555', 5, 'Section 5 - Sitting', 'Pain prevents me from sitting more than ½ hour. | ½ மணி நேரத்திற்கு மேல் உட்கார்வதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 3),
(434, '5555', 6, 'Section 6 - Standing', 'Pain prevents me from standing for more than 10 minutes. | 10 நிமிடத்திற்கு மேல் நிற்பதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 4),
(435, '5555', 7, 'Section 7 - Sleeping', 'Even when I take pain medication, I sleep less than 4 hours. | நான் வலி நிவாரணி மருந்துகளை எடுத்தாலும், 4 மணி நேரத்திற்கு குறைவாகவே நான் தூங்குகிறேன்.', 3),
(436, '5555', 8, 'Section 8 - Social Life', 'My social life is normal and does not increase my pain. | என்னுடைய சமூக வாழ்க்கை சாதாரணமாக உள்ளது, மேலும் அது என்னுடைய வலியை அதிகரிக்கவில்லை.', 0),
(437, '5555', 1, 'Section 1 - Pain Intensity', 'Pain medication provides me little relief from pain. \r\nவலி நிவாரணி மருந்து எனக்கு சிறிதளவு நிவாரணம் அளிக்கிறது.', 4),
(438, '5555', 2, 'Section 2 - Personal Care (Washing, Dressing, etc.)', 'I do not get dressed, wash with difficulty, and stay in bed.\r\nநான் உடையை அணிவதில்லை, கஷ்டமாக குளிக்கிறேன், மேலும் படுக்கையில் இருக்கும்.', 5),
(439, '5555', 3, 'Section 3 - Lifting', 'I cannot lift or carry anything at all. | நான் எதையும் உயர்த்தவோ அல்லது சுமக்கவோ முடியாது.', 5),
(440, '5555', 4, 'Section 4 - Walking', 'I am in bed most of the time and have to crawl to move.\r\nநான் பெரும்பாலான நேரம் படுக்கையில் இருப்பேன், மேலும் நகர்வதற்காக குலுங்கி நகர வேண்டும்.', 5),
(441, '5555', 5, 'Section 5 - Sitting', 'Pain prevents me from sitting more than ½ hour. | ½ மணி நேரத்திற்கு மேல் உட்கார்வதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 3),
(442, '5555', 6, 'Section 6 - Standing', 'I can stand as long as I want but it increases my pain. | நான் விரும்பிய அளவிற்கு நிற்க முடிகிறது, ஆனால் அது என் வலியை அதிகரிக்கிறது.', 1),
(443, '5555', 7, 'Section 7 - Sleeping', 'Pain does not prevent me from sleeping well. | வலி என்னால் நல்ல தூக்கத்தை தடுக்கவில்லை.', 0),
(444, '5555', 8, 'Section 8 - Social Life', 'My social life is normal, but it increases my level of pain. | என் சமூக வாழ்க்கை சாதாரணமாக உள்ளது, ஆனால் அது என் வலியை அதிகரிக்கிறது.', 1),
(445, '5555', 9, 'Section 9 - Traveling', 'I can travel anywhere but it increases my pain. | நான் எங்கு வேண்டுமானாலும் பயணம் செய்ய முடிகிறது, ஆனால் அது என் வலியை அதிகரிக்கிறது.', 1),
(446, '5555', 10, 'Section 10 - Employment/Homemaking', 'My pain is rapidly worsening. | என்னுடைய வலி வேகமாக மோசமாகிறது.', 5),
(447, '5555', 1, 'Section 1 - Pain Intensity', 'Pain medication provides me complete relief from pain. \r\nவலி நிவாரணி மருந்து எனக்கு வலியிலிருந்து முழு நிவாரணம் அளிக்கிறது', 2),
(448, '5555', 2, 'Section 2 - Personal Care (Washing, Dressing, etc.)', 'I can take care of myself normally but it increases my pain. \r\nநான் என்னை சாதாரணமாக பராமரிக்க முடிகிறது, ஆனால் அது என் வலியை அதிகரிக்கிறது.', 1),
(449, '5555', 3, 'Section 3 - Lifting', 'Pain prevents me from lifting heavy weights but I can manage light weights. | வலி, என்னால் கனமான எடைகளை உயர்த்த முடியாமல் தடுக்கிறது, ஆனால் லேசான எடைகளை நான் மேலாண்மை செய்ய முடிகிறது.', 3),
(450, '5555', 4, 'Section 4 - Walking', 'Pain prevents me from walking more than ½ mile.\r\n½ மைலுக்கு மேல் நடப்பதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 2),
(451, '5555', 5, 'Section 5 - Sitting', 'Pain prevents me from sitting more than ½ hour. | ½ மணி நேரத்திற்கு மேல் உட்கார்வதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 3),
(452, '5555', 6, 'Section 6 - Standing', 'Pain prevents me from standing for more than 1 hour. | 1 மணி நேரத்திற்கு மேல் நிற்பதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 2),
(453, '5555', 7, 'Section 7 - Sleeping', 'Even when I take pain medication, I sleep less than 6 hours. | நான் வலி நிவாரணி மருந்துகளை எடுத்தாலும், 6 மணி நேரத்திற்கு குறைவாகவே நான் தூங்குகிறேன்.', 2),
(454, '5555', 8, 'Section 8 - Social Life', 'Pain prevents me from going out very often. | அடிக்கடி வெளியே செல்வதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 3),
(455, '5555', 9, 'Section 9 - Traveling', 'I can travel anywhere but it increases my pain. | நான் எங்கு வேண்டுமானாலும் பயணம் செய்ய முடிகிறது, ஆனால் அது என் வலியை அதிகரிக்கிறது.', 1),
(456, '5555', 10, 'Section 10 - Employment/Homemaking', 'My pain seems to be getting better, but improvement is slow. | என்னுடைய வலி சிறிதளவு மேம்பட்டுள்ளது, ஆனால் மேம்பாடு மெதுவாக உள்ளது.', 2),
(457, '5555', 1, 'Section 1 - Pain Intensity', 'Pain medication provides me little relief from pain. \r\nவலி நிவாரணி மருந்து எனக்கு சிறிதளவு நிவாரணம் அளிக்கிறது.', 4),
(458, '5555', 2, 'Section 2 - Personal Care (Washing, Dressing, etc.)', 'I need help but I am able to manage most of my personal care.\r\nஎனக்கு உதவி தேவை, ஆனால் நான் என் பெரும்பாலான தனிப்பட்ட பராமரிப்பை மேலாண்மை செய்ய முடிகிறது.', 3),
(459, '5555', 3, 'Section 3 - Lifting', 'Pain prevents me from lifting heavy weights off the floor. | வலி, என்னால் தரையில் இருந்து கனமான எடைகளை உயர்த்த முடியாமல் தடுக்கிறது.', 2),
(460, '5555', 4, 'Section 4 - Walking', 'Pain does not prevent me from walking any distance. \r\nஎந்த தூரத்திற்கும் நடப்பதற்கு வலி என்னால் தடுக்கப்படவில்லை.', 0),
(461, '5555', 5, 'Section 5 - Sitting', 'Pain prevents me from sitting more than 1 hour. | 1 மணி நேரத்திற்கு மேல் உட்கார்வதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 2),
(462, '5555', 6, 'Section 6 - Standing', 'Pain prevents me from standing for more than ½ hour. | ½ மணி நேரத்திற்கு மேல் நிற்பதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 3),
(463, '5555', 7, 'Section 7 - Sleeping', 'I can sleep well only by using pain medication. | வலி நிவாரணி மருந்துகளை பயன்படுத்தியதன் மூலம் மட்டுமே எனக்கு நல்ல தூக்கம் கிடைக்கும்.', 1),
(464, '5555', 8, 'Section 8 - Social Life', 'My social life is normal and does not increase my pain. | என்னுடைய சமூக வாழ்க்கை சாதாரணமாக உள்ளது, மேலும் அது என்னுடைய வலியை அதிகரிக்கவில்லை.', 0),
(465, '5555', 9, 'Section 9 - Traveling', 'Pain restricts me to trips of less than 2 hours. | 2 மணி நேரத்திற்கு குறைவான பயணங்களுக்கு மட்டுமே வலி என்னை கட்டுப்படுத்துகிறது.', 2),
(466, '5555', 10, 'Section 10 - Employment/Homemaking', 'My pain is neither getting better nor worse. | என்னுடைய வலி சரியாகவோ, மோசமாகவோ ஆகவில்லை.', 3),
(467, '5555', 1, 'Section 1 - Pain Intensity', 'Pain medication provides me moderate relief from pain. \r\nவலி நிவாரணி மருந்து எனக்கு சிறிதளவு நிவாரணம் அளிக்கிறது.', 3),
(468, '5555', 2, 'Section 2 - Personal Care (Washing, Dressing, etc.)', 'It is painful to take care of myself and I am slower than usual.\r\nஎன்னை பராமரிப்பது மிகவும் வலியுடனானது, மேலும் நான் வழக்கத்தைவிட மெதுவாக இருக்கிறேன்.', 2),
(469, '5555', 3, 'Section 3 - Lifting', 'Pain prevents me from lifting heavy weights but I can manage light weights. | வலி, என்னால் கனமான எடைகளை உயர்த்த முடியாமல் தடுக்கிறது, ஆனால் லேசான எடைகளை நான் மேலாண்மை செய்ய முடிகிறது.', 3),
(470, '5555', 4, 'Section 4 - Walking', 'I am in bed most of the time and have to crawl to move.\r\nநான் பெரும்பாலான நேரம் படுக்கையில் இருப்பேன், மேலும் நகர்வதற்காக குலுங்கி நகர வேண்டும்.', 5),
(471, '5555', 5, 'Section 5 - Sitting', 'Pain prevents me from sitting more than 1 hour. | 1 மணி நேரத்திற்கு மேல் உட்கார்வதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 2),
(472, '5555', 6, 'Section 6 - Standing', 'I can stand as long as I want without increased pain. | நான் விரும்பிய அளவிற்கு வலியின்றி நிற்க முடியும்.', 0),
(473, '5555', 7, 'Section 7 - Sleeping', 'Even when I take pain medication, I sleep less than 6 hours. | நான் வலி நிவாரணி மருந்துகளை எடுத்தாலும், 6 மணி நேரத்திற்கு குறைவாகவே நான் தூங்குகிறேன்.', 2),
(474, '5555', 8, 'Section 8 - Social Life', 'Pain prevents me from going out very often. | அடிக்கடி வெளியே செல்வதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 3),
(475, '5555', 9, 'Section 9 - Traveling', 'I can travel anywhere but it increases my pain. | நான் எங்கு வேண்டுமானாலும் பயணம் செய்ய முடிகிறது, ஆனால் அது என் வலியை அதிகரிக்கிறது.', 1),
(476, '5555', 10, 'Section 10 - Employment/Homemaking', 'My pain is rapidly worsening. | என்னுடைய வலி வேகமாக மோசமாகிறது.', 5),
(477, '5555', 1, 'Section 1 - Pain Intensity', 'The pain is bad but I manage without having to take pain medication. \r\nவலி மோசமாக உள்ளது, ஆனால் வலி நிவாரணி மருந்துகளை எடுத்துக் கொள்ளாமல் நான் சமாளிக்கிறேன்', 1),
(478, '5555', 2, 'Section 2 - Personal Care (Washing, Dressing, etc.)', 'It is painful to take care of myself and I am slower than usual.\r\nஎன்னை பராமரிப்பது மிகவும் வலியுடனானது, மேலும் நான் வழக்கத்தைவிட மெதுவாக இருக்கிறேன்.', 2),
(479, '5555', 3, 'Section 3 - Lifting', 'I can lift heavy weights but it causes increased pain. | நான் கனமான எடைகளை உயர்த்த முடிகிறது, ஆனால் அது அதிக வலியை ஏற்படுத்துகிறது.', 1),
(480, '5555', 4, 'Section 4 - Walking', 'Pain prevents me from walking more than ¼ mile.\r\n¼ மைலுக்கு மேல் நடப்பதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 3),
(481, '5555', 5, 'Section 5 - Sitting', 'I can sit in any chair as long as I like. | நான் விரும்பும் அளவிற்கு எந்த நாற்காலியிலும் உட்கார முடியும்.', 0),
(482, '5555', 6, 'Section 6 - Standing', 'I can stand as long as I want without increased pain. | நான் விரும்பிய அளவிற்கு வலியின்றி நிற்க முடியும்.', 0),
(483, '5555', 7, 'Section 7 - Sleeping', 'I can sleep well only by using pain medication. | வலி நிவாரணி மருந்துகளை பயன்படுத்தியதன் மூலம் மட்டுமே எனக்கு நல்ல தூக்கம் கிடைக்கும்.', 1),
(484, '5555', 8, 'Section 8 - Social Life', 'Pain prevents me from participating in more energetic activities. | மிகவும் ஆற்றலான செயல்களில் பங்கேற்பதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 2),
(485, '5555', 9, 'Section 9 - Traveling', 'I can travel anywhere but it increases my pain. | நான் எங்கு வேண்டுமானாலும் பயணம் செய்ய முடிகிறது, ஆனால் அது என் வலியை அதிகரிக்கிறது.', 1),
(486, '5555', 10, 'Section 10 - Employment/Homemaking', 'My pain fluctuates but overall is definitely getting better. | என்னுடைய வலி மாறி மாறி வருகிறது, ஆனால் மொத்தத்தில் நல்லபடி சரியாகிறது.', 1),
(487, '5555', 1, 'Section 1 - Pain Intensity', 'I can tolerate the pain I have without having to use pain medication.\r\nநான் வலி நிவாரணி மருந்துகளைப் பயன்படுத்தாமல் எனக்கு இருக்கும் வலியை தாங்க முடியும்.\r\n\r\n', 0),
(488, '5555', 2, 'Section 2 - Personal Care (Washing, Dressing, etc.)', 'I can take care of myself normally but it increases my pain. \r\nநான் என்னை சாதாரணமாக பராமரிக்க முடிகிறது, ஆனால் அது என் வலியை அதிகரிக்கிறது.', 1),
(489, '5555', 3, 'Section 3 - Lifting', 'I can lift heavy weights without increased pain. | அதிக வலியின்றி நான் கனமான எடைகளை உயர்த்த முடியும்.', 0),
(490, '5555', 4, 'Section 4 - Walking', 'Pain does not prevent me from walking any distance. \r\nஎந்த தூரத்திற்கும் நடப்பதற்கு வலி என்னால் தடுக்கப்படவில்லை.', 0),
(491, '5555', 5, 'Section 5 - Sitting', 'Pain prevents me from sitting more than 1 hour. | 1 மணி நேரத்திற்கு மேல் உட்கார்வதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 2),
(492, '5555', 6, 'Section 6 - Standing', 'I can stand as long as I want without increased pain. | நான் விரும்பிய அளவிற்கு வலியின்றி நிற்க முடியும்.', 0),
(493, '5555', 7, 'Section 7 - Sleeping', 'I can sleep well only by using pain medication. | வலி நிவாரணி மருந்துகளை பயன்படுத்தியதன் மூலம் மட்டுமே எனக்கு நல்ல தூக்கம் கிடைக்கும்.', 1),
(494, '5555', 8, 'Section 8 - Social Life', 'My social life is normal and does not increase my pain. | என்னுடைய சமூக வாழ்க்கை சாதாரணமாக உள்ளது, மேலும் அது என்னுடைய வலியை அதிகரிக்கவில்லை.', 0),
(495, '5555', 9, 'Section 9 - Traveling', 'I can travel anywhere but it increases my pain. | நான் எங்கு வேண்டுமானாலும் பயணம் செய்ய முடிகிறது, ஆனால் அது என் வலியை அதிகரிக்கிறது.', 1),
(496, '5555', 10, 'Section 10 - Employment/Homemaking', 'My pain fluctuates but overall is definitely getting better. | என்னுடைய வலி மாறி மாறி வருகிறது, ஆனால் மொத்தத்தில் நல்லபடி சரியாகிறது.', 1),
(497, '5555', 1, 'Section 1 - Pain Intensity', 'The pain is bad but I manage without having to take pain medication. \r\nவலி மோசமாக உள்ளது, ஆனால் வலி நிவாரணி மருந்துகளை எடுத்துக் கொள்ளாமல் நான் சமாளிக்கிறேன்', 1),
(498, '5555', 2, 'Section 2 - Personal Care (Washing, Dressing, etc.)', 'It is painful to take care of myself and I am slower than usual.\r\nஎன்னை பராமரிப்பது மிகவும் வலியுடனானது, மேலும் நான் வழக்கத்தைவிட மெதுவாக இருக்கிறேன்.', 2),
(499, '5555', 3, 'Section 3 - Lifting', 'I can lift heavy weights without increased pain. | அதிக வலியின்றி நான் கனமான எடைகளை உயர்த்த முடியும்.', 0),
(500, '5555', 4, 'Section 4 - Walking', 'Pain prevents me from walking more than 1 mile.\r\n1 மைலுக்கு மேல் நடப்பதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 1),
(501, '5555', 5, 'Section 5 - Sitting', 'I can sit in any chair as long as I like. | நான் விரும்பும் அளவிற்கு எந்த நாற்காலியிலும் உட்கார முடியும்.', 0),
(502, '5555', 6, 'Section 6 - Standing', 'Pain prevents me from standing for more than ½ hour. | ½ மணி நேரத்திற்கு மேல் நிற்பதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 3),
(503, '5555', 7, 'Section 7 - Sleeping', 'I can sleep well only by using pain medication. | வலி நிவாரணி மருந்துகளை பயன்படுத்தியதன் மூலம் மட்டுமே எனக்கு நல்ல தூக்கம் கிடைக்கும்.', 1),
(504, '5555', 8, 'Section 8 - Social Life', 'My social life is normal and does not increase my pain. | என்னுடைய சமூக வாழ்க்கை சாதாரணமாக உள்ளது, மேலும் அது என்னுடைய வலியை அதிகரிக்கவில்லை.', 0),
(505, '5555', 9, 'Section 9 - Traveling', 'Pain restricts me to trips of less than 2 hours. | 2 மணி நேரத்திற்கு குறைவான பயணங்களுக்கு மட்டுமே வலி என்னை கட்டுப்படுத்துகிறது.', 2),
(506, '5555', 10, 'Section 10 - Employment/Homemaking', 'My pain fluctuates but overall is definitely getting better. | என்னுடைய வலி மாறி மாறி வருகிறது, ஆனால் மொத்தத்தில் நல்லபடி சரியாகிறது.', 1),
(507, '5555', 1, 'Section 1 - Pain Intensity', 'Pain medication has no effect on the pain. \r\nவலி நிவாரணி மருந்து வலியில் எந்தவிதமான விளைவையும் அளிக்கவில்லை.', 5),
(508, '5555', 2, 'Section 2 - Personal Care (Washing, Dressing, etc.)', 'I can take care of myself normally without causing extra pain. \r\n கூடுதல் வலி இன்றி நான் சாதாரணமாக என்னை பராமரிக்க முடியும்.', 0),
(509, '5555', 3, 'Section 3 - Lifting', 'I can lift heavy weights but it causes increased pain. | நான் கனமான எடைகளை உயர்த்த முடிகிறது, ஆனால் அது அதிக வலியை ஏற்படுத்துகிறது.', 1),
(510, '5555', 4, 'Section 4 - Walking', 'Pain prevents me from walking more than ½ mile.\r\n½ மைலுக்கு மேல் நடப்பதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 2),
(511, '5555', 5, 'Section 5 - Sitting', 'Pain prevents me from sitting more than ½ hour. | ½ மணி நேரத்திற்கு மேல் உட்கார்வதற்கு வலி என்னால் தடுக்கப்படுகிறது.', 3),
(512, '5555', 6, 'Section 6 - Standing', 'I can stand as long as I want without increased pain. | நான் விரும்பிய அளவிற்கு வலியின்றி நிற்க முடியும்.', 0),
(513, '5555', 7, 'Section 7 - Sleeping', 'Even when I take pain medication, I sleep less than 6 hours. | நான் வலி நிவாரணி மருந்துகளை எடுத்தாலும், 6 மணி நேரத்திற்கு குறைவாகவே நான் தூங்குகிறேன்.', 2),
(514, '5555', 8, 'Section 8 - Social Life', 'My social life is normal, but it increases my level of pain. | என் சமூக வாழ்க்கை சாதாரணமாக உள்ளது, ஆனால் அது என் வலியை அதிகரிக்கிறது.', 1),
(515, '5555', 9, 'Section 9 - Traveling', 'Pain restricts me to short necessary trips under 30 minutes. | 30 நிமிடத்திற்கு குறைவான, அவசியமான குறுகிய பயணங்களுக்கு மட்டுமே வலி என்னை கட்டுப்படுத்துகிறது.', 4),
(516, '5555', 10, 'Section 10 - Employment/Homemaking', 'My pain is rapidly getting better. | என்னுடைய வலி விரைவாகவே சரியாகிறது.', 0),
(517, '5555', 1, 'Section 1 - Pain Intensity', 'Pain medication provides me little relief from pain. \r\nவலி நிவாரணி மருந்து எனக்கு சிறிதளவு நிவாரணம் அளிக்கிறது.', 4),
(518, '5555', 1, 'Section 1 - Pain Intensity', 'Pain medication has no effect on the pain. \r\nவலி நிவாரணி மருந்து வலியில் எந்தவிதமான விளைவையும் அளிக்கவில்லை.', 5),
(519, '5555', 1, 'Section 1 - Pain Intensity', 'Pain medication provides me complete relief from pain. \r\nவலி நிவாரணி மருந்து எனக்கு வலியிலிருந்து முழு நிவாரணம் அளிக்கிறது', 2),
(520, '5555', 2, 'Section 2 - Personal Care (Washing, Dressing, etc.)', 'I do not get dressed, wash with difficulty, and stay in bed.\r\nநான் உடையை அணிவதில்லை, கஷ்டமாக குளிக்கிறேன், மேலும் படுக்கையில் இருக்கும்.', 5),
(521, '5555', 1, 'Section 1 - Pain Intensity', 'Pain medication has no effect on the pain. \r\nவலி நிவாரணி மருந்து வலியில் எந்தவிதமான விளைவையும் அளிக்கவில்லை.', 5),
(522, '5555', 2, 'Section 2 - Personal Care (Washing, Dressing, etc.)', 'I do not get dressed, wash with difficulty, and stay in bed.\r\nநான் உடையை அணிவதில்லை, கஷ்டமாக குளிக்கிறேன், மேலும் படுக்கையில் இருக்கும்.', 5),
(523, '5555', 1, 'Section 1 - Pain Intensity', 'I can tolerate the pain I have without having to use pain medication.\n\nநான் வலி நிவாரணி மருந்துகளைப் பயன்படுத்தாமல் எனக்கு இருக்கும் வலியை தாங்க முடியும்.\n\n', 0),
(524, '5555', 1, 'Section 1 - Pain Intensity', 'I can tolerate the pain I have without having to use pain medication.\n\nநான் வலி நிவாரணி மருந்துகளைப் பயன்படுத்தாமல் எனக்கு இருக்கும் வலியை தாங்க முடியும்.\n\n', 0),
(525, '5555', 1, 'Section 1 - Pain Intensity', 'Pain medication provides me moderate relief from pain. \n\nவலி நிவாரணி மருந்து எனக்கு சிறிதளவு நிவாரணம் அளிக்கிறது.', 3),
(526, '5555', 1, 'Section 1 - Pain Intensity', 'Pain medication provides me moderate relief from pain. \n\nவலி நிவாரணி மருந்து எனக்கு சிறிதளவு நிவாரணம் அளிக்கிறது.', 3),
(527, '5555', 2, 'Section 2 - Personal Care (Washing, Dressing, etc.)', 'I can take care of myself normally but it increases my pain.\n \nவலி இருந்தாலும் என்னுடைய சுய பராமரிப்பு காரியங்களை வழக்கம் போல செய்ய முடிகிறது.\n', 1),
(528, '5555', 1, 'Section 1 - Pain Intensity', 'Pain medication has no effect on the pain. \n\nவலி நிவாரணி மருந்து வலியில் எந்தவிதமான விளைவையும் அளிக்கவில்லை.', 5),
(529, '5555', 2, 'Section 2 - Personal Care (Washing, Dressing, etc.)', 'It is painful to take care of myself and I am slow and careful.\n\nவலி அதிகமாக உள்ளதால், என்னுடைய சுய பராமரிப்பு காரி பங்களை கவனமாகவும், மெதுவாகவும் செய்கிறேன்.\n', 2),
(530, '5555', 3, 'Section 3 - Lifting', 'Pain prevents me from lifting heavy weights but I can manage light to medium weights if they are conveniently positioned.\n \nவளியின் காரணமாக அதிக எடையுள்ள பொருட்களை தூக்க முடிவதில்லை; ஆனால் குறைவான\nமற்றும் மிதமான எடையுள்ள பொருட்களை சரியான உமரத்திலிருந்து த', 3),
(531, '5555', 4, 'Section 4 - Walking', 'Pain prevents me from walking more than 1 mile.\n\nவலியின் காரணமாக 1 கிலோ மீட்டருக்கு மேல் என்னால் நடக்கமுடிவதில்லை.\n', 1),
(532, '5555', 5, 'Section 5 - Sitting', 'Pain prevents me from sitting more than ½ hour. \n வளிரின் காரணமாக ½மணி நேரத்திற்கு மேல் என்னால் உட்கார முடிவதில்லை.\n', 3),
(533, '5555', 6, 'Section 6 - Standing', 'Pain prevents me from standing for more than 1 hour. \n\nவலியின் காரணமாக 1 மணி நேரத்திற்கு மேல் என்னால் நிற்கமுடிவதில்லை.\n', 2),
(534, '5555', 7, 'Section 7 - Sleeping', 'Even when I take pain medication, I sleep less than 2 hours. \n\nவலான் காரணமாக என்னால் 2 மணி நேரத்திற்கும் குறைவாகவே தாங்க முடிகிறது.\n', 4),
(535, '5555', 8, 'Section 8 - Social Life', 'Pain has restricted my social life to my home. \n\nஎனது பாலியல் வாழ்க்கை வலியின் காரணமாக ஏறக்குறைய நிகழ்வதே இல்லை.\n', 4),
(536, '5555', 9, 'Section 9 - Traveling', 'Pain restricts me to trips of less than 1 hour. \n\nஎனது சமூக வாழ்வை வளி தடை செய்கிறது; என்னால் அதிகமாக வெளியே செல்ல முடிவதில்லை.\n\n', 3),
(537, '5555', 10, 'Section 10 - Employment/Homemaking', 'My normal homemaking/job activities increase my pain, but I can still perform all that is required of me.\n\nஎங்கு வேண்டுமானாலும் என்னால் பயணம் செய்ய முடிகிறது; ஆனால் வலி அதிகரிக்கிறது.\n\n', 1),
(538, '5555', 1, 'Section 1 - Pain Intensity', 'Pain medication provides me complete relief from pain.\n \nவலி நிவாரணி மருந்து எனக்கு வலியிலிருந்து முழு நிவாரணம் அளிக்கிறது', 2),
(539, '5555', 2, 'Section 2 - Personal Care (Washing, Dressing, etc.)', 'I need help but I am able to manage most of my personal care.\n\nபெரும்பாலான கய பராமரிப்பு காரி யங்களை என்னால் செய்ய முடிந்தாலும், ஒரு சில காரியங்களில் பிறரின் உதவி தேவைப்படுகிறது.\n', 3),
(540, '5555', 3, 'Section 3 - Lifting', '\nI cannot lift or carry anything at all.\n\nஎன்னால் எந்த பொருளையும் தூக்கவோ, தூக்கி கொண்டு நடக்கவோ முடிவதில்லை.\n', 5),
(541, '5555', 4, 'Section 4 - Walking', 'I am in bed most of the time and have to crawl to move.\n\nஊன்றுகோல் அல்லது கை தடியின் உதவியோடுதான் என்னால் நடக்க முடிகிறது.\n\n', 5),
(542, '5555', 5, 'Section 5 - Sitting', 'Pain prevents me from sitting at all. \n வலியின் காரணமாக என்னால் உட்காரவே முடிவதில்லை.\n', 5),
(543, '5555', 6, 'Section 6 - Standing', 'Pain prevents me from standing at all. \n\nவலியின் காரணமாக என்னால் நிற்கவே முடிவதில்லை.\n', 5),
(544, '5555', 7, 'Section 7 - Sleeping', 'Even when I take pain medication, I sleep less than 4 hours. \n\nவலியின் காரணமாக என்னால் 4 மணி நேரத்திற்கும் குறைவாகவே தூங்க முடிகிறது.\n\n', 3),
(545, '5555', 8, 'Section 8 - Social Life', 'Pain prevents me from going out very often. \n\nஎனது பாலியல் வாழ்க்கை வலியின் காரணமாக கடுமையாக தடைபடுகிறது.\n', 3),
(546, '5555', 9, 'Section 9 - Traveling', 'Pain prevents me from traveling except to receive care. \n\nவலியின் காரணமாக எனது சமூக வாழ்வு முற்றிலுமாக தடைபட்டு உள்ளது.\n', 5),
(547, '5555', 10, 'Section 10 - Employment/Homemaking', 'Pain prevents me from doing anything but light duties.\n\nவலியின் காரணமாக 1 மணி நேரத்திற்கும் குறைவாகவே என்னால் பயணம் செய்ய முடிகிறது.\n', 3),
(548, '5555', 1, 'Section 1 - Pain Intensity', 'Pain medication has no effect on the pain. \n\nவலி நிவாரணி மருந்து வலியில் எந்தவிதமான விளைவையும் அளிக்கவில்லை.', 5),
(549, '5555', 2, 'Section 2 - Personal Care (Washing, Dressing, etc.)', 'I need help but I am able to manage most of my personal care.\n\nபெரும்பாலான கய பராமரிப்பு காரி யங்களை என்னால் செய்ய முடிந்தாலும், ஒரு சில காரியங்களில் பிறரின் உதவி தேவைப்படுகிறது.\n', 3),
(550, '5555', 3, 'Section 3 - Lifting', ' I can lift only very light weights.\n\nஎன்னால் மிகவும் குறைவான எடையுள்ள பொருட்களை மட்டுமே தூக்க முடிகிறது', 4),
(551, '5555', 4, 'Section 4 - Walking', 'I can only walk using crutches or a cane.\n\nஊன்றுகோல் அல்லது கை தடியின் உதவியோடுதான் என்னால் நடக்க முடிகிறது.\n\n', 4),
(552, '5555', 5, 'Section 5 - Sitting', 'Pain prevents me from sitting more than 10 minutes. \n வலியின் காரணமாக 10 நிமிடத்திற்கு மேல் என்னால் உட்கார முடிவதில்லை.\n', 4),
(553, '5555', 6, 'Section 6 - Standing', 'Pain prevents me from standing at all. \n\nவலியின் காரணமாக என்னால் நிற்கவே முடிவதில்லை.\n', 5),
(554, '5555', 7, 'Section 7 - Sleeping', 'Pain prevents me from sleeping at all. \n\nவலியின் காரணமாக என்னால் தூங்கவே முடிவதில்லை.\n', 5),
(555, '5555', 8, 'Section 8 - Social Life', 'Pain prevents me from participating in more energetic activities. \n\nஎனது பாலியல் வாழ்க்கை ஏறக்குறைய இயல்பாக உள்ளது; ஆனால் வலி அதிகமாக உள்ளது.\n', 2),
(556, '5555', 9, 'Section 9 - Traveling', 'I can travel anywhere without increased pain. \n\nஎனது சமூக வாழ்வு இயல்பாக உள்ளது; வளி அதிகரிப்பதில்லை.\n', 0),
(557, '5555', 10, 'Section 10 - Employment/Homemaking', 'Pain prevents me from doing anything but light duties.\n\nவலியின் காரணமாக 1 மணி நேரத்திற்கும் குறைவாகவே என்னால் பயணம் செய்ய முடிகிறது.\n', 3),
(558, '5555', 10, 'Section 10 - Employment/Homemaking', 'Pain prevents me from doing anything but light duties.\n\nவலியின் காரணமாக 1 மணி நேரத்திற்கும் குறைவாகவே என்னால் பயணம் செய்ய முடிகிறது.\n', 3),
(559, '5555', 10, 'Section 10 - Employment/Homemaking', 'Pain prevents me from doing anything but light duties.\n\nவலியின் காரணமாக 1 மணி நேரத்திற்கும் குறைவாகவே என்னால் பயணம் செய்ய முடிகிறது.\n', 3),
(560, '5555', 10, 'Section 10 - Employment/Homemaking', 'My normal homemaking/job activities do not cause pain.\n\nவலியே வராமல் எங்கு வேண்டுமானாலும் என்னால் பயணம் செய்ய முடிகிறது.\n', 0),
(561, '1111', 1, 'Section 1 - Pain Intensity', 'The pain is bad but I manage without having to take pain medication.\n \nவலி மோசமாக உள்ளது, ஆனால் வலி நிவாரணி மருந்துகளை எடுத்துக் கொள்ளாமல் நான் சமாளிக்கிறேன்', 1),
(562, '1111', 2, 'Section 2 - Personal Care (Washing, Dressing, etc.)', 'I need help but I am able to manage most of my personal care.\n\nபெரும்பாலான கய பராமரிப்பு காரி யங்களை என்னால் செய்ய முடிந்தாலும், ஒரு சில காரியங்களில் பிறரின் உதவி தேவைப்படுகிறது.\n', 3),
(563, '1111', 3, 'Section 3 - Lifting', '\nI cannot lift or carry anything at all.\n\nஎன்னால் எந்த பொருளையும் தூக்கவோ, தூக்கி கொண்டு நடக்கவோ முடிவதில்லை.\n', 5),
(564, '1111', 4, 'Section 4 - Walking', 'Pain prevents me from walking more than ¼ mile.\n\nவளியின் காரணமாக 100 மீட்டருக்கு மேல் என்னால் நடக்கமுடிவதில்லை.\n\n', 3),
(565, '1111', 5, 'Section 5 - Sitting', 'I can only sit in my favorite chair as long as I like.\n\nஎனக்கு மிகவும் வாட் பான இருக்கையில், எவ்வளவு நேரம் வேண்டுமானாலும் என்னால் உட்கார முடிகிறது.\n', 1),
(566, '1111', 6, 'Section 6 - Standing', 'Pain prevents me from standing for more than ½ hour. \n\nவலியின் காரணமாக ½ மணி நேரத்திற்கு மேல் என்னால் நிற்கமுடிவதில்லை.\n', 3),
(567, '1111', 7, 'Section 7 - Sleeping', 'I can sleep well only by using pain medication. \n\nவலியின் காரணமாக என் தூக்கம் எப்போதாவது தடைபடுகிறது.\n\n', 1),
(568, '1111', 8, 'Section 8 - Social Life', 'Pain prevents me from participating in more energetic activities. \n\nஎனது பாலியல் வாழ்க்கை ஏறக்குறைய இயல்பாக உள்ளது; ஆனால் வலி அதிகமாக உள்ளது.\n', 2),
(569, '1111', 9, 'Section 9 - Traveling', 'Pain restricts me to trips of less than 1 hour. \n\nஎனது சமூக வாழ்வை வளி தடை செய்கிறது; என்னால் அதிகமாக வெளியே செல்ல முடிவதில்லை.\n\n', 3),
(570, '1111', 10, 'Section 10 - Employment/Homemaking', 'I can perform most of my homemaking/job duties, but pain prevents me from performing more physically stressful activities (ex. Lifting, vacuuming).\n\nவளிரின் காரணமாக 2 மணி நேரத்திற்கு மேலாக என்னால் பயணம் செய்ய முடிவதில்லை.\n\n', 2),
(571, 'praneeth123', 1, 'Section 1 - Pain Intensity', 'The pain is bad but I manage without having to take pain medication.\n \nவலி மோசமாக உள்ளது, ஆனால் வலி நிவாரணி மருந்துகளை எடுத்துக் கொள்ளாமல் நான் சமாளிக்கிறேன்', 1),
(572, 'praneeth123', 2, 'Section 2 - Personal Care (Washing, Dressing, etc.)', 'I can take care of myself normally but it increases my pain.\n \nவலி இருந்தாலும் என்னுடைய சுய பராமரிப்பு காரியங்களை வழக்கம் போல செய்ய முடிகிறது.\n', 1),
(573, 'praneeth123', 3, 'Section 3 - Lifting', 'I can lift heavy weights but it causes increased pain. \n\nஎன்னால் அதிக எடையுள்ள பொருட்களை தூக்க முடிகிறது; ஆனால் வலி அதிகரிக்கிறது.\n', 1),
(574, 'praneeth123', 4, 'Section 4 - Walking', 'Pain prevents me from walking more than 1 mile.\n\nவலியின் காரணமாக 1 கிலோ மீட்டருக்கு மேல் என்னால் நடக்கமுடிவதில்லை.\n', 1),
(575, 'praneeth123', 5, 'Section 5 - Sitting', 'I can only sit in my favorite chair as long as I like.\n\nஎனக்கு மிகவும் வாட் பான இருக்கையில், எவ்வளவு நேரம் வேண்டுமானாலும் என்னால் உட்கார முடிகிறது.\n', 1),
(576, 'praneeth123', 6, 'Section 6 - Standing', 'I can stand as long as I want but it increases my pain. \n\nஎன்னால் எவ்வளவு நேரம் வேண்டுமானாலும் நிற்க முடியும்; ஆனால் வலி அதிகாக்கிறது.\n', 1),
(577, 'praneeth123', 7, 'Section 7 - Sleeping', 'Pain does not prevent me from sleeping well. \n\nவலியின் காரணமாக என் தூக்கம் எப்போதுமே தடைபடுவதில்லை.\n\n', 0),
(578, 'praneeth123', 8, 'Section 8 - Social Life', 'My social life is normal and does not increase my pain. \n\nஎனது பாலியல் வாழ்க்கை இயல்பாக உள்ளது; வலி அதிகரிப்பதில்லை.\n\n', 0),
(579, 'praneeth123', 9, 'Section 9 - Traveling', 'Pain restricts me to trips of less than 1 hour. \n\nஎனது சமூக வாழ்வை வளி தடை செய்கிறது; என்னால் அதிகமாக வெளியே செல்ல முடிவதில்லை.\n\n', 3),
(580, 'praneeth123', 10, 'Section 10 - Employment/Homemaking', 'My normal homemaking/job activities increase my pain, but I can still perform all that is required of me.\n\nஎங்கு வேண்டுமானாலும் என்னால் பயணம் செய்ய முடிகிறது; ஆனால் வலி அதிகரிக்கிறது.\n\n', 1),
(581, '5555', 1, 'Section 1 - Pain Intensity', 'Pain medication provides me little relief from pain. \n\nவலி நிவாரணி மருந்து எனக்கு சிறிதளவு நிவாரணம் அளிக்கிறது.', 4),
(582, '5555', 2, 'Section 2 - Personal Care (Washing, Dressing, etc.)', 'It is painful to take care of myself and I am slow and careful.\n\nவலி அதிகமாக உள்ளதால், என்னுடைய சுய பராமரிப்பு காரி பங்களை கவனமாகவும், மெதுவாகவும் செய்கிறேன்.\n', 2),
(583, '5555', 3, 'Section 3 - Lifting', ' I can lift only very light weights.\n\nஎன்னால் மிகவும் குறைவான எடையுள்ள பொருட்களை மட்டுமே தூக்க முடிகிறது', 4),
(584, '5555', 4, 'Section 4 - Walking', 'I can only walk using crutches or a cane.\n\nஊன்றுகோல் அல்லது கை தடியின் உதவியோடுதான் என்னால் நடக்க முடிகிறது.\n\n', 4),
(585, '5555', 5, 'Section 5 - Sitting', 'Pain prevents me from sitting more than 10 minutes. \n \nவலியின் காரணமாக 10 நிமிடத்திற்கு மேல் என்னால் உட்கார முடிவதில்லை.\n', 4),
(586, '5555', 6, 'Section 6 - Standing', 'Pain prevents me from standing for more than ½ hour. \n\nவலியின் காரணமாக ½ மணி நேரத்திற்கு மேல் என்னால் நிற்கமுடிவதில்லை.\n', 3),
(587, '5555', 7, 'Section 7 - Sleeping', 'Even when I take pain medication, I sleep less than 4 hours. \n\nவலியின் காரணமாக என்னால் 4 மணி நேரத்திற்கும் குறைவாகவே தூங்க முடிகிறது.\n\n', 3),
(588, '5555', 8, 'Section 8 - Social Life', 'Pain prevents me from participating in more energetic activities. \n\nஎனது பாலியல் வாழ்க்கை ஏறக்குறைய இயல்பாக உள்ளது; ஆனால் வலி அதிகமாக உள்ளது.\n', 2),
(589, '5555', 9, 'Section 9 - Traveling', 'Pain restricts me to trips of less than 2 hours. \n\nவலி எனது சமூக வாழ்வில் குறிப்பிடதக்க விளைவுகள் ஒன்றையும் ஏற்படுத்தவில்லை என்றாலும் விளையாட்டு போன்ற சுறுசுறுப்பான செயல்களில் ஈடுபடுவதற்கு தடையாக உள்ளது.\n\n', 2),
(590, '5555', 10, 'Section 10 - Employment/Homemaking', 'My normal homemaking/job activities increase my pain, but I can still perform all that is required of me.\n\nஎங்கு வேண்டுமானாலும் என்னால் பயணம் செய்ய முடிகிறது; ஆனால் வலி அதிகரிக்கிறது.\n\n', 1),
(591, '5555', 1, 'Section 1 - Pain Intensity', 'The pain is bad but I manage without having to take pain medication.\n \nவலி மோசமாக உள்ளது, ஆனால் வலி நிவாரணி மருந்துகளை எடுத்துக் கொள்ளாமல் நான் சமாளிக்கிறேன்', 1),
(592, '5555', 1, 'Section 1 - Pain Intensity', 'The pain is bad but I manage without having to take pain medication.\n \nவலி மோசமாக உள்ளது, ஆனால் வலி நிவாரணி மருந்துகளை எடுத்துக் கொள்ளாமல் நான் சமாளிக்கிறேன்', 1),
(593, '5555', 2, 'Section 2 - Personal Care (Washing, Dressing, etc.)', 'I can take care of myself normally without causing increased pain.\n\nஎன்னுடைய சுய பராமரிப்பு காரியங்களை வலி அதிகரிக்காமல், வழக்கம் போல செய்பா முடிகிறது.\n', 0),
(594, '5555', 3, 'Section 3 - Lifting', 'Pain prevents me from lifting heavy weights but I can manage light to medium weights if they are conveniently positioned.\n \nவளியின் காரணமாக அதிக எடையுள்ள பொருட்களை தூக்க முடிவதில்லை; ஆனால் குறைவான\nமற்றும் மிதமான எடையுள்ள பொருட்களை சரியான உமரத்திலிருந்து த', 3),
(595, '5555', 4, 'Section 4 - Walking', 'Pain prevents me from walking more than ½ mile.\n\n\nவலியின் காரணமாக 250 மீட்டருக்கு மேல் என்னால் நடக்கமுடிவதில்லை.\n', 2),
(596, '5555', 5, 'Section 5 - Sitting', 'I can sit in any chair as long as I like.\n\nஎந்த வகையான இருக்கையிலும் எவ்வளவு நேரம் வேண்டுமானாலும் என்னால் உட்கார முடிகிறது.\n', 0),
(597, '5555', 6, 'Section 6 - Standing', 'Pain prevents me from standing for more than 1 hour. \n\nவலியின் காரணமாக 1 மணி நேரத்திற்கு மேல் என்னால் நிற்கமுடிவதில்லை.\n', 2),
(598, '5555', 7, 'Section 7 - Sleeping', 'I can sleep well only by using pain medication. \n\nவலியின் காரணமாக என் தூக்கம் எப்போதாவது தடைபடுகிறது.\n\n', 1),
(599, '5555', 8, 'Section 8 - Social Life', 'My social life is normal and does not increase my pain. \n\nஎனது பாலியல் வாழ்க்கை இயல்பாக உள்ளது; வலி அதிகரிப்பதில்லை.\n\n', 0),
(600, '5555', 9, 'Section 9 - Traveling', 'Pain restricts me to trips of less than 2 hours. \n\nவலி எனது சமூக வாழ்வில் குறிப்பிடதக்க விளைவுகள் ஒன்றையும் ஏற்படுத்தவில்லை என்றாலும் விளையாட்டு போன்ற சுறுசுறுப்பான செயல்களில் ஈடுபடுவதற்கு தடையாக உள்ளது.\n\n', 2),
(601, '5555', 10, 'Section 10 - Employment/Homemaking', 'I can perform most of my homemaking/job duties, but pain prevents me from performing more physically stressful activities (ex. Lifting, vacuuming).\n\nவளிரின் காரணமாக 2 மணி நேரத்திற்கு மேலாக என்னால் பயணம் செய்ய முடிவதில்லை.\n\n', 2),
(602, '5555', 1, 'Section 1 - Pain Intensity', 'Pain medication provides me complete relief from pain.\n \nவலி நிவாரணி மருந்து எனக்கு வலியிலிருந்து முழு நிவாரணம் அளிக்கிறது', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adddoctorvideos`
--
ALTER TABLE `adddoctorvideos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs1`
--
ALTER TABLE `logs1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question1`
--
ALTER TABLE `question1`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexes for table `questionaries`
--
ALTER TABLE `questionaries`
  ADD PRIMARY KEY (`user_Id`);

--
-- Indexes for table `user_results`
--
ALTER TABLE `user_results`
  ADD PRIMARY KEY (`result_id`);

--
-- Indexes for table `user_scores`
--
ALTER TABLE `user_scores`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adddoctorvideos`
--
ALTER TABLE `adddoctorvideos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `logs1`
--
ALTER TABLE `logs1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `user_results`
--
ALTER TABLE `user_results`
  MODIFY `result_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `user_scores`
--
ALTER TABLE `user_scores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=603;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
