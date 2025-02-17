-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 17, 2025 at 02:26 AM
-- Server version: 10.5.27-MariaDB-cll-lve
-- PHP Version: 8.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bafiitaorg_live`
--

-- --------------------------------------------------------

--
-- Table structure for table `annual_fees`
--

CREATE TABLE `annual_fees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `start_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `fine` decimal(10,2) DEFAULT NULL,
  `due_amount` decimal(10,2) DEFAULT NULL,
  `paid_amount` decimal(10,2) DEFAULT NULL,
  `fee_plan_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_details_id` bigint(20) UNSIGNED NOT NULL,
  `member_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cards`
--

CREATE TABLE `cards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `card_number` varchar(255) DEFAULT NULL,
  `card_holder_name` varchar(255) DEFAULT NULL,
  `expiration_date` date DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `committee_types`
--

CREATE TABLE `committee_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `is_delete` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `subject`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Anthony Lewis', 'anthony@rapidprofitmachine1.com', 'Web Issues?', 'Hi, did you see that your website is having performance issues?', 0, '2024-02-19 06:29:28', '2024-02-19 06:29:28'),
(2, 'Emilie Petersen', 'petersen.emilie19@gmail.com', 'Are you responsible for webkutir.org?', 'Hey it\'s Sage, here is the free AI tool that automatically writes copy to drive traffic and calls \r\n\r\nGo to: \r\nwww.autoSEOcontent.com \r\n\r\n\r\nHope it helps', 0, '2024-02-25 04:41:34', '2024-02-25 04:41:34'),
(3, 'Jonathan Byrd', 'taskflowsolutions.us@gmail.com', 'Skilled Virtual Assistants to Optimize Your Budget & Cut Costs by 60%', 'Hi, my name is Jonathan Byrd. I’m the owner of Task Flow Solutions. During my 21 years in business, one of my biggest expenses and headaches was hiring a winning team to help me grow my business. \r\n\r\nI struggled with building a business and running a business and lacked the mentors and help to make it possible. \r\n\r\nEventually, I let most of my staff go because they simply wouldn’t work, and I was made aware of the talent pool of fluent English-speaking professionals available in the Philippines and it changed everything for me. \r\n\r\nFast forward to today and we now help other companies achieve their business goals using our vast network of virtual assistants in the Philippines. \r\n\r\nI would love an opportunity to speak with you about what is possible with outsourced labor.  \r\n\r\nFor more information, visit our website at Https://taskflowsolutions.com.\r\n\r\nRegards, \r\nJonathan Byrd\r\nTask Flow Solutions\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nTask Flow Solutions\r\n120 E. Main, Mountain View AR, 72560\r\n\r\nDon’t want to receive any more emails?  Please use our opt-out form here:\r\n https://forms.gle/D87VnZ4QkJqdAXFGA. \r\nThis email is a solicitation for business and we follow the CAN-SPAM ACT of the FTC which can be found here:\r\n https://www.ftc.gov/business-guidance/resources/can-spam-act-compliance-guide-business.', 0, '2024-02-27 13:49:50', '2024-02-27 13:49:50'),
(4, 'Pete Sedgwick', 'pete.sedgwick@googlemail.com', 'Question', 'Greetings!\r\n\r\nAre you ready to embark on an entrepreneurial journey online? I\'m excited to offer you an incredibly user-friendly solution to launch your own business in the digital realm. Let\'s explore this opportunity: https://bit.ly/re6554raer45', 0, '2024-02-27 17:35:34', '2024-02-27 17:35:34'),
(5, 'Money Maker', 'peter@notivv.site', 'Open Doors to New Opportunities - Free Ad Credits for Your Business', 'Hello owner of webkutir.org, \r\n\r\nImagine reaching more customers without overstretching your budget.  \r\n\r\nThere are thousands of dollars in free ad credits out there, and we\'re offering a complimentary report on these various free advertising opportunities.  \r\n\r\nThis guide is tailored to help businesses like yours explore new avenues for growth.  \r\n\r\nInterested in this additional resource? \r\n\r\nJust let me know. \r\n\r\nRegards, \r\n\r\nPeter', 0, '2024-02-27 17:42:41', '2024-02-27 17:42:41'),
(6, 'Eric Jones', 'ericjonesmyemail@gmail.com', 'Your site – more leads?', 'To the webkutir.org Webmaster! this is Eric and I ran across webkutir.org a few minutes ago.\r\n\r\nLooks great… but now what?\r\n\r\nBy that I mean, when someone like me finds your website – either through Search or just bouncing around – what happens next?  Do you get a lot of leads from your site, or at least enough to make you happy?\r\n\r\nHonestly, most business websites fall a bit short when it comes to generating paying customers. Studies show that 70% of a site’s visitors disappear and are gone forever after just a moment.\r\n\r\nHere’s an idea…\r\n \r\nHow about making it really EASY for every visitor who shows up to get a personal phone call you as soon as they hit your site…\r\n \r\nYou can –\r\n  \r\nWeb Visitors Into Leads is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you the moment they let you know they’re interested – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE https://rushleadgeneration.com to try out a Live Demo with Web Visitors Into Leads now to see exactly how it works.\r\n\r\nYou’ll be amazed - the difference between contacting someone within 5 minutes versus a half-hour or more later could increase your results 100-fold.\r\n\r\nIt gets even better… once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation.\r\n  \r\nThat way, even if you don’t close a deal right away, you can follow up with text messages for new offers, content links, even just how you doing? notes to build a relationship.\r\n\r\nPretty sweet – AND effective.\r\n\r\nCLICK HERE https://rushleadgeneration.com to discover what Web Visitors Into Leads can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Web Visitors Into Leads offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://rushleadgeneration.com to try Web Visitors Into Leads now.\r\n\r\nIf you\'d like to unsubscribe click here https://rushleadgeneration.com/unsubscribe.aspx?d=webkutir.org', 0, '2024-02-27 18:40:55', '2024-02-27 18:40:55'),
(7, 'Jonathan Byrd', 'taskflowsolutions.us@gmail.com', 'Skilled Virtual Assistants to Optimize Your Budget & Cut Costs by 60%', 'Hi, my name is Jonathan Byrd. I’m the owner of Task Flow Solutions. During my 21 years in business, one of my biggest expenses and headaches was hiring a winning team to help me grow my business. \r\n\r\nI struggled with building a business and running a business and lacked the mentors and help to make it possible. \r\n\r\nEventually, I let most of my staff go because they simply wouldn’t work, and I was made aware of the talent pool of fluent English-speaking professionals available in the Philippines and it changed everything for me. \r\n\r\nFast forward to today and we now help other companies achieve their business goals using our vast network of virtual assistants in the Philippines. \r\n\r\nI would love an opportunity to speak with you about what is possible with outsourced labor.  \r\n\r\nFor more information, visit our website at Https://taskflowsolutions.com.\r\n\r\nRegards, \r\nJonathan Byrd\r\nTask Flow Solutions\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nTask Flow Solutions\r\n120 E. Main, Mountain View AR, 72560\r\n\r\nDon’t want to receive any more emails?  Please use our opt-out form here:\r\n https://forms.gle/D87VnZ4QkJqdAXFGA. \r\nThis email is a solicitation for business and we follow the CAN-SPAM ACT of the FTC which can be found here:\r\n https://www.ftc.gov/business-guidance/resources/can-spam-act-compliance-guide-business.', 0, '2024-02-28 09:52:38', '2024-02-28 09:52:38'),
(8, 'Leatha Akin', 'akin.leatha@gmail.com', 'These trading indicators could 10x your profits fast..', 'Hi,\r\n\r\nAre you ready to experience trading like never before? Introducing the latest breakthrough: Expert-Crafted Trading Indicators for All Markets! ������ \r\n\r\nWhy These Indicators Stand Out: \r\n\r\n- All-Inclusive: Tailored for Forex, stocks, commodities, and more – every market at your fingertips. \r\n- Expert Design: Developed by seasoned traders with 10+ years of market success. \r\n- Precision and Profitability: Aim for higher accuracy with comprehensive entry, stop loss, and take profit levels.\r\n- Start Transforming Your Trades Today: https://bit.ly/3UWgtbv\r\n\r\n Embrace the power of expertise and innovation. These Trading indicators are designed to guide you through every market condition, offering you the edge you\'ve been seeking. Ready to elevate your trading game? \r\n\r\nClick here https://bit.ly/3UWgtbv and join the elite traders now for just $9. \r\n\r\nBest regards, \r\n\r\nMarcus', 0, '2024-02-28 17:50:41', '2024-02-28 17:50:41'),
(9, 'Omar Fisk', 'omar.fisk32@googlemail.com', 'The 3 Deadly \"Small Shop\" Mistakes (and how to avoid them!)', 'Hey,\r\n\r\nIf you\'re looking to set up a woodworking shop, you\'ve got to check out this video right now: https://bit.ly/43bvWH7\r\n\r\nIn Ralph\'s free presentation, he\'ll reveal the 3 most common mistakes when setting up shop and how YOU can avoid them!\r\n \r\nAnd it doesn\'t matter if you have no money, tools or space to set up a shop.\r\n\r\nBecause in the presentation, Ralph will reveal a secret tool source that can save you at least 70% off tool prices. (and its not Harbor Freight...)\r\n\r\nYou\'ll also discover EXACTLY how to setup a fully functioning workshop for under $1000...even if you do not have a large space.\r\n\r\nWatch the free video presentation here >> https://bit.ly/43bvWH7\r\n\r\nTo your perfect shop,\r\n\r\nDennis\r\n\r\nP.S: There\'s lots of lessons that are invaluable in the presentation so watch it till the end and let me know what you think!', 0, '2024-02-28 18:34:55', '2024-02-28 18:34:55'),
(10, 'Bernd Hundley', 'robot.savant@gmail.com', 'How much are missed calls costing you?', 'Find out here: https://the-missed-call.com/calculator\r\n\r\nBest regards,\r\nBernd\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n116 Agnes Rd, Ste 200\r\nKnoxville, TN 37919\r\n\r\nTo Opt Out reply go here: www./the-missed-call.com/opt-out\r\nor reply UNSUBSCRIBE in subject line\r\n\r\n\r\nwebkutir.org', 0, '2024-02-29 12:22:00', '2024-02-29 12:22:00'),
(11, 'Jonathan Byrd', 'taskflowsolutions.us@gmail.com', 'We cut your staff cost by 60% - Off-shore labor - we can help.', 'We are an Off-shore labor sourcing company based in the United States. \r\n\r\nWe help you save up to 60% on your current cost of labor by giving you a resource to acquire new talent from overseas. \r\n\r\nWe can provide General Admin, HR, Call Center, Social Media, Web development, and more. \r\n\r\nFor more information, visit our website at Https://taskflowsolutions.com.\r\n\r\n\r\nRegards, \r\nJonathan Byrd\r\nTask Flow Solutions\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nTask Flow Solutions\r\n120 E. Main, Mountain View AR, 72560\r\n\r\nDon’t want to receive any more emails?  Please use our opt-out form here:\r\n https://forms.gle/D87VnZ4QkJqdAXFGA. \r\nThis email is a solicitation for business and we follow the CAN-SPAM ACT of the FTC which can be found here:\r\n https://www.ftc.gov/business-guidance/resources/can-spam-act-compliance-guide-business.', 0, '2024-02-29 21:35:30', '2024-02-29 21:35:30'),
(12, 'Kandi Labelle', 'robot.savant@gmail.com', 'Warning: Ignoring This Can Cost Your Business $$$ Every Day', 'Picture this: Every ring of your phone is a ka-ching in your pocket. But when you miss that call, it\'s like throwing cash out the window. ������������ We\'re on a mission to plug that leak in your business boat. Our genius system turns \"Oops, missed that one!\" into \"Cha-ching, new customer!\"\r\n\r\nCurious how much you\'re really losing out on? And how easy it is to stop the bleed? Dive in here: https://the-missed-call.com/freedom.\r\n\r\nBest regards,\r\nKandi\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n116 Agnes Rd, Ste 200\r\nKnoxville, TN 37919\r\n\r\nTo Opt Out go here: https://awifiedleadpro.com/optout\r\nor reply UNSUBSCRIBE in the subject line\r\n\r\n\r\nwebkutir.org', 0, '2024-03-02 09:57:21', '2024-03-02 09:57:21'),
(13, 'Tua Fua', 'tuapersonal@gmail.com', '10X FUNDING PARTNER', 'Grow Your Business to Greatness\r\n\r\nFind all the money you qualify for, then review your lending options.\r\n\r\nWorking Capital Loan\r\nLine of Credit\r\nTerm Loan\r\nSBA Loan\r\nEquipment Financing\r\nAccounts Receivable Financing\r\nCollateralized Programs\r\n\r\nHow much do you want? \r\nCLICK HERE:  https://rb.gy/deedh5\r\n\r\nQualifications as low as:\r\n6 months\' time in business \r\n$10,000 being deposited into a business checking account each month \r\n450+ FICO\r\n\r\nQualifications as high as:\r\n2 years\' time in business\r\n2 years profitable biz tax returns \r\n675+ FICO\r\n\r\nDo you have the right Lending Partner on your Success Team. \r\nCLICK HERE: https://rb.gy/deedh5\r\n\r\n\r\n\r\n\r\n1281 N State St A, San Jacinto CA 92583\r\nReply with the word “UNSUBSCRIBE” on the subject line to Opt Out', 0, '2024-03-02 23:15:16', '2024-03-02 23:15:16'),
(14, 'Anna', 'tuapersonal@gmail.com', 'Working Capital Available Now - 2% Interest', 'Hey,\r\nDo you have the right Lending Partner on your Success Team. \r\nWe can be your Financial Strength to grow your company 10X in 2024\r\n\r\nReply “YES” if interested to receive more information\r\n\r\nReply “NO” to remove from list\r\n\r\nGood Day\r\nAnna\r\n\r\n\r\n\r\n\r\n\r\n1281 N State St A, San Jacinto CA 92583', 0, '2024-03-03 13:33:37', '2024-03-03 13:33:37'),
(15, 'Eric Jones', 'ericjonesmyemail@gmail.com', 'how to turn eyeballs into phone calls', 'Dear, Eric here with a quick thought about your website webkutir.org Admin.\r\n\r\nI’m on the internet a lot and I look at a lot of business websites.\r\n\r\nLike yours, many of them have great content. \r\n\r\nBut all too often, they come up short when it comes to engaging and connecting with anyone who visits.\r\n\r\nI get it – it’s hard.  Studies show 7 out of 10 people who land on a site, abandon it in moments without leaving even a trace.  You got the eyeball, but nothing else.\r\n\r\nHere’s a solution for you…\r\n\r\nWeb Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to talk with them literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE https://rushleadgeneration.com to try out a Live Demo with Web Visitor now to see exactly how it works.\r\n\r\nIt could be huge for your business – and because you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation – immediately… and contacting someone in that 5 minute window is 100 times more powerful than reaching out 30 minutes or more later.\r\n\r\nPlus, with text messaging you can follow up later with new offers, content links, even just follow up notes to keep the conversation going.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable. \r\n \r\nCLICK HERE https://rushleadgeneration.com to discover what Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://rushleadgeneration.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here https://rushleadgeneration.com/unsubscribe.aspx?d=webkutir.org', 0, '2024-03-04 05:59:22', '2024-03-04 05:59:22'),
(16, 'Bridgett Ziesemer', 'bridgett.ziesemer@outlook.com', 'Elon Musk TERRIFIES Church Leaders (proof inside)', 'This short independent documentary has terrified christians across the globe…\r\n\r\nCheck the video: https://bit.ly/3wMOBfV\r\n\r\nBecause it exposes the terrifying reality of Artificial Intelligence...\r\n\r\nAnd its effect it will have on Christian society...\r\n\r\nThis is something darker and more sinister than the world has ever seen...\r\n\r\n>> Click Here Before The Video Is Taken Down Permanently: https://bit.ly/3wMOBfV', 0, '2024-03-04 14:48:36', '2024-03-04 14:48:36'),
(17, 'Virgilio Bryce', 'bryce.virgilio@outlook.com', '������ Want To Sell YOUR OWN Software Products? ������ Watch This (Before He ✂️)', 'Do you want to profit in 2024?\r\n\r\nYou have infinite options:\r\n\r\nAffiliate marketing... writing content... build your own app... become an influencer...\r\n\r\nIn all the years I\'ve been online, I\'ve tried ALL of these methods (and 100s more)\r\n\r\nBut, millions later - there\'s ONE method I recommend - above all others:\r\n\r\nSelling your own digital product.\r\n\r\nAnd more specifically...\r\n\r\nSelling your own software product, in the Internet marketing niche, and promoting it with affiliate traffic.\r\n\r\nNow...\r\n\r\nThat sounds eerily specific - and it is. Because...\r\n\r\nI shouldn\'t need to \"convince\" you this method works.\r\n\r\nChances are you got on this list because you at some point bought a marketing software!\r\n\r\nThe fact you\'re reading this is proof that this method works.\r\n\r\nAnd... how many marketing tools have you bought to get here?\r\n\r\nBut don\'t think yours is a unique situation...\r\n\r\nEvery week millions buy marketing products in this same way.\r\n\r\nYou\'ve probably worked this out a long time ago... you already know it\'s a billion-dollar business...\r\n\r\nBut, until now, you might have thought:\r\n\r\n\"yeah but there\'s no way I could do that, so I\'ll just look at the other methods out there...\"\r\n\r\nMaybe you concluded:\r\n\r\n• You can\'t create your own software products\r\n• You don\'t know any big affiliates who would promote you\r\n• There\'s no way you could create a professional sales website\r\n• You simply could never afford a $5k copywriter to write a script\r\n• Nor can you do all the \"little\" jobs like logo creation, ecovers etc\r\n\r\nAnd most of all you probably decided...\r\n\r\n\"I would love to have my own legit, unique software business... but just don\'t know how to put it all together\"\r\n\r\nWell, guess what...\r\n\r\nI\'ve just come across a $20 million marketer who automated and simplified all these steps.\r\n\r\nHow?\r\n\r\nBy REMIXING what other six-figure marketers are doing.\r\n\r\nAnd then automated this entire process!\r\n\r\nThis marketer\'s name is CHRIS, and...\r\n\r\nThis is something he\'s been working on for over 2 years!\r\n\r\nIn fact, he tried to automate this #1 method... for over a decade...\r\n\r\nBut it\'s such a big, hairy problem, that he just couldn\'t crack it... until now.\r\n\r\nAnd, as of today, it\'s here!\r\n\r\nNow, I can say that, for the first time ever, anyone can tap into the ultimate business model on the planet:\r\n\r\nSelling your own Internet marketing software.\r\n\r\nOK, so here\'s the score...\r\n\r\nGo see yourself:\r\n\r\n==> https://bit.ly/3wBpUDq\r\n\r\nYou won\'t find a better solution for you to plug into the #1 business on the planet.\r\n\r\nOK, enough talk.\r\n\r\nIf you\'re at all curious about what he\'s up to, then hit this link and watch the intro video...\r\n\r\nAt the very least, it will show you some information that no-one has disclosed before.\r\n\r\nOK, here\'s that link:\r\n\r\nClick Here \r\n\r\n==> https://bit.ly/3wBpUDq\r\n\r\nThanks\r\n\r\nP.S. This offer is running for the last few weeks of February.\r\n\r\nThen early March Chris is going to increase the price.\r\n\r\nHe threw everything at this, including the kitchen sink...\r\n\r\nHe spent $200k+ to make this software for you.\r\n\r\nThat\'s the good news. The bad news? It\'s due a price increase.\r\n\r\nNo joke. Go here to see what I mean...\r\n\r\n==> https://bit.ly/3wBpUDq', 0, '2024-03-04 18:56:19', '2024-03-04 18:56:19'),
(18, 'Paulina Gouger', 'robot.savant@gmail.com', '������ Stop Burning Money with Every Missed Call! ������', 'Imagine each missed call as a $100 bill going up in flames. ������ \r\n\r\nFeels painful, right? That\'s because it is!\r\n\r\nWe turn those flames into fuel for your business, transforming lost calls into lucrative opportunities.\r\n\r\nWhy let another dollar burn when the solution is just a click away? Ignite your income now: https://the-missed-call.com/freedom\r\n\r\nBest regards,\r\nPaulina\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n116 Agnes Rd, Ste 200\r\nKnoxville, TN 37919\r\n\r\nTo Opt Out go here: https://awifiedleadpro.com/optout\r\nor reply UNSUBSCRIBE in the subject line\r\n\r\n\r\nwebkutir.org', 0, '2024-03-04 23:06:07', '2024-03-04 23:06:07'),
(19, 'Philomena Cottrell', 'philomena.cottrell@outlook.com', 'Brain Secret That’s Been Kept from Everybody', 'Warning: This Is Disturbing! \r\n\r\n\r\nHealth industry, as you know it, won’t be the same…\r\n\r\nEven top doctors are STUNNED...\r\n \r\nThis amazing 5 second hack can change any person at astonishing\r\n\r\nrates in a matter of days. \r\n\r\nThe Pharmaceutical industry panicked when this video got leaked and\r\n\r\nthey’ve already gathered their army of lawyers to take this down!\r\n\r\nFind out more here so you can start using it right now: https://bit.ly/4a0ELWl\r\n\r\n\r\nThey’ve tried to keep this a secret but everybody who’s struggled\r\n\r\nwith brain problem has the right to see this. Now the truth is coming out to light.\r\n\r\nThere\'s never been a better time for such a method to rise.\r\n\r\n \r\n\r\nClick to See the Best Way to Repair Your Brain Function:\r\n\r\nhttps://bit.ly/4a0ELWl\r\n\r\nOnce you read the full story you’ll be amazed…\r\n\r\nAnd I guarantee you’ll be sharing this incredible tale.\r\n\r\nWith your friends, family and loved ones…\r\n\r\n \r\nIt’s That Unbelievable!\r\n\r\nCheck now: https://bit.ly/4a0ELWl', 0, '2024-03-05 06:35:45', '2024-03-05 06:35:45'),
(20, 'Irving Kane', 'irving.kane@gmail.com', 'Exotic \"rice method\" liquifies fat cells', 'Did you hear about the unusual rice method that liquifies fat cells as you sleep?\r\n\r\nClinical studies confirm just 30 secs of this simple rice technique boosts calorie burning and fat-dissolving by over 326%, that\'s more calories than 45 mins running!\r\n\r\nBefore you go to sleep tonight, try it for yourself...\r\n\r\n>>> 1 Unusual Rice Method That Liquifies Fat As You Sleep: https://bit.ly/3V21Jb5\r\n\r\nDon\'t waste another second on:\r\n\r\nX--- Fad diets that are impossible to enjoy...\r\nX--- Gym memberships or fitness apps...\r\nX--- Calorie counting\r\n\r\nInstead, just try this one easy fat-dissolving rice method before you sleep tonight and drop lbs of stubborn fat by morning.\r\n\r\nYou need to check it, it is too easy: https://bit.ly/3V21Jb5', 0, '2024-03-05 08:12:02', '2024-03-05 08:12:02'),
(21, 'Zelda Diamond', 'diamond.zelda72@gmail.com', '������ THIS ������ Resell Rights Made $57.6k ������ in 7 Days ������ [VIDEO INSIDE] ������', 'Imagine if you made $57k in the first week of December...\r\n\r\nMy buddy Chris is having weeks like that all the time - and...\r\n\r\nNow you can make 100% commissions, by copying him:\r\n\r\nClick Here - Software Made Him $57k In 7x Days (Here\'s How!)\r\n\r\n==> https://bit.ly/3wBpUDq\r\n\r\nAnd here\'s the crazy part.\r\n\r\nYou can just watch the video on this link...\r\n\r\nThen get 100% resell rights to this $57k software...\r\n\r\nPLUS 49x other tools! \r\n\r\nYou can of course use these tools yourself...\r\n\r\nSell them for 100% commissions...\r\n\r\nUse them to build a list...\r\n\r\nUse them as bonuses to sell affiliate programs...\r\n\r\nIN FACT, you can even \"rebrand\" them to launch your own marketing \"super brand\".\r\n\r\nChris actually calls this \"remixing\"\r\n\r\nBUT, I don\'t want to spoil anything.\r\n\r\nLet\'s just say his method is INGENIOUS!\r\n\r\nOK, OK, I\'ll let Chris explain what he\'s up to:\r\n\r\n==> https://bit.ly/3wBpUDq\r\n\r\nThanks,\r\n\r\nP.S. This site was created with his software.\r\n\r\nThis email template is inside the software.\r\n\r\nIn fact, all Chris\'s business is \"template\" driven.\r\n\r\nAnd now you can steal his templates (and \"remix\" them).\r\n\r\nLearn how here:\r\n\r\n==> https://bit.ly/3wBpUDq', 0, '2024-03-05 23:47:37', '2024-03-05 23:47:37'),
(22, 'Ruben Goloubev', 'ruben.goloubev28@gmail.com', 'Never cut out alcohol (if trying to lose weight)', 'We all know we shouldn&#39;t drink too much...\r\n\r\nEspecially when trying to lose weight.\r\n\r\nYet, the real reason is NOT because of the calories...\r\n\r\nIt\'ss because the entire fat-burning process depends on a healthy liver.\r\n\r\nFact is, too much alcohol can damage your liver and your metabolism.\r\n\r\nHowever, the remarkably powerful Mediterranean ritual below naturally protects and\r\nrapidly purifies your liver of EVERY alcohol...\r\n\r\nAllowing you to enjoy an extra drink or two while promoting fat loss at the same time.\r\n\r\nThat\'s why, if you\'re gonna drink, do this simple Mediterranean Ritual before hand\r\n(takes 30 seconds): https://bit.ly/3T21w5k', 0, '2024-03-06 14:37:38', '2024-03-06 14:37:38'),
(23, 'Doretha Mount', 'mount.doretha@gmail.com', 'Is AI Actually Doing The Work Of Satan?', 'If you look closely in the Bible, there are very specific warnings of the rise of AI\r\n\r\nRevelation 13 talks of the emergence of the Anti-Christ, a great deceiver that will rise in times of great chaos and confusion\r\n\r\nAnd, right now, AI’s influence is rapidly spreading around the world in disguise.\r\n\r\nSadly, most people are blissfully unaware.\r\n\r\nOr perhaps already corrupted by its “touch.”\r\n\r\nEven more alarmingly, AI is getting more and more powerful\r\n\r\nChat GPT 4, a version of Microsoft’s AI, was opened to the public in March 2023\r\n\r\nIt is reported to contain 10 times the knowledge base of Chat GPT 3…\r\n\r\nAnd have 100 Billion times more processing power.\r\n\r\nWhat comes next?\r\n\r\nSee here: https://bit.ly/3wMOBfV\r\n\r\nAmerican Christians have made a short documentary to help you understand and prepare for the dangers of AI.\r\n\r\nIf you truly believe in God, and his biblical prophecies, I urge you to watch the video now.\r\n\r\nBecause Big Tech could take it down at any moment.\r\n\r\nClick here to watch it right now! \r\n\r\nhttps://bit.ly/3wMOBfV', 0, '2024-03-07 01:08:15', '2024-03-07 01:08:15'),
(24, 'Vince Bracegirdle', 'vince.bracegirdle@gmail.com', 'This Body Organ Melts 35Ibs In 12 Weeks If…', 'Hi ������\r\n\r\nAfter 12 years of intense research on over 24,000 patients in his weight loss clinic from Burke, VA…\r\n\r\nA brilliant board-certified doctor has revealed how regenerating one of your body’s organs can lead to a huge 35Ibs weight loss in just 12 weeks.\r\n\r\nAnd the reason why I am sharing this with you…\r\n\r\nIs because it takes only 2 minutes to regenerate this organ and you’ll turn your body into a fat-melting furnace.\r\n\r\nCan you guess which organ you must regenerate in order to reach your ideal weight in record time?\r\n\r\nIs it your...\r\na) Liver\r\nb) Brain\r\nc) Stomach\r\nd) Thyroid or\r\ne) Your Kidneys?\r\n\r\nTap on your answer above or go to this page to see why it can actually melt 35Ibs in just 12 weeks!\r\n\r\nhttps://bit.ly/4ajQfED\r\n\r\nEnjoy ������', 0, '2024-03-07 22:40:41', '2024-03-07 22:40:41'),
(25, 'Lorena Benitez', 'benitez.lorena@gmail.com', 'Evergreen “money printing” business', 'Hey,\r\n\r\nI have some exciting news to share with you today!\r\n\r\nThis week, a “21 Million Man” is hosting a closed-door, invite-only LIVE training… Where he’ll be sharing his obscure “money printing” business.\r\n\r\nWhat’s so unique about it is that you can start in just 48 hours & with $0 upfront investment.\r\n\r\nThat\'s right - You don’t even need a website.\r\n\r\nAnd if you are wondering if it actually works…\r\n\r\nThe last time he hosted this training, THOUSANDS of people ended up making their first paychecks online…\r\n\r\nIncluding Frank, Anna, David, Keenan, Seth & Hernan who ALL earned over $918.89 within 48 hours of attending.\r\n\r\nBecause of these insane results, he’s very selective about who he lets in…\r\n\r\nBut I was able to secure a special pass for you, for FREE.  ������\r\n\r\nSo if you are looking to build another stream of income FAST, click below to claim your pass now:\r\n\r\n\r\n>>> Click here to claim your FREE spot: https://bit.ly/3wBZqS0\r\n\r\n\r\nThis brand-new training is taking place once... this March 7th.\r\n\r\nI’ll see you there!\r\n\r\nP.S. The training is taking place ONE TIME ONLY, this March 7th.\r\n\r\nIt’s also a “closed-door” type of event, so I doubt that there will be any recordings and replays.\r\n\r\nSo, if you want to discover the most successful online business that nobody talks about, I suggest you register now for free & attend LIVE..\r\n\r\nRegister here for free: https://bit.ly/3wBZqS0', 0, '2024-03-08 02:18:06', '2024-03-08 02:18:06'),
(26, 'Wolfgang Arnot', 'arnot.wolfgang@msn.com', 'The Shocking Truth Behind AI', 'The shocking reality of AI… caught on camera.\r\n\r\nBig tech claims it’s nothing to worry about.\r\n\r\nThey say A does weird things for no apparent reason.\r\n\r\nBut I’m not convinced. And neither should you be.\r\n\r\nAI is part of something much bigger, and more sinister.\r\n\r\nA warning of the coming apocalypse.\r\n\r\nThey’ve been hiding the real purpose of AI from the public… And now it’s coming out…\r\n\r\nWe have no idea what AI will do to humanity in the future, yet the elites are racing forward to develop it.\r\n\r\nWe’ve prepared an urgent documentary to help you understand and prepare for the dangers of AI.\r\n\r\nDue to the rapid exponential growth of this technology, it becomes more serious with each passing day.\r\n\r\nIf you truly believe in God, and his biblical prophecies, I urge you to watch the video now.\r\n\r\nIt could be taken down at any moment.\r\n\r\nClick the link below to get access now:\r\n\r\nhttps://bit.ly/3wMOBfV', 0, '2024-03-08 15:12:33', '2024-03-08 15:12:33'),
(27, 'Karissa Couch', 'couch.karissa@gmail.com', '[QUIZ] Which red wine boosts metabolism?', 'Good day!\r\n\r\nAlthough hard alcohol like vodka, whisky, gin and tequila can increase belly fat...\r\n\r\nProminent scientists from Greece have found that one of the following red wines actually increases fat-burning when you drink it a certain way.\r\n\r\nBut which one? Is it...\r\n\r\n1. Cabernet Sauvignon\r\n2. Shiraz\r\n3. Merlot\r\n4. Malbec\r\n\r\nCheck here to see which one is: https://bit.ly/4a0hzaD\r\n\r\nHINT - One of the red wines above is part of an ancient Mediterranean ritual to purify and cleanse the body of dangerous toxins while naturally promoting fat-burning.\r\n\r\nThat\'s why, if you\'re gonna drink wine AND lose weight fast, it should definitely be THIS.\r\n\r\nClick here now to find out which red wine boosts !\r\n\r\nhttps://bit.ly/4a0hzaD', 0, '2024-03-09 16:21:54', '2024-03-09 16:21:54'),
(28, 'Brayden Ulm', 'ulm.brayden@gmail.com', 'Was there an issue?', 'Hey! \r\n\r\nI see that you registered for our LIVE training… But you didn’t show up ������\r\n\r\nHonestly, you have no idea what you missed!\r\n\r\nWe skipped the fluff and marketing B.S. most webinars are notorious for…\r\n\r\nAnd we literally handed over a step-by-step, click-by-click blueprint for making that first paycheck in 48 hours or less, with $0 investment.\r\n\r\nIt was mind-blowing! ������\r\n\r\nLuckily for you…\r\n\r\nI’ve created you a PRIVATE replay link below:\r\n\r\nhttps://bit.ly/3Pb8gN7\r\n\r\n\r\nIt’s only good for 48 hours, but that should be enough.\r\n\r\nJust make sure you watch it before we take it down.\r\n\r\nTo your success,\r\n\r\nJohn', 0, '2024-03-09 18:40:12', '2024-03-09 18:40:12'),
(29, 'Delmar Smallwood', 'smallwood.delmar@outlook.com', 'Your Own Custom Diet Plan', 'Hi,\r\n\r\nIf you’re anything like me you want to lose some weight. Maybe not 100 pounds, but even just 10-20 pounds.\r\n\r\nAnd, you’re probably tired of “trying”. Like, seriously, losing weight and keeping it off shouldn’t be so freaking hard right?\r\n\r\nWell, that’s why I’m so happy to be emailing you.\r\n\r\nThere’s a company that is preparing a personalized keto plan right now.\r\n\r\nYou can snag your custom plan by clicking here: https://bit.ly/4a8HHAj\r\n\r\nIt’s as easy as 1-2-3.\r\n\r\n1. Go Here: https://bit.ly/4a8HHAj\r\n2. Spend 45 seconds telling them a little bit about yourself and your goals\r\n3. Get your custom plan and review it right away!\r\n\r\nIt really is that simple.\r\n\r\nBut what makes this plan so easy to follow is that literally everything is done for you.\r\n\r\nThey tell you exactly what to eat and when. They give you the grocery list, the recipes, even videos showing you how to make all the delicious food!\r\n\r\nIt doesn’t get easier than this.\r\nSo go right now and claim your custom plan while it’s still available!\r\n\r\nhttps://bit.ly/4a8HHAj\r\n\r\nTalk Soon!\r\n\r\nPS - When you click here you’ll be taken right to the short 45 second questionnaire. Answer the questions and then BAM, you’ll get your custom plan.\r\n\r\nThe amount of people raving about this is absolutely insane! We all know keto works, but it can get boring. Not anymore. This custom plan changes everything for you. \r\n\r\nGrab it now: https://bit.ly/4a8HHAj', 0, '2024-03-10 18:49:51', '2024-03-10 18:49:51'),
(30, 'Joy Parer', 'joy.parer@hotmail.com', 'Don\'t eat this death vegetable', 'Does your salad contain this vegetable?\r\n\r\nNew research out of the University of Verona, Italy found an ingredient called lectin found inside this so-called \"healthy\" vegetable will poke holes in your gut, the lining of your intestine...\r\n\r\nmeaning it cannot absorb nutrients, increasing inflammation and slowing your metabolism, making you fatter and sicker.\r\n\r\nResearchers found lectin is so dangerous its now referred to as a \"anti-nutrient\"...\r\n\r\nAnd it\'s found in this everyday vegetable.\r\n\r\nYes it sounds crazy.\r\n\r\nI thought that too, but then I saw this alarming video.\r\n\r\nSo what is this evil vegetable?\r\n\r\n>>> Click Here To Discover The One Vegetable You Should NEVER Eat (Makes You Fat And Sick)\r\n\r\nhttps://bit.ly/3Txje2c\r\n\r\nTo your health!\r\n\r\n\r\nPS. Don\'t eat another salad until you watch the video. It\'s scary, because millions of us are eating this dangerous vegetable every day. Studies show this could explain today\'s obesity epidemic. It\'s not because your not dieting enough, it\'s because you\'re eating this evil vegetable.', 0, '2024-03-10 19:23:55', '2024-03-10 19:23:55'),
(31, 'Onita Vale', 'vale.onita@googlemail.com', 'Discover How to Save Up to 90% on Your Favorite Products!', 'Dear Shopper,\r\n\r\nLike many of us, you probably enjoy the convenience of shopping on Amazon. But what if we told you there\'s a smarter way to shop? A way where you can purchase the exact same products for less than a third of the price—or even at 90% off!\r\n\r\nImagine the savings and the extra joy of getting more for less. Intrigued? We invite you to explore this opportunity. It\'s time to make your shopping experience not only convenient but also incredibly cost-effective.\r\n\r\nDon\'t miss out on this chance to maximize your savings. Check out our website now!\r\n\r\nhttps://bit.ly/3v3nwEY\r\n\r\nWarm regards!', 0, '2024-03-11 19:20:04', '2024-03-11 19:20:04'),
(32, 'Charlene Curtin', 'ourseotool1@gmail.com', 'Your website is broken', 'I see you have a good website but your site is not ranking, so you\'re realling missing out on a lot of potential customers.\r\n\r\nI had the same problem recently but I discovered a great SEO tool online that helped me improve my ranking and got me a whole lot of visitors in a matter of days.\r\n\r\nYou can check the tool here: https://ourseotool.com\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nOpt out of future messages by replying to the message and saying opt out.\r\nwebkutir.org', 0, '2024-03-12 18:57:48', '2024-03-12 18:57:48'),
(33, 'Ramona Timmons', 'ramona.timmons@gmail.com', 'Proof AI Is Deceiving Christians', '1 John 2:18\r\n\r\n\"Children, it is the last hour, and as you have heard that Anti-Christ is coming, so now many Anti-Christs have come. Therefore we know that it is the last hour.\"\r\n\r\nThere is no doubt that we’re in times of confusion and uncertainty. Many would even say the end times or as John calls it, “the last hour”.\r\n\r\nSome bible scholars say that this verse references the rise of AI,\r\n\r\nAnd Christians have been shocked by the woke anti-faith bias of Chat GPT\r\n\r\nUnfortunately, the truth is far more sinister…\r\n\r\nAI’s influence is rapidly spreading around the world in disguise.\r\n\r\nAnd most people are blissfully unaware.\r\n\r\nOr perhaps already corrupted by its “touch.”\r\n\r\nIf you’ve ever had a bad feeling about artificial intelligence,\r\n\r\nPerhaps it is God’s way of warning you that\r\n\r\nAI is NOT here for what you think: https://tinyurl.com/2hc89mmr\r\n\r\nBlinded by the trillion-dollar profits,\r\n\r\nBig Tech has no idea of what it has unleashed upon the world.\r\n\r\nAnd they may have already lost control of their own creation.\r\n\r\nThis short documentary exposes 5 shocking facts misguided tech gurus are desperately trying to hide: https://tinyurl.com/2hc89mmr\r\n\r\nTherefore, it could be scrubbed off the internet at any moment.\r\n\r\nClick here to watch it right now!\r\n\r\nhttps://tinyurl.com/2hc89mmr', 0, '2024-03-12 19:07:43', '2024-03-12 19:07:43'),
(34, 'Julieta Shackleton', 'shackleton.julieta@outlook.com', 'Church Leaders PRAYED you\'d never see this...', 'This short independent documentary has the Catholic Church on the ropes\r\n\r\nBecause it exposes the biggest scandal in its long history.\r\n\r\nAnd it will affect the lives of each God fearing American.\r\n\r\nThis is something darker and more sinister than the Covid-19 Pandemic and Russia’s invasion of Ukraine\r\n\r\nAnd it’s spreading like wildfire all over the internet.\r\n\r\n>> Click Here Before The Video Is Taken Down Permanently <<\r\n\r\nhttps://tinyurl.com/bddbnzt3', 0, '2024-03-12 21:31:43', '2024-03-12 21:31:43'),
(35, 'Glenna Bate', 'bate.glenna@msn.com', 'Metabolic water burns up to 59lbs of fat', 'I recently stumbled on a powerful fat-burning metabolic water recipe that I simply have to share with you.\r\n\r\n>> THIS Metabolic water burns up to 59lbs of fat\r\n\r\nhttps://tinyurl.com/3bh23ech\r\n\r\nWhen you drink this metabolic water once per day…\r\n\r\nYou’ll burn more belly blubber in a week than you would in a month!\r\n\r\nPlus, this potent metabolic water also lowers cholesterol, boosts energy and reawakens your sex drive…\r\n\r\nClick the link below to check it out:\r\n\r\n>> THIS Metabolic water burns up to 59lbs of fat\r\n\r\nhttps://tinyurl.com/3bh23ech', 0, '2024-03-13 23:44:33', '2024-03-13 23:44:33'),
(36, 'Clinton Socha', 'clinton.socha@yahoo.com', 'Cavemen had normal blood pressure (eat THIS)', 'Did you know our ancestors enjoyed normal pressure?\r\n\r\nThat’s right. \r\n\r\nThey chased wild mammoths and lived in caves. But they had healthy hearts and had no strokes.\r\n\r\nAnd modern scientists from the University of Virginia just discovered why.\r\n\r\nIt’s all because they had a “signaling molecule”  in their tiny kidney cells that we don’t have.\r\n\r\nBut the good news is — there’s an easy way to restore your kidneys’ “signaling molecule” by using something called ‘Nectar of Gods’.\r\n\r\nThat’s because the ‘nectar of gods’ is proven by modern science to help get your blood pressure normal again.\r\n\r\n⇒ Nectar of Gods restores normal blood pressure\r\n\r\nhttps://tinyurl.com/bdh92xdb', 0, '2024-03-14 00:14:03', '2024-03-14 00:14:03'),
(37, 'Kisha Newell', 'newell.kisha@hotmail.com', 'Find the best leads for webkutir.org', 'Hi!\r\n\r\nIt is with sad regret to inform you that LeadsFly is shutting down!\r\n\r\nWe have made available all our consumer and business leads for the entire world on our way out.\r\n\r\nWe have the following available worldwide:\r\n\r\nConsumer Records: 294,582,351\r\nBusiness Records: 25,215,278\r\n\r\nVisit us here: https://leadsfly.biz/webkutir.org/\r\n\r\nBest regards,\r\nKisha', 0, '2024-03-15 02:54:41', '2024-03-15 02:54:41'),
(38, 'Reina Brent', 'brent.reina@outlook.com', 'How To Clear Nail Fungus 3X Faster Even While Sleeping', 'Many say this is impossible, but it’s NOT!\r\n\r\nThanks to a recent discovery, anyone can now wipe off nail fungus 3X faster, even while sleeping!\r\n\r\nBut how?\r\n\r\nA study published by the British Medical Journal, reveals that people who added just 2 drops of this newly discovered spice mix, cleared their brown or yellow nails in a matter of days…\r\n\r\nWith NO pills or toxic drugs…\r\n\r\nWith ZERO scrubbing or smelly ACV solutions…\r\n\r\nAnd with ABSOLUTELY NO painful surgery!\r\n\r\nCheck here: https://tinyurl.com/mw7d22k4\r\n\r\nThe best thing?\r\n\r\nIt’s completely natural and you can do it safely from the comfort of your home starting tonight!\r\n\r\nClick here to see the simple spice mix which wipes off fungus 3X faster, in a matter of days: https://tinyurl.com/mw7d22k4', 0, '2024-03-15 19:55:35', '2024-03-15 19:55:35'),
(39, 'Rosetta Luttrell', 'rosetta.luttrell@outlook.com', '1 x Ugly Plant That Liquifies Fat Cells', 'Feel like your diet is just you losing and gaining the same 5 lbs over and over?\r\n\r\nFeel like you eat healthy and exercise all day, but never make any progress?\r\n\r\nThen check this...\r\n\r\nA groundbreaking study published in Nature Medicine has revealed a bizarre fat dissolving loophole that has nothing to do with dieting or exercise.\r\n\r\nThey discovered by simply eating this one \"ugly\" plant, hidden for centuries in Vietnam, you will trigger a unique fat-melting chain reaction that liquifies fat cells as you sleep.\r\n\r\nhttps://tinyurl.com/ysc8t3mu\r\n\r\nStudies show this plant is 335% more powerful than exercise...\r\n\r\nand 408% more powerful at burning butt, arm and neck fat than any diet...\r\n\r\nSee it now:\r\n\r\n>>>  One Ugly Plant Liquifies Fat Cells Into Nothing: https://tinyurl.com/ysc8t3mu\r\n\r\nRight now, THOUSANDS of people all over America swear by this ugly looking fat dissolving plant. In fact, It\'s already helped over 200,000 men and women.\r\n\r\nFrancine was able to break past her plateau to drop 34 lbs and her waist is smaller than ever...\r\n\r\nDebra dropped 47 lbs...\r\n\r\nAnd once I saw the fat dissolve away for me too, I had to share it with you...\r\n\r\nJust watch this surprising video and discover this simple ugly plant method yourself to start burning calories even when you\'re sleeping.\r\n\r\nTo your health!\r\n\r\nPS. In the video, you\'ll also discover 2 of the biggest weight loss mistakes - done by millions each day - that are supposed to make you thinner, but instead slow metabolism, increase cravings and clog arteries every time you do them. To find out, check out this controversial video now, before it gets banned.\r\n\r\nCheck now: https://tinyurl.com/ysc8t3mu', 0, '2024-03-15 21:27:02', '2024-03-15 21:27:02'),
(40, 'Jaimie Bedggood', 'jaimie.bedggood@gmail.com', 'Big-Tech Just Made a Terrible Mistake With AI', '2.4 trillion dollars…\r\n\r\nA sum almost 3 times larger than our defense budget\r\n\r\nIn 2023 this staggering amount of money flowed into Big Tech companies developing Artificial intelligence…\r\n\r\nSuch an enormous pile of cash can make corporations ignore warnings\r\n\r\nDisregard the dangers of their actions\r\n\r\nAnd hide from the public the truth about what may be the most dangerous technology since the atomic bomb…\r\n\r\nIf you’ve ever had a bad feeling about artificial intelligence,\r\n\r\nPerhaps it is God’s way of warning you that\r\n\r\nAI is NOT here for what you think…\r\n\r\nSee here: https://tinyurl.com/4pz7c7ky\r\n\r\nBlinded by the trillion-dollar profits,\r\n\r\nBig Tech has no idea of what it has unleashed upon the world.\r\n\r\nAnd they may have already lost control of their own creation\r\n\r\nThis short documentary exposes 5 shocking facts misguided tech gurus are desperately trying to hide…\r\n\r\nTherefore, it could be scrubbed off the internet at any moment.\r\n\r\nClick here to watch it right now: https://tinyurl.com/4pz7c7ky', 0, '2024-03-17 07:24:31', '2024-03-17 07:24:31'),
(41, 'Rowena Norfleet', 'rowena.norfleet@googlemail.com', 'Penile Muscle Failure Is Imminent If You’re Over 40', 'Hey,\r\n\r\nYou’re probably already aware that going to the gym is a must if you want to have strong, healthy muscles.\r\n\r\nBut did you know that you almost NEVER get to exercise one of the most important muscles in your entire body?\r\n\r\nThe smooth muscles in your penis need to be strengthened and toned periodically in order to guarantee rock-hard erections on command.\r\n\r\nThis is why so many men over 40 have trouble getting it up…\r\n\r\nhttps://tinyurl.com/cd65pzu5\r\n\r\nTheir penis muscles have deteriorated to the point where they can’t even fulfill their most basic role.\r\n\r\nBut you don’t have to live like that.\r\n\r\nA new medical breakthrough is taking the field of male health by storm:\r\n\r\nOver 59,200 men have already benefited from this radical reimagining of manhood.\r\n\r\n>>Don’t be the one left behind: https://tinyurl.com/cd65pzu5', 0, '2024-03-18 02:28:17', '2024-03-18 02:28:17'),
(42, 'Luigi Neace', 'neace.luigi90@gmail.com', 'Nail Fungus Caused By “Socks & Shoes\" Parasite You Can Easily Wipe By Doing THIS', 'URGENT HEALTH UPDATE:\r\n\r\nNo antifungal drug, cream or expensive surgery can do what this $3 natural method does…\r\n\r\nEven top doctors say “IT’S BETTER THAN ANYTHING ELSE!”...\r\n\r\nCheck now: https://tinyurl.com/4aetkynk\r\n\r\nAs it’s not just one of those temporary solutions that won’t clear your nails even after months of trying...\r\n\r\nThis actually targets the most dangerous type of nail fungus at its source…\r\n\r\nWhich is deeply hidden inside your socks and shoes, causing your nails to ALWAYS get infected (no matter how hard you try to clean them!).\r\n\r\nScientists say that this new method is faster, cheaper and more effective than anything else on the market!\r\n\r\nYou can wipe off almost 98% of the fungal infections in a matter of days…\r\n\r\nCompletely restore your nails 3x faster, eliminate nasty feet odor…\r\n\r\nAnd easily bulletproof against fungal infection for years, if not decades…\r\n\r\nClick here to see how to protect your nails and eliminate fungal infections starting today!\r\n\r\nhttps://tinyurl.com/4aetkynk', 0, '2024-03-18 04:20:00', '2024-03-18 04:20:00'),
(43, 'Horny Girl Looking', 'temple.veronica@yahoo.com', 'Horny girl looking for fun', 'My live cam is here: https://cambust.com\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nOpt out of future messages by replying to the message and saying opt out.', 0, '2024-03-18 10:42:33', '2024-03-18 10:42:33'),
(44, 'Eleanore Maupin', 'maupin.eleanore@gmail.com', 'How To Clear Nail Fungus 3X Faster Even While Sleeping', 'Many say this is impossible, but it’s NOT!\r\n\r\nThanks to a recent discovery, anyone can now wipe off nail fungus 3X faster, even while sleeping!\r\n\r\nBut how?\r\n\r\nA study published by the British Medical Journal, reveals that people who added just 2 drops of this newly discovered spice mix, cleared their brown or yellow nails in a matter of days…\r\n\r\nWith NO pills or toxic drugs…\r\n\r\nWith ZERO scrubbing or smelly ACV solutions…\r\n\r\nAnd with ABSOLUTELY NO painful surgery!\r\n\r\nCheck here: https://tinyurl.com/35dhzcvj\r\n\r\nThe best thing?\r\n\r\nIt’s completely natural and you can do it safely from the comfort of your home starting tonight!\r\n\r\nClick here to see the simple spice mix which wipes off fungus 3X faster, in a matter of days: \r\n\r\nhttps://tinyurl.com/35dhzcvj', 0, '2024-03-19 18:57:03', '2024-03-19 18:57:03'),
(45, 'Brenda Oneal', 'oneal.brenda@hotmail.com', 'Don\'t Ignore your Foot and Nail Fungus ⚠️', 'Tired of foot fungus? Don\'t let this unpleasant and embarrassing condition go unnoticed. \r\n\r\n\r\nIgnoring it could lead to long-term damage, even amputation.\r\n\r\nDr. Richard Gannon has created a simple secret fungus killer that only takes as little as 30 seconds to 5-minute daily. \r\n\r\nThis simple solution is the answer to your foot and nail fungus... \r\n\r\nClick Here to Watch Dr. Gannon\'s Secret Fungus Killer and use his secret tactic:\r\n\r\nhttps://tinyurl.com/jfvnwfxt', 0, '2024-03-20 00:29:25', '2024-03-20 00:29:25'),
(46, 'Rodney Boatman', 'boatman.rodney27@gmail.com', 'Unlock the Secret of Perfect Teeth', 'Discover the Simple Ingredient That Improves Teeth & Gum Health.\r\n\r\nDoctors are amazed as individuals report improved oral hygiene within days of using this surprising ingredient used by the Ancient Romans in Pompei for perfect teeth.\r\n\r\n> Watch this video and learn about this simple ingredient that restores your teeth: https://tinyurl.com/yvnzhhrx', 0, '2024-03-20 08:33:25', '2024-03-20 08:33:25'),
(47, 'Luis Fabregas', 'andre@primeclientsmarketing.com', 'To the webkutir.org Owner!', 'Hi\r\n\r\nIf we could increase the presence of your brand without paying ads\r\nWould you be interested in speaking?\r\n\r\nLuis Fabregas\r\nFirma Brandt', 0, '2024-03-20 18:07:43', '2024-03-20 18:07:43');
INSERT INTO `contacts` (`id`, `name`, `email`, `subject`, `description`, `status`, `created_at`, `updated_at`) VALUES
(48, 'Reynaldo Maurer', 'maurer.reynaldo44@gmail.com', 'Want To Clear Fungus 3X Faster!? Try THIS Odd Technique', 'This new antifungal ritual is absolutely insane:\r\n\r\n1. Gently wash your feet with warm water…\r\n\r\n2. Then SLOWLY DRIP THESE 2 COMMON SPICES ON YOUR NAILS.\r\n\r\nhttps://tinyurl.com/mw7d22k4\r\n\r\nWith this one odd trick, which involves no smelly apple cider vinegar or useless tea tree oil…\r\n\r\nYou’ll be able to quickly clear more than 70% of the fungus infection in a matter of days…\r\n\r\nAnd finally make your nails strong and your feet healthy for years to come.\r\n\r\nIt sounds weird, but thousands of men and women with severe fungus infections “IT WORKS WONDERS!”\r\n\r\nIt has an astonishing 98% success rate…\r\n\r\nIt’s 6X more powerful than any laser surgery…\r\n\r\nAnd 7X more effective than any anti-fungal gel, supplement or pill currently on the market!\r\n\r\nIf you really want to get back your healthy nails starting today, you MUST see this now:\r\n\r\n==> Simple “NAIL SPICE” Ritual Clears Fungus 3X Faster: https://tinyurl.com/mw7d22k4', 0, '2024-03-22 01:36:19', '2024-03-22 01:36:19'),
(49, 'Angelia Barbosa', 'barbosa.angelia@gmail.com', 'This Mineral Gum Can Fix Bleeding Gums And Tooth Decay', 'If you’re dealing with bleeding gums, tooth decay and sewage breath…\r\n\r\nAnd if the thought of eventually losing your teeth does not let you sleep at night…\r\n\r\nYou need to know this.\r\n\r\nNew research from the Dental Institute  has proven this mineral gum can help people suffering from inflamed gums and tooth decay, no matter how advanced their dental problems are...\r\n\r\nWithout any toxic medication or risky dental procedures…\r\n\r\nFrom the comfort of their home…\r\n\r\nMore than 34,677 people have already managed to get back their perfect smiles without any effort.\r\n\r\nThis video explains everything in simple steps: https://tinyurl.com/y5rky7vs\r\n\r\nThis Mineral Gum Strengthens Teeth And Gums Almost Overnight  \r\n\r\n>> https://tinyurl.com/y5rky7vs', 0, '2024-03-22 07:12:07', '2024-03-22 07:12:07'),
(50, 'Ted Parramore', 'parramore.ted46@msn.com', 'Why You Should NEVER Touch Your Gums With Your Tongue (Causes Teeth Rotting)', 'Do you touch your gums like this with your tongue?\r\n\r\nSTOP RIGHT NOW or risk losing all your teeth!\r\n\r\nRecent studies have shown that people who touch their gums with their tongue this way have 90% more rotten teeth compared to those who don’t.\r\n\r\n>> Click here to find why this habit might cause all your teeth to fall out and what you can do about it. \r\n\r\nhttps://tinyurl.com/yvnzhhrx', 0, '2024-03-22 10:09:22', '2024-03-22 10:09:22'),
(51, 'Jodi Christensen', 'jodi.christensen@googlemail.com', 'Study Finds Women Leaves Partners Who Can’t Get It Up', 'The data doesn’t lie.\r\n\r\nRecent studies have shown that over half of men between the ages of 40 and 70 experience at least some difficulty performing in bed.\r\n\r\nAnd with divorce rates in the US hovering around 40-50%, with the vast majority of break-ups being initiated by women - the results are clear.\r\n\r\nYou can’t afford to be the guy she leaves just because you can’t get it up.\r\n\r\nBut it’s not easy being a man these days. From sky-high burnout rates at work to the toxins they pump into the food we eat everyday, it’s no wonder that so many men are struggling to perform.\r\n\r\nBut all that ends today.\r\n\r\nhttps://tinyurl.com/4mzsyf22 \r\n\r\nScientists have recently discovered a formula that can increase the flow of nutrients to your penis in minutes, while shielding it from dangerous toxins and bacteria.\r\n\r\nThey call it the “Morningwood Miracle”, and it works for all men regardless of age and medical condition. \r\n\r\n>> Check It Out For Yourself NOW: https://tinyurl.com/4mzsyf22', 0, '2024-03-23 09:22:11', '2024-03-23 09:22:11'),
(52, 'Virginia Jones', 'virginia.jones51@gmail.com', 'Become immune to tinnitus just like 68% of people', 'Hope this finds you wel,\r\n\r\nFact: Roughly 68% of the population never experiences tinnitus, no matter\r\nif they have been exposed to loud workplaces or other ear-harmful\r\nenvironments.\r\n\r\nThis has drawn the attention of a small group of European researchers who\r\nhave recently published their astounding discoveries...\r\n\r\nCheck now: https://tinyurl.com/yx2jfzea\r\n\r\nThey have found the nucleic acid which makes some immune to developing\r\ntinnitus and how everybody can activate it in a matter of months,\r\npossibly even weeks...\r\n\r\nThis is fresh-out-of-the-box info that you won\'t find anywhere else but in\r\ntheir short documentary.\r\n\r\nHow to stop weird sounds in 3 easy steps: https://tinyurl.com/yx2jfzea', 0, '2024-03-23 20:36:37', '2024-03-23 20:36:37'),
(53, 'Houston Jenner', 'jenner.houston@gmail.com', 'Nail Fungus Caused By “Socks & Shoes\" Parasite You Can Easily Wipe By Doing THIS', 'URGENT HEALTH UPDATE:\r\n\r\nNo antifungal drug, cream or expensive surgery can do what this $3 natural method does…\r\n\r\nEven top doctors say “IT’S BETTER THAN ANYTHING ELSE!”...\r\n\r\nSee now: https://tinyurl.com/bdz7r9bk\r\n\r\nAs it’s not just one of those temporary solutions that won’t clear your nails even after months of trying...\r\n\r\nThis actually targets the most dangerous type of nail fungus at its source…\r\n\r\nWhich is deeply hidden inside your socks and shoes, causing your nails to ALWAYS get infected (no matter how hard you try to clean them!).\r\n\r\nScientists say that this new method is faster, cheaper and more effective than anything else on the market!\r\n\r\nYou can wipe off almost 98% of the fungal infections in a matter of days…\r\n\r\nCompletely restore your nails 3x faster, eliminate nasty feet odor…\r\n\r\nAnd easily bulletproof against fungal infection for years, if not decades…\r\n\r\nClick here to see how to protect your nails and eliminate fungal infections starting today!\r\n\r\nhttps://tinyurl.com/bdz7r9bk', 0, '2024-03-25 01:37:11', '2024-03-25 01:37:11'),
(54, 'Maricela Wisdom', 'maricela.wisdom3@googlemail.com', 'The Shocking Truth Behind AI', 'The shocking reality of AI… caught on camera.\r\n\r\nBig tech claims it’s nothing to worry about.\r\n\r\nThey say A does weird things for no apparent reason.\r\n\r\nBut I’m not convinced. And neither should you be.\r\n\r\nAI is part of something much bigger, and more sinister.\r\n\r\nA warning of the coming apocalypse.\r\n\r\nSee why: https://tinyurl.com/3p5c8jbe\r\n\r\nThey’ve been hiding the real purpose of AI from the public… And now it’s coming out…\r\n\r\nWe have no idea what AI will do to humanity in the future, yet the elites are racing forward to develop it.\r\n\r\nWe’ve prepared an urgent documentary to help you understand and prepare for the dangers of AI.\r\n\r\nDue to the rapid exponential growth of this technology, it becomes more serious with each passing day.\r\n\r\nIf you truly believe in God, and his biblical prophecies, I urge you to watch the video now.\r\n\r\nIt could be taken down at any moment.\r\n\r\nClick the link below to get access now: https://tinyurl.com/3p5c8jbe', 0, '2024-03-25 10:29:51', '2024-03-25 10:29:51'),
(55, 'Soon Darcy', 'soon.darcy@gmail.com', 'Today Only', 'Hi,\r\n\r\nWant thousands of clients? We have compiled a list of all consumers and business\'s across 149 countries for you.\r\n\r\nWe have a special that is running today and valid till the end of the day. Come check us out:\r\n\r\nhttps://webkutir.leadsmax.biz/\r\n\r\nConsumer Records: 294,582,351\r\nBusiness Records: 25,215,278\r\n\r\nSelling at $99 today only.', 0, '2024-03-25 17:50:47', '2024-03-25 17:50:47'),
(56, 'Erika Argueta', 'argueta.erika@msn.com', 'Exotic \"rice method\" liquifies fat cells', 'Did you hear about the unusual rice method that liquifies fat cells as you sleep?\r\n\r\nClinical studies confirm just 30 secs of this simple rice technique boosts calorie burning and fat-dissolving by over 326%, that\'s more calories than 45 mins running!\r\n\r\nBefore you go to sleep tonight, try it for yourself...\r\n\r\nhttps://tinyurl.com/bdy2nzpz\r\n\r\n>>> 1 Unusual Rice Method That Liquifies Fat As You Sleep\r\n\r\nDon\'t waste another second on:\r\n\r\nX--- Fad diets that are impossible to enjoy...\r\nX--- Gym memberships or fitness apps...\r\nX--- Calorie counting\r\n\r\nInstead, just try this one easy fat-dissolving rice method before you sleep tonight and drop lbs of stubborn fat by morning.\r\n\r\nCheck now: https://tinyurl.com/bdy2nzpz', 0, '2024-03-26 02:31:54', '2024-03-26 02:31:54'),
(57, 'Rosita McLeish', 'mcleish.rosita@gmail.com', 'Never cut out alcohol (if trying to lose weight)', 'We all know we shouldn\'t drink too much...\r\n\r\nEspecially when trying to lose weight.\r\n\r\nYet, the real reason is NOT because of the calories...\r\n\r\nIt\'ds  because the entire fat-burning process depends on a healthy liver.\r\n\r\nFact is, too much alcohol can damage your liver and your metabolism.\r\n\r\nHowever, the remarkably powerful Mediterranean ritual below naturally protects and rapidly purifies your liver of EVERY alcohol...\r\n\r\nAllowing you to enjoy an extra drink or two while promoting fat loss at the same time.\r\n\r\nThat\'s why, if you\'re gonna drink, do this simple Mediterranean Ritual before hand: https://tinyurl.com/4jd7hzc9\r\n(takes 30 seconds)', 0, '2024-03-26 11:01:38', '2024-03-26 11:01:38'),
(58, 'Jamey Mcclellan', 'jamey.mcclellan@gmail.com', 'drink this “belly fat Drāno” juice to lose 28 lbs in 21 days?', 'Weight loss stuck? You may have a toxic fatty acid that blocks weight loss. \r\n\r\nAccording to Newcastle University in England, this fatty acid forces fat cells to stream into your blood… \r\n\r\nAnd causes your body to pack on internal visceral fat. \r\n\r\nOnce this happens, your fat-burning metabolism slows down to a crawl… your hormones completely shut down… and your body stores fat instead of burning it as energy. \r\n\r\nFortunately, a renegade doctor from Japan has uncovered a natural “belly fat Drāno” juice that flushes out this toxic fatty acid from your body. \r\n\r\nCheck now: https://tinyurl.com/4f88nb95\r\n\r\n67,129 folks are drinking this delicious juice every morning… \r\n\r\nAnd they’re losing an average of 28 lbs – in as little as 21 days! \r\n\r\n>>> drink 1 cup every morning to lose “spare-tire” belly in record time: https://tinyurl.com/4f88nb95\r\n\r\nRobert lost 62 lbs of deadly fat clogging up his arteries and completely transformed his body in his 40s. \r\n\r\nHis wife Sonya also lost 38 lbs and 4 dress sizes… and it forced her to shop for a whole new wardrobe!\r\n\r\nTo your good health!', 0, '2024-03-27 09:38:08', '2024-03-27 09:38:08'),
(59, 'Chelsey Mott', 'mott.chelsey@gmail.com', 'Key to REVERSE diabetes found in African tribesmen (do this before meals)', 'Wait!\r\n \r\nBefore your next meal do this simple 10-second ritual to put an end to your blood sugar swings and reverse scary diabetes complications…\r\n\r\nThe secret has been hiding in the diets of African desert tribes. We only know about it now because of the work of one renegade Canadian research doctor.\r\n \r\nHere it is: https://tinyurl.com/mvha3x2t\r\n \r\n=> 10-second pre-meal ritual to fix your blood sugar and end diabetes complications\r\n \r\nCindy fixed her blood sugar swings and lost 43lbs with this ritual...\r\n \r\nJohn lost 27lbs and reversed his diabetes complications with this ritual...\r\n \r\nNow it\'s your turn.\r\n \r\nhttps://tinyurl.com/mvha3x2t\r\n \r\nPS. This blood sugar trick was previously known ONLY to personal clients of the renegade doctor in Canada who stumbled on the 10-second pre-meal ritual in his research lab...', 0, '2024-03-27 20:33:50', '2024-03-27 20:33:50'),
(60, 'soubhik mukherjee', 'msouvikmbehala@gmail.com', 'regarding export of Animal Seeds and Turmeric and  etc', 'bizcon is a reputed company . we can export many things.we are very much interested to work with You and bangladesh Deputy High Commision helping us on This matters.respected first secretary (commerce) has given us your Company\'s name as reference .we have also sent you a mail on this regard.\r\nwe will wait for a positive Response from you.\r\n                                                                                     regards,\r\n                                                                     soubhik mukherjee\r\n                                                                       BIZCON', 0, '2024-07-15 15:40:25', '2024-07-15 15:40:25'),
(61, 'Chrisk', 'pat@aneesho.com', 'design work', 'Do you need help with graphic design - brochures, banners, flyers, advertisements, social media posts, logos etc.?\r\n\r\nWe charge a low fixed monthly fee. Let me know if you\'re interested and would like to see our portfolio.', 0, '2024-08-17 08:43:48', '2024-08-17 08:43:48');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `event_date` date DEFAULT NULL,
  `self` int(11) DEFAULT NULL,
  `guest` int(11) DEFAULT NULL,
  `driver` int(11) DEFAULT NULL,
  `spouse` int(11) DEFAULT NULL,
  `child_above` int(11) DEFAULT NULL,
  `child_bellow` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `event_registers`
--

CREATE TABLE `event_registers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `self` int(11) DEFAULT NULL,
  `guest` int(11) DEFAULT NULL,
  `driver` int(11) DEFAULT NULL,
  `spouse` int(11) DEFAULT NULL,
  `child_above` int(11) DEFAULT NULL,
  `child_bellow` int(11) DEFAULT NULL,
  `total_person` int(11) DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `event_id` bigint(20) UNSIGNED NOT NULL,
  `payment_details_id` bigint(20) UNSIGNED NOT NULL,
  `member_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fee_plans`
--

CREATE TABLE `fee_plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `date` date DEFAULT NULL,
  `cover` text DEFAULT NULL,
  `drive_url` varchar(255) DEFAULT NULL,
  `public` tinyint(1) DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `title`, `description`, `date`, `cover`, `drive_url`, `public`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Seminar & Exhibition', NULL, '2024-02-10', 'phtoto_gallry03-min_1705216307_1707541699_1714214237.jpg', NULL, 1, 1, 1, '2024-02-10 04:08:19', '2024-04-27 14:37:23'),
(2, 'World Egg Day', NULL, '2024-02-10', 'phtoto_gallry15_1706102877_1707541796.jpg', NULL, 1, 1, 1, '2024-02-10 04:09:56', '2024-02-10 04:09:56'),
(3, 'AGM & EGM', NULL, '2024-02-10', '20230401_165700_1706670519_1707541879.jpg', NULL, 1, 1, 1, '2024-02-10 04:11:19', '2024-02-10 04:11:19'),
(4, 'IFTAR And Doa Mahfil', NULL, '2024-02-10', '20220409_175447_1706670858_1707541938.jpg', NULL, 1, 1, 1, '2024-02-10 04:12:18', '2024-02-10 04:12:18'),
(5, 'Meeting with Minister And High Official', NULL, '2024-02-10', 'IMG-20220121-WA0006_1706670660_1707542468.jpg', NULL, 1, 1, 1, '2024-02-10 04:14:29', '2024-02-10 04:21:08'),
(6, 'Annual Picnic', NULL, '2024-02-10', 'IMG-20230203-WA0016_1706671380_1707542296.jpg', NULL, 1, 1, 1, '2024-02-10 04:16:29', '2024-02-10 04:18:16'),
(7, 'Meeting with DG of Livestock Services', NULL, '2024-03-04', 'Livestock01-min_1709535553_1714201938.jpg', NULL, 1, 1, 1, '2024-03-04 11:59:14', '2024-04-27 11:12:23');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_images`
--

CREATE TABLE `gallery_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `gallery_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallery_images`
--

INSERT INTO `gallery_images` (`id`, `image`, `gallery_id`, `created_at`, `updated_at`) VALUES
(1, 'phtoto_gallry01-min_1705216307_1707541699.jpg', 1, '2024-02-10 04:08:19', '2024-02-10 04:08:19'),
(2, 'phtoto_gallry02-min_1705216307_1707541699.jpg', 1, '2024-02-10 04:08:19', '2024-02-10 04:08:19'),
(3, 'phtoto_gallry03-min_1705216307_1707541699.jpg', 1, '2024-02-10 04:08:19', '2024-02-10 04:08:19'),
(4, 'phtoto_gallry04-min_1705216308_1707541699.jpg', 1, '2024-02-10 04:08:19', '2024-02-10 04:08:19'),
(5, 'phtoto_gallry05-min_1705216308_1707541699.jpg', 1, '2024-02-10 04:08:20', '2024-02-10 04:08:20'),
(7, 'phtoto_gallry07-min_1705216309_1707541700.jpg', 1, '2024-02-10 04:08:20', '2024-02-10 04:08:20'),
(8, 'phtoto_gallry08-min_1705216309_1707541700.jpg', 1, '2024-02-10 04:08:20', '2024-02-10 04:08:20'),
(9, 'phtoto_gallry09-min_1705216309_1707541700.jpg', 1, '2024-02-10 04:08:20', '2024-02-10 04:08:20'),
(10, 'phtoto_gallry010-min_1705216309_1707541700.jpg', 1, '2024-02-10 04:08:21', '2024-02-10 04:08:21'),
(11, 'phtoto_gallry11-min_1705216310_1707541701.jpg', 1, '2024-02-10 04:08:21', '2024-02-10 04:08:21'),
(12, 'phtoto_gallry12-min_1705216310_1707541701.jpg', 1, '2024-02-10 04:08:21', '2024-02-10 04:08:21'),
(13, 'phtoto_gallry13-min_1705216310_1707541701.jpg', 1, '2024-02-10 04:08:21', '2024-02-10 04:08:21'),
(14, 'phtoto_gallry14_1706102876_1707541796.jpg', 2, '2024-02-10 04:09:56', '2024-02-10 04:09:56'),
(15, 'phtoto_gallry15_1706102877_1707541796.jpg', 2, '2024-02-10 04:09:56', '2024-02-10 04:09:56'),
(16, 'phtoto_gallry16_1706102877_1707541796.jpg', 2, '2024-02-10 04:09:57', '2024-02-10 04:09:57'),
(17, 'phtoto_gallry17_1706102877_1707541797.jpg', 2, '2024-02-10 04:09:57', '2024-02-10 04:09:57'),
(18, 'phtoto_gallry18_1706102877_1707541797.jpg', 2, '2024-02-10 04:09:57', '2024-02-10 04:09:57'),
(19, 'phtoto_gallry19_1706102877_1707541797.jpg', 2, '2024-02-10 04:09:57', '2024-02-10 04:09:57'),
(20, 'phtoto_gallry20_1706102877_1707541797.jpg', 2, '2024-02-10 04:09:57', '2024-02-10 04:09:57'),
(21, 'phtoto_gallry21_1706102878_1707541797.jpg', 2, '2024-02-10 04:09:58', '2024-02-10 04:09:58'),
(22, 'phtoto_gallry22_1706102878_1707541798.jpg', 2, '2024-02-10 04:09:58', '2024-02-10 04:09:58'),
(35, 'phtoto_gallry06-min_1705216309_1707541700_1711603087.jpg', 1, '2024-03-28 09:18:13', '2024-03-28 09:18:13'),
(36, 'WhatsApp Image 2024-03-04 at 12.16.41_fb0a5c45_1709534473_1714215167.jpg', 2, '2024-04-27 14:52:48', '2024-04-27 14:52:48'),
(37, 'WhatsApp Image 2024-03-04 at 12.16.39_3086b3af_1709534467_1714215372.jpg', 2, '2024-04-27 14:56:12', '2024-04-27 14:56:12'),
(38, 'WhatsApp Image 2024-03-04 at 12.16.41_04bd44c1_1709534473_1714215372.jpg', 2, '2024-04-27 14:56:12', '2024-04-27 14:56:12'),
(39, 'Livestock01-min_1709535554_1714215603.jpg', 7, '2024-04-27 15:00:03', '2024-04-27 15:00:03'),
(40, 'Livestock02-min_1709535555_1714215604.jpg', 7, '2024-04-27 15:00:04', '2024-04-27 15:00:04'),
(41, 'Livestock03-min_1709535555_1714215604.jpg', 7, '2024-04-27 15:00:05', '2024-04-27 15:00:05'),
(42, 'Livestock04-min_1709535555_1714215605.jpg', 7, '2024-04-27 15:00:05', '2024-04-27 15:00:05'),
(43, 'Livestock05-min_1709535556_1714215605.jpg', 7, '2024-04-27 15:00:05', '2024-04-27 15:00:05'),
(44, 'Livestock06-min_1709535556_1714215605.jpg', 7, '2024-04-27 15:00:05', '2024-04-27 15:00:05'),
(45, 'Livestock07-min_1709535556_1714215605.jpg', 7, '2024-04-27 15:00:05', '2024-04-27 15:00:05'),
(46, 'Livestock08-min_1709535556_1714215605.jpg', 7, '2024-04-27 15:00:06', '2024-04-27 15:00:06'),
(47, 'Livestock09-min_1709535557_1714215606.jpg', 7, '2024-04-27 15:00:06', '2024-04-27 15:00:06');

-- --------------------------------------------------------

--
-- Table structure for table `info_banks`
--

CREATE TABLE `info_banks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bankBranceName` varchar(255) DEFAULT NULL,
  `modePayment` varchar(255) DEFAULT NULL,
  `totalAmount` decimal(10,2) DEFAULT NULL,
  `paymentDate` date DEFAULT NULL,
  `moneyReceiptNo` varchar(255) DEFAULT NULL,
  `slip` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `member_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `info_banks`
--

INSERT INTO `info_banks` (`id`, `bankBranceName`, `modePayment`, `totalAmount`, `paymentDate`, `moneyReceiptNo`, `slip`, `status`, `member_id`, `created_at`, `updated_at`) VALUES
(1, 'Exim Bank', NULL, 120000.00, '2014-06-15', NULL, 'document/member/3/bank-info/FILESLIP_1720245146.pdf', 0, 3, '2024-07-06 09:52:26', '2024-07-06 09:52:26'),
(2, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4, '2024-07-06 12:57:26', '2024-07-06 12:57:26'),
(3, NULL, NULL, NULL, NULL, NULL, NULL, 0, 5, '2024-07-06 13:38:35', '2024-07-06 13:38:35'),
(4, NULL, NULL, NULL, NULL, NULL, NULL, 0, 6, '2024-07-06 13:49:36', '2024-07-06 13:49:36'),
(5, NULL, NULL, NULL, NULL, NULL, NULL, 0, 7, '2024-07-06 15:48:03', '2024-07-06 15:48:03'),
(6, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, '2024-07-06 16:01:05', '2024-07-06 16:01:05'),
(7, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, '2024-07-06 16:46:49', '2024-07-06 16:46:49'),
(8, NULL, NULL, NULL, NULL, NULL, NULL, 0, 10, '2024-07-06 17:48:25', '2024-07-06 17:48:25'),
(9, NULL, NULL, NULL, NULL, NULL, NULL, 0, 11, '2024-07-06 17:58:45', '2024-07-06 17:58:45'),
(10, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, '2024-07-06 18:10:49', '2024-07-06 18:10:49'),
(11, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, '2024-07-06 18:19:15', '2024-07-06 18:19:15'),
(12, NULL, NULL, NULL, NULL, NULL, NULL, 0, 14, '2024-07-06 18:28:22', '2024-07-06 18:28:22'),
(14, NULL, NULL, NULL, NULL, NULL, NULL, 0, 16, '2024-07-06 19:42:39', '2024-07-06 19:42:39'),
(15, NULL, NULL, NULL, NULL, NULL, NULL, 0, 17, '2024-07-07 08:14:03', '2024-07-07 08:14:03'),
(16, NULL, NULL, NULL, NULL, NULL, NULL, 0, 18, '2024-07-07 08:22:57', '2024-07-07 08:22:57'),
(17, NULL, NULL, NULL, NULL, NULL, NULL, 0, 19, '2024-07-10 06:35:54', '2024-07-10 06:35:54'),
(18, NULL, NULL, NULL, NULL, NULL, NULL, 0, 20, '2024-07-10 06:58:57', '2024-07-10 06:58:57'),
(19, NULL, NULL, NULL, NULL, NULL, NULL, 0, 21, '2024-07-10 07:08:06', '2024-07-10 07:08:06'),
(20, NULL, NULL, NULL, NULL, NULL, NULL, 0, 22, '2024-07-10 07:19:06', '2024-07-10 07:19:06'),
(21, NULL, NULL, NULL, NULL, NULL, NULL, 0, 23, '2024-07-10 07:28:03', '2024-07-10 07:28:03'),
(22, NULL, NULL, NULL, NULL, NULL, NULL, 0, 24, '2024-07-10 07:40:03', '2024-07-10 07:40:03'),
(23, NULL, NULL, NULL, NULL, NULL, NULL, 0, 25, '2024-07-10 07:48:28', '2024-07-10 07:48:28'),
(24, NULL, NULL, NULL, NULL, NULL, NULL, 0, 26, '2024-07-10 07:58:24', '2024-07-10 07:58:24'),
(25, NULL, NULL, NULL, NULL, NULL, NULL, 0, 27, '2024-07-10 08:11:51', '2024-07-10 08:11:51'),
(26, NULL, NULL, NULL, NULL, NULL, NULL, 0, 28, '2024-07-11 08:50:29', '2024-07-11 08:50:29'),
(27, NULL, NULL, NULL, NULL, NULL, NULL, 0, 29, '2024-07-11 08:57:49', '2024-07-11 08:57:49'),
(28, NULL, NULL, NULL, NULL, NULL, NULL, 0, 30, '2024-07-11 09:08:30', '2024-07-11 09:08:30'),
(29, NULL, NULL, NULL, NULL, NULL, NULL, 0, 31, '2024-07-11 09:18:21', '2024-07-11 09:18:21'),
(30, NULL, NULL, NULL, NULL, NULL, NULL, 0, 32, '2024-07-11 09:34:22', '2024-07-11 09:34:22'),
(32, NULL, NULL, NULL, NULL, NULL, NULL, 0, 34, '2024-07-11 10:24:20', '2024-07-11 10:24:20'),
(33, NULL, NULL, NULL, NULL, NULL, NULL, 0, 35, '2024-07-11 10:37:05', '2024-07-11 10:37:05'),
(34, NULL, NULL, NULL, NULL, NULL, NULL, 0, 36, '2024-07-11 10:45:39', '2024-07-11 10:45:39'),
(35, NULL, NULL, NULL, NULL, NULL, NULL, 0, 37, '2024-07-11 10:51:36', '2024-07-11 10:51:36'),
(36, NULL, NULL, NULL, NULL, NULL, NULL, 0, 38, '2024-07-11 11:00:54', '2024-07-11 11:00:54'),
(37, NULL, NULL, NULL, NULL, NULL, NULL, 0, 39, '2024-07-11 18:16:41', '2024-07-11 18:16:41'),
(38, NULL, NULL, NULL, NULL, NULL, NULL, 0, 40, '2024-07-11 18:23:50', '2024-07-11 18:23:50'),
(39, NULL, NULL, NULL, NULL, NULL, NULL, 0, 41, '2024-07-11 18:30:21', '2024-07-11 18:30:21'),
(40, NULL, NULL, NULL, NULL, NULL, NULL, 0, 42, '2024-07-11 18:36:11', '2024-07-11 18:36:11'),
(41, NULL, NULL, NULL, NULL, NULL, NULL, 0, 43, '2024-07-11 19:46:18', '2024-07-11 19:46:18'),
(42, NULL, NULL, NULL, NULL, NULL, NULL, 0, 44, '2024-07-11 20:52:23', '2024-07-11 20:52:23'),
(43, NULL, NULL, NULL, NULL, NULL, NULL, 0, 45, '2024-07-11 21:02:24', '2024-07-11 21:02:24'),
(44, NULL, NULL, NULL, NULL, NULL, NULL, 0, 46, '2024-07-12 07:15:54', '2024-07-12 07:15:54'),
(45, NULL, NULL, NULL, NULL, NULL, NULL, 0, 47, '2024-07-13 08:16:05', '2024-07-13 08:16:05'),
(46, NULL, NULL, NULL, NULL, NULL, NULL, 0, 48, '2024-07-13 08:24:31', '2024-07-13 08:24:31'),
(47, NULL, NULL, NULL, NULL, NULL, NULL, 0, 49, '2024-07-13 08:31:38', '2024-07-13 08:31:38'),
(48, NULL, NULL, NULL, NULL, NULL, NULL, 0, 50, '2024-07-13 08:39:26', '2024-07-13 08:39:26'),
(49, NULL, NULL, NULL, NULL, NULL, NULL, 0, 51, '2024-07-13 08:47:56', '2024-07-13 08:47:56'),
(50, NULL, NULL, NULL, NULL, NULL, NULL, 0, 52, '2024-07-13 08:55:25', '2024-07-13 08:55:25'),
(51, NULL, NULL, NULL, NULL, NULL, NULL, 0, 53, '2024-07-13 09:05:10', '2024-07-13 09:05:10'),
(52, NULL, NULL, NULL, NULL, NULL, NULL, 0, 54, '2024-07-13 09:19:10', '2024-07-13 09:19:10'),
(53, NULL, NULL, NULL, NULL, NULL, NULL, 0, 55, '2024-07-13 09:28:00', '2024-07-13 09:28:00'),
(54, NULL, NULL, NULL, NULL, NULL, NULL, 0, 56, '2024-07-13 09:41:23', '2024-07-13 09:41:23'),
(55, NULL, NULL, NULL, NULL, NULL, NULL, 0, 57, '2024-07-13 09:47:06', '2024-07-13 09:47:06'),
(56, NULL, NULL, NULL, NULL, NULL, NULL, 0, 58, '2024-07-13 09:54:19', '2024-07-13 09:54:19'),
(57, NULL, NULL, NULL, NULL, NULL, NULL, 0, 59, '2024-07-13 10:01:40', '2024-07-13 10:01:40'),
(58, NULL, NULL, NULL, NULL, NULL, NULL, 0, 60, '2024-07-13 10:07:51', '2024-07-13 10:07:51'),
(59, NULL, NULL, NULL, NULL, NULL, NULL, 0, 61, '2024-07-13 10:16:00', '2024-07-13 10:16:00'),
(60, NULL, NULL, NULL, NULL, NULL, NULL, 0, 62, '2024-07-13 10:22:46', '2024-07-13 10:22:46'),
(61, NULL, NULL, NULL, NULL, NULL, NULL, 0, 63, '2024-07-13 10:32:34', '2024-07-13 10:32:34'),
(62, NULL, NULL, NULL, NULL, NULL, NULL, 0, 64, '2024-07-13 20:27:15', '2024-07-13 20:27:15'),
(63, NULL, NULL, NULL, NULL, NULL, NULL, 0, 65, '2024-07-13 20:41:34', '2024-07-13 20:41:34'),
(64, NULL, NULL, NULL, NULL, NULL, NULL, 0, 66, '2024-07-13 20:54:45', '2024-07-13 20:54:45'),
(65, NULL, NULL, NULL, NULL, NULL, NULL, 0, 67, '2024-07-13 21:05:24', '2024-07-13 21:05:24'),
(66, NULL, NULL, NULL, NULL, NULL, NULL, 0, 68, '2024-07-13 21:12:42', '2024-07-13 21:12:42'),
(67, NULL, NULL, NULL, NULL, NULL, NULL, 0, 69, '2024-07-13 21:20:18', '2024-07-13 21:20:18'),
(68, NULL, NULL, NULL, NULL, NULL, NULL, 0, 70, '2024-07-13 21:32:08', '2024-07-13 21:32:08'),
(69, NULL, NULL, NULL, NULL, NULL, NULL, 0, 71, '2024-07-14 04:33:12', '2024-07-14 04:33:12'),
(70, NULL, NULL, NULL, NULL, NULL, NULL, 0, 72, '2024-07-14 04:43:07', '2024-07-14 04:43:07'),
(71, NULL, NULL, NULL, NULL, NULL, NULL, 0, 73, '2024-07-14 04:50:36', '2024-07-14 04:50:36'),
(72, NULL, NULL, NULL, NULL, NULL, NULL, 0, 74, '2024-07-14 05:03:37', '2024-07-14 05:03:37'),
(73, NULL, NULL, NULL, NULL, NULL, NULL, 0, 75, '2024-07-14 05:16:57', '2024-07-14 05:16:57'),
(74, NULL, NULL, NULL, NULL, NULL, NULL, 0, 76, '2024-07-14 05:32:52', '2024-07-14 05:32:52'),
(75, NULL, NULL, NULL, NULL, NULL, NULL, 0, 77, '2024-07-14 05:40:50', '2024-07-14 05:40:50'),
(76, NULL, NULL, NULL, NULL, NULL, NULL, 0, 78, '2024-07-14 05:51:16', '2024-07-14 05:51:16'),
(77, NULL, NULL, NULL, NULL, NULL, NULL, 0, 79, '2024-07-14 06:00:22', '2024-07-14 06:00:22'),
(78, NULL, NULL, NULL, NULL, NULL, NULL, 0, 80, '2024-07-14 06:09:53', '2024-07-14 06:09:53'),
(79, NULL, NULL, NULL, NULL, NULL, NULL, 0, 81, '2024-07-14 06:17:05', '2024-07-14 06:17:05'),
(80, NULL, NULL, NULL, NULL, NULL, NULL, 0, 82, '2024-07-14 06:24:57', '2024-07-14 06:24:57'),
(81, NULL, NULL, NULL, NULL, NULL, NULL, 0, 83, '2024-07-14 06:32:25', '2024-07-14 06:32:25'),
(82, NULL, NULL, NULL, NULL, NULL, NULL, 0, 84, '2024-07-14 06:38:22', '2024-07-14 06:38:22'),
(83, NULL, NULL, NULL, NULL, NULL, NULL, 0, 85, '2024-07-14 06:48:14', '2024-07-14 06:48:14'),
(86, NULL, NULL, NULL, NULL, NULL, NULL, 0, 88, '2024-07-26 19:55:51', '2024-07-26 19:55:51'),
(87, NULL, NULL, NULL, NULL, NULL, NULL, 0, 89, '2024-07-26 20:03:52', '2024-07-26 20:03:52'),
(88, NULL, NULL, NULL, NULL, NULL, NULL, 0, 90, '2024-07-26 20:10:53', '2024-07-26 20:10:53'),
(89, NULL, NULL, NULL, NULL, NULL, NULL, 0, 91, '2024-07-26 20:17:48', '2024-07-26 20:17:48'),
(90, NULL, NULL, NULL, NULL, NULL, NULL, 0, 92, '2024-07-26 20:25:13', '2024-07-26 20:25:13'),
(91, NULL, NULL, NULL, NULL, NULL, NULL, 0, 93, '2024-07-26 20:35:45', '2024-07-26 20:35:45'),
(92, NULL, NULL, NULL, NULL, NULL, NULL, 0, 94, '2024-07-26 20:45:34', '2024-07-26 20:45:34'),
(93, NULL, NULL, NULL, NULL, NULL, NULL, 0, 95, '2024-07-26 20:54:12', '2024-07-26 20:54:12'),
(94, NULL, NULL, NULL, NULL, NULL, NULL, 0, 96, '2024-07-26 21:01:59', '2024-07-26 21:01:59'),
(95, NULL, NULL, NULL, NULL, NULL, NULL, 0, 97, '2024-07-26 21:08:43', '2024-07-26 21:08:43'),
(96, NULL, NULL, NULL, NULL, NULL, NULL, 0, 98, '2024-07-26 21:17:20', '2024-07-26 21:17:20'),
(97, NULL, NULL, NULL, NULL, NULL, NULL, 0, 99, '2024-07-26 21:26:48', '2024-07-26 21:26:48'),
(98, NULL, NULL, NULL, NULL, NULL, NULL, 0, 100, '2024-07-27 05:38:33', '2024-07-27 05:38:33'),
(99, NULL, NULL, NULL, NULL, NULL, NULL, 0, 101, '2024-07-27 05:45:58', '2024-07-27 05:45:58'),
(101, NULL, NULL, NULL, NULL, NULL, NULL, 0, 103, '2024-07-27 06:01:27', '2024-07-27 06:01:27'),
(102, NULL, NULL, NULL, NULL, NULL, NULL, 0, 104, '2024-07-27 06:08:24', '2024-07-27 06:08:24'),
(103, NULL, NULL, NULL, NULL, NULL, NULL, 0, 105, '2024-07-27 06:19:43', '2024-07-27 06:19:43'),
(104, NULL, NULL, NULL, NULL, NULL, NULL, 0, 106, '2024-07-27 06:30:20', '2024-07-27 06:30:20'),
(105, NULL, NULL, NULL, NULL, NULL, NULL, 0, 107, '2024-07-27 06:37:56', '2024-07-27 06:37:56'),
(106, NULL, NULL, NULL, NULL, NULL, NULL, 0, 108, '2024-07-27 06:44:15', '2024-07-27 06:44:15'),
(107, NULL, NULL, NULL, NULL, NULL, NULL, 0, 109, '2024-07-27 06:52:38', '2024-07-27 06:52:38'),
(108, NULL, NULL, NULL, NULL, NULL, NULL, 0, 110, '2024-07-27 06:59:28', '2024-07-27 06:59:28'),
(109, NULL, NULL, NULL, NULL, NULL, NULL, 0, 111, '2024-07-27 07:07:00', '2024-07-27 07:07:00'),
(110, NULL, NULL, NULL, NULL, NULL, NULL, 0, 112, '2024-07-27 07:14:38', '2024-07-27 07:14:38'),
(111, NULL, NULL, NULL, NULL, NULL, NULL, 0, 113, '2024-07-27 07:27:54', '2024-07-27 07:27:54'),
(112, NULL, NULL, NULL, NULL, NULL, NULL, 0, 114, '2024-07-27 07:34:26', '2024-07-27 07:34:26'),
(113, NULL, NULL, NULL, NULL, NULL, NULL, 0, 115, '2024-07-27 07:42:46', '2024-07-27 07:42:46'),
(114, NULL, NULL, NULL, NULL, NULL, NULL, 0, 116, '2024-07-27 08:18:21', '2024-07-27 08:18:21'),
(115, NULL, NULL, NULL, NULL, NULL, NULL, 0, 117, '2024-07-28 07:55:17', '2024-07-28 07:55:17'),
(116, NULL, NULL, NULL, NULL, NULL, NULL, 0, 118, '2024-07-28 08:02:07', '2024-07-28 08:02:07'),
(117, NULL, NULL, NULL, NULL, NULL, NULL, 0, 119, '2024-07-28 08:10:27', '2024-07-28 08:10:27'),
(118, NULL, NULL, NULL, NULL, NULL, NULL, 0, 120, '2024-07-28 08:17:49', '2024-07-28 08:17:49'),
(119, NULL, NULL, NULL, NULL, NULL, NULL, 0, 121, '2024-07-28 08:27:18', '2024-07-28 08:27:18'),
(120, NULL, NULL, NULL, NULL, NULL, NULL, 0, 122, '2024-07-28 08:36:31', '2024-07-28 08:36:31'),
(121, NULL, NULL, NULL, NULL, NULL, NULL, 0, 123, '2024-07-28 08:42:52', '2024-07-28 08:42:52'),
(122, NULL, NULL, NULL, NULL, NULL, NULL, 0, 124, '2024-07-28 08:50:43', '2024-07-28 08:50:43'),
(123, NULL, NULL, NULL, NULL, NULL, NULL, 0, 125, '2024-07-28 08:57:06', '2024-07-28 08:57:06'),
(124, NULL, NULL, NULL, NULL, NULL, NULL, 0, 126, '2024-07-28 09:02:22', '2024-07-28 09:02:22'),
(125, NULL, NULL, NULL, NULL, NULL, NULL, 0, 127, '2024-07-28 09:08:09', '2024-07-28 09:08:09'),
(126, NULL, NULL, NULL, NULL, NULL, NULL, 0, 128, '2024-07-30 07:19:19', '2024-07-30 07:19:19'),
(127, NULL, NULL, NULL, NULL, NULL, NULL, 0, 129, '2024-07-30 07:33:56', '2024-07-30 07:33:56'),
(128, NULL, NULL, NULL, NULL, NULL, NULL, 0, 130, '2024-07-30 07:46:22', '2024-07-30 07:46:22'),
(129, NULL, NULL, NULL, NULL, NULL, NULL, 0, 131, '2024-07-30 07:59:53', '2024-07-30 07:59:53'),
(130, NULL, NULL, NULL, NULL, NULL, NULL, 0, 132, '2024-07-30 08:06:03', '2024-07-30 08:06:03'),
(131, NULL, NULL, NULL, NULL, NULL, NULL, 0, 133, '2024-07-30 08:16:34', '2024-07-30 08:16:34'),
(132, NULL, NULL, NULL, NULL, NULL, NULL, 0, 134, '2024-08-21 07:08:43', '2024-08-21 07:08:43'),
(133, NULL, NULL, NULL, NULL, NULL, NULL, 0, 135, '2024-08-21 07:23:08', '2024-08-21 07:23:08'),
(134, NULL, NULL, NULL, NULL, NULL, NULL, 0, 136, '2024-08-21 13:58:55', '2024-08-21 13:58:55'),
(135, NULL, NULL, NULL, NULL, NULL, NULL, 0, 137, '2024-08-21 14:39:57', '2024-08-21 14:39:57'),
(136, NULL, NULL, NULL, NULL, NULL, NULL, 0, 138, '2024-08-22 09:57:03', '2024-08-22 09:57:03'),
(137, NULL, NULL, NULL, NULL, NULL, NULL, 0, 139, '2024-08-22 10:13:00', '2024-08-22 10:13:00'),
(138, NULL, NULL, NULL, NULL, NULL, NULL, 0, 140, '2024-08-22 10:26:21', '2024-08-22 10:26:21'),
(139, NULL, NULL, NULL, NULL, NULL, NULL, 0, 141, '2024-08-22 10:51:46', '2024-08-22 10:51:46'),
(140, 'Pubali Bank Ltd, Asad Avenue Branch, Mohammadpur, Dhaka-1207', NULL, 68000.00, '2024-08-04', NULL, NULL, 0, 142, '2024-09-07 06:56:04', '2024-09-07 06:56:04'),
(141, NULL, NULL, NULL, NULL, NULL, NULL, 0, 151, '2024-09-07 07:35:17', '2024-09-07 07:35:17'),
(142, 'Dutch-Bangla Bank', NULL, NULL, '2024-08-29', NULL, NULL, 0, 152, '2024-09-07 07:50:38', '2024-09-07 07:50:38'),
(143, 'Pubali Bank Ltd, Dhaka Stduim Branch, Mohammadpur, Dhaka', NULL, 68000.00, '2024-09-02', NULL, NULL, 0, 153, '2024-09-07 08:05:06', '2024-09-07 08:05:06'),
(144, 'Exim Bank Ltd', NULL, 20000.00, '2014-07-20', NULL, NULL, 0, 154, '2024-09-16 15:37:49', '2024-09-16 15:37:49'),
(145, NULL, NULL, NULL, NULL, NULL, NULL, 0, 155, '2024-09-25 10:20:30', '2024-09-25 10:20:30'),
(146, 'Pubali Bank Ltd, Asad Avenue Branch, Mohammadpur, Dhaka-1207', NULL, 68000.00, '2024-09-08', NULL, NULL, 0, 156, '2024-10-03 16:15:58', '2024-10-03 16:15:58'),
(147, 'Pubali Bank Ltd, Khatungonj, Chattogram.', NULL, 68000.00, '2024-09-17', NULL, NULL, 0, 157, '2024-10-03 17:00:12', '2024-10-03 17:00:12'),
(148, 'Pubali Bank Ltd, Asad Avenue Branch, Mohammadpur, Dhaka-1207', NULL, 68000.00, '2024-07-18', NULL, NULL, 0, 158, '2024-11-16 08:57:54', '2024-11-16 08:57:54'),
(149, 'Pubali Bank Ltd, Asad Avenue Branch, Mohammadpur, Dhaka-1207', NULL, 68000.00, '2024-08-10', NULL, 'document/member/159/bank-info/FILESLIP_1731730658.jpg', 0, 159, '2024-11-16 09:17:38', '2024-11-16 09:17:38'),
(150, 'Pubali Bank Ltd, Asad Avenue Branch, Mohammadpur, Dhaka-1207', NULL, 68000.00, '2024-10-22', NULL, 'document/member/160/bank-info/FILESLIP_1731733357.pdf', 0, 160, '2024-11-16 10:02:37', '2024-11-16 10:02:37'),
(151, 'Pubali Bank Ltd, Asad Avenue Branch, Mohammadpur, Dhaka-1207', NULL, 68000.00, '2024-10-24', NULL, 'document/member/161/bank-info/FILESLIP_1731734304.pdf', 0, 161, '2024-11-16 10:18:24', '2024-11-16 10:18:24'),
(152, 'Pubali Bank Ltd, Asad Avenue Branch, Mohammadpur, Dhaka-1207', NULL, 68000.00, '2024-10-31', NULL, NULL, 0, 162, '2024-11-16 11:01:01', '2024-11-16 11:01:01'),
(153, 'Pubali Bank Ltd, Asad Avenue Branch, Mohammadpur, Dhaka-1207', NULL, 68000.00, '2024-11-04', NULL, NULL, 0, 163, '2024-11-16 11:16:51', '2024-11-16 11:16:51'),
(154, 'Pubali Bank Ltd, Kuril Bishwa Road Branch, Dhaka.', NULL, 68000.00, '2024-11-05', NULL, NULL, 0, 164, '2024-11-16 11:31:26', '2024-11-16 11:31:26'),
(155, 'Pubali Bank Ltd, Asad Avenue Branch, Mohammadpur, Dhaka-1207', NULL, 65000.00, '2024-11-25', NULL, 'document/member/165/bank-info/FILESLIP_1736773705.pdf', 0, 165, '2025-01-13 18:08:25', '2025-01-13 18:08:25'),
(156, 'Pubali Bank Ltd, Asad Avenue Branch, Mohammadpur, Dhaka-1207', NULL, 68000.00, '2024-12-29', NULL, 'document/member/166/bank-info/FILESLIP_1736774884.pdf', 0, 166, '2025-01-13 18:28:04', '2025-01-13 18:28:04'),
(157, 'Pubali Bank Ltd, Asad Avenue Branch, Mohammadpur, Dhaka-1207', NULL, 80000.00, '2025-01-08', NULL, 'document/member/167/bank-info/FILESLIP_1736778158.pdf', 0, 167, '2025-01-13 19:22:38', '2025-01-13 19:22:38'),
(158, 'Pubali Bank Ltd, Dhaka Stduim Branch, Mohammadpur, Dhaka', NULL, 83000.00, '2025-01-06', NULL, 'document/member/168/bank-info/FILESLIP_1736780300.pdf', 0, 168, '2025-01-13 19:58:20', '2025-01-13 19:58:20'),
(159, NULL, NULL, NULL, NULL, NULL, NULL, 0, 170, '2025-01-26 16:57:12', '2025-01-26 16:57:12'),
(160, 'Pubali Bank, Sonargaon Road Branch', NULL, 80000.00, '2025-01-29', NULL, 'document/member/171/bank-info/FILESLIP_1738146675.jpg', 0, 171, '2025-01-29 15:31:15', '2025-01-29 15:31:15'),
(161, 'Pubali Bank PLC, Asad Avenue Branch', NULL, 80000.00, '2025-01-30', NULL, 'document/member/172/bank-info/FILESLIP_1738397490.jpeg', 0, 172, '2025-02-01 13:11:30', '2025-02-01 13:11:30'),
(162, 'Exim Bank  Ltd, Dhanmondi Branch, Dhaka.', NULL, 120000.00, '2014-08-20', NULL, NULL, 0, 173, '2025-02-03 18:41:16', '2025-02-03 18:41:16'),
(163, 'EXIM Bank Ltd, Saver Branch, Rampura, Dhaka.', NULL, 20000.00, '2014-07-13', NULL, NULL, 0, 174, '2025-02-03 19:52:31', '2025-02-03 19:52:31'),
(164, 'PUBALI BANK LTD , ASAD AVENUE', NULL, 68000.00, '2025-05-01', NULL, 'document/member/175/bank-info/FILESLIP_1738677560.jpeg', 0, 175, '2025-02-04 18:59:20', '2025-02-04 18:59:20'),
(165, NULL, NULL, NULL, NULL, NULL, NULL, 0, 176, '2025-02-12 18:40:55', '2025-02-12 18:40:55');

-- --------------------------------------------------------

--
-- Table structure for table `info_companies`
--

CREATE TABLE `info_companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `companyName` varchar(255) DEFAULT NULL,
  `addressOrganization` varchar(255) DEFAULT NULL,
  `typeOwnership` int(11) DEFAULT NULL,
  `typeBusiness` int(11) DEFAULT NULL,
  `tradeLicenseNo` varchar(255) DEFAULT NULL,
  `tradeLicenseDate` date DEFAULT NULL,
  `eTinNo` varchar(255) DEFAULT NULL,
  `eTinDate` date DEFAULT NULL,
  `vatRegistrationNo` varchar(255) DEFAULT NULL,
  `vatRegistrationDate` date DEFAULT NULL,
  `ircCertificateNo` varchar(255) DEFAULT NULL,
  `ircCertificateDate` date DEFAULT NULL,
  `rjscIncorporationNo` varchar(255) DEFAULT NULL,
  `rjscIncorporationDate` date DEFAULT NULL,
  `poultryDairyFisheries` int(11) DEFAULT NULL,
  `tradingBrandOthers` varchar(255) DEFAULT NULL,
  `contactCompanyName` varchar(255) DEFAULT NULL,
  `contactCompanyAddress` varchar(255) DEFAULT NULL,
  `contactCompanyNumber` varchar(255) DEFAULT NULL,
  `contactCompanyEmail` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `member_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `info_companies`
--

INSERT INTO `info_companies` (`id`, `companyName`, `addressOrganization`, `typeOwnership`, `typeBusiness`, `tradeLicenseNo`, `tradeLicenseDate`, `eTinNo`, `eTinDate`, `vatRegistrationNo`, `vatRegistrationDate`, `ircCertificateNo`, `ircCertificateDate`, `rjscIncorporationNo`, `rjscIncorporationDate`, `poultryDairyFisheries`, `tradingBrandOthers`, `contactCompanyName`, `contactCompanyAddress`, `contactCompanyNumber`, `contactCompanyEmail`, `status`, `member_id`, `created_at`, `updated_at`) VALUES
(1, 'M/S. Chowdhury Enterprise', 'Bathuli, Shahbelishor, Dhamrai PS, Dhaka-1250', 1, 1, '002387', '2024-01-23', '352234768180', '2013-11-06', '006239505-0404', '2024-06-26', NULL, NULL, NULL, NULL, 1, NULL, 'M/S. Chowdhury Enterprise', 'Rupayon Z.R Plaza, (8th floor), 46,  Satmosjid Road,   Dhanmondi-19,  Dhaka-1209,', '01711533035', 'choenterprise@yahoo.com', 1, 3, '2024-07-06 09:52:24', '2024-07-06 09:52:24'),
(2, 'M.S. TRADING', 'Jibonbima Bhobon (6th  floor), Front Block,10, Dilkusha C/A, Motijheel C/A,  Dhaka-1000', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'M.S. TRADING', 'Jibonbima Bhobon (6th  floor), Front Block,10, Dilkusha C/A, Motijheel C/A,  Dhaka-1000', '01713012180', 'mstradingdhkbd@yahoo.com', 1, 4, '2024-07-06 12:57:26', '2024-07-06 12:57:26'),
(3, 'M/S. Helal Enterprise', 'House#11(4th Floor), Road#32,  (New-11), Dhanmondi, Dhaka-1209', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'M/S. Helal Enterprise', 'House#11(4th Floor), Road#32,  (New-11), Dhanmondi, Dhaka-1209', '01715103135', 'rafeu16@yahoo.com', 1, 5, '2024-07-06 13:38:35', '2024-07-06 13:38:35'),
(4, 'M/S. Eaty Enterprise', 'Bulding #19, Flat #103, JAPAN Garden City, Tajmohal Ring Road, Mohammadpur, Dhaka-1207', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'M/S. Eaty Enterprise', 'Bulding #19, Flat #103, JAPAN Garden City, Tajmohal Ring Road, Mohammadpur, Dhaka-1207', '01741 33 54 42', 'eatyenterprise@gmail.com', 1, 6, '2024-07-06 13:49:36', '2024-07-06 13:49:36'),
(5, 'M/S. Modina Trading Corporation', 'Jahir House, House#34, Alaul Avenue,  Sector#06, Uttara, Dhaka1230.', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'M/S. Modina Trading Corporation', 'Jahir House, House#34, Alaul Avenue,  Sector#06, Uttara, Dhaka1230.', '01777768971', 'modinajahir@yahoo.com', 1, 7, '2024-07-06 15:48:02', '2024-07-06 15:48:02'),
(6, 'B.S TRADING', 'City Center (Level-27),  90/1, Motijheel C/A, Dhaka-1000,', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'B.S TRADING', 'City Center (Level-27),  90/1, Motijheel C/A, Dhaka-1000,', '01713 02 41 50', 'bstrading79@yahoo.com', 1, 8, '2024-07-06 16:01:04', '2024-07-06 16:01:04'),
(7, 'M/S.  RAHMAN  TRADERS', 'Sultan Ahamed plaza (8th Floor),  Sutie#906, Purana Paltan, Dhaka.', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'M/S.  RAHMAN  TRADERS', 'Sultan Ahamed plaza (8th Floor),  Sutie#906, Purana Paltan, Dhaka.', '01714 08 58 55', 'mahbub73.alam@gmail.com', 1, 9, '2024-07-06 16:46:48', '2024-07-06 16:46:48'),
(8, 'Brothers Corporation', 'Zaman Corporation, (7th floor),  45, Dilkusha, Motijheel C/A, Dhaka.', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Brothers Corporation', 'Zaman Corporation, (7th floor),  45, Dilkusha, Motijheel C/A, Dhaka.', '01712-063470', 'misrag7@yahoo.com', 1, 10, '2024-07-06 17:48:25', '2024-07-06 17:48:25'),
(9, 'M/S. Synthia  Enterprise', 'Rojet (Level-04), 98/E, Lake Sarkes Road, Kalabagan, Dhaka.', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'M/S. Synthia  Enterprise', 'Rojet (Level-04), 98/E, Lake Sarkes Road, Kalabagan, Dhaka.', '01820 02 33 80', 'synthiaenterprise21@gmail.com', 1, 11, '2024-07-06 17:58:45', '2024-07-06 17:58:45'),
(10, 'Islam Enterprise', 'Shalaha Andura, Flat#A1, 21/1,   Zigatola, Dhanmondi, Dhaka.', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Islam Enterprise', 'Shalaha Andura, Flat#A1, 21/1,   Zigatola, Dhanmondi, Dhaka.', '01714 00 53 71', 'islamdhakabd@gmail.com', 1, 12, '2024-07-06 18:10:49', '2024-07-06 18:10:49'),
(11, 'M/S. G.M Enterprise', 'Barduarypara, Madrasha Gate, Sherepur, Bogura.', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'M/S. G.M Enterprise', 'Barduarypara, Madrasha Gate,  Sherepur, Bogura.', '01711 23 55 47', 'gm_enterprise@yahoo.com', 1, 13, '2024-07-06 18:19:14', '2024-07-06 18:19:14'),
(12, 'M/S. Alal Enterprise', 'Ekattor House, 79 Faridabad,  Madrasha Road, Dhakhin Khan,   Uttara, Dhaka.', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'M/S. Alal Enterprise', 'Ekattor House, 79 Faridabad,  Madrasha Road, Dhakhin Khan,   Uttara, Dhaka.', '01777-719091', 'msalalenterprise@yahoo.com', 1, 14, '2024-07-06 18:28:22', '2024-07-06 18:28:22'),
(14, 'Pro-con  International', 'B-113, MM Tower(5th Floor),  Hazrot Shahajalal Market, Saver,   Dhaka.', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Pro-con  International', 'B-113, MM Tower(5th Floor),  Hazrot Shahajalal Market, Saver,   Dhaka.', '01715-87 82 14', 'Proconin2004@gmail.com', 1, 16, '2024-07-06 19:42:39', '2024-07-06 19:42:39'),
(15, 'M/S. AI-Amin Poultry Feed', 'Rupayon Taj (3rd Floor), Suit#J-3,   1 1/1,  Nayapoltan,  Dhaka-1000', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'M/S. AI-Amin Poultry Feed', 'Rupayon Taj (3rd Floor), Suit#J-3,   1 1/1,  Nayapoltan,  Dhaka-1000', '01713 03 15 69', 'alaminpoultryfeed@yahoo.com', 1, 17, '2024-07-07 08:14:02', '2024-07-07 08:14:02'),
(16, 'M/S. Al - Habib Enterprise', 'A.J Tower(6Th-Floor), Holding #04,  Sonargaon Link Road,  Tejgaon,  Dhaka.', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'M/S. Al - Habib Enterprise', 'A.J Tower(6Th-Floor), Holding #04,  Sonargaon Link Road,  Tejgaon,  Dhaka.', '01812-598882', 'nasrin.agri.ind@gmail.com', 1, 18, '2024-07-07 08:22:56', '2024-07-07 08:22:56'),
(17, 'Bismillah  Feeds', 'Green A.R Tower House #39, Road #02, Block-F, Flat #A/7 & B/7, Banani,  Dhaka-1213.', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Bismillah  Feeds', 'Green A.R Tower House #39, Road #02, Block-F, Flat #A/7 & B/7, Banani,  Dhaka-1213.', '01760970080', 'smsfeeds@hotmail.com', 1, 19, '2024-07-10 06:35:53', '2024-07-10 06:35:53'),
(18, 'Khan  Agro  Feed  Product', 'Gazipur Chowrasta, Holding#220/02, Block#A,Ward#16,PS#Joydebpur, Dist# Gazipur.', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Khan  Agro  Feed  Product', 'Gazipur Chowrasta, Holding#220/02, Block#A,Ward#16,PS#Joydebpur, Dist# Gazipur.', '01839  90 98 00', 'Kafp08@yahoo.com', 1, 20, '2024-07-10 06:58:57', '2024-07-10 06:58:57'),
(19, 'CR Poultry & Fish Feed Ltd', 'Lake Palisade (Level-5), House#23,   Rode#27, Dhanmondi, Dhaka-1207.', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'CR Poultry & Fish Feed Ltd', 'Lake Palisade (Level-5), House#23,   Rode#27, Dhanmondi, Dhaka-1207.', '01911-084437', 'khokoncrtc@gmail.com', 1, 21, '2024-07-10 07:08:06', '2024-07-10 07:08:06'),
(20, 'M/S. Zaman Brothers', 'Village #  Rasulgong, P.o # Patgram,  Distic  # Lalmonirhat.', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'M/S. Zaman Brothers', 'Village #  Rasulgong, P.o # Patgram,  Distic  # Lalmonirhat.', '01716-100442', 'zamanbrothers442@gmail.com', 1, 22, '2024-07-10 07:19:06', '2024-07-10 07:19:06'),
(21, 'M/S. Faisal Trading Company', 'Gulbadan Super Market, Room #36,  4/1, Mowlovi Bazar,  Dhaka-1100', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'M/S. Faisal Trading Company', 'Gulbadan Super Market, Room #36,  4/1, Mowlovi Bazar,  Dhaka-1100', '01711 56 87 06', 'ftc_2000@yahoo.com', 1, 23, '2024-07-10 07:28:03', '2024-07-10 07:28:03'),
(22, 'M/S. Taj Ready Feeds', 'Eastern Elite Center, Suite 3/5,  House#50 (4th Floor), Road #9/A,  Satmosjid Road,  Dhanmondi, Dhaka.', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'M/S. Taj Ready Feeds', 'Eastern Elite Center, Suite 3/5,  House#50 (4th Floor), Road #9/A,  Satmosjid Road,  Dhanmondi, Dhaka.', '01711 80 81 49', 'tajreadyfeed@gmail.com', 1, 24, '2024-07-10 07:40:03', '2024-07-10 07:40:03'),
(23, 'M/S. Monir & Brothers', 'C-123/1, Uttor Namabazar,  Saver,  Dhaka.', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'M/S. Monir & Brother\'s', 'C-123/1, Uttor Namabazar,  Saver,  Dhaka.', '01713 57 04 80', 'msmonirandbrothers480@gmail.com', 1, 25, '2024-07-10 07:48:28', '2024-07-10 07:48:28'),
(24, 'Kazi  Agro  Ltd.', 'House-160 (3rd & 4th Floor),  Road-8, Block-F, Bashundhara R/A,  Dhaka-1229.', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Kazi  Agro  Ltd.', 'House-160 (3rd & 4th Floor),  Road-8, Block-F, Bashundhara R/A,  Dhaka-1229.', '01713461898', 'sayed@kaziagro.com', 1, 26, '2024-07-10 07:58:24', '2024-07-10 07:58:24'),
(25, 'M/S. Ruba Enterprise', 'Eastern  Elite  Center, House#50 (5th Floor), Road #9/A, Satmosjid Road, Dhanmondi,   Dhaka -1209', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'M/S. Ruba Enterprise', 'Eastern  Elite  Center, House#50 (5th Floor), Road #9/A, Satmosjid Road, Dhanmondi,   Dhaka -1209', '01711 54 67 04', 'rubaentp@gmail.com', 1, 27, '2024-07-10 08:11:50', '2024-07-10 08:11:50'),
(26, 'M/S. Bogdad Pellet Feed', '92, Asadgonj, Chittagong.', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'M/S. Bogdad Pellet Feed', '92, Asadgonj, Chittagong.', '01711 749269', 'bogdadmonsur@gmail.com', 1, 28, '2024-07-11 08:50:29', '2024-07-11 08:50:29'),
(27, 'B.S Agro Trading', '7-8 Moitry Bhabon (4th Floor),   Satmosjid Housing Society,  Mohammedpur, Dhaka-1207.', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'B.S Agro Trading', '7-8 Moitry Bhabon (4th Floor),   Satmosjid Housing Society,  Mohammedpur, Dhaka-1207.', '01712 77 80 81', 'bsagrotrading@gmail.com', 1, 29, '2024-07-11 08:57:49', '2024-07-11 08:57:49'),
(28, 'M/S. Akram & Brother\'s', '1309, Asadgonj, P.o-Lama Bazzar, P.S: Kawtali, Chittagonj.', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'M/S. Akram & Brother\'s', '1309, Asadgonj, P.o-Lama Bazzar, P.S: Kawtali, Chittagonj.', '01713 36 30 00', 'onlyakram@gmail.com', 1, 30, '2024-07-11 09:08:30', '2024-07-11 09:08:30'),
(29, 'M/S. Baizid Feed Agency', '60/12, Jafor  Market (2nd floor),  Asadgonj, Chittagong.', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'M/S. Baizid  Feed Agency', '60/12, Jafor  Market (2nd floor), Asadgonj, Chittagong.', '01711 76 10 25', 'baizidfeedagency@yahoo.com', 1, 31, '2024-07-11 09:18:21', '2024-07-11 09:18:21'),
(30, 'JM Trading Corporation', 'House#09, 5th Floor, Kabi Faruq Sharoni, Nikunja-02, Dhaka.', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'JM Trading Corporation', 'House#09, 5th Floor, Kabi Faruq Sharoni, Nikunja-02, Dhaka.', '01915 88 70 00 / 01711 182603', 'jahangir.bd1979@gmail.com', 1, 32, '2024-07-11 09:34:21', '2024-07-11 09:34:21'),
(32, 'M/S. Ibratas Trading company', 'ASTHA FEED Ind. Ltd) House#03,  Road#26, Sectore#07, Uttara,  Dhaka-1230', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'M/S. Ibratas Trading company', 'ASTHA FEED Ind. Ltd) House#03,  Road#26, Sectore#07, Uttara,  Dhaka-1230', '01732 64 89 96', 'ibratastrade@gmail.com', 1, 34, '2024-07-11 10:24:20', '2024-07-11 10:24:20'),
(33, 'M/S. Nurun Nahar Traders', '474/1, South Kafrul, Gomtimohol (5Th Floor),       (Near Ice-cream Factory More), Dhaka.', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'M/S. Nurun Nahar Traders', '474/1, South Kafrul, Gomtimohol (5Th Floor),       (Near Ice-cream Factory More), Dhaka.', '01713 01 28 53/ 01700 777710', 'nurunnahartrader@gmail.com', 1, 35, '2024-07-11 10:37:04', '2024-07-11 10:37:04'),
(34, 'M/S. Sanjoy Trading Company', '21, Puraton Bazar Road,  Kalibari, Khulna.', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'M/S. Sanjoy Trading Company', '21, Puraton Bazar Road,  Kalibari, Khulna.', '01819 71 02 24', 'Sanjoytrading554@gmail.com', 1, 36, '2024-07-11 10:45:39', '2024-07-11 10:45:39'),
(35, 'P.K  Enterprise', 'H-42, Jakir Hossain Road, Lalmatiya Mohammadpur, Dhaka-1207.', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'P.K  Enterprise', 'H-42, Jakir Hossain Road, Lalmatiya Mohammadpur, Dhaka-1207.', '01717 09 52 05', 'raninathdipali@gamil.com', 1, 37, '2024-07-11 10:51:36', '2024-07-11 10:51:36'),
(36, 'M/S.  SARAF  ENTERPRISE', 'JAPAN Garden City, Bulding#19, Flat#103, Mohammadpur, Dhaka-1207.', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'SARAF  ENTERPRISE', 'JAPAN Garden City, Bulding#19, Flat#103, Mohammadpur, Dhaka-1207.', '01741 33 54 42', 'sarafenterprise142gmail.com', 1, 38, '2024-07-11 11:00:54', '2024-07-11 11:00:54'),
(37, 'M/S. Mehedi Poultry Feed', 'Green A.R Tower House #39, Road #02, Block-F, Flat #A/7 & B/7, Banani,  Dhaka-1213.', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'M/S. Mehedi Poultry Feed', 'Green A.R Tower House #39, Road #02, Block-F, Flat #A/7 & B/7, Banani,  Dhaka-1213.', '01763 16 29 80', 'sawjahan@gmail.com', 1, 39, '2024-07-11 18:16:41', '2024-07-11 18:16:41'),
(38, 'R.R Agro Traders', 'Elite Rowshan Vila (Apartment-A6), Plot#03,  Road#9/A, Baridhara J- Block, Dhaka.', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'R.R Agro Traders', 'Elite Rowshan Vila (Apartment-A6), Plot#03,  Road#9/A, Baridhara J- Block, Dhaka.', '01834-855907', 'rashedulvet@gmail.com', 1, 40, '2024-07-11 18:23:50', '2024-07-11 18:23:50'),
(39, 'MHK Agro', 'HM Plaza (8Th Floor), Room#07, Road#02, Plot#34,  Sectore#03, Rajluxmi,  Uttara, Dhaka.', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'MHK Agro', 'HM Plaza (8Th Floor), Room#07, Road#02, Plot#34,  Sectore#03, Rajluxmi,  Uttara, Dhaka.', '01798 38 77 22', 'vet.mujammel@gmail.com', 1, 41, '2024-07-11 18:30:20', '2024-07-11 18:30:20'),
(40, 'Organic Agro Care', 'House#162, Block#KA, PC Culture Housing,  Shamoli, Dhaka-1207.', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Organic Agro Care', 'House#162, Block#KA, PC Culture Housing,  Shamoli, Dhaka-1207.', '01712 20 79 30', 'gsranjan1672@yahoo.com', 1, 42, '2024-07-11 18:36:11', '2024-07-11 18:36:11'),
(41, 'Unisun AG', 'Plot # 160 (9th Floor), Road #08, Block # F, Bashundhara R/A, Vatara, Dhaka-1212', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Unisun AG', 'Plot # 160 (9th Floor), Road #08, Block # F, Bashundhara R/A, Vatara, Dhaka-1212', '01727-061001', 'unisunmarketing@gmail.com', 1, 43, '2024-07-11 19:46:17', '2024-07-11 19:46:17'),
(42, 'Nature Care MFG Industries Ltd.,', 'Bulding#02, Level#01, 15, New Baily Road,  Dhaka-1217.', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Nature Care MFG Industries Ltd.,', 'Bulding#02, Level#01, 15, New Baily Road,  Dhaka-1217.', '01713-041886', 'naturecareltd3@gmail.com', 1, 44, '2024-07-11 20:52:22', '2024-07-11 20:52:22'),
(43, 'Global Trade', 'House#05, Road#20, Sector#14,  Uttara, Dhaka-12030.', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Global Trade', 'House#05, Road#20, Sector#14,  Uttara, Dhaka-12030.', '01711-044216', 'sukumaradhikary95@gmail.com', 1, 45, '2024-07-11 21:02:23', '2024-07-11 21:02:23'),
(44, 'M/S. Aisha Corporation', '398/A, Khatungonj, Chittagong.', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'M/S. Aisha Corporation', '398/A, Khatungonj, Chittagong.', '01729-093 255', 'salmatrading.ctg@gmail.com', 1, 46, '2024-07-12 07:15:53', '2024-07-12 07:15:53'),
(45, 'M/S. Parmony Enterprise', 'Babuli Rose Garden( Flat#D-1),  12,  Nabab Street ,  Wari, Dhaka.', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'M/S. Parmony Enterprise', 'Babuli Rose Garden( Flat#D-1),  12,  Nabab Street ,  Wari, Dhaka.', '01713-434124', 'yousuf.coo@parmonyenterprise.com', 1, 47, '2024-07-13 08:16:05', '2024-07-13 08:16:05'),
(46, 'Progress  Agrovet', '40/3, Roypara Main Road,  Khulna Sadar, Khulna.', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Progress  Agrovet', '40/3, Roypara Main Road,  Khulna Sadar, Khulna.', '01711-312796', 'progressagrovet@gmail.com', 1, 48, '2024-07-13 08:24:31', '2024-07-13 08:24:31'),
(47, 'Padma Safety Products', '29, Toyenbee Circular Road (4th Floor), Mothijheel C/A, Dhaka-1000', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Padma Safety Products', '29, Toyenbee Circular Road (4th Floor), Mothijheel C/A, Dhaka-1000', '01790-169843', 'Padda786@gmail.com', 1, 49, '2024-07-13 08:31:38', '2024-07-13 08:31:38'),
(48, 'H & K Feed Products', 'House#03, Road#26, Sectore#07,  Uttara,  Dhaka-1230,', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'H & K Feed Products', 'House#03, Road#26, Sectore#07,  Uttara,  Dhaka-1230,', '01708-485 638', 'gk.moonstar@gmail.com', 1, 50, '2024-07-13 08:39:25', '2024-07-13 08:39:25'),
(49, 'Enam Traders', 'Mariyam Villa, House#33, Flat#A1 & A2,Road#03, Sectore#09, Uttara,  Dhaka-1230,', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Enam Traders', 'Mariyam Villa, House#33, Flat#A1 & A2,Road#03, Sectore#09, Uttara,  Dhaka-1230,', NULL, NULL, 1, 51, '2024-07-13 08:47:56', '2024-07-13 08:47:56'),
(50, 'M/S. Matber Traders', 'Showrav Apartment (Flat# /A), House#04, Road#14, Sector#04, Uttara Model Town,   Dhaka-1230', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'M/S. Matber Traders', 'Showrav Apartment (Flat# /A), House#04, Road#14, Sector#04, Uttara Model Town,   Dhaka-1230', '01711-546 963', 'matber2286@gmail.com', 1, 52, '2024-07-13 08:55:25', '2024-07-13 08:55:25'),
(51, 'Awal & Brothers Chemicals Co. (Pvt) Ltd.', 'House#11, Road#01, Block#G,  Banasree, Rampura, Dhaka-1230', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Awal & Brothers Chemicals Co. (Pvt) Ltd.', 'House#11, Road#01, Block#G,  Banasree, Rampura, Dhaka-1230', '01713-017 530', 'mdshadakali1960@gmail.com', 1, 53, '2024-07-13 09:05:10', '2024-07-13 09:05:10'),
(52, 'Nature Care', 'Bulding#02, Level#01, 15, New Baily Road, Dhaka-1217.', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Nature Care', 'Bulding#02, Level#01, 15, New Baily Road, Dhaka-1217.', '01713-041886', 'moheuddin.ncmfg@gmail.com', 1, 54, '2024-07-13 09:19:10', '2024-07-13 09:19:10'),
(53, 'Shatu Trade  International', '1271, No. Mosharof  Hossen Road, Rajakhali, Chaktai, Mohammadia Mill Market, Chattogram.', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Shatu Trade  International', '1271, No. Mosharof  Hossen Road, Rajakhali, Chaktai, Mohammadia Mill Market, Chattogram.', '01781-363816', 'anamikagroup7@gmail.com', 1, 55, '2024-07-13 09:27:59', '2024-07-13 09:27:59'),
(54, 'Life Bridge Trade International', '1062, Middle Goshail Danga,  Bandar, Chittagong.', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Life Bridge Trade International', '1062, Middle Goshail Danga,  Bandar, Chittagong.', '01923-411892 Tariqual618@gmail.cm', 'tariqual618@gmail.cm', 1, 56, '2024-07-13 09:41:23', '2024-07-13 09:41:23'),
(55, 'BASF Bangladesh Limited', 'Crystal Palace (Level-07) Road#140,  House#22 SE (D), Gulshan South Avenue, Gulshan-1, Dhaka.', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'BASF Bangladesh Limited', 'Crystal Palace (Level-07) Road#140,  House#22 SE (D), Gulshan South Avenue, Gulshan-1, Dhaka.', '01730-018 113', 'sazzadul.hassan@basf.com', 1, 57, '2024-07-13 09:47:06', '2024-07-13 09:47:06'),
(56, 'Topnich Associates BD Ltd.,', '33/C, Kobi Jasim Uddin Road, (2nd Floor),North Kamlapur, Dhaka-1217', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Topnich Associates BD Ltd.,', '33/C, Kobi Jasim Uddin Road, (2nd Floor),North Kamlapur, Dhaka-1217', '01847-453300', 'topnichbd@yahoo.com', 1, 58, '2024-07-13 09:54:19', '2024-07-13 09:54:19'),
(57, 'M/S. Surma Enterprise', '6-Green Corner (Flat-A/2),  Green Road, Dhaka-1205', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'M/S. Surma Enterprise', '6-Green Corner (Flat-A/2),  Green Road, Dhaka-1205', '01715-032 482', 'surmaenterprise22@gmail.com', 1, 59, '2024-07-13 10:01:40', '2024-07-13 10:01:40'),
(58, 'Geneva Trade Centre', '50, Naya Palton, Eastern View Commercial Complex, Room#9/4. Dhaka-1000', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Geneva Trade Centre', '50, Naya Palton, Eastern View Commercial Complex, Room#9/4. Dhaka-1000', '01713-411052', 'genevatradecentre@yahoo.com', 1, 60, '2024-07-13 10:07:51', '2024-07-13 10:07:51'),
(59, 'JSL Enterprise', 'Rani Vila, 29 R.K Mitra Road, Nimtola, Netaigonj, Narayanganj.', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Rani Vila, 29 R.K Mitra Road, Nimtola, Netaigonj, Narayanganj.', '01819-242204', 'jahidh873@gmail.com', 1, 61, '2024-07-13 10:16:00', '2024-07-13 10:16:00'),
(60, 'M.N  Talukder Corporation', 'House # 289/90, Road #06, Block # B, Bashundhara R/A, Dhaka-1212.', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'M.N  Talukder Corporation', 'House # 289/90, Road #06, Block # B, Bashundhara R/A, Dhaka-1212.', '01313 094400', 'mntalukder1987@gmail.com', 1, 62, '2024-07-13 10:22:46', '2024-07-13 10:22:46'),
(61, 'Royal Agro Products', 'Motaleb Mansion (3rd  Floor),  2 R.K  Mission  Road, Dhaka-1203', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Motaleb Mansion (3rd  Floor),  2 R.K  Mission  Road, Dhaka-1203', '01777-753208', 'salimbhuyan9107@gmail.com', 1, 63, '2024-07-13 10:32:34', '2024-07-13 10:32:34'),
(62, 'P & P Trading', 'Sadar Road, Joypurhat-5900, Bangladesh.', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'P & P Trading', 'Sadar Road, Joypurhat-5900, Bangladesh.', '01713-012140', 'padmafeed@gmail.com', 1, 64, '2024-07-13 20:27:14', '2024-07-13 20:27:14'),
(63, 'M/S. Modina Feed Product', 'Burimary, Patgram, Lalmonirhat.', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'M/S. Modina Feed Product', 'Burimary, Patgram, Lalmonirhat.', '01740-599861', 'modina.abedin@gmail.com', 1, 65, '2024-07-13 20:41:33', '2024-07-13 20:41:33'),
(64, 'PM Traders', '230, Khatungonj, Chattogram', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'PM Traders', '230, Khatungonj, Chattogram', NULL, NULL, 1, 66, '2024-07-13 20:54:45', '2024-07-13 20:54:45'),
(65, 'S.R Agro', '522, SK Mujib Road, Agrabad,  CHITTAGONG', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'S.R Agro', '522, SK Mujib Road, Agrabad,  CHITTAGONG', '01811-251426', 'nipooontrade522_ctg@yahoo.com', 1, 67, '2024-07-13 21:05:24', '2024-07-13 21:05:24'),
(66, 'M/S. Sazid  Enterprise', 'Scoscho Tower (Flat#7/B),   Alupotti, RAJSHAHI.', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'M/S. Sazid  Enterprise', 'Scoscho Tower (Flat#7/B),   Alupotti, RAJSHAHI.', '01711- 405165', 'khussian56@gmail.com', 1, 68, '2024-07-13 21:12:42', '2024-07-13 21:12:42'),
(67, 'Ayaz Enterprise', 'Rahmatgonj, Dhaka. 186, Water Works Road, RAHMATGONJ, DHAKA.', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Ayaz Enterprise', 'Rahmatgonj, Dhaka. 186, Water Works Road, RAHMATGONJ, DHAKA.', '01711-532443', 'tanvir.ayazenterprise@gmail.com', 1, 69, '2024-07-13 21:20:18', '2024-07-13 21:20:18'),
(68, 'M/S BTC Trading', '13/A, Mymensingh Road, PlannersTower (14Th-Floor), Room #7 & 8, RAMNA, DHAKA.', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'M/S BTC Trading', '13/A, Mymensingh Road, PlannersTower (14Th-Floor), Room #7 & 8, RAMNA, DHAKA.', '01711-561862', 'btc-.trading@btcgroupbd.com', 1, 70, '2024-07-13 21:32:08', '2024-07-13 21:32:08'),
(69, 'Agrotech And Nutrients Limited', 'Baitul Haque Bulding (Level-7),  78, Motijheel C/A, Dhaka-1000', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Agrotech And Nutrients Limited', 'Baitul Haque Bulding (Level-7),  78, Motijheel C/A, Dhaka-1000', '01740585286', 'throbin32@yahoo.com', 1, 71, '2024-07-14 04:33:12', '2024-07-14 04:33:12'),
(70, 'Wiseman Guidance Ltd.,', 'Nam Village, House#-06, C-4,  Road#02, Banani, Dhaka-1213.', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Wiseman Guidance Ltd.,', 'Nam Village, House#-06, C-4,  Road#02, Banani, Dhaka-1213.', '01682 508727', 'asaduzzaman005@gmail.com', 1, 72, '2024-07-14 04:43:07', '2024-07-14 04:43:07'),
(71, 'Agro Trax', 'Nam Village, House#-06, C-4,  Road#02,  Banani, Dhaka-1213.', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Agro Trax', 'Nam Village, House#-06, C-4,  Road#02,  Banani, Dhaka-1213.', '01682 508727', 'ihmltd@gmail.com', 1, 73, '2024-07-14 04:50:36', '2024-07-14 04:50:36'),
(72, 'National Trading Co.', '44/A,North Joynogor Lane,  Chowkbazar, Asadgonj, Chittagong.', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'National Trading Co.', '44/A,North Joynogor Lane,  Chowkbazar, Asadgonj, Chittagong.', '01750 03 85 10', 'neximcoennam@yahoo.com', 1, 74, '2024-07-14 05:03:37', '2024-07-14 05:03:37'),
(73, 'T.H Corporation', '44/A,North Joynogor Lane,  Chowkbazar, Asadgonj, Chittagong.', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'T.H Corporation', '44/A,North Joynogor Lane,  Chowkbazar, Asadgonj, Chittagong.', '01736 523930', 'sakhawats52@gmail.com', 1, 75, '2024-07-14 05:16:57', '2024-07-14 05:16:57'),
(74, 'Mahim Agro & Fisheries', 'Boro Shedhulkura, Damudya,  Shariatpur.', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Mahim Agro & Fisheries', 'Boro Shedhulkura, Damudya,  Shariatpur.', '01746651630', 'sabiq.nourish@gmail.com', 1, 76, '2024-07-14 05:32:52', '2024-07-14 05:32:52'),
(75, 'Royel Crops', 'Lily Pond Centre (Suite#C-14),  3 R.K  Mission  Road,  Dhaka-1203', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Royel Crops', 'Lily Pond Centre (Suite#C-14),  3 R.K  Mission  Road,  Dhaka-1203', '01736 523930', 'ahossain0209@gmail.com', 1, 77, '2024-07-14 05:40:50', '2024-07-14 05:40:50'),
(76, 'Stone Planet Enterprise', '169,Selina’s Dream, Flat#02-B,  West Aratpara, Shaheenbag, Tejgaon, Dhaka-1215,', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Stone Planet Enterprise', '169,Selina’s Dream, Flat#02-B,  West Aratpara, Shaheenbag, Tejgaon, Dhaka-1215,', '01755 548444', 'ssajjad79@gmail.com', 1, 78, '2024-07-14 05:51:16', '2024-07-14 05:51:16'),
(77, 'R.S Poultry & Fishery', '197, Shaheed Syed Nazrul Islam Sarani, Eastern Arzoo (16th Floor), Suite 16/1, Bijoy Nogor, Dhaka-1000.', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'R.S Poultry & Fishery', '197, Shaheed Syed Nazrul Islam Sarani, Eastern Arzoo (16th Floor), Suite 16/1, Bijoy Nogor, Dhaka-1000.', '01716-456633', 'rico@citechco.net', 1, 79, '2024-07-14 06:00:22', '2024-07-14 06:00:22'),
(78, 'Ria International Co.', '18, Rajuk Avenue,  Lal Bhaban (Level-08), Motijheel C/A, Dhaka-1000.', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Ria International Co.', '18, Rajuk Avenue,  Lal Bhaban (Level-08), Motijheel C/A, Dhaka-1000.', '01819-216628', 'MRIAzad@citechco.net', 1, 80, '2024-07-14 06:09:52', '2024-07-14 06:09:52'),
(79, 'M/S.FR Trading', '9, Rajuk Avenue,  Ali  Bhobon  (7th  floor),  Motijheel C/A, Dhaka-1000', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'M/S.FR Trading', '9, Rajuk Avenue,  Ali  Bhobon  (7th  floor),  Motijheel C/A, Dhaka-1000', '01985765534', 'frtrading97@gmail.com', 1, 81, '2024-07-14 06:17:05', '2024-07-14 06:17:05'),
(80, 'Riverisland Industries Limited', 'House#45, Road#27, Block#A Banani, Dhaka.', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Riverisland Industries Limited', 'House#45, Road#27, Block#A Banani, Dhaka.', '01755511499', 'purchase.toyofeed@gmail.com', 1, 82, '2024-07-14 06:24:57', '2024-07-14 06:24:57'),
(81, 'Nasirabad Trading', '26, Juriatuli Lane, Baganbari,  Nowabpur, Wari, Dhaka.', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Nasirabad Trading', '26, Juriatuli Lane, Baganbari,  Nowabpur, Wari, Dhaka.', '01752468700', 'shakib.mcdonaldcrops@gmail.com', 1, 83, '2024-07-14 06:32:25', '2024-07-14 06:32:25'),
(82, 'Bushra Trading Corporation', 'Swapnil (2nd Floor),  House #24, Road #02, Sector #03,Uttara, Dhaka-1203', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Bushra Trading Corporation', 'Swapnil (2nd Floor),  House #24, Road #02, Sector #03,Uttara, Dhaka-1203', '01711667124', 'mdmurad247@gmail.com', 1, 84, '2024-07-14 06:38:22', '2024-07-14 06:38:22'),
(83, 'M/S. Base Impex', '309, Saima Vander Market (7th Floor) Room#802,SK Mujib road, Agrabad, Chattogram.', 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Base Impex', '309, Saima Vander Market (7th Floor) Room#802,SK Mujib road, Agrabad, Chattogram.', 'fakrul06rohy@gmail.com', 'fakrul06rohy@gmail.com', 1, 85, '2024-07-14 06:48:14', '2024-07-14 06:48:14'),
(86, 'Sufola Feed Mills Ltd.,', 'Ashaloy (Unit#7C), 660/1 Ashkona, DokkhinKhan, Uttara, Dhaka-1230', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Sufola Feed Mills Ltd.,', 'Ashaloy (Unit#7C), 660/1 Ashkona, DokkhinKhan, Uttara, Dhaka-1230', '01678112076', 'mmrahman1678@gmail.com', 1, 88, '2024-07-26 19:55:51', '2024-07-26 19:55:51'),
(87, 'RUPA ENTERPRISE', 'Jahala Bazar, Munshigonj, Alamdanga, Chuadanga, Bangladesh', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'RUPA ENTERPRISE', 'Jahala Bazar, Munshigonj, Alamdanga, Chuadanga, Bangladesh', '01711 193511', 'mahakal.international@gmail.com', 1, 89, '2024-07-26 20:03:52', '2024-07-26 20:03:52'),
(88, 'NOVEL BIOTECH LTD.,', '262, Sher-E-Bangla Road, Khulna Bangladesh', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'NOVEL BIOTECH LTD.,', '262, Sher-E-Bangla Road, Khulna Bangladesh', '01684 580374', 'novelbiotechbd@gmail.com', 1, 90, '2024-07-26 20:10:53', '2024-07-26 20:10:53'),
(89, 'M/S. Cabin Care International', '1862, Rawshon Manjil, Asadgonj, Chattogram, Bangladesh', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'M/S. Cabin Care International.', '1862, Rawshon Manjil, Asadgonj, Chattogram, Bangladesh', '01724 266236', 'kazinasir774@gmail.com', 1, 91, '2024-07-26 20:17:48', '2024-07-26 20:17:48'),
(90, 'Synergy Bioscience', 'Plot#34, HM Plaza(Level-11), Room#08,Sectore#03, Uttara, Dhaka-1230', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Synergy Bioscience', 'Plot#34, HM Plaza(Level-11), Room#08,Sectore#03, Uttara, Dhaka-1230', '01766152662', 'synergybioscience22@gmail.com', 1, 92, '2024-07-26 20:25:13', '2024-07-26 20:25:13'),
(91, 'Jaish Trade International', 'Lake Palisade (Level-5), House#23,   Rode#27, Dhanmondi, Dhaka-1207.', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Jaish Trade International', 'Lake Palisade (Level-5), House#23,   Rode#27, Dhanmondi, Dhaka-1207.', '01911-084437', 'abbrahossain@gmail.com', 1, 93, '2024-07-26 20:35:45', '2024-07-26 20:35:45'),
(92, 'Trio Link (Pvt.) Ltd.,', 'New Model Colleage, Sukrabad, Dhaka-1206', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Trio Link (Pvt.) Ltd.,', 'New Model Colleage, Sukrabad, Dhaka-1206', '01711453497', 'badruzzaman1973@gmail.com', 1, 94, '2024-07-26 20:45:34', '2024-07-26 20:45:34'),
(93, 'ATR Agro Products', '947, KB Aman Ali Tower(4th Floor) Anderkilla, Chattogram, Bangladesh', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'ATR Agro Products', '947, KB Aman Ali Tower(4th Floor) Anderkilla, Chattogram, Bangladesh', '01819312513', '01819312513', 1, 95, '2024-07-26 20:54:12', '2024-07-26 20:54:12'),
(94, 'MAJUMDER AGROTECH INTERNATIONAL LTD.', 'Robin Tower (Level-05), 42/43, Purana Palton, Palton, Dhaka-1000.', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'MAJUMDER AGROTECH INTERNATIONAL LTD.', 'Robin Tower (Level-05), 42/43, Purana Palton, Palton, Dhaka-1000.', '01712661849', 'majumderderagrotech@gmail.com', 1, 96, '2024-07-26 21:01:59', '2024-07-26 21:01:59'),
(95, 'GREEN ANIMAL HEALTH', 'Ekattor House, 79 Faridabad, Madrasha Road, Dhakhin Khan,   Dhaka-1230.', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'GREEN ANIMAL HEALTH', 'Ekattor House, 79 Faridabad, Madrasha Road, Dhakhin Khan,   Dhaka-1230.', '01618122333', 'sabbiralalgroup@gmail.com', 1, 97, '2024-07-26 21:08:43', '2024-07-26 21:08:43'),
(96, 'ZAMAN TRADERS', '65/1- Lake Circus, Kalabagun, Dhaka.', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'ZAMAN TRADERS', '65/1- Lake Circus, Kalabagun, Dhaka.', '01715270845', 'azadpatgram@gmail.com', 1, 98, '2024-07-26 21:17:20', '2024-07-26 21:17:20'),
(97, 'Everedge', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Everedge', NULL, '01707362010', 'evertradingbd@gmail.com', 1, 99, '2024-07-26 21:26:48', '2024-07-26 21:26:48'),
(98, 'Sarker Agro Biotech', 'Plot#07, Road#17, Banani C/A,  Dhaka-1213, Bangladesh', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Sarker Agro Biotech', 'Plot#07, Road#17, Banani C/A,  Dhaka-1213, Bangladesh', '01711887710', 'mhsarker76@gmail.com', 1, 100, '2024-07-27 05:38:33', '2024-07-27 05:38:33'),
(99, 'Faraz Trade International', 'Plot#07, Road#17, Banani C/A,  Dhaka-1213, Bangladesh', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Faraz Trade International', 'Plot#07, Road#17, Banani C/A,  Dhaka-1213, Bangladesh', '01742386443', 'imrol.kayes_khan@yahoo.com', 1, 101, '2024-07-27 05:45:58', '2024-07-27 05:45:58'),
(101, 'AL (Pvt.) Limited', 'Boiragitala  Pirijpur,  Godagari, Rajshahi.', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'AL (Pvt.) Limited', 'Boiragitala  Pirijpur,  Godagari, Rajshahi.', '01713 228298', 'rahman.ghl@gmail.com', 1, 103, '2024-07-27 06:01:27', '2024-07-27 06:01:27'),
(102, 'Kazi Trust Link', 'House#12, Road#17,  Sectore#04, Uttara Dhaka', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Kazi Trust Link', 'House#12, Road#17,  Sectore#04, Uttara Dhaka', '01731025000', 'kazitrustlink@gmail.com', 1, 104, '2024-07-27 06:08:24', '2024-07-27 06:08:24'),
(103, 'SR Agro Corporation', '681, High Road, Alamdaga, Chuadanga,', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'SR Agro Corporation', '681, High Road, Alamdaga, Chuadanga,', '01713 011040', 'aranimalhealth@gmail.com', 1, 105, '2024-07-27 06:19:43', '2024-07-27 06:19:43'),
(104, 'OKM Trading Corporation', '63, Jubilee Road, Enayet Bazar, Chattogram.', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'OKM Trading Corporation', '63, Jubilee Road, Enayet Bazar, Chattogram,', '01713 311770', 'oiur.rahman@gmail.com', 1, 106, '2024-07-27 06:30:20', '2024-07-27 06:30:20'),
(105, 'Raise Export Import Co. Ltd.,', '29-31, Noor Tower, Aftab Nagar,  Badda, Dhaka.', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Raise Export Import Co. Ltd.,', '29-31, Noor Tower, Aftab Nagar,  Badda, Dhaka.', '01777585551', 'raiseexim@gmail.com', 1, 107, '2024-07-27 06:37:56', '2024-07-27 06:37:56'),
(106, 'Bengal Eye Corporation', '1088, New Pak Bulding,  Amir Market, Chattogram', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Bengal Eye Corporation', '1088, New Pak Bulding,  Amir Market, Chattogram', '01735 441630', 'sajibhussain9880@gmail.com', 1, 108, '2024-07-27 06:44:15', '2024-07-27 06:44:15'),
(107, 'Roots Business Initiative Ltd.,', '29/1, Toyenbee Circular Rood,  Motijheel, Dhaka.', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Roots Business Initiative Ltd.,', '29/1, Toyenbee Circular Rood,  Motijheel, Dhaka.', '01950252550', 'sarazan5276@gmail.com', 1, 109, '2024-07-27 06:52:38', '2024-07-27 06:52:38'),
(108, 'Syngen Corporation Ltd.', 'Rupayon Trade Cenrer  114, Kazi Nazrul Islam Avenue,  Dhaka.', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Syngen Corporation Ltd.', 'Rupayon Trade Cenrer  114, Kazi Nazrul Islam Avenue,  Dhaka', '01672 288128', 'riyad0167@gmail.com', 1, 110, '2024-07-27 06:59:28', '2024-07-27 06:59:28'),
(109, 'Favourite International', 'House#50, Road#01, Block#A, Niketan, Gulshan-1, Dhaka-1212', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Favourite International', 'House#50, Road#01, Block#A, Niketan, Gulshan-1, Dhaka-1212', '01713 506412', 'favouriteint2000@gmail.com', 1, 111, '2024-07-27 07:07:00', '2024-07-27 07:07:00'),
(110, 'S.H Enterprise', '224, Bhuiyan Para, Khilgoan,  Dhaka-1219', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'S.H. Enterprise', '224, Bhuiyan Para, Khilgoan,  Dhaka-1219', '01912350144', 'halim2510@yahoo.com', 1, 112, '2024-07-27 07:14:38', '2024-07-27 07:14:38'),
(111, 'MARS Omega Ltd.,', 'Jibonbima Bhobon (6th  floor), Front Block,10, Dilkusha C/A, Motijheel C/A,  Dhaka-1000', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'MARS Omega Ltd.,', 'Jibonbima Bhobon (6th  floor), Front Block,10, Dilkusha C/A, Motijheel C/A,  Dhaka-1000', '01915654797', 'mars_feed@yahoo.com', 1, 113, '2024-07-27 07:27:54', '2024-07-27 07:27:54'),
(112, 'Atlantic Commodities', 'SR Tower (Level-8/B) Road#105, Uttara, Dhaka-1230', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Atlantic Commodities', 'SR Tower (Level-8/B) Road#105, Uttara, Dhaka-1230', '01819465151', 'sibbir.bd@gmail.com', 1, 114, '2024-07-27 07:34:26', '2024-07-27 07:34:26'),
(113, 'Welkin Corporation', 'RH Home Center (Level-6) 74/B/1, Green Road, Dhaka-1212,', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Welkin Corporation', 'RH Home Center (Level-6) 74/B/1, Green Road, Dhaka-1212,', '01711525276', 'info@evergreen-aeon.com', 1, 115, '2024-07-27 07:42:46', '2024-07-27 07:42:46'),
(114, 'Fast Link Trade', 'Jafrabad, Mohammadpur,  Dhaka-1207', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Fast Link Trade', 'Jafrabad, Mohammadpur,  Dhaka-1207', '01552390529', 'fastlinktrade19at@gmail.com', 1, 116, '2024-07-27 08:18:21', '2024-07-27 08:18:21'),
(115, 'Mountain International BD.', 'House#93, Road#14, Sectore#11, Uttara West, Dhaka-1230.', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Mountain International BD.', 'House#93, Road#14, Sectore#11, Uttara West, Dhaka-1230.', '01710551678', 'noman@mountaininternationalbd.com', 1, 117, '2024-07-28 07:55:17', '2024-07-28 07:55:17'),
(116, 'Khandaker Trade International', '16/A, Ahsanullah Road, Kotwali, Dhaka-1100', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Khandaker Trade International', '16/A, Ahsanullah Road, Kotwali, Dhaka-1100', '01940235600', 'k.m.zahidhasan@gmail.com', 1, 118, '2024-07-28 08:02:07', '2024-07-28 08:02:07'),
(117, 'New Karnafully Trading', 'Kader Tower(8th -Floor), 128, Jubilee Road, Chottogram.', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'New Karnafully Trading', 'Kader Tower(8th -Floor), 128, Jubilee Road, Chottogram.', '01708523216', 'agrocare.ceo@gmail.com', 1, 119, '2024-07-28 08:10:27', '2024-07-28 08:10:27'),
(118, 'RF Health & Nutrition', 'Plot#87, BNS Centre, Suite# 921, 9th Floor, Sectore#07, Uttara, Dhaka-1230', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'RF Health & Nutrition', 'Plot#87, BNS Centre, Suite# 921, 9th Floor, Sectore#07, Uttara, Dhaka-1230', '01704187000', 'shadatsuccess100@gmail.com', 1, 120, '2024-07-28 08:17:49', '2024-07-28 08:17:49'),
(119, 'Taslima Enterprise', 'Charpatharghata, Ward No-03, Karnafully, Chattogram.', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Taslima Enterprise', 'Charpatharghata, Ward No-03, Karnafully, Chattogram.', '01673874388', 'taslimaenterprise567@gmail.com', 1, 121, '2024-07-28 08:27:18', '2024-07-28 08:27:18'),
(120, 'Akira Agro Trading', 'Plot#87, BNS Centre, Suite# 921, Floor, Sectore#07, Uttara, Dhaka-1230', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Akira Agro Trading', 'Plot#87, BNS Centre, Suite# 921, Floor, Sectore#07, Uttara, Dhaka-1230', '01819961687', 'mohammedoliullar@gmail.com', 1, 122, '2024-07-28 08:36:31', '2024-07-28 08:36:31'),
(121, 'Nextgen Corporation', 'House#03, Road#26, Sectore#07, Uttara,  Dhaka-1230', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Nextgen Corporation', 'House#03, Road#26, Sectore#07, Uttara,  Dhaka-1230', '01300170639', 'hossain@ibratasbd.com', 1, 123, '2024-07-28 08:42:52', '2024-07-28 08:42:52'),
(122, 'M/S. Mahbubar Rahman', 'South TR Road, Saidpur,  Nilphamari-5310', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'M/S. Mahbubar Rahman', 'South TR Road, Saidpur,  Nilphamari-5310', '01714256862', 'mahbubarrahman64@gmail.com', 1, 124, '2024-07-28 08:50:43', '2024-07-28 08:50:43'),
(123, 'M/S. R.R Enterprise', 'Chakrampur, Natore Sadar, Natore-6400', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'M/S. R.R Enterprise', 'Chakrampur, Natore Sadar, Natore-6400', '01711869094', 'msrrenterprisenatore@gmail.com', 1, 125, '2024-07-28 08:57:06', '2024-07-28 08:57:06'),
(124, 'Plantegic Trade Incorporation', 'House#25, Road#12, Sectore#10, Uttara West, Dhaka-1230.', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Plantegic Trade Incorporation', 'House#25, Road#12, Sectore#10, Uttara West, Dhaka-1230.', '01731894842', 'plantegic@gmail.com', 1, 126, '2024-07-28 09:02:22', '2024-07-28 09:02:22'),
(125, 'Dakota Grains Ltd.,', 'ANZ Eleven Square (Level-06), House#01, Block#H, Road#11, Banani, Dhaka-1213', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Dakota Grains Ltd.,', 'ANZ Eleven Square (Level-06), House#01, Block#H, Road#11, Banani, Dhaka-1213', '01731660330', 'dakotagrainsbd@gmail.com', 1, 127, '2024-07-28 09:08:08', '2024-07-28 09:08:08'),
(126, 'Chowdhury Food & Feed Agro Industries Ltd', 'Rupayon Z.R Plaza, (8th floor), 46 Satmosjid Road,   Dhanmondi, Dhaka-1209', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Chowdhury Food & Feed Agro Industries Ltd', 'Rupayon Z.R Plaza, (8th floor), 46 Satmosjid Road,   Dhanmondi, Dhaka-1209', '01711533035', 'keshobmay@gmail.com', 1, 128, '2024-07-30 07:19:13', '2024-07-30 07:19:13'),
(127, 'Janani Trading', '9, Rajuk Avenue,  Ali  Bhobon (7th  floor), Motijheel C/A,  Dhaka-1000', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Janani Trading', '9, Rajuk Avenue,  Ali  Bhobon (7th  floor), Motijheel C/A,  Dhaka-1000', '01713022991', 'Jananitrading01@gmail.com', 1, 129, '2024-07-30 07:33:56', '2024-07-30 07:33:56'),
(128, 'Bengal Protein & Fat Suppliers Co.', 'Joynogor Lane, Chowkbazar, Asadgonj, Chittagong.', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Bengal Protein & Fat Suppliers Co.', 'Joynogor Lane, Chowkbazar, Asadgonj, Chittagong.', '01750038510', 'urmonir@gmail.com', 1, 130, '2024-07-30 07:46:22', '2024-07-30 07:46:22'),
(129, 'S.S Rahman International Limited', 'TCB Bhaban, 1, Kawran Bazar, Dhaka-1215', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'S.S Rahman International Limited', 'TCB Bhaban, 1, Kawran Bazar, Dhaka-1215', '01711544526', 'ssrahmaninternationallimited@gmail.com', 1, 131, '2024-07-30 07:59:53', '2024-07-30 07:59:53'),
(130, 'SSB Enterprise', 'House#13, Road#11, Sectore#04, Uttara East, Dhaka-1230.', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'SSB Enterprise', 'House#13, Road#11, Sectore#04, Uttara East, Dhaka-1230.', '01924533636', 'ssbenterprise2018@gmail.com', 1, 132, '2024-07-30 08:06:03', '2024-07-30 08:06:03'),
(131, 'Bengale Agro', 'House#40, Road#05, Sector#03, Uttara, Dhaka.', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Bengale Agro', 'House#40, Road#05, Sector#03, Uttara, Dhaka.', '01711722776', 'zahirulislam29@gmail.com', 1, 133, '2024-07-30 08:16:34', '2024-07-30 08:16:34'),
(132, 'Jadid Agro Industries Limited', 'House # 37(Apt-N1), Shahmokhdum Avenue ,Sector #12, Uttara West, Dhaka-1230', 3, 1, '16 (RAJBARI)', '2020-07-27', '671230533706', '2020-10-07', NULL, NULL, NULL, NULL, 'c-164257/2020', '2020-10-06', 1, NULL, 'Jadid Agro Industries Limited', 'House # 37(Apt-N1), Shahmokhdum Avenue ,Sector #12, Uttara West, Dhaka-1230', '01973582971', 'josim.jadid@gmail.com', 1, 134, '2024-08-21 07:08:42', '2024-08-21 07:08:42'),
(133, 'Optrium', 'Mahfuza Tower, Flat#7B, 36/37,Ring Road, Dhaka-1207.', 1, 1, '281538/2019 (DSCC)', '2021-11-10', '599561617189', '2014-10-25', '001862345-0205', '2020-07-26', NULL, NULL, NULL, NULL, 1, NULL, 'Optrium', 'Mahfuza Tower, Flat#7B, 36/37,Ring Road, Dhaka-1207.', '01670-240087', 'info@optriumbd.com', 1, 135, '2024-08-21 07:23:07', '2024-08-21 07:23:07'),
(134, 'M/S. Al-Amin Establishment', '398/A, Khatungonj, Chittagong.', 1, 1, '191932(CHITTAGONG)', '2018-07-01', '7588088701953', '2016-12-18', '000187333', '2017-05-27', NULL, NULL, NULL, NULL, 1, NULL, 'M/S. Al-Amin Establishment', '398/A, Khatungonj, Chittagong.', '01729093255', 'alamincompanyctg@gmail.com', 1, 136, '2024-08-21 13:58:55', '2024-08-21 13:58:55'),
(135, 'M/S. Shamsul Alam', '94, Khatungonj, Chittagong.', 1, 1, '175957(CHITTAGONG)', '2009-07-14', '650899499524', '2017-01-10', '000196704', '2017-05-28', NULL, NULL, NULL, NULL, 1, NULL, 'M/S. Shamsul Alam', '94, Khatungonj, Chittagong.', '01819318712', 'salma-group.com', 1, 137, '2024-08-21 14:39:56', '2024-08-21 14:39:56'),
(136, 'Umiza Trade International', '398/A, Salma Tower (4Th Floor),   Khatungonj, Chittagong,  Bangladesh', 1, 1, '29603(CHITTAGONG)', '2017-09-10', '650899499524', '2019-12-19', '001272362-0503', '2018-07-19', NULL, NULL, NULL, NULL, 1, NULL, 'Umiza Trade International', '398/A, Salma Tower (4Th Floor),   Khatungonj, Chittagong,  Bangladesh', '01318852432', 'umaizatradebd@gmail.com', 1, 138, '2024-08-22 09:57:03', '2024-08-22 09:57:03'),
(137, 'M/S. S.N Co.', '340/376/280, New  Chaktai, Chattogram.', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'M/S. S.N Co.', '340/376/280, New  Chaktai, Chattogram.', '01777753208', 'sn.co2040@gmail.com', 1, 139, '2024-08-22 10:13:00', '2024-08-22 10:13:00'),
(138, 'M/S. Salma Trading', '398/A, Khatungonj, Chittagong.', 1, 1, '175965(CHITTAGONG)', '2016-07-14', '7588088701953', '2016-12-18', '000187342', '2017-05-27', NULL, NULL, NULL, NULL, 1, NULL, 'M/S. Salma Trading', '398/A, Khatungonj, Chittagong.', '01729093255', 'mnesaru@yahoo.com', 1, 140, '2024-08-22 10:26:21', '2024-08-22 10:26:21'),
(139, 'M/S. Hamim & Brothers', '253/292, Pathantully Road, LiakotAli Bulding, (2nd Floor),  Bangshal Para, Chattogram', 1, 1, '139972(CHITTAGONG)', '2021-09-01', '739803664207', '2021-09-14', '003378561-0503', '2020-09-20', NULL, NULL, NULL, NULL, 1, NULL, 'M/S. Hamim & Brothers', '253/292, Pathantully Road, LiakotAli Bulding, (2nd Floor),  Bangshal Para, Chattogram', '01615500990', 'abulhasanctg90@gmail.com', 1, 141, '2024-08-22 10:51:46', '2024-08-22 10:51:46'),
(140, 'Hi-Tech Introva', 'House#40, Road#07 (Rafique Housing), Shekhertek, Adabar, Dhaka-1207', 1, 1, '021068 (DNCC)', '2022-07-11', '420631552559', '2013-09-19', '006072955-0402', '2024-04-22', NULL, NULL, NULL, NULL, 1, NULL, 'Hi-Tech Introva', 'House#40, Road#07 (Rafique Housing), Shekhertek, Adabar, Dhaka-1207', '01712009949', 'nazrul7dof@gmail.com', 1, 142, '2024-09-07 06:56:03', '2024-09-07 06:56:03'),
(141, 'A.Z Enterprise', 'House#24, Road#02, Block#G,  Banasree, Rampura, Dhaka-1219', 1, 1, '000424/2024(DSCC)', '2024-07-08', '8606238340740', '2016-01-26', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'A.Z Enterprise', 'House#24, Road#02, Block#G,  Banasree, Rampura, Dhaka-1219', '01738423926', 'zeeshanyasirsakib@gmail.com', 1, 151, '2024-09-07 07:35:17', '2024-09-07 07:35:17'),
(142, 'SAS Corporation', 'North Salna, BSMAU, Gazipur Sadar, Gazipur-1703', 1, 1, '2351/2017 (GAZIPUR)', '2017-08-17', '751218129589', '2013-07-03', '000902935-0103', '2017-12-27', NULL, NULL, NULL, NULL, 1, NULL, 'SAS Corporation', 'North Salna, BSMAU, Gazipur Sadar, Gazipur-1703', '01711445007', 'arif.cdl@gmail.com', 1, 152, '2024-09-07 07:50:38', '2024-09-07 07:50:38'),
(143, 'T.N Trade International', '34, Purana Paltan, Dhaka-1000', 1, 1, '275251/2019', '2024-07-29', '277983427943', '2014-09-14', '001487089-0208', '2018-10-07', NULL, NULL, NULL, NULL, 1, NULL, 'T.N Trade International', '34, Purana Paltan, Dhaka-1000', '01819136397', 'alihossanbd76@gmail.com', 1, 153, '2024-09-07 08:05:06', '2024-09-07 08:05:06');
INSERT INTO `info_companies` (`id`, `companyName`, `addressOrganization`, `typeOwnership`, `typeBusiness`, `tradeLicenseNo`, `tradeLicenseDate`, `eTinNo`, `eTinDate`, `vatRegistrationNo`, `vatRegistrationDate`, `ircCertificateNo`, `ircCertificateDate`, `rjscIncorporationNo`, `rjscIncorporationDate`, `poultryDairyFisheries`, `tradingBrandOthers`, `contactCompanyName`, `contactCompanyAddress`, `contactCompanyNumber`, `contactCompanyEmail`, `status`, `member_id`, `created_at`, `updated_at`) VALUES
(144, 'M/S. Samrat Enterprise', 'A-7/6,Majidpur (Lab Aid Zone  Diagnostic Center Lane)  Saver, Dhaka.', 1, 1, '54750 (SAVER)', '2017-09-17', '121964253693', '2013-07-13', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'M/S. Samrat Enterprise', 'A-7/6,Majidpur (Lab Aid Zone  Diagnostic Center Lane)  Saver, Dhaka.', '01713296373', 'mse2000@yahoo.com', 1, 154, '2024-09-16 15:37:48', '2024-09-16 15:37:48'),
(145, 'Alltech Biotechnology Pvt. Ltd.', 'Level-09,Plot No-38, Rabindra Sarani, Sector-07, Uttara, Dhaka-1230', 4, 4, 'TRAD/DNCC/002532/2022', '2024-07-04', '151074180999', '2014-02-08', '001466436-01012', '2019-09-09', NULL, NULL, 'C-48592(576)2003', '2003-03-15', 1, NULL, 'Alltech Biotechnology Pvt. Ltd.', 'Level-09,Plot No-38, Rabindra Sarani, Sector-07, Uttara, Dhaka-1230', '01770799348', 'zulker.siddique@alltech.com', 1, 155, '2024-09-25 10:20:23', '2024-09-25 10:20:23'),
(146, 'Macvit Nutrition (BD)', 'Plot#01, Saleh Tower, 6th-Floor, Gareeb-E- Newaz Avenue, Sectore#13, Uttara, Dhaka-1230.', 1, 1, '004822/2024 (DNCC)', '2024-08-07', '569420176549 C-247', '2013-09-27', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Macvit Nutrition (BD)', 'Plot#01, Saleh Tower, 6th-Floor, Gareeb-E- Newaz Avenue, Sectore#13, Uttara, Dhaka-1230', '01730482476', 'biplab.prplink@gmail.com', 1, 156, '2024-10-03 16:15:58', '2024-10-03 16:15:58'),
(147, 'M/S. Pascor Feed', '467/479, Bisness Tower, Khatungonj, Chattogram', 2, 1, '23/23-24 (CHITTAGONG)', '2023-08-01', '580226496841 C-048', '2023-08-28', '006360345-0502', '2024-09-17', NULL, NULL, 'CHP-4007/2023', '2023-07-24', 1, NULL, 'M/S. Pascor Feed', '467/479, Bisness Tower, Khatungonj, Chattogram', '01819312371', 'mspascorfeed@gmail.com', 1, 157, '2024-10-03 17:00:12', '2024-10-03 17:00:12'),
(148, 'Montasir Agro Products', 'Plot#1,2,3,4, Room#317, Level#3, Block#A, Green City#-1, Chandrima Housing, Mohammadpur, Dhaka-1207', 1, 1, '006620/24 (DNCC)', '2024-08-21', '418685664402', '2013-10-28', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Montasir Agro Products', 'Plot#1,2,3,4, Room#317, Level#3, Block#A, Green City#-1, Chandrima Housing, Mohammadpur, Dhaka-1207', '01916327137', NULL, 1, 158, '2024-11-16 08:57:54', '2024-11-16 08:57:54'),
(149, 'Abdullah Trading', 'Plot-7, Momotaz Plaza, (3rd-Floor), Road#7/D, Sector#09, Uttara, Dhaka-1230.', 1, 1, '028964/2023 (DNCC)', '2024-08-28', '482727342148', '2024-09-22', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Abdullah Trading', 'Plot-7, Momotaz Plaza, (3rd-Floor), Road#7/D, Sector#09,  Pubali Bank Bhabon, Uttara, Dhaka-1230.', '01755632000', NULL, 1, 159, '2024-11-16 09:17:38', '2024-11-16 09:17:38'),
(150, 'M/S. Purabi Trading', 'TATA Bulding, 974, Upper Jessore Road, Khulna.', 1, 1, '21/2169 (KCC)', '2022-08-02', '218889849125/Ke-3', NULL, '002249753-0801', '2019-11-04', NULL, NULL, NULL, NULL, 1, NULL, 'M/S. Purabi Trading', 'TATA Bulding, 974, Upper Jessore Road, Khulna.', '01711814400', NULL, 1, 160, '2024-11-16 10:02:37', '2024-11-16 10:02:37'),
(151, 'S.S Rahman International', 'TCB Bhaban, 1, Kawran Bazar, Dhaka-1215', 1, 1, '038981/2022 (DNCC)', '2024-07-03', '360036678891/C-25', '2024-10-29', '001523811-0203', '2019-10-29', NULL, NULL, NULL, NULL, 1, NULL, 'S.S Rahman International', 'TCB Bhaban, 1, Kawran Bazar, Dhaka-1215', '01711544526', NULL, 1, 161, '2024-11-16 10:18:21', '2024-11-16 10:18:21'),
(152, 'M/S. Ahmed Trading Co.,', 'A-200/3, Dighirchala, Sarker Market, Chandona, Chowrasta, Gazipur.', 1, 1, '13722/2019 (GCC)', '2019-11-19', '657270178863', '2024-10-17', '002826464-0103', '2020-03-22', NULL, NULL, NULL, NULL, 1, NULL, 'M/S. Ahmed Trading Co.', 'A-200/3, Dighirchala, Sarker Market, Chandona, Chowrasta, Gazipur.', '01711059729', NULL, 1, 162, '2024-11-16 11:01:00', '2024-11-16 11:01:00'),
(153, 'La Riba Trading', '13, Hori  Kishore Roy Road, Mymensingh.', 1, 1, '2022-00788 (Mymensingh City Corp.)', '2022-03-09', '420343638977/ C-004', '2013-09-25', '003353955-0106', '2020-11-12', NULL, NULL, NULL, NULL, 1, NULL, 'La Riba Trading', '13, Hori  Kishore Roy Road, Mymensingh.', '01764166766', NULL, 1, 163, '2024-11-16 11:16:51', '2024-11-16 11:16:51'),
(154, 'Best Mix (BD) Ltd.', 'House-160 (3rd & 4th Floor),  Road-8, Block-F, Bashundhara R/A,  Dhaka-1229.', 3, 1, '31/2024 (Dewlabari UP)', '2024-07-04', '152066280746', '2015-12-15', '000513879-0406', '2017-06-29', NULL, NULL, NULL, NULL, 1, NULL, 'Best Mix (BD) Ltd.', 'House-160 (3rd & 4th Floor),  Road-8, Block-F, Bashundhara R/A,  Dhaka-1229.', '01713461898', NULL, 1, 164, '2024-11-16 11:31:26', '2024-11-16 11:31:26'),
(155, 'M/S. Marina Agrotag', '74, Kakrail Bhuiyan Mansion,  6th Floor, Ramna, Dhaka-1000', 2, 1, 'DSCC/00916/2024', '2024-11-10', '633940911931', NULL, NULL, NULL, NULL, NULL, 'P-53866/2024', '2024-10-24', 1, NULL, 'M/S. Marina Agrotag', '74, Kakrail Bhuiyan Mansion,  6th Floor, Ramna, Dhaka-1000', '01711227396', NULL, 1, 165, '2025-01-13 18:08:25', '2025-01-13 18:08:25'),
(156, 'MB Corporation', 'House-21, Road-3, Block-N, Eastern Housing, Rupnagar, Mirpur, Dhaka-1216', 1, 1, 'DNCC/009029/2024', '2024-09-04', '488582813172', '2023-11-06', '006480295-0401', '2024-11-10', '260326112390224', '2024-10-25', NULL, NULL, 1, NULL, 'MB Corporation', 'House-21, Road-3, Block-N, Eastern Housing, Rupnagar, Mirpur, Dhaka-1216,', '01711908805', NULL, 1, 166, '2025-01-13 18:28:04', '2025-01-13 18:28:04'),
(157, 'Morium Trading', 'Gonganathpur Kaundia, Aminbazar-1348, Saver, Dhaka, Bangladesh', 2, 1, '001119/2024 (Saver)', '2024-11-27', '450328949882', '2023-11-19', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Morium Trading', 'Gonganathpur Kaundia, Aminbazar-1348, Saver, Dhaka, Bangladesh', '01711642620', NULL, 1, 167, '2025-01-13 19:22:38', '2025-01-13 19:22:38'),
(158, 'Raisa Trade International', '124/B, Haji Osman Gani Road, Alobazar, Dhaka, Bangladesh.', 1, 1, 'DSCC/00977/2023', '2023-07-20', '1138-2184-1249/C-39', '2024-01-31', '003384435-0205', '2023-07-01', '260326112004420', '2020-11-18', NULL, NULL, 1, NULL, 'Raisa Trade International', '124/B, Haji Osman Gani Road, Alobazar, Dhaka, Bangladesh.', '01902892190', NULL, 1, 168, '2025-01-13 19:58:20', '2025-01-13 19:58:20'),
(159, 'Green Mart Associates', 'House # 60, AB Super Market (7th Floor), Road # 02,  Sector #03; PS: Uttara West; Dhaka-1230; Bangladesh', 1, 1, 'TRAD/DNCC/129110/2022', '2024-07-29', '121836738820', '2013-11-19', '006475847-0102', '2024-11-07', NULL, NULL, NULL, NULL, 1, NULL, 'Green Mart Associates', 'House # 60, AB Super Market (7th Floor), Road # 02,  Sector #03; PS: Uttara West; Dhaka-1230; Bangladesh', '01922778037', NULL, 1, 170, '2025-01-26 16:57:12', '2025-01-26 16:57:12'),
(160, 'Doctors Agro Tech', '80/22 Mymensingh Road, Nurjehan Tower (5th) Floor, Banglamotor, Dhaka-1000', 2, 1, 'TRAD/DSCC/010613/2024', '2024-09-23', '171168312444', '2024-09-24', '006586469-0208', '2025-01-05', '260326112162624', '2024-12-17', 'P-53511/2024', '2024-09-03', 1, NULL, 'Doctors Agro Tech', '80/22 Mymensingh Road, Nurjehan Tower (5th Floor), Banglamotor, Dhaka-1000', '01970-012040', NULL, 1, 171, '2025-01-29 15:31:06', '2025-01-29 15:31:06'),
(161, 'Green Mart Associates', 'House # 60, AB Super Market (7th Floor), Road # 02,  Sector #03; PS:Uttara West ; Dhaka-1230; Bangladesh', 1, 1, 'TRAD/DNCC/29110/2022', '2024-07-29', '121836738820', '2013-11-19', '006475847-0102', '2024-11-07', NULL, NULL, NULL, NULL, 1, NULL, 'Green Mart Associates', 'House # 60, AB Super Market (7th Floor), Road # 02,  Sector #03; PS:Uttara West ; Dhaka-1230; Bangladesh', '01922778037', NULL, 1, 172, '2025-02-01 13:11:29', '2025-02-01 13:11:29'),
(162, 'M/S. Tareq Enterprise', 'Gandharbpur, Rupasi-1464, Rupsi, Siddergonj, Narayongong.', 1, 1, '0005486/2022 (NCC)', '2024-09-24', '190011362430/C-6', '2024-11-03', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'M/S. Tareq Enterprise', 'Gandharbpur, Rupasi-1464, Rupsi, Siddergonj, Narayongong.', '01328972425', NULL, 1, 173, '2025-02-03 18:41:16', '2025-02-03 18:41:16'),
(163, 'M/S. Jahangir Enterprise', 'D-25, Bank Coloni, Nurjahan Villa, Saver, Dhaka.', 1, 1, '001183 (Saver Municipality)', '2024-07-31', '3427567349907', '2013-09-11', '003736652-0403', '2021-05-04', NULL, NULL, NULL, NULL, 1, NULL, 'M/S. Jahangir Enterprise', 'D-25, Bank Coloni, Nurjahan Villa, Saver, Dhaka.', '01715332640', NULL, 1, 174, '2025-02-03 19:52:31', '2025-02-03 19:52:31'),
(164, 'PGL CORPORATION', 'J.B.A Bhaban(2nd Floor) , 695,D.T Road , Baitul Jannat Mosjid Lane, Kadamtali, Chittagong.', 1, 1, '46030', '2017-03-01', '553822252320/Circle-72', '0023-02-07', '005667253-0503', '2023-08-08', '260315110204424', '2024-12-09', NULL, NULL, 1, NULL, 'PGL CORPORATION', 'J.B.A Bhaban(2nd Floor) , 695,D.T Road , Baitul Jannat Mosjid Lane, Kadamtali, Chittagong', '01825002263', NULL, 1, 175, '2025-02-04 18:59:19', '2025-02-04 18:59:19'),
(165, 'Rafee Trading Company', '4/614, Faruque Towar, Thana Road, Dewanganj -2030, Jamalpur.', 1, 1, '01932', '2023-09-17', '150365779059', '2019-02-17', '001772807-0407', '2020-12-30', '260361110194923', '2023-10-05', NULL, NULL, 1, NULL, 'M/S Rafee Trading Company', '4/614, Faruque Towar, Thana Road, Dewanganj -2030, Jamalpur', '01767758616', NULL, 1, 176, '2025-02-12 18:40:55', '2025-02-12 18:40:55');

-- --------------------------------------------------------

--
-- Table structure for table `info_documents`
--

CREATE TABLE `info_documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fileNomineePhoto` varchar(255) DEFAULT NULL,
  `fileNomineeSignature` varchar(255) DEFAULT NULL,
  `fileApplicantSignature` varchar(255) DEFAULT NULL,
  `fileCompanyLogo` varchar(255) DEFAULT NULL,
  `fileEducationCertificate` varchar(255) DEFAULT NULL,
  `fileTradeLicense` varchar(255) DEFAULT NULL,
  `fileTaxCertificate` varchar(255) DEFAULT NULL,
  `fileImportCertificate` varchar(255) DEFAULT NULL,
  `fileVatRegistration` varchar(255) DEFAULT NULL,
  `fileMemberNID` varchar(255) DEFAULT NULL,
  `fileApplicantPhoto` varchar(255) DEFAULT NULL,
  `fileNomineeNID` varchar(255) DEFAULT NULL,
  `fileVisitingCard` varchar(255) DEFAULT NULL,
  `fileArticlesCopy` varchar(255) DEFAULT NULL,
  `fileIncorporationCertificate` varchar(255) DEFAULT NULL,
  `filePartnershipDeed` varchar(255) DEFAULT NULL,
  `fileIndentingLicense` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `member_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `info_documents`
--

INSERT INTO `info_documents` (`id`, `fileNomineePhoto`, `fileNomineeSignature`, `fileApplicantSignature`, `fileCompanyLogo`, `fileEducationCertificate`, `fileTradeLicense`, `fileTaxCertificate`, `fileImportCertificate`, `fileVatRegistration`, `fileMemberNID`, `fileApplicantPhoto`, `fileNomineeNID`, `fileVisitingCard`, `fileArticlesCopy`, `fileIncorporationCertificate`, `filePartnershipDeed`, `fileIndentingLicense`, `status`, `member_id`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, 'document/member/3/CompanyLogo/FILECOMPANYLOGO_1720245144.jpg', NULL, 'document/member/3/TradeLicense/FILETRADELICENSE_1720245144.pdf', 'document/member/3/TaxCertificate/FILETAXCERTIFICATE_1720245144.pdf', 'document/member/3/ImportCertificate/FILEIMPORTCERTIFICATE_1720245144.pdf', 'document/member/3/VatRegistration/FILEVATREGISTRATION_1720245146.PDF', 'document/member/3/MemberNID/FILEMEMBERNID_1720245146.pdf', 'document/member/3/ApplicantPhoto/FILEAPPLICANTPHOTO_1720245146.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 3, '2024-07-06 09:52:26', '2024-07-06 09:52:26'),
(2, NULL, NULL, NULL, 'document/member/4/CompanyLogo/FILECOMPANYLOGO_1720256246.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/4/ApplicantPhoto/FILEAPPLICANTPHOTO_1720256246.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, '2024-07-06 12:57:26', '2024-07-06 12:57:26'),
(3, NULL, NULL, NULL, 'document/member/5/CompanyLogo/FILECOMPANYLOGO_1720258715.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/5/ApplicantPhoto/FILEAPPLICANTPHOTO_1720258715.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 5, '2024-07-06 13:38:35', '2024-07-06 13:38:35'),
(4, NULL, NULL, NULL, 'document/member/6/CompanyLogo/FILECOMPANYLOGO_1720259376.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/6/ApplicantPhoto/FILEAPPLICANTPHOTO_1720259376.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 6, '2024-07-06 13:49:36', '2024-07-06 13:49:36'),
(5, NULL, NULL, NULL, 'document/member/7/CompanyLogo/FILECOMPANYLOGO_1720266482.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/7/ApplicantPhoto/FILEAPPLICANTPHOTO_1720266482.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 7, '2024-07-06 15:48:02', '2024-07-06 15:48:02'),
(6, NULL, NULL, NULL, 'document/member/8/CompanyLogo/FILECOMPANYLOGO_1720267264.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/8/ApplicantPhoto/FILEAPPLICANTPHOTO_1720267264.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 8, '2024-07-06 16:01:04', '2024-07-06 16:01:04'),
(7, NULL, NULL, NULL, 'document/member/9/CompanyLogo/FILECOMPANYLOGO_1720270008.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/9/ApplicantPhoto/FILEAPPLICANTPHOTO_1720270009.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 9, '2024-07-06 16:46:49', '2024-07-06 16:46:49'),
(8, NULL, NULL, NULL, 'document/member/10/CompanyLogo/FILECOMPANYLOGO_1720273705.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/10/ApplicantPhoto/FILEAPPLICANTPHOTO_1720273705.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, '2024-07-06 17:48:25', '2024-07-06 17:48:25'),
(9, NULL, NULL, NULL, 'document/member/11/CompanyLogo/FILECOMPANYLOGO_1720274325.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/11/ApplicantPhoto/FILEAPPLICANTPHOTO_1720274325.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 11, '2024-07-06 17:58:45', '2024-07-06 17:58:45'),
(10, NULL, NULL, NULL, 'document/member/12/CompanyLogo/FILECOMPANYLOGO_1720275049.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/12/ApplicantPhoto/FILEAPPLICANTPHOTO_1720275049.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 12, '2024-07-06 18:10:49', '2024-07-06 18:10:49'),
(11, NULL, NULL, NULL, 'document/member/13/CompanyLogo/FILECOMPANYLOGO_1720275554.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/13/ApplicantPhoto/FILEAPPLICANTPHOTO_1720275555.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 13, '2024-07-06 18:19:15', '2024-07-06 18:19:15'),
(12, NULL, NULL, NULL, 'document/member/14/CompanyLogo/FILECOMPANYLOGO_1720276102.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/14/ApplicantPhoto/FILEAPPLICANTPHOTO_1720276102.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 14, '2024-07-06 18:28:22', '2024-07-06 18:28:22'),
(14, NULL, NULL, NULL, 'document/member/16/CompanyLogo/FILECOMPANYLOGO_1720280559.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/16/ApplicantPhoto/FILEAPPLICANTPHOTO_1720280559.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 16, '2024-07-06 19:42:39', '2024-07-06 19:42:39'),
(15, NULL, NULL, NULL, 'document/member/17/CompanyLogo/FILECOMPANYLOGO_1720325642.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/17/ApplicantPhoto/FILEAPPLICANTPHOTO_1720325643.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 17, '2024-07-07 08:14:03', '2024-07-07 08:14:03'),
(16, NULL, NULL, NULL, 'document/member/18/CompanyLogo/FILECOMPANYLOGO_1720326176.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/18/ApplicantPhoto/FILEAPPLICANTPHOTO_1720326177.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 18, '2024-07-07 08:22:57', '2024-07-07 08:22:57'),
(17, NULL, NULL, NULL, 'document/member/19/CompanyLogo/FILECOMPANYLOGO_1720578953.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/19/ApplicantPhoto/FILEAPPLICANTPHOTO_1720578953.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 19, '2024-07-10 06:35:54', '2024-07-10 06:35:54'),
(18, NULL, NULL, NULL, 'document/member/20/CompanyLogo/FILECOMPANYLOGO_1720580337.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/20/ApplicantPhoto/FILEAPPLICANTPHOTO_1720580337.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 20, '2024-07-10 06:58:57', '2024-07-10 06:58:57'),
(19, NULL, NULL, NULL, 'document/member/21/CompanyLogo/FILECOMPANYLOGO_1720580886.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/21/ApplicantPhoto/FILEAPPLICANTPHOTO_1720580886.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 21, '2024-07-10 07:08:06', '2024-07-10 07:08:06'),
(20, NULL, NULL, NULL, 'document/member/22/CompanyLogo/FILECOMPANYLOGO_1720581546.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/22/ApplicantPhoto/FILEAPPLICANTPHOTO_1720581546.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 22, '2024-07-10 07:19:06', '2024-07-10 07:19:06'),
(21, NULL, NULL, NULL, 'document/member/23/CompanyLogo/FILECOMPANYLOGO_1720582083.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/23/ApplicantPhoto/FILEAPPLICANTPHOTO_1720582083.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 23, '2024-07-10 07:28:03', '2024-07-10 07:28:03'),
(22, NULL, NULL, NULL, 'document/member/24/CompanyLogo/FILECOMPANYLOGO_1720582803.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/24/ApplicantPhoto/FILEAPPLICANTPHOTO_1720582803.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 24, '2024-07-10 07:40:03', '2024-07-10 07:40:03'),
(23, NULL, NULL, NULL, 'document/member/25/CompanyLogo/FILECOMPANYLOGO_1720583308.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/25/ApplicantPhoto/FILEAPPLICANTPHOTO_1720583308.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 25, '2024-07-10 07:48:28', '2024-07-10 07:48:28'),
(24, NULL, NULL, NULL, 'document/member/26/CompanyLogo/FILECOMPANYLOGO_1720583904.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/26/ApplicantPhoto/FILEAPPLICANTPHOTO_1720583904.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 26, '2024-07-10 07:58:24', '2024-07-10 07:58:24'),
(25, NULL, NULL, NULL, 'document/member/27/CompanyLogo/FILECOMPANYLOGO_1720584711.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/27/ApplicantPhoto/FILEAPPLICANTPHOTO_1720584711.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 27, '2024-07-10 08:11:51', '2024-07-10 08:11:51'),
(26, NULL, NULL, NULL, 'document/member/28/CompanyLogo/FILECOMPANYLOGO_1720673429.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/28/ApplicantPhoto/FILEAPPLICANTPHOTO_1720673429.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 28, '2024-07-11 08:50:29', '2024-07-11 08:50:29'),
(27, NULL, NULL, NULL, 'document/member/29/CompanyLogo/FILECOMPANYLOGO_1720673869.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/29/ApplicantPhoto/FILEAPPLICANTPHOTO_1720673869.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 29, '2024-07-11 08:57:49', '2024-07-11 08:57:49'),
(28, NULL, NULL, NULL, 'document/member/30/CompanyLogo/FILECOMPANYLOGO_1720674510.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/30/ApplicantPhoto/FILEAPPLICANTPHOTO_1720674510.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 30, '2024-07-11 09:08:30', '2024-07-11 09:08:30'),
(29, NULL, NULL, NULL, 'document/member/31/CompanyLogo/FILECOMPANYLOGO_1720675101.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/31/ApplicantPhoto/FILEAPPLICANTPHOTO_1720675101.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 31, '2024-07-11 09:18:21', '2024-07-11 09:18:21'),
(30, NULL, NULL, NULL, 'document/member/32/CompanyLogo/FILECOMPANYLOGO_1720676061.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/32/ApplicantPhoto/FILEAPPLICANTPHOTO_1720676061.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 32, '2024-07-11 09:34:21', '2024-07-11 09:34:21'),
(32, NULL, NULL, NULL, 'document/member/34/CompanyLogo/FILECOMPANYLOGO_1720679060.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/34/ApplicantPhoto/FILEAPPLICANTPHOTO_1720679060.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 34, '2024-07-11 10:24:20', '2024-07-11 10:24:20'),
(33, NULL, NULL, NULL, 'document/member/35/CompanyLogo/FILECOMPANYLOGO_1720679824.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/35/ApplicantPhoto/FILEAPPLICANTPHOTO_1720679825.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 35, '2024-07-11 10:37:05', '2024-07-11 10:37:05'),
(34, NULL, NULL, NULL, 'document/member/36/CompanyLogo/FILECOMPANYLOGO_1720680339.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/36/ApplicantPhoto/FILEAPPLICANTPHOTO_1720680339.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 36, '2024-07-11 10:45:39', '2024-07-11 10:45:39'),
(35, NULL, NULL, NULL, 'document/member/37/CompanyLogo/FILECOMPANYLOGO_1720680696.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/37/ApplicantPhoto/FILEAPPLICANTPHOTO_1720680696.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 37, '2024-07-11 10:51:36', '2024-07-11 10:51:36'),
(36, NULL, NULL, NULL, 'document/member/38/CompanyLogo/FILECOMPANYLOGO_1720681254.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/38/ApplicantPhoto/FILEAPPLICANTPHOTO_1720681254.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 38, '2024-07-11 11:00:54', '2024-07-11 11:00:54'),
(37, NULL, NULL, NULL, 'document/member/39/CompanyLogo/FILECOMPANYLOGO_1720707401.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/39/ApplicantPhoto/FILEAPPLICANTPHOTO_1720707401.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 39, '2024-07-11 18:16:41', '2024-07-11 18:16:41'),
(38, NULL, NULL, NULL, 'document/member/40/CompanyLogo/FILECOMPANYLOGO_1720707830.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/40/ApplicantPhoto/FILEAPPLICANTPHOTO_1720707830.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 40, '2024-07-11 18:23:50', '2024-07-11 18:23:50'),
(39, NULL, NULL, NULL, 'document/member/41/CompanyLogo/FILECOMPANYLOGO_1720708220.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/41/ApplicantPhoto/FILEAPPLICANTPHOTO_1720708220.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 41, '2024-07-11 18:30:20', '2024-07-11 18:30:20'),
(40, NULL, NULL, NULL, 'document/member/42/CompanyLogo/FILECOMPANYLOGO_1720708571.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/42/ApplicantPhoto/FILEAPPLICANTPHOTO_1720708571.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 42, '2024-07-11 18:36:11', '2024-07-11 18:36:11'),
(41, NULL, NULL, NULL, 'document/member/43/CompanyLogo/FILECOMPANYLOGO_1720712777.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/43/ApplicantPhoto/FILEAPPLICANTPHOTO_1720712778.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 43, '2024-07-11 19:46:18', '2024-07-11 19:46:18'),
(42, NULL, NULL, NULL, 'document/member/44/CompanyLogo/FILECOMPANYLOGO_1720716742.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/44/ApplicantPhoto/FILEAPPLICANTPHOTO_1720716743.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 44, '2024-07-11 20:52:23', '2024-07-11 20:52:23'),
(43, NULL, NULL, NULL, 'document/member/45/CompanyLogo/FILECOMPANYLOGO_1720717343.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/45/ApplicantPhoto/FILEAPPLICANTPHOTO_1720717343.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 45, '2024-07-11 21:02:23', '2024-07-11 21:02:23'),
(44, NULL, NULL, NULL, 'document/member/46/CompanyLogo/FILECOMPANYLOGO_1720754153.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/46/ApplicantPhoto/FILEAPPLICANTPHOTO_1720754154.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 46, '2024-07-12 07:15:54', '2024-07-12 07:15:54'),
(45, NULL, NULL, NULL, 'document/member/47/CompanyLogo/FILECOMPANYLOGO_1720844165.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/47/ApplicantPhoto/FILEAPPLICANTPHOTO_1720844165.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 47, '2024-07-13 08:16:05', '2024-07-13 08:16:05'),
(46, NULL, NULL, NULL, 'document/member/48/CompanyLogo/FILECOMPANYLOGO_1720844671.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/48/ApplicantPhoto/FILEAPPLICANTPHOTO_1720844671.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 48, '2024-07-13 08:24:31', '2024-07-13 08:24:31'),
(47, NULL, NULL, NULL, 'document/member/49/CompanyLogo/FILECOMPANYLOGO_1720845098.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/49/ApplicantPhoto/FILEAPPLICANTPHOTO_1720845098.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 49, '2024-07-13 08:31:38', '2024-07-13 08:31:38'),
(48, NULL, NULL, NULL, 'document/member/50/CompanyLogo/FILECOMPANYLOGO_1720845566.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/50/ApplicantPhoto/FILEAPPLICANTPHOTO_1720845566.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 50, '2024-07-13 08:39:26', '2024-07-13 08:39:26'),
(49, NULL, NULL, NULL, 'document/member/51/CompanyLogo/FILECOMPANYLOGO_1720846076.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/51/ApplicantPhoto/FILEAPPLICANTPHOTO_1720846076.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 51, '2024-07-13 08:47:56', '2024-07-13 08:47:56'),
(50, NULL, NULL, NULL, 'document/member/52/CompanyLogo/FILECOMPANYLOGO_1720846525.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/52/ApplicantPhoto/FILEAPPLICANTPHOTO_1720846525.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 52, '2024-07-13 08:55:25', '2024-07-13 08:55:25'),
(51, NULL, NULL, NULL, 'document/member/53/CompanyLogo/FILECOMPANYLOGO_1720847110.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/53/ApplicantPhoto/FILEAPPLICANTPHOTO_1720847110.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 53, '2024-07-13 09:05:10', '2024-07-13 09:05:10'),
(52, NULL, NULL, NULL, 'document/member/54/CompanyLogo/FILECOMPANYLOGO_1720847950.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/54/ApplicantPhoto/FILEAPPLICANTPHOTO_1720847950.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 54, '2024-07-13 09:19:10', '2024-07-13 09:19:10'),
(53, NULL, NULL, NULL, 'document/member/55/CompanyLogo/FILECOMPANYLOGO_1720848479.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/55/ApplicantPhoto/FILEAPPLICANTPHOTO_1720848479.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 55, '2024-07-13 09:27:59', '2024-07-13 09:27:59'),
(54, NULL, NULL, NULL, 'document/member/56/CompanyLogo/FILECOMPANYLOGO_1720849283.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/56/ApplicantPhoto/FILEAPPLICANTPHOTO_1720849283.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 56, '2024-07-13 09:41:23', '2024-07-13 09:41:23'),
(55, NULL, NULL, NULL, 'document/member/57/CompanyLogo/FILECOMPANYLOGO_1720849626.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/57/ApplicantPhoto/FILEAPPLICANTPHOTO_1720849626.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 57, '2024-07-13 09:47:06', '2024-07-13 09:47:06'),
(56, NULL, NULL, NULL, 'document/member/58/CompanyLogo/FILECOMPANYLOGO_1720850059.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/58/ApplicantPhoto/FILEAPPLICANTPHOTO_1720850059.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 58, '2024-07-13 09:54:19', '2024-07-13 09:54:19'),
(57, NULL, NULL, NULL, 'document/member/59/CompanyLogo/FILECOMPANYLOGO_1720850500.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/59/ApplicantPhoto/FILEAPPLICANTPHOTO_1720850500.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 59, '2024-07-13 10:01:40', '2024-07-13 10:01:40'),
(58, NULL, NULL, NULL, 'document/member/60/CompanyLogo/FILECOMPANYLOGO_1720850871.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/60/ApplicantPhoto/FILEAPPLICANTPHOTO_1720850871.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 60, '2024-07-13 10:07:51', '2024-07-13 10:07:51'),
(59, NULL, NULL, NULL, 'document/member/61/CompanyLogo/FILECOMPANYLOGO_1720851360.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/61/ApplicantPhoto/FILEAPPLICANTPHOTO_1720851360.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 61, '2024-07-13 10:16:00', '2024-07-13 10:16:00'),
(60, NULL, NULL, NULL, 'document/member/62/CompanyLogo/FILECOMPANYLOGO_1720851766.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/62/ApplicantPhoto/FILEAPPLICANTPHOTO_1720851766.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 62, '2024-07-13 10:22:46', '2024-07-13 10:22:46'),
(61, NULL, NULL, NULL, 'document/member/63/CompanyLogo/FILECOMPANYLOGO_1720852354.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/63/ApplicantPhoto/FILEAPPLICANTPHOTO_1720852354.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 63, '2024-07-13 10:32:34', '2024-07-13 10:32:34'),
(62, NULL, NULL, NULL, 'document/member/64/CompanyLogo/FILECOMPANYLOGO_1720888034.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/64/ApplicantPhoto/FILEAPPLICANTPHOTO_1720888035.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 64, '2024-07-13 20:27:15', '2024-07-13 20:27:15'),
(63, NULL, NULL, NULL, 'document/member/65/CompanyLogo/FILECOMPANYLOGO_1720888893.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/65/ApplicantPhoto/FILEAPPLICANTPHOTO_1720888893.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 65, '2024-07-13 20:41:33', '2024-07-13 20:41:33'),
(64, NULL, NULL, NULL, 'document/member/66/CompanyLogo/FILECOMPANYLOGO_1720889685.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/66/ApplicantPhoto/FILEAPPLICANTPHOTO_1720889685.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 66, '2024-07-13 20:54:45', '2024-07-13 20:54:45'),
(65, NULL, NULL, NULL, 'document/member/67/CompanyLogo/FILECOMPANYLOGO_1720890324.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/67/ApplicantPhoto/FILEAPPLICANTPHOTO_1720890324.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 67, '2024-07-13 21:05:24', '2024-07-13 21:05:24'),
(66, NULL, NULL, NULL, 'document/member/68/CompanyLogo/FILECOMPANYLOGO_1720890762.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/68/ApplicantPhoto/FILEAPPLICANTPHOTO_1720890762.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 68, '2024-07-13 21:12:42', '2024-07-13 21:12:42'),
(67, NULL, NULL, NULL, 'document/member/69/CompanyLogo/FILECOMPANYLOGO_1720891218.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/69/ApplicantPhoto/FILEAPPLICANTPHOTO_1720891218.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 69, '2024-07-13 21:20:18', '2024-07-13 21:20:18'),
(68, NULL, NULL, NULL, 'document/member/70/CompanyLogo/FILECOMPANYLOGO_1720891928.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/70/ApplicantPhoto/FILEAPPLICANTPHOTO_1720891928.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 70, '2024-07-13 21:32:08', '2024-07-13 21:32:08'),
(69, NULL, NULL, NULL, 'document/member/71/CompanyLogo/FILECOMPANYLOGO_1720917192.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/71/ApplicantPhoto/FILEAPPLICANTPHOTO_1720917192.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 71, '2024-07-14 04:33:12', '2024-07-14 04:33:12'),
(70, NULL, NULL, NULL, 'document/member/72/CompanyLogo/FILECOMPANYLOGO_1720917787.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/72/ApplicantPhoto/FILEAPPLICANTPHOTO_1720917787.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 72, '2024-07-14 04:43:07', '2024-07-14 04:43:07'),
(71, NULL, NULL, NULL, 'document/member/73/CompanyLogo/FILECOMPANYLOGO_1720918236.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/73/ApplicantPhoto/FILEAPPLICANTPHOTO_1720918236.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 73, '2024-07-14 04:50:36', '2024-07-14 04:50:36'),
(72, NULL, NULL, NULL, 'document/member/74/CompanyLogo/FILECOMPANYLOGO_1720919017.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/74/ApplicantPhoto/FILEAPPLICANTPHOTO_1720919017.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 74, '2024-07-14 05:03:37', '2024-07-14 05:03:37'),
(73, NULL, NULL, NULL, 'document/member/75/CompanyLogo/FILECOMPANYLOGO_1720919817.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/75/ApplicantPhoto/FILEAPPLICANTPHOTO_1720919817.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 75, '2024-07-14 05:16:57', '2024-07-14 05:16:57'),
(74, NULL, NULL, NULL, 'document/member/76/CompanyLogo/FILECOMPANYLOGO_1720920772.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/76/ApplicantPhoto/FILEAPPLICANTPHOTO_1720920772.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 76, '2024-07-14 05:32:52', '2024-07-14 05:32:52'),
(75, NULL, NULL, NULL, 'document/member/77/CompanyLogo/FILECOMPANYLOGO_1720921250.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/77/ApplicantPhoto/FILEAPPLICANTPHOTO_1720921250.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 77, '2024-07-14 05:40:50', '2024-07-14 05:40:50'),
(76, NULL, NULL, NULL, 'document/member/78/CompanyLogo/FILECOMPANYLOGO_1720921876.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/78/ApplicantPhoto/FILEAPPLICANTPHOTO_1720921876.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 78, '2024-07-14 05:51:16', '2024-07-14 05:51:16'),
(77, NULL, NULL, NULL, 'document/member/79/CompanyLogo/FILECOMPANYLOGO_1720922422.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/79/ApplicantPhoto/FILEAPPLICANTPHOTO_1720922422.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 79, '2024-07-14 06:00:22', '2024-07-14 06:00:22'),
(78, NULL, NULL, NULL, 'document/member/80/CompanyLogo/FILECOMPANYLOGO_1720922992.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/80/ApplicantPhoto/FILEAPPLICANTPHOTO_1720922992.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 80, '2024-07-14 06:09:53', '2024-07-14 06:09:53'),
(79, NULL, NULL, NULL, 'document/member/81/CompanyLogo/FILECOMPANYLOGO_1720923425.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/81/ApplicantPhoto/FILEAPPLICANTPHOTO_1720923425.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 81, '2024-07-14 06:17:05', '2024-07-14 06:17:05'),
(80, NULL, NULL, NULL, 'document/member/82/CompanyLogo/FILECOMPANYLOGO_1720923897.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/82/ApplicantPhoto/FILEAPPLICANTPHOTO_1720923897.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 82, '2024-07-14 06:24:57', '2024-07-14 06:24:57'),
(81, NULL, NULL, NULL, 'document/member/83/CompanyLogo/FILECOMPANYLOGO_1720924345.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/83/ApplicantPhoto/FILEAPPLICANTPHOTO_1720924345.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 83, '2024-07-14 06:32:25', '2024-07-14 06:32:25'),
(82, NULL, NULL, NULL, 'document/member/84/CompanyLogo/FILECOMPANYLOGO_1720924702.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/84/ApplicantPhoto/FILEAPPLICANTPHOTO_1720924702.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 84, '2024-07-14 06:38:22', '2024-07-14 06:38:22'),
(83, NULL, NULL, NULL, 'document/member/85/CompanyLogo/FILECOMPANYLOGO_1720925294.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/85/ApplicantPhoto/FILEAPPLICANTPHOTO_1720925294.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 85, '2024-07-14 06:48:14', '2024-07-14 06:48:14'),
(86, NULL, NULL, NULL, 'document/member/88/CompanyLogo/FILECOMPANYLOGO_1722009351.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/88/ApplicantPhoto/FILEAPPLICANTPHOTO_1722009351.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 88, '2024-07-26 19:55:51', '2024-07-26 19:55:51'),
(87, NULL, NULL, NULL, 'document/member/89/CompanyLogo/FILECOMPANYLOGO_1722009832.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/89/ApplicantPhoto/FILEAPPLICANTPHOTO_1722009832.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 89, '2024-07-26 20:03:52', '2024-07-26 20:03:52'),
(88, NULL, NULL, NULL, 'document/member/90/CompanyLogo/FILECOMPANYLOGO_1722010253.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/90/ApplicantPhoto/FILEAPPLICANTPHOTO_1722010253.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 90, '2024-07-26 20:10:53', '2024-07-26 20:10:53'),
(89, NULL, NULL, NULL, 'document/member/91/CompanyLogo/FILECOMPANYLOGO_1722010668.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/91/ApplicantPhoto/FILEAPPLICANTPHOTO_1722010668.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 91, '2024-07-26 20:17:48', '2024-07-26 20:17:48'),
(90, NULL, NULL, NULL, 'document/member/92/CompanyLogo/FILECOMPANYLOGO_1722011113.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/92/ApplicantPhoto/FILEAPPLICANTPHOTO_1722011113.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 92, '2024-07-26 20:25:13', '2024-07-26 20:25:13'),
(91, NULL, NULL, NULL, 'document/member/93/CompanyLogo/FILECOMPANYLOGO_1722011745.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/93/ApplicantPhoto/FILEAPPLICANTPHOTO_1722011745.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 93, '2024-07-26 20:35:45', '2024-07-26 20:35:45'),
(92, NULL, NULL, NULL, 'document/member/94/CompanyLogo/FILECOMPANYLOGO_1722012334.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/94/ApplicantPhoto/FILEAPPLICANTPHOTO_1722012334.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 94, '2024-07-26 20:45:34', '2024-07-26 20:45:34'),
(93, NULL, NULL, NULL, 'document/member/95/CompanyLogo/FILECOMPANYLOGO_1722012852.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/95/ApplicantPhoto/FILEAPPLICANTPHOTO_1722012852.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 95, '2024-07-26 20:54:12', '2024-07-26 20:54:12'),
(94, NULL, NULL, NULL, 'document/member/96/CompanyLogo/FILECOMPANYLOGO_1722013319.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/96/ApplicantPhoto/FILEAPPLICANTPHOTO_1722013319.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 96, '2024-07-26 21:01:59', '2024-07-26 21:01:59'),
(95, NULL, NULL, NULL, 'document/member/97/CompanyLogo/FILECOMPANYLOGO_1722013723.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/97/ApplicantPhoto/FILEAPPLICANTPHOTO_1722013723.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 97, '2024-07-26 21:08:43', '2024-07-26 21:08:43'),
(96, NULL, NULL, NULL, 'document/member/98/CompanyLogo/FILECOMPANYLOGO_1722014240.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/98/ApplicantPhoto/FILEAPPLICANTPHOTO_1722014240.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 98, '2024-07-26 21:17:20', '2024-07-26 21:17:20'),
(97, NULL, NULL, NULL, 'document/member/99/CompanyLogo/FILECOMPANYLOGO_1722014808.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/99/ApplicantPhoto/FILEAPPLICANTPHOTO_1722014808.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 99, '2024-07-26 21:26:48', '2024-07-26 21:26:48'),
(98, NULL, NULL, NULL, 'document/member/100/CompanyLogo/FILECOMPANYLOGO_1722044313.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/100/ApplicantPhoto/FILEAPPLICANTPHOTO_1722044313.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 100, '2024-07-27 05:38:33', '2024-07-27 05:38:33'),
(99, NULL, NULL, NULL, 'document/member/101/CompanyLogo/FILECOMPANYLOGO_1722044758.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/101/ApplicantPhoto/FILEAPPLICANTPHOTO_1722044758.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 101, '2024-07-27 05:45:58', '2024-07-27 05:45:58'),
(101, NULL, NULL, NULL, 'document/member/103/CompanyLogo/FILECOMPANYLOGO_1722045687.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/103/ApplicantPhoto/FILEAPPLICANTPHOTO_1722045687.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 103, '2024-07-27 06:01:27', '2024-07-27 06:01:27'),
(102, NULL, NULL, NULL, 'document/member/104/CompanyLogo/FILECOMPANYLOGO_1722046104.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/104/ApplicantPhoto/FILEAPPLICANTPHOTO_1722046104.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 104, '2024-07-27 06:08:24', '2024-07-27 06:08:24'),
(103, NULL, NULL, NULL, 'document/member/105/CompanyLogo/FILECOMPANYLOGO_1722046783.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/105/ApplicantPhoto/FILEAPPLICANTPHOTO_1722046783.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 105, '2024-07-27 06:19:43', '2024-07-27 06:19:43'),
(104, NULL, NULL, NULL, 'document/member/106/CompanyLogo/FILECOMPANYLOGO_1722047420.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/106/ApplicantPhoto/FILEAPPLICANTPHOTO_1722047420.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 106, '2024-07-27 06:30:20', '2024-07-27 06:30:20'),
(105, NULL, NULL, NULL, 'document/member/107/CompanyLogo/FILECOMPANYLOGO_1722047876.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/107/ApplicantPhoto/FILEAPPLICANTPHOTO_1722047876.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 107, '2024-07-27 06:37:56', '2024-07-27 06:37:56'),
(106, NULL, NULL, NULL, 'document/member/108/CompanyLogo/FILECOMPANYLOGO_1722048255.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/108/ApplicantPhoto/FILEAPPLICANTPHOTO_1722048255.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 108, '2024-07-27 06:44:15', '2024-07-27 06:44:15'),
(107, NULL, NULL, NULL, 'document/member/109/CompanyLogo/FILECOMPANYLOGO_1722048758.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/109/ApplicantPhoto/FILEAPPLICANTPHOTO_1722048758.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 109, '2024-07-27 06:52:38', '2024-07-27 06:52:38'),
(108, NULL, NULL, NULL, 'document/member/110/CompanyLogo/FILECOMPANYLOGO_1722049168.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/110/ApplicantPhoto/FILEAPPLICANTPHOTO_1722049168.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 110, '2024-07-27 06:59:28', '2024-07-27 06:59:28'),
(109, NULL, NULL, NULL, 'document/member/111/CompanyLogo/FILECOMPANYLOGO_1722049620.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/111/ApplicantPhoto/FILEAPPLICANTPHOTO_1722049620.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 111, '2024-07-27 07:07:00', '2024-07-27 07:07:00'),
(110, NULL, NULL, NULL, 'document/member/112/CompanyLogo/FILECOMPANYLOGO_1722050078.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/112/ApplicantPhoto/FILEAPPLICANTPHOTO_1722050078.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 112, '2024-07-27 07:14:38', '2024-07-27 07:14:38'),
(111, NULL, NULL, NULL, 'document/member/113/CompanyLogo/FILECOMPANYLOGO_1722050874.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/113/ApplicantPhoto/FILEAPPLICANTPHOTO_1722050874.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 113, '2024-07-27 07:27:54', '2024-07-27 07:27:54'),
(112, NULL, NULL, NULL, 'document/member/114/CompanyLogo/FILECOMPANYLOGO_1722051266.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/114/ApplicantPhoto/FILEAPPLICANTPHOTO_1722051266.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 114, '2024-07-27 07:34:26', '2024-07-27 07:34:26'),
(113, NULL, NULL, NULL, 'document/member/115/CompanyLogo/FILECOMPANYLOGO_1722051766.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/115/ApplicantPhoto/FILEAPPLICANTPHOTO_1722051766.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 115, '2024-07-27 07:42:46', '2024-07-27 07:42:46'),
(114, NULL, NULL, NULL, 'document/member/116/CompanyLogo/FILECOMPANYLOGO_1722053901.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/116/ApplicantPhoto/FILEAPPLICANTPHOTO_1722053901.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 116, '2024-07-27 08:18:21', '2024-07-27 08:18:21'),
(115, NULL, NULL, NULL, 'document/member/117/CompanyLogo/FILECOMPANYLOGO_1722138917.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/117/ApplicantPhoto/FILEAPPLICANTPHOTO_1722138917.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 117, '2024-07-28 07:55:17', '2024-07-28 07:55:17'),
(116, NULL, NULL, NULL, 'document/member/118/CompanyLogo/FILECOMPANYLOGO_1722139327.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/118/ApplicantPhoto/FILEAPPLICANTPHOTO_1722139327.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 118, '2024-07-28 08:02:07', '2024-07-28 08:02:07'),
(117, NULL, NULL, NULL, 'document/member/119/CompanyLogo/FILECOMPANYLOGO_1722139827.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/119/ApplicantPhoto/FILEAPPLICANTPHOTO_1722139827.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 119, '2024-07-28 08:10:27', '2024-07-28 08:10:27'),
(118, NULL, NULL, NULL, 'document/member/120/CompanyLogo/FILECOMPANYLOGO_1722140269.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/120/ApplicantPhoto/FILEAPPLICANTPHOTO_1722140269.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 120, '2024-07-28 08:17:49', '2024-07-28 08:17:49'),
(119, NULL, NULL, NULL, 'document/member/121/CompanyLogo/FILECOMPANYLOGO_1722140838.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/121/ApplicantPhoto/FILEAPPLICANTPHOTO_1722140838.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 121, '2024-07-28 08:27:18', '2024-07-28 08:27:18'),
(120, NULL, NULL, NULL, 'document/member/122/CompanyLogo/FILECOMPANYLOGO_1722141391.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/122/ApplicantPhoto/FILEAPPLICANTPHOTO_1722141391.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 122, '2024-07-28 08:36:31', '2024-07-28 08:36:31'),
(121, NULL, NULL, NULL, 'document/member/123/CompanyLogo/FILECOMPANYLOGO_1722141772.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/123/ApplicantPhoto/FILEAPPLICANTPHOTO_1722141772.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 123, '2024-07-28 08:42:52', '2024-07-28 08:42:52'),
(122, NULL, NULL, NULL, 'document/member/124/CompanyLogo/FILECOMPANYLOGO_1722142243.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/124/ApplicantPhoto/FILEAPPLICANTPHOTO_1722142243.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 124, '2024-07-28 08:50:43', '2024-07-28 08:50:43'),
(123, NULL, NULL, NULL, 'document/member/125/CompanyLogo/FILECOMPANYLOGO_1722142626.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/125/ApplicantPhoto/FILEAPPLICANTPHOTO_1722142626.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 125, '2024-07-28 08:57:06', '2024-07-28 08:57:06'),
(124, NULL, NULL, NULL, 'document/member/126/CompanyLogo/FILECOMPANYLOGO_1722142942.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/126/ApplicantPhoto/FILEAPPLICANTPHOTO_1722142942.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 126, '2024-07-28 09:02:22', '2024-07-28 09:02:22'),
(125, NULL, NULL, NULL, 'document/member/127/CompanyLogo/FILECOMPANYLOGO_1722143288.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/127/ApplicantPhoto/FILEAPPLICANTPHOTO_1722143288.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 127, '2024-07-28 09:08:08', '2024-07-28 09:08:08'),
(126, NULL, NULL, NULL, 'document/member/128/CompanyLogo/FILECOMPANYLOGO_1722309553.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/128/ApplicantPhoto/FILEAPPLICANTPHOTO_1722309554.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 128, '2024-07-30 07:19:19', '2024-07-30 07:19:19'),
(127, NULL, NULL, NULL, 'document/member/129/CompanyLogo/FILECOMPANYLOGO_1722310436.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/129/ApplicantPhoto/FILEAPPLICANTPHOTO_1722310436.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 129, '2024-07-30 07:33:56', '2024-07-30 07:33:56'),
(128, NULL, NULL, NULL, 'document/member/130/CompanyLogo/FILECOMPANYLOGO_1722311182.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/130/ApplicantPhoto/FILEAPPLICANTPHOTO_1722311182.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 130, '2024-07-30 07:46:22', '2024-07-30 07:46:22'),
(129, NULL, NULL, NULL, 'document/member/131/CompanyLogo/FILECOMPANYLOGO_1722311993.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/131/ApplicantPhoto/FILEAPPLICANTPHOTO_1722311993.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 131, '2024-07-30 07:59:53', '2024-07-30 07:59:53'),
(130, NULL, NULL, NULL, 'document/member/132/CompanyLogo/FILECOMPANYLOGO_1722312363.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/132/ApplicantPhoto/FILEAPPLICANTPHOTO_1722312363.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 132, '2024-07-30 08:06:03', '2024-07-30 08:06:03'),
(131, NULL, NULL, NULL, 'document/member/133/CompanyLogo/FILECOMPANYLOGO_1722312994.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/133/ApplicantPhoto/FILEAPPLICANTPHOTO_1722312994.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 133, '2024-07-30 08:16:34', '2024-07-30 08:16:34'),
(132, NULL, NULL, NULL, 'document/member/134/CompanyLogo/FILECOMPANYLOGO_1724209722.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/134/ApplicantPhoto/FILEAPPLICANTPHOTO_1724209723.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 134, '2024-08-21 07:08:43', '2024-08-21 07:08:43'),
(133, NULL, NULL, NULL, 'document/member/135/CompanyLogo/FILECOMPANYLOGO_1724210587.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/135/ApplicantPhoto/FILEAPPLICANTPHOTO_1724210588.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 135, '2024-08-21 07:23:08', '2024-08-21 07:23:08'),
(134, NULL, NULL, NULL, 'document/member/136/CompanyLogo/FILECOMPANYLOGO_1724234335.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/136/ApplicantPhoto/FILEAPPLICANTPHOTO_1724234335.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 136, '2024-08-21 13:58:55', '2024-08-21 13:58:55'),
(135, NULL, NULL, NULL, 'document/member/137/CompanyLogo/FILECOMPANYLOGO_1724236796.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/137/ApplicantPhoto/FILEAPPLICANTPHOTO_1724236797.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 137, '2024-08-21 14:39:57', '2024-08-21 14:39:57'),
(136, NULL, NULL, NULL, 'document/member/138/CompanyLogo/FILECOMPANYLOGO_1724306223.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/138/ApplicantPhoto/FILEAPPLICANTPHOTO_1724306223.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 138, '2024-08-22 09:57:03', '2024-08-22 09:57:03'),
(137, NULL, NULL, NULL, 'document/member/139/CompanyLogo/FILECOMPANYLOGO_1724307180.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/139/ApplicantPhoto/FILEAPPLICANTPHOTO_1724307180.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 139, '2024-08-22 10:13:00', '2024-08-22 10:13:00'),
(138, NULL, NULL, NULL, 'document/member/140/CompanyLogo/FILECOMPANYLOGO_1724307981.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/140/ApplicantPhoto/FILEAPPLICANTPHOTO_1724307981.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 140, '2024-08-22 10:26:21', '2024-08-22 10:26:21'),
(139, NULL, NULL, NULL, 'document/member/141/CompanyLogo/FILECOMPANYLOGO_1724309506.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/141/ApplicantPhoto/FILEAPPLICANTPHOTO_1724309506.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 141, '2024-08-22 10:51:46', '2024-08-22 10:51:46'),
(140, NULL, NULL, NULL, 'document/member/142/CompanyLogo/FILECOMPANYLOGO_1725677763.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/142/ApplicantPhoto/FILEAPPLICANTPHOTO_1725677764.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 142, '2024-09-07 06:56:04', '2024-09-07 06:56:04'),
(141, NULL, NULL, NULL, 'document/member/151/CompanyLogo/FILECOMPANYLOGO_1725680117.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/151/ApplicantPhoto/FILEAPPLICANTPHOTO_1725680117.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 151, '2024-09-07 07:35:17', '2024-09-07 07:35:17'),
(142, NULL, NULL, NULL, 'document/member/152/CompanyLogo/FILECOMPANYLOGO_1725681038.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/152/ApplicantPhoto/FILEAPPLICANTPHOTO_1725681038.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 152, '2024-09-07 07:50:38', '2024-09-07 07:50:38'),
(143, NULL, NULL, NULL, 'document/member/153/CompanyLogo/FILECOMPANYLOGO_1725681906.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/153/ApplicantPhoto/FILEAPPLICANTPHOTO_1725681906.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 153, '2024-09-07 08:05:06', '2024-09-07 08:05:06'),
(144, NULL, NULL, NULL, 'document/member/154/CompanyLogo/FILECOMPANYLOGO_1726486668.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/154/ApplicantPhoto/FILEAPPLICANTPHOTO_1726486669.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 154, '2024-09-16 15:37:49', '2024-09-16 15:37:49'),
(145, NULL, NULL, NULL, 'document/member/155/CompanyLogo/FILECOMPANYLOGO_1727245223.png', NULL, 'document/member/155/TradeLicense/FILETRADELICENSE_1727245223.pdf', 'document/member/155/TaxCertificate/FILETAXCERTIFICATE_1727245223.pdf', 'document/member/155/ImportCertificate/FILEIMPORTCERTIFICATE_1727245227.pdf', 'document/member/155/VatRegistration/FILEVATREGISTRATION_1727245227.jpg', NULL, 'document/member/155/ApplicantPhoto/FILEAPPLICANTPHOTO_1727245227.jpg', NULL, NULL, 'document/member/155/fileArticlesCopy/FILEARTICLESCOPY_1727245227.pdf', 'document/member/155/IncorporationCertificate/FILEINCORPORATIONCERTIFICATE_1727245227.jpg', NULL, 'document/member/155/IndentingLicense/FILEINDENTINGLICENSE_1727245230.pdf', 1, 155, '2024-09-25 10:20:30', '2024-09-25 10:20:30'),
(146, NULL, NULL, NULL, 'document/member/156/CompanyLogo/FILECOMPANYLOGO_1727957758.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/156/ApplicantPhoto/FILEAPPLICANTPHOTO_1727957758.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 156, '2024-10-03 16:15:58', '2024-10-03 16:15:58'),
(147, NULL, NULL, NULL, 'document/member/157/CompanyLogo/FILECOMPANYLOGO_1727960412.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/157/ApplicantPhoto/FILEAPPLICANTPHOTO_1727960412.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 157, '2024-10-03 17:00:12', '2024-10-03 17:00:12'),
(148, NULL, NULL, NULL, NULL, NULL, 'document/member/158/TradeLicense/FILETRADELICENSE_1731729474.jpeg', 'document/member/158/TaxCertificate/FILETAXCERTIFICATE_1731729474.pdf', NULL, NULL, NULL, 'document/member/158/ApplicantPhoto/FILEAPPLICANTPHOTO_1731729474.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 158, '2024-11-16 08:57:54', '2024-11-16 08:57:54'),
(149, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/159/ApplicantPhoto/FILEAPPLICANTPHOTO_1731730658.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 159, '2024-11-16 09:17:38', '2024-11-16 09:17:38'),
(150, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/160/ApplicantPhoto/FILEAPPLICANTPHOTO_1731733357.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 160, '2024-11-16 10:02:37', '2024-11-16 10:02:37'),
(151, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/161/MemberNID/FILEMEMBERNID_1731734301.pdf', 'document/member/161/ApplicantPhoto/FILEAPPLICANTPHOTO_1731734301.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 161, '2024-11-16 10:18:24', '2024-11-16 10:18:24'),
(152, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/162/ApplicantPhoto/FILEAPPLICANTPHOTO_1731736860.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 162, '2024-11-16 11:01:00', '2024-11-16 11:01:00'),
(153, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/163/ApplicantPhoto/FILEAPPLICANTPHOTO_1731737811.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 163, '2024-11-16 11:16:51', '2024-11-16 11:16:51'),
(154, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/164/ApplicantPhoto/FILEAPPLICANTPHOTO_1731738686.gif', NULL, NULL, NULL, NULL, NULL, NULL, 1, 164, '2024-11-16 11:31:26', '2024-11-16 11:31:26'),
(155, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/165/ApplicantPhoto/FILEAPPLICANTPHOTO_1736773705.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 165, '2025-01-13 18:08:25', '2025-01-13 18:08:25'),
(156, NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/166/TaxCertificate/FILETAXCERTIFICATE_1736774884.jpg', NULL, NULL, NULL, 'document/member/166/ApplicantPhoto/FILEAPPLICANTPHOTO_1736774884.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 166, '2025-01-13 18:28:04', '2025-01-13 18:28:04'),
(157, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/167/ApplicantPhoto/FILEAPPLICANTPHOTO_1736778158.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 167, '2025-01-13 19:22:38', '2025-01-13 19:22:38'),
(158, NULL, NULL, NULL, NULL, NULL, 'document/member/168/TradeLicense/FILETRADELICENSE_1736780300.pdf', NULL, NULL, NULL, NULL, 'document/member/168/ApplicantPhoto/FILEAPPLICANTPHOTO_1736780300.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 168, '2025-01-13 19:58:20', '2025-01-13 19:58:20'),
(159, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/170/ApplicantPhoto/FILEAPPLICANTPHOTO_1737892632.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 170, '2025-01-26 16:57:12', '2025-01-26 16:57:12'),
(160, 'document/member/171/NomineePhoto/FILENOMINEEPHOTO_1738146666.jpg', NULL, NULL, NULL, NULL, 'document/member/171/TradeLicense/FILETRADELICENSE_1738146666.pdf', NULL, 'document/member/171/ImportCertificate/FILEIMPORTCERTIFICATE_1738146666.pdf', 'document/member/171/VatRegistration/FILEVATREGISTRATION_1738146666.PDF', 'document/member/171/MemberNID/FILEMEMBERNID_1738146666.pdf', 'document/member/171/ApplicantPhoto/FILEAPPLICANTPHOTO_1738146666.jpeg', NULL, NULL, NULL, NULL, 'document/member/171/PartnershipDeed/FILEPARTNERSHIPDEED_1738146666.pdf', NULL, 1, 171, '2025-01-29 15:31:12', '2025-01-29 15:31:12'),
(161, 'document/member/172/NomineePhoto/FILENOMINEEPHOTO_1738397489.jpeg', NULL, NULL, NULL, NULL, 'document/member/172/TradeLicense/FILETRADELICENSE_1738397489.pdf', 'document/member/172/TaxCertificate/FILETAXCERTIFICATE_1738397489.pdf', NULL, 'document/member/172/VatRegistration/FILEVATREGISTRATION_1738397489.PDF', 'document/member/172/MemberNID/FILEMEMBERNID_1738397490.pdf', 'document/member/172/ApplicantPhoto/FILEAPPLICANTPHOTO_1738397490.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 172, '2025-02-01 13:11:30', '2025-02-01 13:11:30'),
(162, NULL, NULL, NULL, NULL, NULL, 'document/member/173/TradeLicense/FILETRADELICENSE_1738590076.pdf', 'document/member/173/TaxCertificate/FILETAXCERTIFICATE_1738590076.jpg', NULL, NULL, NULL, 'document/member/173/ApplicantPhoto/FILEAPPLICANTPHOTO_1738590076.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 173, '2025-02-03 18:41:16', '2025-02-03 18:41:16'),
(163, NULL, NULL, NULL, NULL, NULL, 'document/member/174/TradeLicense/FILETRADELICENSE_1738594351.jpg', 'document/member/174/TaxCertificate/FILETAXCERTIFICATE_1738594351.jpg', NULL, 'document/member/174/VatRegistration/FILEVATREGISTRATION_1738594351.jpg', 'document/member/174/MemberNID/FILEMEMBERNID_1738594351.jpg', 'document/member/174/ApplicantPhoto/FILEAPPLICANTPHOTO_1738594351.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 174, '2025-02-03 19:52:31', '2025-02-03 19:52:31'),
(164, 'document/member/175/NomineePhoto/FILENOMINEEPHOTO_1738677559.jpeg', NULL, NULL, NULL, NULL, 'document/member/175/TradeLicense/FILETRADELICENSE_1738677559.pdf', 'document/member/175/TaxCertificate/FILETAXCERTIFICATE_1738677560.pdf', NULL, 'document/member/175/VatRegistration/FILEVATREGISTRATION_1738677560.jpeg', 'document/member/175/MemberNID/FILEMEMBERNID_1738677560.jpeg', 'document/member/175/ApplicantPhoto/FILEAPPLICANTPHOTO_1738677560.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 175, '2025-02-04 18:59:20', '2025-02-04 18:59:20'),
(165, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'document/member/176/ApplicantPhoto/FILEAPPLICANTPHOTO_1739367655.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 176, '2025-02-12 18:40:55', '2025-02-12 18:40:55');

-- --------------------------------------------------------

--
-- Table structure for table `info_others`
--

CREATE TABLE `info_others` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `about_me` text DEFAULT NULL,
  `nick_name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `cover_photo` varchar(255) DEFAULT NULL,
  `favorite` varchar(255) DEFAULT NULL,
  `facebook_url` varchar(255) DEFAULT NULL,
  `youtube_url` varchar(255) DEFAULT NULL,
  `instagram_url` varchar(255) DEFAULT NULL,
  `twitter_url` varchar(255) DEFAULT NULL,
  `linkedin_url` varchar(255) DEFAULT NULL,
  `whatsapp_url` varchar(255) DEFAULT NULL,
  `telegram_url` varchar(255) DEFAULT NULL,
  `snapchat_url` varchar(255) DEFAULT NULL,
  `tiktok_url` varchar(255) DEFAULT NULL,
  `wechat_url` varchar(255) DEFAULT NULL,
  `discord_url` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `member_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `info_others`
--

INSERT INTO `info_others` (`id`, `about_me`, `nick_name`, `phone_number`, `cover_photo`, `favorite`, `facebook_url`, `youtube_url`, `instagram_url`, `twitter_url`, `linkedin_url`, `whatsapp_url`, `telegram_url`, `snapchat_url`, `tiktok_url`, `wechat_url`, `discord_url`, `status`, `member_id`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 3, '2024-07-06 09:52:24', '2024-07-06 09:52:24'),
(2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, '2024-07-06 12:57:26', '2024-07-06 12:57:26'),
(3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 5, '2024-07-06 13:38:35', '2024-07-06 13:38:35'),
(4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 6, '2024-07-06 13:49:36', '2024-07-06 13:49:36'),
(5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 7, '2024-07-06 15:48:02', '2024-07-06 15:48:02'),
(6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 8, '2024-07-06 16:01:04', '2024-07-06 16:01:04'),
(7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 9, '2024-07-06 16:46:48', '2024-07-06 16:46:48'),
(8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, '2024-07-06 17:48:25', '2024-07-06 17:48:25'),
(9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 11, '2024-07-06 17:58:45', '2024-07-06 17:58:45'),
(10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 12, '2024-07-06 18:10:49', '2024-07-06 18:10:49'),
(11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 13, '2024-07-06 18:19:14', '2024-07-06 18:19:14'),
(12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 14, '2024-07-06 18:28:22', '2024-07-06 18:28:22'),
(14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 16, '2024-07-06 19:42:39', '2024-07-06 19:42:39'),
(15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 17, '2024-07-07 08:14:02', '2024-07-07 08:14:02'),
(16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 18, '2024-07-07 08:22:56', '2024-07-07 08:22:56'),
(17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 19, '2024-07-10 06:35:53', '2024-07-10 06:35:53'),
(18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 20, '2024-07-10 06:58:57', '2024-07-10 06:58:57'),
(19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 21, '2024-07-10 07:08:06', '2024-07-10 07:08:06'),
(20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 22, '2024-07-10 07:19:06', '2024-07-10 07:19:06'),
(21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 23, '2024-07-10 07:28:03', '2024-07-10 07:28:03'),
(22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 24, '2024-07-10 07:40:03', '2024-07-10 07:40:03'),
(23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 25, '2024-07-10 07:48:28', '2024-07-10 07:48:28'),
(24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 26, '2024-07-10 07:58:24', '2024-07-10 07:58:24'),
(25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 27, '2024-07-10 08:11:51', '2024-07-10 08:11:51'),
(26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 28, '2024-07-11 08:50:29', '2024-07-11 08:50:29'),
(27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 29, '2024-07-11 08:57:49', '2024-07-11 08:57:49'),
(28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 30, '2024-07-11 09:08:30', '2024-07-11 09:08:30'),
(29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 31, '2024-07-11 09:18:21', '2024-07-11 09:18:21'),
(30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 32, '2024-07-11 09:34:21', '2024-07-11 09:34:21'),
(32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 34, '2024-07-11 10:24:20', '2024-07-11 10:24:20'),
(33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 35, '2024-07-11 10:37:04', '2024-07-11 10:37:04'),
(34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 36, '2024-07-11 10:45:39', '2024-07-11 10:45:39'),
(35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 37, '2024-07-11 10:51:36', '2024-07-11 10:51:36'),
(36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 38, '2024-07-11 11:00:54', '2024-07-11 11:00:54'),
(37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 39, '2024-07-11 18:16:41', '2024-07-11 18:16:41'),
(38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 40, '2024-07-11 18:23:50', '2024-07-11 18:23:50'),
(39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 41, '2024-07-11 18:30:20', '2024-07-11 18:30:20'),
(40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 42, '2024-07-11 18:36:11', '2024-07-11 18:36:11'),
(41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 43, '2024-07-11 19:46:17', '2024-07-11 19:46:17'),
(42, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 44, '2024-07-11 20:52:22', '2024-07-11 20:52:22'),
(43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 45, '2024-07-11 21:02:23', '2024-07-11 21:02:23'),
(44, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 46, '2024-07-12 07:15:53', '2024-07-12 07:15:53'),
(45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 47, '2024-07-13 08:16:05', '2024-07-13 08:16:05'),
(46, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 48, '2024-07-13 08:24:31', '2024-07-13 08:24:31'),
(47, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 49, '2024-07-13 08:31:38', '2024-07-13 08:31:38'),
(48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 50, '2024-07-13 08:39:25', '2024-07-13 08:39:25'),
(49, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 51, '2024-07-13 08:47:56', '2024-07-13 08:47:56'),
(50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 52, '2024-07-13 08:55:25', '2024-07-13 08:55:25'),
(51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 53, '2024-07-13 09:05:10', '2024-07-13 09:05:10'),
(52, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 54, '2024-07-13 09:19:10', '2024-07-13 09:19:10'),
(53, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 55, '2024-07-13 09:27:59', '2024-07-13 09:27:59'),
(54, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 56, '2024-07-13 09:41:23', '2024-07-13 09:41:23'),
(55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 57, '2024-07-13 09:47:06', '2024-07-13 09:47:06'),
(56, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 58, '2024-07-13 09:54:19', '2024-07-13 09:54:19'),
(57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 59, '2024-07-13 10:01:40', '2024-07-13 10:01:40'),
(58, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 60, '2024-07-13 10:07:51', '2024-07-13 10:07:51'),
(59, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 61, '2024-07-13 10:16:00', '2024-07-13 10:16:00'),
(60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 62, '2024-07-13 10:22:46', '2024-07-13 10:22:46'),
(61, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 63, '2024-07-13 10:32:34', '2024-07-13 10:32:34'),
(62, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 64, '2024-07-13 20:27:14', '2024-07-13 20:27:14'),
(63, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 65, '2024-07-13 20:41:33', '2024-07-13 20:41:33'),
(64, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 66, '2024-07-13 20:54:45', '2024-07-13 20:54:45'),
(65, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 67, '2024-07-13 21:05:24', '2024-07-13 21:05:24'),
(66, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 68, '2024-07-13 21:12:42', '2024-07-13 21:12:42'),
(67, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 69, '2024-07-13 21:20:18', '2024-07-13 21:20:18'),
(68, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 70, '2024-07-13 21:32:08', '2024-07-13 21:32:08'),
(69, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 71, '2024-07-14 04:33:12', '2024-07-14 04:33:12'),
(70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 72, '2024-07-14 04:43:07', '2024-07-14 04:43:07'),
(71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 73, '2024-07-14 04:50:36', '2024-07-14 04:50:36'),
(72, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 74, '2024-07-14 05:03:37', '2024-07-14 05:03:37'),
(73, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 75, '2024-07-14 05:16:57', '2024-07-14 05:16:57'),
(74, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 76, '2024-07-14 05:32:52', '2024-07-14 05:32:52'),
(75, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 77, '2024-07-14 05:40:50', '2024-07-14 05:40:50'),
(76, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 78, '2024-07-14 05:51:16', '2024-07-14 05:51:16'),
(77, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 79, '2024-07-14 06:00:22', '2024-07-14 06:00:22'),
(78, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 80, '2024-07-14 06:09:52', '2024-07-14 06:09:52'),
(79, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 81, '2024-07-14 06:17:05', '2024-07-14 06:17:05'),
(80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 82, '2024-07-14 06:24:57', '2024-07-14 06:24:57'),
(81, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 83, '2024-07-14 06:32:25', '2024-07-14 06:32:25'),
(82, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 84, '2024-07-14 06:38:22', '2024-07-14 06:38:22'),
(83, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 85, '2024-07-14 06:48:14', '2024-07-14 06:48:14'),
(86, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 88, '2024-07-26 19:55:51', '2024-07-26 19:55:51'),
(87, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 89, '2024-07-26 20:03:52', '2024-07-26 20:03:52'),
(88, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 90, '2024-07-26 20:10:53', '2024-07-26 20:10:53'),
(89, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 91, '2024-07-26 20:17:48', '2024-07-26 20:17:48'),
(90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 92, '2024-07-26 20:25:13', '2024-07-26 20:25:13'),
(91, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 93, '2024-07-26 20:35:45', '2024-07-26 20:35:45'),
(92, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 94, '2024-07-26 20:45:34', '2024-07-26 20:45:34'),
(93, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 95, '2024-07-26 20:54:12', '2024-07-26 20:54:12'),
(94, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 96, '2024-07-26 21:01:59', '2024-07-26 21:01:59'),
(95, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 97, '2024-07-26 21:08:43', '2024-07-26 21:08:43'),
(96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 98, '2024-07-26 21:17:20', '2024-07-26 21:17:20'),
(97, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 99, '2024-07-26 21:26:48', '2024-07-26 21:26:48'),
(98, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 100, '2024-07-27 05:38:33', '2024-07-27 05:38:33'),
(99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 101, '2024-07-27 05:45:58', '2024-07-27 05:45:58'),
(101, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 103, '2024-07-27 06:01:27', '2024-07-27 06:01:27'),
(102, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 104, '2024-07-27 06:08:24', '2024-07-27 06:08:24'),
(103, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 105, '2024-07-27 06:19:43', '2024-07-27 06:19:43'),
(104, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 106, '2024-07-27 06:30:20', '2024-07-27 06:30:20'),
(105, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 107, '2024-07-27 06:37:56', '2024-07-27 06:37:56'),
(106, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 108, '2024-07-27 06:44:15', '2024-07-27 06:44:15'),
(107, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 109, '2024-07-27 06:52:38', '2024-07-27 06:52:38'),
(108, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 110, '2024-07-27 06:59:28', '2024-07-27 06:59:28'),
(109, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 111, '2024-07-27 07:07:00', '2024-07-27 07:07:00'),
(110, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 112, '2024-07-27 07:14:38', '2024-07-27 07:14:38'),
(111, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 113, '2024-07-27 07:27:54', '2024-07-27 07:27:54'),
(112, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 114, '2024-07-27 07:34:26', '2024-07-27 07:34:26'),
(113, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 115, '2024-07-27 07:42:46', '2024-07-27 07:42:46'),
(114, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 116, '2024-07-27 08:18:21', '2024-07-27 08:18:21'),
(115, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 117, '2024-07-28 07:55:17', '2024-07-28 07:55:17'),
(116, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 118, '2024-07-28 08:02:07', '2024-07-28 08:02:07'),
(117, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 119, '2024-07-28 08:10:27', '2024-07-28 08:10:27'),
(118, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 120, '2024-07-28 08:17:49', '2024-07-28 08:17:49'),
(119, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 121, '2024-07-28 08:27:18', '2024-07-28 08:27:18'),
(120, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 122, '2024-07-28 08:36:31', '2024-07-28 08:36:31'),
(121, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 123, '2024-07-28 08:42:52', '2024-07-28 08:42:52'),
(122, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 124, '2024-07-28 08:50:43', '2024-07-28 08:50:43'),
(123, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 125, '2024-07-28 08:57:06', '2024-07-28 08:57:06'),
(124, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 126, '2024-07-28 09:02:22', '2024-07-28 09:02:22'),
(125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 127, '2024-07-28 09:08:08', '2024-07-28 09:08:08'),
(126, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 128, '2024-07-30 07:19:13', '2024-07-30 07:19:13'),
(127, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 129, '2024-07-30 07:33:56', '2024-07-30 07:33:56'),
(128, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 130, '2024-07-30 07:46:22', '2024-07-30 07:46:22'),
(129, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 131, '2024-07-30 07:59:53', '2024-07-30 07:59:53'),
(130, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 132, '2024-07-30 08:06:03', '2024-07-30 08:06:03'),
(131, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 133, '2024-07-30 08:16:34', '2024-07-30 08:16:34'),
(132, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 134, '2024-08-21 07:08:42', '2024-08-21 07:08:42'),
(133, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 135, '2024-08-21 07:23:07', '2024-08-21 07:23:07'),
(134, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 136, '2024-08-21 13:58:55', '2024-08-21 13:58:55'),
(135, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 137, '2024-08-21 14:39:56', '2024-08-21 14:39:56'),
(136, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 138, '2024-08-22 09:57:03', '2024-08-22 09:57:03'),
(137, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 139, '2024-08-22 10:13:00', '2024-08-22 10:13:00'),
(138, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 140, '2024-08-22 10:26:21', '2024-08-22 10:26:21'),
(139, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 141, '2024-08-22 10:51:46', '2024-08-22 10:51:46'),
(140, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 142, '2024-09-07 06:56:03', '2024-09-07 06:56:03'),
(141, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 151, '2024-09-07 07:35:17', '2024-09-07 07:35:17'),
(142, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 152, '2024-09-07 07:50:38', '2024-09-07 07:50:38'),
(143, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 153, '2024-09-07 08:05:06', '2024-09-07 08:05:06'),
(144, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 154, '2024-09-16 15:37:48', '2024-09-16 15:37:48'),
(145, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 155, '2024-09-25 10:20:23', '2024-09-25 10:20:23'),
(146, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 156, '2024-10-03 16:15:58', '2024-10-03 16:15:58'),
(147, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 157, '2024-10-03 17:00:12', '2024-10-03 17:00:12'),
(148, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 158, '2024-11-16 08:57:54', '2024-11-16 08:57:54'),
(149, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 159, '2024-11-16 09:17:38', '2024-11-16 09:17:38'),
(150, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 160, '2024-11-16 10:02:37', '2024-11-16 10:02:37'),
(151, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 161, '2024-11-16 10:18:21', '2024-11-16 10:18:21'),
(152, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 162, '2024-11-16 11:01:00', '2024-11-16 11:01:00'),
(153, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 163, '2024-11-16 11:16:51', '2024-11-16 11:16:51'),
(154, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 164, '2024-11-16 11:31:26', '2024-11-16 11:31:26'),
(155, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 165, '2025-01-13 18:08:25', '2025-01-13 18:08:25'),
(156, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 166, '2025-01-13 18:28:04', '2025-01-13 18:28:04'),
(157, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 167, '2025-01-13 19:22:38', '2025-01-13 19:22:38'),
(158, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 168, '2025-01-13 19:58:20', '2025-01-13 19:58:20'),
(159, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 170, '2025-01-26 16:57:12', '2025-01-26 16:57:12'),
(160, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 171, '2025-01-29 15:31:06', '2025-01-29 15:31:06'),
(161, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 172, '2025-02-01 13:11:29', '2025-02-01 13:11:29'),
(162, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 173, '2025-02-03 18:41:16', '2025-02-03 18:41:16'),
(163, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 174, '2025-02-03 19:52:31', '2025-02-03 19:52:31'),
(164, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 175, '2025-02-04 18:59:19', '2025-02-04 18:59:19'),
(165, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 176, '2025-02-12 18:40:55', '2025-02-12 18:40:55');

-- --------------------------------------------------------

--
-- Table structure for table `info_personals`
--

CREATE TABLE `info_personals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `memebrName` varchar(255) DEFAULT NULL,
  `memebrDesignation` int(11) DEFAULT NULL,
  `memebrNID` varchar(255) DEFAULT NULL,
  `memebrDOB` date DEFAULT NULL,
  `memebrFatherName` varchar(255) DEFAULT NULL,
  `memebrMotherName` varchar(255) DEFAULT NULL,
  `memebrLifePartner` varchar(255) DEFAULT NULL,
  `memebrGender` int(11) DEFAULT NULL,
  `memebrBloodGroup` int(11) DEFAULT NULL,
  `memberPhoneNo` varchar(255) DEFAULT NULL,
  `memberEmail` varchar(255) DEFAULT NULL,
  `qualificationName` varchar(255) DEFAULT NULL,
  `nomineeName` varchar(255) DEFAULT NULL,
  `nomineeNID` varchar(255) DEFAULT NULL,
  `nomineeFather` varchar(255) DEFAULT NULL,
  `nomineeMother` varchar(255) DEFAULT NULL,
  `nomineeRelation` varchar(255) DEFAULT NULL,
  `nomineeDesignation` varchar(255) DEFAULT NULL,
  `kOneCompanyName` varchar(255) DEFAULT NULL,
  `kOneMemberName` varchar(255) DEFAULT NULL,
  `kOneMembershipNo` varchar(255) DEFAULT NULL,
  `kTwoCompanyName` varchar(255) DEFAULT NULL,
  `kTwoMemberName` varchar(255) DEFAULT NULL,
  `kTwoMembershipNo` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `member_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `info_personals`
--

INSERT INTO `info_personals` (`id`, `memebrName`, `memebrDesignation`, `memebrNID`, `memebrDOB`, `memebrFatherName`, `memebrMotherName`, `memebrLifePartner`, `memebrGender`, `memebrBloodGroup`, `memberPhoneNo`, `memberEmail`, `qualificationName`, `nomineeName`, `nomineeNID`, `nomineeFather`, `nomineeMother`, `nomineeRelation`, `nomineeDesignation`, `kOneCompanyName`, `kOneMemberName`, `kOneMembershipNo`, `kTwoCompanyName`, `kTwoMemberName`, `kTwoMembershipNo`, `description`, `status`, `member_id`, `created_at`, `updated_at`) VALUES
(1, 'Sudhir Chowdhury', 1, '1003378153', '1960-01-16', NULL, 'Yasuda Chowdhury', 'Shilpi Chowdhury', 1, NULL, '01711533035', 'choenterprise@yahoo.com', 'B. Com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 3, '2024-07-06 09:52:24', '2024-07-06 09:52:24'),
(2, 'Md. Sabir Hossain', 1, '147 428 5341', '1972-12-31', NULL, 'Ambhiyan Khatun', 'Shamima Akter', 1, 3, '01713012180', 'mstradingdhkbd@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, '2024-07-06 12:57:26', '2024-07-06 12:57:26'),
(3, 'MD. Helal Uddin', 1, '8223216436', '1969-11-15', NULL, 'Late: Hanifa Khatun', 'Rabeya Khatun', 1, 5, '01715103135', 'rafeu16@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 5, '2024-07-06 13:38:35', '2024-07-06 13:38:35'),
(4, 'Momtaz Hossain Eaty', 1, '2694812052543', '1980-02-22', NULL, 'Asma Khan', 'ATM Shahin Pervez', 1, 3, '01741 33 54 42', 'eatyenterprise@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 6, '2024-07-06 13:49:36', '2024-07-06 13:49:36'),
(5, 'Md. Jahirul Islam', 1, NULL, '1971-01-05', NULL, 'Sufia Begum', 'Shewli Islam', 1, NULL, '01777768971', 'modinajahir@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 7, '2024-07-06 15:48:02', '2024-07-06 15:48:02'),
(6, 'Abdul Wadud Bhuiyan', 1, '1914041229230', '1980-09-16', NULL, 'Late: Ambiya Begum', NULL, 1, NULL, '01713 02 41 50', 'bstrading79@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 8, '2024-07-06 16:01:04', '2024-07-06 16:01:04'),
(7, 'Md. Mahbubul Alam', 1, '2611293259513', '1973-02-12', NULL, 'Jebun Nesa', 'Afroza Jahan', 1, 5, '01714 08 58 55', 'mahbub73.alam@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 9, '2024-07-06 16:46:48', '2024-07-06 16:46:48'),
(8, 'Shuball Chandra Misra', 1, '2696828672738', '1980-11-29', NULL, 'Parul Misra', 'Rupa Misra', 1, NULL, '01712-063470', 'misrag7@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, '2024-07-06 17:48:25', '2024-07-06 17:48:25'),
(9, 'Shuball Chandra Misra', NULL, '329 341 8673', '1978-10-15', NULL, 'Rashida Begum', 'Md. Abdur Rahman', 2, 3, '01820 02 33 80', 'synthiaenterprise21@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 11, '2024-07-06 17:58:45', '2024-07-06 17:58:45'),
(10, 'A .M  Amirul Islam Bhuiyan', 1, '148 356 7994', '1958-07-01', NULL, 'Johura Khatun', 'Rowshon Ara Islam', 1, 3, '01714 00 53 71', 'islamdhakabd@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 12, '2024-07-06 18:10:49', '2024-07-06 18:10:49'),
(11, 'Md. Golam Mostofa', 1, '1028809707828', '1979-01-25', NULL, 'Late: Kosirone Begum', NULL, 1, NULL, '01711 23 55 47', 'gm_enterprise@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 13, '2024-07-06 18:19:14', '2024-07-06 18:19:14'),
(12, 'Md.  Alal  Ahmed', 1, '19801018877102512', '1980-06-01', NULL, 'Ferdusi Ara', 'Sharmin Sultana Shilpi', 1, NULL, '01777-719091', 'msalalenterprise@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 14, '2024-07-06 18:28:22', '2024-07-06 18:28:22'),
(14, 'Md. Obaidullah  Khan', 1, '2627207631796', '1965-06-30', NULL, 'Anoara Begam', NULL, 1, 2, '01715-87 82 14', 'Proconin2004@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 16, '2024-07-06 19:42:39', '2024-07-06 19:42:39'),
(15, 'Md. Abul  Kalam Azad', NULL, '2371877032', '1984-10-31', NULL, 'Rokeya Begum', 'Sadia Saba', 1, 7, '01713 03 15 69', 'alaminpoultryfeed@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 17, '2024-07-07 08:14:02', '2024-07-07 08:14:02'),
(16, 'Md. Habibur  Rahman', 1, '5115823584960', '1971-01-01', NULL, 'Rabeya Khatun', NULL, 1, NULL, '01812-598882', 'nasrin.agri.ind@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 18, '2024-07-07 08:22:56', '2024-07-07 08:22:56'),
(17, 'Md. Shahjahan Miah', 1, '19522696536931071', '1952-01-01', NULL, 'Late Roab Banu', NULL, 1, 1, '0760970080', 'smsfeeds@hotmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 19, '2024-07-10 06:35:53', '2024-07-10 06:35:53'),
(18, 'Md. Sayedul  Hoque  Khan', 2, '1009168921', '1968-04-03', NULL, 'Late Marium Khan', 'Tahmina Khanam', 1, 5, '01839  90 98 00', 'Kafp08@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 20, '2024-07-10 06:58:57', '2024-07-10 06:58:57'),
(19, 'Syed  Kamalur Rahman', 2, '195-1419173', '1953-01-05', NULL, 'Late. Nurunnahar Begum', 'Shamima Akter', 1, 5, '01911-084437', 'khokoncrtc@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 21, '2024-07-10 07:08:06', '2024-07-10 07:08:06'),
(20, 'Md. Suruzzaman', 1, '5227006889148', '1971-08-20', NULL, 'Asiya Begum', 'Rehana Pervin', 1, NULL, '01716-100442', 'zamanbrothers442@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 22, '2024-07-10 07:19:06', '2024-07-10 07:19:06'),
(21, 'MD. Farook', 1, '2691649122569', '1967-08-01', NULL, 'Jabeda Khatun', NULL, 1, 5, '01711 56 87 06', 'ftc_2000@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 23, '2024-07-10 07:28:03', '2024-07-10 07:28:03'),
(22, 'Md. Khorshed  Alam', 1, '7520705485856', '1971-01-30', NULL, 'Samona Khatun', NULL, 1, NULL, '01711 80 81 49', 'tajreadyfeed@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 24, '2024-07-10 07:40:03', '2024-07-10 07:40:03'),
(23, 'Md. Darugale', 1, '2611453322280', '1968-01-12', NULL, 'Late. Samarthoban Begum', NULL, 1, NULL, '01713 57 04 80', 'msmonirandbrothers480@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 25, '2024-07-10 07:48:28', '2024-07-10 07:48:28'),
(24, 'Mr. Kazi Abu Sayed', 2, '2694814930994', '1976-01-01', NULL, 'Kazi Sahera Begum', 'Ismat Ara Jakia', 1, 7, '01713461898', 'sayed@kaziagro.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 26, '2024-07-10 07:58:24', '2024-07-10 07:58:24'),
(25, 'Abdur Rahman', 1, '2691649458278', '1959-05-21', NULL, 'Late. Halima Khatun', 'Dilruba Akter', 1, 7, '01711 54 67 04', 'rubaentp@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 27, '2024-07-10 08:11:50', '2024-07-10 08:11:50'),
(26, 'Mohammed Mansur Meah', 1, '19731594122655405', '1973-06-23', NULL, 'Rowshan Ara Begum', NULL, 1, NULL, '01711 749269', 'bogdadmonsur@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 28, '2024-07-11 08:50:29', '2024-07-11 08:50:29'),
(27, 'Md. Ashraful  Alam', 1, '19782691648070734', '1978-10-21', NULL, 'Mst. Anjuman Ara', 'Mst. Taskina Akter', 1, 1, '01712 77 80 81', 'bsagrotrading@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 29, '2024-07-11 08:57:49', '2024-07-11 08:57:49'),
(28, 'Mohammed  Shah Akram', 1, '1594134711184', '1986-04-16', NULL, 'Hasan Banu', 'Dil Newaj Begum', 1, NULL, '01713 36 30 00', 'onlyakram@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 30, '2024-07-11 09:08:30', '2024-07-11 09:08:30'),
(29, 'Md. Lokman Hakim', 1, '1591019774606', '1973-01-25', NULL, 'Jahanara Begum', 'Late. Anjuman Ara Begum', 1, NULL, '01711 76 10 25', 'baizidfeedagency@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 31, '2024-07-11 09:18:21', '2024-07-11 09:18:21'),
(30, 'Md. Jahangir Alam', 1, '3911551910174', '1979-06-01', NULL, 'Mst. Shadea Begum', 'Arifa Alam', 1, 1, '01915 88 70 00 / 01711 182603', 'jahangir.bd1979@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 32, '2024-07-11 09:34:21', '2024-07-11 09:34:21'),
(32, 'Mosharaf Hossain Chowdhury', 1, '19851594134000031', '1985-05-01', NULL, 'Tasnimul Jannat', 'Murna Mujaher', 1, 7, '01732 64 89 96', 'ibratastrade@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 34, '2024-07-11 10:24:20', '2024-07-11 10:24:20'),
(33, 'Abu Hossain Noor', 1, '5624602110663', '1980-03-24', NULL, 'Nurun Nahar Sultana', NULL, 1, NULL, '01713 01 28 53/ 01700 777710', 'nurunnahartrader@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 35, '2024-07-11 10:37:04', '2024-07-11 10:37:04'),
(34, 'Sanjoy Kumar Agouroula', 1, '4795121382507', '1975-05-17', NULL, 'Chandra Kala Debi', 'Sanjana Agouroula', 1, 7, '01819 71 02 24', 'Sanjoytrading554@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 36, '2024-07-11 10:45:39', '2024-07-11 10:45:39'),
(35, 'Dipali Rani Nath', 1, '2699040679827', '1966-08-20', NULL, 'Anjoli Rani Nath', 'Bimol Krishno Nath', 1, 5, '01717 09 52 05', 'raninathdipali@gamil.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 37, '2024-07-11 10:51:36', '2024-07-11 10:51:36'),
(36, 'Mr. ATM. Shahin Pervez', 1, '1592039748638', '1978-12-21', NULL, 'Del Afroza Begum', 'Momtaz Hossain Eaty', 1, 1, '01741 33 54 42', 'sarafenterprise142gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 38, '2024-07-11 11:00:54', '2024-07-11 11:00:54'),
(37, 'NurJahan Begum', 1, '19602696536931072', '1960-06-05', NULL, 'Sajeda Begum', 'Md. Shahjahan Miah', 2, 5, '01763 16 29 80', 'sawjahan@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 39, '2024-07-11 18:16:41', '2024-07-11 18:16:41'),
(38, 'Md. Rashedul Jakir', 1, '1594308157370', NULL, NULL, 'Halima Begum', NULL, 1, 5, '01834-855907', 'rashedulvet@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 40, '2024-07-11 18:23:50', '2024-07-11 18:23:50'),
(39, 'Dr. Mujammel Huq Khan', 1, '775 551 6049', '1979-10-01', NULL, 'Momtaj Begum', NULL, 1, 1, '01798 38 77 22', 'vet.mujammel@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 41, '2024-07-11 18:30:20', '2024-07-11 18:30:20'),
(40, 'Dr.Gadadhar Chandra Shil', 1, '19725618251501048', '1972-06-01', NULL, 'Sorosoti Rani Shil', NULL, 1, 7, '01712 20 79 30', 'gsranjan1672@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 42, '2024-07-11 18:36:11', '2024-07-11 18:36:11'),
(41, 'Md. Mosarraf  Hossain', 1, '2690421368467', '1978-12-06', NULL, 'Mrs. Sufiya Begum', NULL, 1, 1, '01727-061001', 'unisunmarketing@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 43, '2024-07-11 19:46:17', '2024-07-11 19:46:17'),
(42, 'Joyanta  Kumar Deb', 2, '284 525 3919', '1962-03-18', NULL, 'Anjali Deb', 'Mousumi Dey', 1, 1, '01713-041886', 'naturecareltd3@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 44, '2024-07-11 20:52:22', '2024-07-11 20:52:22'),
(43, 'Sukumar Chandra Adhikary', 1, '9329516101443', '1977-12-29', NULL, 'Mukul Rani Adhikary', 'Rajasri Das', 1, NULL, '01711-044216', 'sukumaradhikary95@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 45, '2024-07-11 21:02:23', '2024-07-11 21:02:23'),
(44, 'Naznin Akter', 1, '19881595708911286', '1988-05-13', NULL, 'Mrs. Nur Ayesha Begum', NULL, 1, NULL, '01729-093 255', 'salmatrading.ctg@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 46, '2024-07-12 07:15:53', '2024-07-12 07:15:53'),
(45, 'Md. Yousuf', 1, '551 772 0255', '1968-09-07', NULL, 'Monowara Begum', 'Taslima Afroz', 1, 3, '01713-434124', 'yousuf.coo@parmonyenterprise.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 47, '2024-07-13 08:16:05', '2024-07-13 08:16:05'),
(46, 'Md. Selim Reza Hiron', 1, '732 753 4421', '1979-11-19', NULL, 'Shajeda Khatun', 'Sanjida Reza Mumu', 1, 7, '01711-312796', 'progressagrovet@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 48, '2024-07-13 08:24:31', '2024-07-13 08:24:31'),
(47, 'Mrs. Tanjida Afrose', 1, '19802698838000004', '1980-09-01', NULL, 'Hosne Ara Begum', 'Mohmmad Ali', 2, 5, '01790-169843', 'Padda786@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 49, '2024-07-13 08:31:38', '2024-07-13 08:31:38'),
(48, 'Md. Gias Uddin Khan', 1, '1527006800570', '1967-02-06', NULL, 'Mrs. Hasina Begum', 'Nezahat Ara', 1, 1, '01708-485 638', 'gk.moonstar@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 50, '2024-07-13 08:39:25', '2024-07-13 08:39:25'),
(49, 'Md. Anamul Haque Molah', 1, '3318647483037', '1975-03-04', NULL, 'Laee. Mst. Basatan Nessa', 'Mst. Ozifa', 1, NULL, '01855-966517, 01855-966 511', 'enamhatcheryandfeedsltd@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 51, '2024-07-13 08:47:56', '2024-07-13 08:47:56'),
(50, 'Md. Awlad Hossain Matber', 1, '3323013346664', '1961-06-02', NULL, 'Reshia Khatun', 'Nasrin Sultana', 1, NULL, '01711-546 963', 'matber2286@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 52, '2024-07-13 08:55:25', '2024-07-13 08:55:25'),
(51, 'Mr. Md. Shadak Ali', 2, '555 080 3836', '1956-11-10', NULL, 'Tahereen Nesa', NULL, 1, NULL, '01713-017 530', 'mdshadakali1960@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 53, '2024-07-13 09:05:10', '2024-07-13 09:05:10'),
(52, 'Joyanta  Kumar Deb', 1, '284 525 3919', '1962-03-18', NULL, 'Anjali Deb', 'Mousumi Dey', 1, 1, '01713-041886', 'moheuddin.ncmfg@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 54, '2024-07-13 09:19:10', '2024-07-13 09:19:10'),
(53, 'Anjon Majumder', 1, '1517431658739', '1968-02-12', NULL, 'AnamicaChowdhury Majumder', 'ARCHONA mAJUMDER', 1, NULL, '01781-363816', 'anamikagroup7@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 55, '2024-07-13 09:27:59', '2024-07-13 09:27:59'),
(54, 'AKM Tariqul Islam', 1, '3022910104977', '1988-12-31', NULL, 'Fatema Khatun', NULL, 1, 5, '01920554848', 'tariqual618@gmail.cm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 56, '2024-07-13 09:41:23', '2024-07-13 09:41:23'),
(55, 'Md. Sazzadul Hassan', NULL, '955 293 8046', '1970-08-01', NULL, 'Laila Arjumand Banu', 'Fahmida Islam', 1, NULL, '01713015184', 'sazzadul.hassan@basf.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 57, '2024-07-13 09:47:06', '2024-07-13 09:47:06'),
(56, 'Md. Mizanur Rahaman', 2, '419 366 0232', '1968-01-01', NULL, 'Rezia Islam', 'Arju Ara Parvin', 1, NULL, '01847-453300', 'topnichbd@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 58, '2024-07-13 09:54:19', '2024-07-13 09:54:19'),
(57, 'Md. Ayub Ali', 1, '2621822612593', '1972-04-02', NULL, 'Late. Rupban Nessa', 'Shamp Sultana', 1, 1, '01711549968', 'surmaenterprise22@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 59, '2024-07-13 10:01:40', '2024-07-13 10:01:40'),
(58, 'M.A Rakib', 1, '193 376 1874', '1978-06-06', NULL, 'Ambia Khatun', 'Moslima Begum', 1, 5, '01713-411052', 'genevatradecentre@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 60, '2024-07-13 10:07:51', '2024-07-13 10:07:51'),
(59, 'MD. Jahid Hossain', 1, '415 052 7879', '1980-09-03', NULL, 'Late. Lutfunnesa', 'Jobaida Islam', 1, 3, '01819-242204', 'jahidh873@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 61, '2024-07-13 10:16:00', '2024-07-13 10:16:00'),
(60, 'Md. Mohi Uddin', 1, '1527009998861', '1987-02-01', NULL, 'Late. Rigia Begum', 'Nitu Akter', 1, 1, '01313 094400', 'mntalukder1987@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 62, '2024-07-13 10:22:46', '2024-07-13 10:22:46'),
(61, 'Md. Nizamul Islam Salim', 1, '887 367 7226', '1967-12-31', NULL, 'Mrs. Jahanara Begum', 'Mrs. Nazma Akter', 1, NULL, '01777-753208', 'salimbhuyan9107@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 63, '2024-07-13 10:32:34', '2024-07-13 10:32:34'),
(62, 'Md. Anwarul Haque', 1, '868 414 7898', '1969-01-01', NULL, 'Anwara Begum', 'Jiasmin Haque', 1, NULL, '01713-012140', 'padmafeed@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 64, '2024-07-13 20:27:14', '2024-07-13 20:27:14'),
(63, 'Md. Zainul Abedin', 1, '5087222815', '1973-07-07', NULL, 'Late. Hazi  Anjuman Nesa', 'Rahimun Nahar', 1, NULL, '01740-599861', 'modina.abedin@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 65, '2024-07-13 20:41:33', '2024-07-13 20:41:33'),
(64, 'Mrs. Mina Dey', 1, '282 042 3420', '1974-05-10', NULL, 'Alo Rani Boidya', 'Poritosh Dey', 1, 2, '01819 310425', 'papritraders@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 66, '2024-07-13 20:54:45', '2024-07-13 20:54:45'),
(65, 'MD. Shamim', 1, '1594115411252', '1971-12-31', NULL, 'Mrs. Jahanara Begum', 'Mrh. Shahana Akter', 1, NULL, '01811-251426', 'nipooontrade522_ctg@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 67, '2024-07-13 21:05:24', '2024-07-13 21:05:24'),
(66, 'MD. Kamal Hussain', 1, '8121205986722', '1978-12-15', NULL, 'Mst. Anowara Begum', 'Mst. Shapla Shirmin', 1, 1, '01711- 405165', 'khussian56@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 68, '2024-07-13 21:12:42', '2024-07-13 21:12:42'),
(67, 'Md. Ayaz Hossain', 1, '690 133 9298', '1986-11-20', NULL, 'Gulshan Ara', 'Goshiya', 1, 7, '01711-532443', 'tanvir.ayazenterprise@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 69, '2024-07-13 21:20:18', '2024-07-13 21:20:18'),
(68, 'Md. Altaf  Hossain  Biswas, MBA', 1, '41223057919806', '1970-03-01', NULL, 'Late. Ashia Khatun', 'Sarwat Jhuma', 1, 1, '01711-561862', 'btc-.trading@btcgroupbd.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 70, '2024-07-13 21:32:08', '2024-07-13 21:32:08'),
(69, 'Tafazzal Hossain', 2, '415 936 7525', '1982-09-01', NULL, 'Sufiya Begum', 'Mousumi Islam', 1, 5, '01740585286', 'throbin32@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 71, '2024-07-14 04:33:12', '2024-07-14 04:33:12'),
(70, 'Abdullah Al Azim', 2, '2690243818235', '1974-07-06', NULL, 'Masuma Azim', 'Taslima Fardouus', 1, NULL, '01682 508727', 'azim@wmgltd.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 72, '2024-07-14 04:43:07', '2024-07-14 04:43:07'),
(71, 'Faiyaz Bin Rahman', 1, '598 422 9988', '1994-11-28', NULL, 'Ferdousi Jahan', 'Mushfique Zahin Chowdhury', 1, 3, '01682 508727', 'agrotraxbd@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 73, '2024-07-14 04:50:36', '2024-07-14 04:50:36'),
(72, 'Ariful Haque  Monir', 1, '1684116384443', '1985-03-01', NULL, 'Astofab Khatun', NULL, 1, 5, '01750 03 85 10', 'neximcoennam@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 74, '2024-07-14 05:03:37', '2024-07-14 05:03:37'),
(73, 'Nazma Akter', NULL, '2696653259910', '1971-12-30', NULL, 'Late. Hosne Ara', 'Md. Nizamul Islam Salim', 2, NULL, '01711432697', 'sakhawats52@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 75, '2024-07-14 05:16:57', '2024-07-14 05:16:57'),
(74, 'Safiqul Islam', 1, '2692984632422', '1977-03-01', NULL, 'Mst. Rowson Ara Begum', 'Mst. Tania Akter', 1, 1, '01746651630', 'sabiq.nourish@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 76, '2024-07-14 05:32:52', '2024-07-14 05:32:52'),
(75, 'Sohel Ahmed', 1, '1028727889', '1997-12-09', NULL, 'Nazma Akter', NULL, 1, 1, '01736 523930', 'ahossain0209@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 77, '2024-07-14 05:40:50', '2024-07-14 05:40:50'),
(76, 'Md. Manzurul Alam', 1, '2612935438342', '1976-06-11', NULL, 'Shahaanara Begum', NULL, 1, 5, '01755 548444', 'stoneplanetenterprise@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 78, '2024-07-14 05:51:16', '2024-07-14 05:51:16'),
(77, 'Sibbir Ahammed Shibli', 1, '415 768 6280', '1981-11-24', NULL, 'Mrs. Taslima Hossan Sewli', NULL, 1, NULL, '01716-456633', 'rico@citechco.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 79, '2024-07-14 06:00:22', '2024-07-14 06:00:22'),
(78, 'Mohammad Robiul Islam', 1, '19657511038719056', '1965-03-01', NULL, 'Late. Atiqer Nesa Begum', NULL, 1, 1, '01819-216628', 'MRIAzad@citechco.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 80, '2024-07-14 06:09:52', '2024-07-14 06:09:52'),
(79, 'Md. Fazle Rabby', 1, '4657322147', '1997-11-13', NULL, 'Afroza Akter', NULL, 1, 3, '01985765534', 'frtrading97@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 81, '2024-07-14 06:17:05', '2024-07-14 06:17:05'),
(80, 'Shamim Hasnain', 1, '283 000 3592', '1983-01-01', NULL, 'Mafruha Islam', 'Maliha Sabrin', 1, 3, '01755511499', 'riverisland Indltd@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 82, '2024-07-14 06:24:57', '2024-07-14 06:24:57'),
(81, 'Md. Shakibur Rahman', 1, '7814999418', '1999-03-30', NULL, 'Rokeya Begum', NULL, 1, 5, '01795 000058', 'shakib.mcdonaldcrops@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 83, '2024-07-14 06:32:25', '2024-07-14 06:32:25'),
(82, 'Md. Murad Miah', 1, '1452232745', '1991-12-14', NULL, 'Mst. Jharna Begum', 'Rakiba Islam', 1, 1, '01711667124', 'mdmurad247@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 84, '2024-07-14 06:38:22', '2024-07-14 06:38:22'),
(83, 'Fakrul Islam', 5, '19881592039348150', '1988-07-11', NULL, 'Shanara slam', 'Jannatul Hafsa', 1, 3, '01670844997', 'fakrul06rohy@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 85, '2024-07-14 06:48:14', '2024-07-14 06:48:14'),
(86, 'S.M. Mizanur Rahman', 2, '2695041438182', '1978-12-10', NULL, 'Rizia Begum', 'Farhana Jahan', 1, 5, '01678112076', 'mmrahman1678@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 88, '2024-07-26 19:55:51', '2024-07-26 19:55:51'),
(87, 'Shyam Sundar Agurwala', 1, '775 031 8136', '1947-08-18', NULL, 'Mena Debi Agurwala', NULL, 1, 1, '01711 193511', 'mahakal.international@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 89, '2024-07-26 20:03:52', '2024-07-26 20:03:52'),
(88, 'Md. Monowar Hossain', 1, '644 665 1124', '1983-08-18', NULL, 'Mst. Rokeya Begum', 'Mst. Sheuly Khatun', 1, 5, '01684 580374', 'novelbiotechbd@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 90, '2024-07-26 20:10:53', '2024-07-26 20:10:53'),
(89, 'MD. KAZI NASIR UDDIN', 1, '778 360 7406', '1970-09-05', NULL, 'Sufia Begum', NULL, 1, NULL, '01724 266236', 'kazinasir774@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 91, '2024-07-26 20:17:48', '2024-07-26 20:17:48'),
(90, 'Dr. Azimul Hauqe', 1, '19816113194615513', '1982-12-19', NULL, 'Mst. Sahanaz Begum', 'Mst. Ferdousi Shahana', 1, 5, '01703694820', 'synergybioscience22@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 92, '2024-07-26 20:25:13', '2024-07-26 20:25:13'),
(91, 'Sayed Kamalur Rahman Khakon', 1, '195 141 9173', '1963-01-05', NULL, 'Nurun Nahar Begum', 'Shamima Akter', 1, 5, '01911-084437', 'abbrahossain@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 93, '2024-07-26 20:35:45', '2024-07-26 20:35:45'),
(92, 'A.K.M. Badruzzaman', 2, '640 487 0971', '1973-09-01', NULL, 'Badrul layel', 'Mahmuda Ahamed', 1, 1, '01711453497', 'badruzzaman1973@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 94, '2024-07-26 20:45:34', '2024-07-26 20:45:34'),
(93, 'Md. Nurul Alam', 3, '1510844346996', '1953-05-04', NULL, 'Late. Mabiya Khatun', NULL, 1, 5, '01819312513', 'Info.atragro2@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 95, '2024-07-26 20:54:12', '2024-07-26 20:54:12'),
(94, 'Ashim Kumar Ghosh', 2, '101 253 8136', '1958-10-31', NULL, 'Kalidashi Ghosh', NULL, 1, 5, '01712661849', 'majumderderagrotech@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 96, '2024-07-26 21:01:59', '2024-07-26 21:01:59'),
(95, 'Md. Sabbir Ahmed', 1, '1515128732', '2000-01-03', NULL, 'Late. Shefali Begum', NULL, 1, 3, '01618122333', 'sabbiralalgroup@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 97, '2024-07-26 21:08:43', '2024-07-26 21:08:43'),
(96, 'Md. Asaduzzaman Azad', 1, '5217054391919', '1974-06-15', NULL, 'Arefa Begum', 'Mst. Masuda Begum', 1, NULL, '01715270845', 'azadpatgram@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 98, '2024-07-26 21:17:20', '2024-07-26 21:17:20'),
(97, 'Md. Yasir Rabbi', 1, '686 246 3137', '1975-10-17', NULL, 'Monowara Zaman', 'Rahima Ahmed Moushumi', 1, NULL, '01707362010', 'evertradingbd@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 99, '2024-07-26 21:26:48', '2024-07-26 21:26:48'),
(98, 'Dr. Mohammad Mozammel Hossain Sarker', 1, '282 673 9159', '1973-12-25', NULL, 'Monoara Begum', 'Ajora Begum', 1, 5, '01631339475', 'mhsarker76@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 100, '2024-07-27 05:38:33', '2024-07-27 05:38:33'),
(99, 'Md. Imrol Koyes', 1, '687 098 1179', '1983-09-07', NULL, 'Mst. Amena Begum', NULL, 1, 5, '01742386443', 'imrol.kayes_khan@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 101, '2024-07-27 05:45:58', '2024-07-27 05:45:58'),
(101, 'Md. Lutfar Rahman', 2, '869 417 9774', '1958-04-20', NULL, 'Mst. Zahanara Begum', 'Mrs. Aynaz Rahman', 1, 1, '01713 228298', 'rahman.ghl@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 103, '2024-07-27 06:01:27', '2024-07-27 06:01:27'),
(102, 'Kazi Salah Uddin', 1, '9312817107736', '1979-12-23', NULL, 'Mst. Shahera Begum', 'Maksuda Easmin', 1, 7, '01731025000', 'kazitrustlink@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 104, '2024-07-27 06:08:24', '2024-07-27 06:08:24'),
(103, 'Mohd. Atiar Rahman', 1, '370 005 5027', '1963-08-23', NULL, 'Mst. Anowara Khatun', 'Mrs. Sultana Rahman Lucky', 1, 3, '01713 011040', 'aranimalhealth@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 105, '2024-07-27 06:19:43', '2024-07-27 06:19:43'),
(104, 'Osiur Rahman', 1, '461 248 1574', '1963-08-15', NULL, 'Dil Afroj Jahan', 'Kamrun Nahar', 1, 1, '01713 311770', 'oiur.rahman@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 106, '2024-07-27 06:30:20', '2024-07-27 06:30:20'),
(105, 'Md. Akterul Alam Kawser', 2, '19911528601000002', '1991-08-15', NULL, 'Shamima Akter', 'Mst. Sanjida Sultana', 1, NULL, '01777585551', 'raiseexim@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 107, '2024-07-27 06:37:56', '2024-07-27 06:37:56'),
(106, 'MD. Siddiqur Rahman', 1, '508 107 7041', '1982-07-21', NULL, 'Fatema Begum', NULL, 1, 5, '01735 441630', 'sajibhussain9880@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 108, '2024-07-27 06:44:15', '2024-07-27 06:44:15'),
(107, 'Oli Ullah', 2, '916 503 7897', '1967-02-04', NULL, 'Late. Mozia Khatun', 'firoza Begum', 1, 5, '01950252550', 'sarazan5276@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 109, '2024-07-27 06:52:38', '2024-07-27 06:52:38'),
(108, 'Debangshu Bikash Bhowmik', 3, '1912739987987', '1978-10-10', NULL, 'Sadhona Rani Bhowwmik', NULL, 1, NULL, '01672 288128 riyad0167@gmail.com', 'riyad0167@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 110, '2024-07-27 06:59:28', '2024-07-27 06:59:28'),
(109, 'Md. Aman Ullah', 1, '6810720004759', '1984-01-01', NULL, 'Mazida Khatun', 'Mst. Siddika Akter Ranu', 1, 5, '01713 506412', 'favouriteint2000@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 111, '2024-07-27 07:07:00', '2024-07-27 07:07:00'),
(110, 'Mohammed Abdul Halim', 1, '2693626700619', '1976-10-25', NULL, 'Habiba Khatun', 'Sultana Yeasmin', 1, 6, '01912350144', 'halim2510@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 112, '2024-07-27 07:14:38', '2024-07-27 07:14:38'),
(111, 'Md. Sabir Hossain', 2, '147 428 5341', '1972-12-31', NULL, 'Ambiya Khatun', 'Shamima Akter', 1, NULL, '01713012180', 'mars_feed@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 113, '2024-07-27 07:27:54', '2024-07-27 07:27:54'),
(112, 'Md. Bozlur Rashid', 1, '236 919 0176', '1970-03-18', NULL, 'Mst. Laily Begum', NULL, 1, NULL, '01819465151', 'sibbir.bd@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 114, '2024-07-27 07:34:26', '2024-07-27 07:34:26'),
(113, 'Abul Kalam Azad', 1, '597 028 6091', '1964-08-03', NULL, 'Protunnessa Begum', 'Meherunnesha Shirin', 1, 6, '01711525276', 'akazad@evergreen-bd.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 115, '2024-07-27 07:42:46', '2024-07-27 07:42:46'),
(114, 'Fatin Sadman', 1, '737 246 9721', '2004-11-14', NULL, 'Fowjia Akter', NULL, 1, 1, '01552390529', 'fastlinktrade19at@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 116, '2024-07-27 08:18:21', '2024-07-27 08:18:21'),
(115, 'Md. Noman Siddique', 1, '2693014946612', '1987-06-30', NULL, 'Rehana Ismot Ara', 'Fatema Tasnim Jahan Jhumly', 1, NULL, '01710551678', 'noman@mountaininternationalbd.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 117, '2024-07-28 07:55:17', '2024-07-28 07:55:17'),
(116, 'Md. Zahadul Hasan', 1, '19851914083204977', '1985-02-01', NULL, 'Maya Begum', 'Tanzia Akter', 1, NULL, '01940235600', 'k.m.zahidhasan@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 118, '2024-07-28 08:02:07', '2024-07-28 08:02:07'),
(117, 'Mohammad Shafiul Alam', 3, '1516130787470', '1980-12-31', NULL, 'Morium Khatun', 'Mrs. Sabina Yasmin', 1, NULL, '01708523216', 'sabadsha31@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 119, '2024-07-28 08:10:27', '2024-07-28 08:10:27'),
(118, 'Mohammod Nazrul Islam Sarker', 1, '149 312 8837', '1973-01-13', NULL, 'Mst. Juleka Akter', 'Nilufar Yesmin', 1, NULL, '01704187000', 'shadatsuccess100@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 120, '2024-07-28 08:17:49', '2024-07-28 08:17:49'),
(119, 'Md. Aminul Islam', NULL, '194 013 4347', '1995-10-22', NULL, 'Mst. Taslima Begum', NULL, 1, NULL, '01673874388', 'taslimaenterprise567@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 121, '2024-07-28 08:27:18', '2024-07-28 08:27:18'),
(120, 'Mohammed Oliullah', 1, '2845707468', '1985-12-31', NULL, 'Mst. Latifa Zaman', NULL, 1, 5, '01819961687', 'mohammedoliullar@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 122, '2024-07-28 08:36:31', '2024-07-28 08:36:31'),
(121, 'Mohmmed Sazzad Hossain Chowdhury', 1, '151 550 1235', '1997-01-01', NULL, 'Tasnimul Jannat', NULL, 1, NULL, '01300170639', 'hossain@ibratasbd.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 123, '2024-07-28 08:42:52', '2024-07-28 08:42:52'),
(122, 'Mahbubar Rahman', 1, '507 409 4052', '1964-02-14', NULL, 'Nurjahan', 'Layla Rahman', 1, NULL, '01714256862', 'mahbubarrahman64@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 124, '2024-07-28 08:50:43', '2024-07-28 08:50:43'),
(123, 'Afia Sultana', 1, '779 639 8407', '1972-09-22', NULL, 'Morium Begum', 'Md. Rakibur Rahman Khan', 2, 3, '01711869094', 'msrrenterprisenatore@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 125, '2024-07-28 08:57:06', '2024-07-28 08:57:06'),
(124, 'Rasel Kabir', 1, '101 787 2803', '1985-05-04', NULL, 'Parvin Sultana', 'Soniya Ferdoudi', 1, 6, '01731894842', 'plantegic@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 126, '2024-07-28 09:02:22', '2024-07-28 09:02:22'),
(125, 'Shah Fahad Habib', 2, '417 254 4233', '1988-04-15', NULL, 'Mst. Saira Nasrin', 'Fahima Khandaker', 1, 5, '01731660330', 'dakotagrainsbd@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 127, '2024-07-28 09:08:08', '2024-07-28 09:08:08'),
(126, 'Sudhir Chowdhury', 2, '2611411187869', '1960-01-16', NULL, 'Yasuda Chowdhury', 'Shilpi Chowdhury', 1, 1, '01711533035', 'keshobmay@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 128, '2024-07-30 07:19:13', '2024-07-30 07:19:13'),
(127, 'Md. Humayon  Kabir', 1, '550 069 0226', '1967-05-01', NULL, 'Ambiya Khatun', 'Afroja Akter', 1, 3, '01713022991', 'Jananitrading01@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 129, '2024-07-30 07:33:56', '2024-07-30 07:33:56'),
(128, 'Md. Enamul Hoque', 1, '237 016 7575', '1965-09-30', NULL, 'Astofa Khatun', NULL, 1, 5, '01750038510', 'urmonir@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 130, '2024-07-30 07:46:22', '2024-07-30 07:46:22'),
(129, 'Md. Rakibul Alam', 3, '553 213 6792', '1966-10-09', NULL, 'Rakiba Parvin', NULL, 1, 5, '01711544526', 'ssrahmaninternationallimited@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 131, '2024-07-30 07:59:53', '2024-07-30 07:59:53'),
(130, 'Sharmin Akter', 1, '4417183088872', '1985-11-18', NULL, 'Ferdousi Jahan', NULL, 2, NULL, '01924533636', 'ssbenterprise2018@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 132, '2024-07-30 08:06:03', '2024-07-30 08:06:03'),
(131, 'Md. Enamul Hoque', 1, '237 016 7575', '1965-09-30', NULL, 'Astofa Khatun', NULL, 1, 5, '01711722776', 'zahirulislam29@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 133, '2024-07-30 08:16:34', '2024-07-30 08:16:34'),
(132, 'Jaead Al Kawser', 3, '867 576 3208', '1981-11-20', NULL, 'Howya Begum', 'Sultana Chowdhury', 1, 5, '01973-582972', 'josim.jadid@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 134, '2024-08-21 07:08:42', '2024-08-21 07:08:42'),
(133, 'Meherunnessa  Sathi', 1, '5914431647964', '1988-09-19', NULL, 'Anwara Begum', 'Zahidul Islam', 2, NULL, '01670844997', 'info@optriumbd.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 135, '2024-08-21 07:23:07', '2024-08-21 07:23:07'),
(134, 'Mohammad Nazmul Hoque', 1, '19841595708911290', '1984-11-07', NULL, 'Nur Aisha Begum', 'Tasnim Tabassum', 1, NULL, '01729093255', 'alamincompanyctg@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 136, '2024-08-21 13:58:55', '2024-08-21 13:58:55'),
(135, 'Md. Shamsul Alam', 1, '1595708572145', '1958-02-01', NULL, 'Salma Khatun', 'Nur Aisha Begum', 1, 5, '01819318712', 'salma-group.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 137, '2024-08-21 14:39:56', '2024-08-21 14:39:56'),
(136, 'Md. Shamsul Alam', 1, '1595708572145', '1998-02-01', NULL, 'Salma Khatun', 'Nur Aisha Begum', 1, NULL, '01318852432', 'umaizatradebd@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 138, '2024-08-22 09:57:03', '2024-08-22 09:57:03'),
(137, 'Nur Ayesha Begum', 1, '19681595708911287', '1968-08-05', NULL, 'Nur Jahan Sowdagor', 'Md. Shamsul Alam', 2, NULL, '01777753208', 'sn.co2040@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 139, '2024-08-22 10:13:00', '2024-08-22 10:13:00'),
(138, 'Mohammad Nazmul Hoque', 1, '19841595708911290', '1984-11-07', NULL, 'Nur Aisha Begum', 'Tasnim Tabassum', 1, 5, '01729093255', 'mnesaru@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 140, '2024-08-22 10:26:21', '2024-08-22 10:26:21'),
(139, 'Abul Hasan', 1, '1515359423268', '1983-08-01', NULL, 'Monowara Begum', 'Farjana Akter Laki', 1, 1, '01615500990', 'abulhasanctg90@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 141, '2024-08-22 10:51:46', '2024-08-22 10:51:46'),
(140, 'Md. Nazrul Islam', 1, '2690243809284', '1958-11-01', NULL, 'Late: Azizon Nesa', 'Mst. Hasna Begum', 1, 1, '01712009949', 'nazrul7dof@gmail.com', 'BSC, Fisheries(Hons), MSC, Fisheries(BAU),', 'Mst. Hasna Begum', '2690243809285', 'Md. Nazrul Islam', 'Mst. Monjuma Khatun', 'Husband', 'Chairman', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 142, '2024-09-07 06:56:03', '2024-09-07 06:56:03'),
(149, 'Zeeshan Yasir Sakib', 1, '464 651 9126', '1991-03-07', NULL, 'Nasima Akter', 'Sadia Afrin Shoyti', 1, 1, '01738423926', 'zeeshanyasirsakib@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 151, '2024-09-07 07:35:17', '2024-09-07 07:35:17'),
(150, 'Md. Arifur Rahman Sujon', 1, '327 806 6984', '1987-10-01', NULL, 'Mst. Mazada Khatun', NULL, 1, NULL, '01711445007', 'arif.cdl@gmail.com', 'BBS', 'Sujan Afaz Talukder', NULL, 'Md. Afaz Talukder', 'Shahinur', 'Business Partner', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 152, '2024-09-07 07:50:38', '2024-09-07 07:50:38'),
(151, 'Md. Didarul Islam', 1, '5534 300 826', '1974-02-03', NULL, 'Nazmun Nahar Begum', 'Farhana Yesmin', 1, 3, '01819136397', 'alihossanbd76@gmail.com', 'B.Com (Hon\'s), M.Com (Management)', 'Mohammad Ali Hossain', '6854845069', 'Mohammad Abul Hossain', 'Mst. Saleha Khatun', 'Working Partner', 'Head of Business Operation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 153, '2024-09-07 08:05:06', '2024-09-07 08:05:06'),
(152, 'Md.  Zahirul  Islam', 1, '2627207585305', '1984-05-18', NULL, 'Rahima', 'Nazma Islam', 1, NULL, '01713296373', 'mse2000@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 154, '2024-09-16 15:37:48', '2024-09-16 15:37:48'),
(153, 'Soid Amanulla', 2, NULL, '1975-01-15', NULL, NULL, NULL, 1, NULL, NULL, 'zulker.siddique@alltech.com', 'M.V.Sc', NULL, NULL, NULL, NULL, NULL, NULL, 'Chowdhury Enterprise', 'Sudhir Chowdhury', NULL, 'Md Anwarul Haque', 'Padma Feed & Chicks LTD', NULL, NULL, 1, 155, '2024-09-25 10:20:23', '2024-09-25 10:20:23'),
(154, 'Biplab Kumar Pramanick', NULL, '327 409 4691', '1977-01-07', NULL, 'Sephali Rani Pramanick', 'Shilpi Shaha', 1, 1, '01730482476', 'biplab.prplink@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 156, '2024-10-03 16:15:58', '2024-10-03 16:15:58'),
(155, 'Hazi. Md. Issa Chowdhury', 2, '326 773 7850', '1955-10-25', NULL, 'Hazi Solaman Ara Chowdhury', 'Dil Afroj Begum', 1, 1, '01819312371', '01819312371', 'B. Com', 'Mohammad Yousuf Chowdhury', '371 091 7927', 'Hazi. Md. Issa Chowdhury', 'Dil Afroj Begum', 'Son', 'Partner', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 157, '2024-10-03 17:00:12', '2024-10-03 17:00:12'),
(156, 'Mohammad Abdur Rahman', 1, '419 341 2725', '1978-11-26', 'Abdul Jalil', 'Rahima Begum', 'Sadia Afrine Munni', 1, 1, '01916327137', 'synthia_enterprise2014@yahoo.com', 'MBA (Accounting)', 'Sadia Afrine Munni', '329 341 8673', NULL, NULL, 'Spouse', NULL, 'M/S. Synthia Enterprise', 'Sadia Afrine Munni', 'DMB#0014', 'Progress Agrovet', 'Selim Reza Hiron', 'GMB#0113', NULL, 1, 158, '2024-11-16 08:57:54', '2024-11-16 08:57:54'),
(157, 'Abdullah Al Jamil', 1, '6019336236', '2006-04-10', 'Khondaker Monsur Hossain', 'Jahanara Khatun Shikha', 'N/A', 1, NULL, '01755632000', 'aleya.commercial@gmail.com', NULL, 'Jahanara Khatun Shikha', '775 806 8709', NULL, NULL, 'Mother', NULL, 'M/S. Modina Trading Corporation', 'Md. Johirul Islam', 'DMB#007', NULL, NULL, NULL, NULL, 1, 159, '2024-11-16 09:17:38', '2024-11-16 09:17:38'),
(158, 'S.k Wahiduzzaman', 1, '6852448650', '1971-01-15', 'Hazi. S.K Abdur Rasid', 'Hazi Ahomada Rashid', 'Mehzabeen Zaman', 1, 3, '01711814400', 'purabi_trading@yahoo.com', 'B. Com', 'Mehzabeen Zaman', '910 237 9188', NULL, NULL, 'Spouse', NULL, 'Progress Agrovet', 'Selim Reza Hiron', 'GMB#0113', NULL, NULL, NULL, NULL, 1, 160, '2024-11-16 10:02:37', '2024-11-16 10:02:37'),
(159, 'Md. Rakibul Alam', 1, '553 213 6792', '1966-10-09', 'Md. Majidul Islam', 'Rakiba Parvin', NULL, 1, 3, '01711544526', 'smafzal2012@gmail.com', NULL, 'Sharif Md. Afzal Hossain', '283 226 6056', NULL, NULL, 'Managing Partner', NULL, 'S.S Rahman International Ltd.,', 'Md. Rakibul Alam', 'DMB#0202', NULL, NULL, NULL, NULL, 1, 161, '2024-11-16 10:18:21', '2024-11-16 10:18:21'),
(160, 'Ali Ahammd', 1, '418 397 6721', '1962-03-14', 'Md. Hazrat Ali Bepari', 'Ambia Khatun', 'Pervin Akter', 1, 5, '01711059729', 'ahmedtradingc@gmail.com', NULL, 'Md. Belal Ahamed', '327 253 0696', NULL, NULL, 'Son', NULL, 'MHK Agro', 'Dr. Mujammel Huq Khan', 'GMB#0096', 'M/S. Modina Trading Corporation', 'Md. Jahirul Islam', 'DMB#0007', NULL, 1, 162, '2024-11-16 11:01:00', '2024-11-16 11:01:00'),
(161, 'Mohammad Rubel Alam khan', 1, '19752695431010065', '1975-07-22', 'Md. Abdul Kadir Khan', 'Monowara Akter Khan', 'Meherunnesha', 1, 1, '01764166766', 'rubelalam77@gmail.com', 'M.A (English Literature)', 'Meherunnesha', '374 963 9195', NULL, NULL, 'Spouse', NULL, 'Macvit Nutrition (BD)', 'Biplob Kumar Pramanick', 'GMB#0218', NULL, NULL, NULL, NULL, 1, 163, '2024-11-16 11:16:51', '2024-11-16 11:16:51'),
(162, 'Kazi Abu Sayed', 2, '325 630 3847', NULL, 'Kazi Nazrul Islam', 'Kazi Sahera Begum', 'Ismat Ara', 1, NULL, '01713461898', 'commercial@kaziagro.com', 'DVM', 'Kazi Adrita', '5128680732', NULL, NULL, 'Daughter', NULL, 'Kazi Agro LTD.', 'Kazi Abu Sayed', 'DMB#0048', NULL, NULL, NULL, NULL, 1, 164, '2024-11-16 11:31:26', '2024-11-16 11:31:26'),
(163, 'Alamgir Hossain', 5, '5919471490617', '2024-04-01', 'Nur Hossain Dewan', 'Khodeja Begum', 'Taniya Akter', 1, NULL, '01711692243', 'marinaagrotag@gmail.com', NULL, 'Firoz Ahamed', '1917482743746', NULL, NULL, 'Partner', NULL, 'Geneva Trade Centre', 'M.A rakib', 'DMB#0127', NULL, NULL, NULL, NULL, 1, 165, '2025-01-13 18:08:25', '2025-01-13 18:08:25'),
(164, 'Mohammad Abdul Jabbar', 1, '417 351 8780', '1961-01-01', 'Abdul Monaf', 'Gulmas Khatun', NULL, 1, NULL, NULL, 'majabbar.adhunik@gmail.com', NULL, 'Mohammad Rafiqul Islam', '912 352 3475', NULL, NULL, NULL, NULL, 'H & K Agro Products', 'Md. Gias Uddin Khan', 'GMB#0115', NULL, NULL, NULL, NULL, 1, 166, '2025-01-13 18:28:04', '2025-01-13 18:28:04'),
(165, 'Md. Younus Ali', 5, '329 032 8768', '1965-12-15', 'Abdul Ali', 'Rezia Begum', 'Parvin Akter', 1, 5, '01742414823', 'morium62@gmail.com', NULL, 'Md. Earfat Ali', '2855565111', NULL, NULL, 'Son', NULL, 'Riverisland Industries Ltd', 'Shamim Hasnain', 'GMB#0162', NULL, NULL, NULL, NULL, 1, 167, '2025-01-13 19:22:38', '2025-01-13 19:22:38'),
(166, 'Md. Mahbub Ullah Rocky', 1, '685 012 2687', '1983-07-27', 'Md. Mahbub Ullah Rocky', 'Sabiha Asad', 'Asad Ullah', 1, 1, '01716333309', 'raisa.tradeint786@gmail.com', 'B.A', 'Sumaya Khatun', '775 030 1116', NULL, NULL, 'Spouse', NULL, 'Janani Trading', 'Md. Humayan Kabir', 'DMB#0076', 'S.H Enterprise', 'Md. Abdul Halim', 'GMB#0193', NULL, 1, 168, '2025-01-13 19:58:20', '2025-01-13 19:58:20'),
(167, 'Mukta Islam', 1, '7301460411', '1974-04-14', 'Mukter Hossain', 'Monowara Begum', 'Md. Shofiqul Islam', 2, NULL, '01713202551', 'greenmartassociates@gmail.com', NULL, 'Md. Tanzir Alam', '9145749231', NULL, NULL, 'Employee', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 170, '2025-01-26 16:57:12', '2025-01-26 16:57:12'),
(168, 'Md. Rafiul Karim', 5, '4624505683', '1977-11-01', 'Md. Abdus Sattar', 'Sapura Begum', NULL, 1, 7, '01970-012040', 'rafiagrovet@gmail.com', 'DVM, Bangladesh Agricultural University (BAU)', 'Md. Tusar Chowdhury', '3731448076', NULL, NULL, 'Partner', NULL, 'Royal Agro Products', 'Md. Nizamul Islam Selim', '0130', 'Morium Trading', 'Md. Younus Ali', '0231', NULL, 1, 171, '2025-01-29 15:31:06', '2025-01-29 15:31:06'),
(169, 'Mukta Islam', 1, '7301460411', '1974-04-14', 'Muktar Hossain', 'Monowara Begum', 'Md. Shofiqul Islam', 2, 5, '01713202551', 'tanziliak@gmail.com', 'BA', 'Sazid Shahrukh Islam', '4205542386', NULL, NULL, 'Mother', NULL, 'Sarker Agro Biotech', 'Dr. Md. Mozammel Hossain Sarker', '0181', 'MHK Agro', 'Dr. Mujammel Huq Khan', '0096', NULL, 1, 172, '2025-02-01 13:11:29', '2025-02-01 13:11:29'),
(170, 'Shah Mohammad Sagir', 1, '6726812556608', '1976-07-05', 'Abdul Latif Pradhan', 'Khodeja Begum', NULL, 1, 5, '01328972425', 'shah.sagir1976@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M/S. Helal Enterprise', 'Md. Helal Uddin', 'DMB#003', NULL, NULL, NULL, NULL, 1, 173, '2025-02-03 18:41:16', '2025-02-03 18:41:16'),
(171, 'Md. Jahangir  Alam', 1, '3288303288', '1971-12-16', 'Hazi Md. Azhar Uddin', 'Mst. Nurjahan Begum', 'Mst. Parvin Akter', 1, NULL, '01715332640', 'info@smsfeedsltd.com', NULL, 'Mst. Pervin Akter', NULL, NULL, NULL, 'Spouse', NULL, 'M/S. Hossain Enterprise', 'Md. Idris Ali', 'GMB#008', NULL, NULL, NULL, NULL, 1, 174, '2025-02-03 19:52:31', '2025-02-03 19:52:31'),
(172, 'MD. JASHIM UDDIN HAIDER', 1, '1510856463293', '1985-12-01', 'HAJEE NURUL ISLAM', 'JAHANARA BEGUM', 'N/A', 1, 1, NULL, 'pglcorporation85@gmail.com', 'MASTER DEGREE', 'n/a', '1510856463293', NULL, NULL, NULL, NULL, 'MS TRADING', 'MD SABIR HOSSAIN', '0002', 'MARS OMEGA LTD', 'MD SABIR HOSSAIN', '0194', NULL, 1, 175, '2025-02-04 18:59:19', '2025-02-04 18:59:19'),
(173, 'A K M Sadid Haq Rafee', 1, '5553800649', '1993-11-25', 'A K M Anis Ul Haque', 'Shahana Arju', 'Shamjida Jannat Sadia', 1, 3, '01767758616', 'rafeesadid@gmail.com', 'MBA', 'Shamjida Jannat Sadia', '1514838224', NULL, NULL, 'Wife', NULL, 'M/S FR Trading', 'Md. Fazle Rabby', 'GMB#0160', 'Janani Trading', 'Md. Humayan Kabir', 'DMB#0076', NULL, 1, 176, '2025-02-12 18:40:55', '2025-02-12 18:40:55');

-- --------------------------------------------------------

--
-- Table structure for table `mast_qualifications`
--

CREATE TABLE `mast_qualifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `is_delete` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mast_qualifications`
--

INSERT INTO `mast_qualifications` (`id`, `name`, `description`, `user_id`, `created_at`, `updated_at`, `status`, `is_delete`) VALUES
(1, 'Secondary School Certificate (SSC)', 'Admin Input', 1, '2024-02-18 00:06:56', '2024-02-18 00:06:56', 1, 0),
(2, 'Higher Secondary Certificate (HSC)', 'Admin Input', 1, '2024-02-18 00:06:56', '2024-02-18 00:06:56', 1, 0),
(3, 'Diploma in Engineering', 'Admin Input', 1, '2024-02-18 00:06:56', '2024-02-18 00:06:56', 1, 0),
(4, 'Bachelor Degree Certificate', 'Admin Input', 1, '2024-02-18 00:06:56', '2024-02-18 00:06:56', 1, 0),
(5, 'Master Degree Certificate', 'Admin Input', 1, '2024-02-18 00:06:56', '2024-02-18 00:06:56', 1, 0),
(6, 'Doctor of Philosophy (Ph.D.) Certificate', 'Admin Input', 1, '2024-02-18 00:06:56', '2024-02-18 00:06:56', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `member_types`
--

CREATE TABLE `member_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `prefix` varchar(255) DEFAULT NULL,
  `registration_fee` decimal(10,2) DEFAULT NULL,
  `monthly_fee` decimal(10,2) DEFAULT NULL,
  `annual_fee` decimal(10,2) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `is_delete` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `member_types`
--

INSERT INTO `member_types` (`id`, `name`, `prefix`, `registration_fee`, `monthly_fee`, `annual_fee`, `description`, `user_id`, `status`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 'Donor Member', '', 3000.00, 0.00, 4000.00, 'DR - 1', 1, 1, 0, '2024-02-18 00:06:56', '2024-02-18 00:06:56'),
(2, 'General Member', 'A-', 2000.00, 0.00, 4000.00, 'DR - 2', 1, 1, 0, '2024-02-18 00:06:56', '2024-02-18 00:06:56');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_08_27_075954_create_sessions_table', 1),
(7, '2022_09_08_043923_create_permission_tables', 1),
(8, '2023_06_01_100000_create_contacts_table', 1),
(9, '2023_07_01_000001_create_mast_qualifications_table', 1),
(10, '2023_07_02_000001_create_member_types_table', 1),
(11, '2023_07_02_000002_create_committee_types_table', 1),
(12, '2023_08_01_000001_create_info_personals_table', 1),
(13, '2023_08_01_000004_create_info_banks_table', 1),
(14, '2023_08_01_000005_create_info_companies_table', 1),
(15, '2023_08_01_000006_create_info_others_table', 1),
(16, '2023_08_01_000008_create_info_documents_table', 1),
(17, '2023_08_08_080000_create_fee_plans_table', 1),
(18, '2023_08_08_090000_create_payment_reasons_table', 1),
(19, '2023_08_08_090001_create_payment_methods_table', 1),
(20, '2023_08_08_090002_create_payment_numbers_table', 1),
(21, '2023_08_09_022210_create_transactions_table', 1),
(22, '2023_08_09_022211_create_payment_details_table', 1),
(23, '2023_08_09_022212_create_cards_table', 1),
(24, '2023_08_09_100001_create_galleries_table', 1),
(25, '2023_08_09_100002_create_gallery_images_table', 1),
(26, '2023_08_09_100003_create_events_table', 1),
(27, '2023_10_01_000000_create_event_registers_table', 1),
(28, '2023_10_01_000001_create_annual_fees_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 3),
(3, 'App\\Models\\User', 4),
(3, 'App\\Models\\User', 5),
(3, 'App\\Models\\User', 6),
(3, 'App\\Models\\User', 7),
(3, 'App\\Models\\User', 8),
(3, 'App\\Models\\User', 9),
(3, 'App\\Models\\User', 10),
(3, 'App\\Models\\User', 11),
(3, 'App\\Models\\User', 12),
(3, 'App\\Models\\User', 13),
(3, 'App\\Models\\User', 14),
(3, 'App\\Models\\User', 16),
(3, 'App\\Models\\User', 17),
(3, 'App\\Models\\User', 18),
(3, 'App\\Models\\User', 19),
(3, 'App\\Models\\User', 20),
(3, 'App\\Models\\User', 21),
(3, 'App\\Models\\User', 22),
(3, 'App\\Models\\User', 23),
(3, 'App\\Models\\User', 24),
(3, 'App\\Models\\User', 25),
(3, 'App\\Models\\User', 26),
(3, 'App\\Models\\User', 27),
(3, 'App\\Models\\User', 28),
(3, 'App\\Models\\User', 29),
(3, 'App\\Models\\User', 30),
(3, 'App\\Models\\User', 31),
(3, 'App\\Models\\User', 32),
(3, 'App\\Models\\User', 34),
(3, 'App\\Models\\User', 35),
(3, 'App\\Models\\User', 36),
(3, 'App\\Models\\User', 37),
(3, 'App\\Models\\User', 38),
(3, 'App\\Models\\User', 39),
(3, 'App\\Models\\User', 40),
(3, 'App\\Models\\User', 41),
(3, 'App\\Models\\User', 42),
(3, 'App\\Models\\User', 43),
(3, 'App\\Models\\User', 44),
(3, 'App\\Models\\User', 45),
(3, 'App\\Models\\User', 46),
(3, 'App\\Models\\User', 47),
(3, 'App\\Models\\User', 48),
(3, 'App\\Models\\User', 49),
(3, 'App\\Models\\User', 50),
(3, 'App\\Models\\User', 51),
(3, 'App\\Models\\User', 52),
(3, 'App\\Models\\User', 53),
(3, 'App\\Models\\User', 54),
(3, 'App\\Models\\User', 55),
(3, 'App\\Models\\User', 56),
(3, 'App\\Models\\User', 57),
(3, 'App\\Models\\User', 58),
(3, 'App\\Models\\User', 59),
(3, 'App\\Models\\User', 60),
(3, 'App\\Models\\User', 61),
(3, 'App\\Models\\User', 62),
(3, 'App\\Models\\User', 63),
(3, 'App\\Models\\User', 64),
(3, 'App\\Models\\User', 65),
(3, 'App\\Models\\User', 66),
(3, 'App\\Models\\User', 67),
(3, 'App\\Models\\User', 68),
(3, 'App\\Models\\User', 69),
(3, 'App\\Models\\User', 70),
(3, 'App\\Models\\User', 71),
(3, 'App\\Models\\User', 72),
(3, 'App\\Models\\User', 73),
(3, 'App\\Models\\User', 74),
(3, 'App\\Models\\User', 75),
(3, 'App\\Models\\User', 76),
(3, 'App\\Models\\User', 77),
(3, 'App\\Models\\User', 78),
(3, 'App\\Models\\User', 79),
(3, 'App\\Models\\User', 80),
(3, 'App\\Models\\User', 81),
(3, 'App\\Models\\User', 82),
(3, 'App\\Models\\User', 83),
(3, 'App\\Models\\User', 84),
(3, 'App\\Models\\User', 85),
(3, 'App\\Models\\User', 88),
(3, 'App\\Models\\User', 89),
(3, 'App\\Models\\User', 90),
(3, 'App\\Models\\User', 91),
(3, 'App\\Models\\User', 92),
(3, 'App\\Models\\User', 93),
(3, 'App\\Models\\User', 94),
(3, 'App\\Models\\User', 95),
(3, 'App\\Models\\User', 96),
(3, 'App\\Models\\User', 97),
(3, 'App\\Models\\User', 98),
(3, 'App\\Models\\User', 99),
(3, 'App\\Models\\User', 100),
(3, 'App\\Models\\User', 101),
(3, 'App\\Models\\User', 102),
(3, 'App\\Models\\User', 103),
(3, 'App\\Models\\User', 104),
(3, 'App\\Models\\User', 105),
(3, 'App\\Models\\User', 106),
(3, 'App\\Models\\User', 107),
(3, 'App\\Models\\User', 108),
(3, 'App\\Models\\User', 109),
(3, 'App\\Models\\User', 110),
(3, 'App\\Models\\User', 111),
(3, 'App\\Models\\User', 112),
(3, 'App\\Models\\User', 113),
(3, 'App\\Models\\User', 114),
(3, 'App\\Models\\User', 115),
(3, 'App\\Models\\User', 116),
(3, 'App\\Models\\User', 117),
(3, 'App\\Models\\User', 118),
(3, 'App\\Models\\User', 119),
(3, 'App\\Models\\User', 120),
(3, 'App\\Models\\User', 121),
(3, 'App\\Models\\User', 122),
(3, 'App\\Models\\User', 123),
(3, 'App\\Models\\User', 124),
(3, 'App\\Models\\User', 125),
(3, 'App\\Models\\User', 126),
(3, 'App\\Models\\User', 127),
(3, 'App\\Models\\User', 128),
(3, 'App\\Models\\User', 129),
(3, 'App\\Models\\User', 130),
(3, 'App\\Models\\User', 131),
(3, 'App\\Models\\User', 132),
(3, 'App\\Models\\User', 133),
(3, 'App\\Models\\User', 134),
(3, 'App\\Models\\User', 135),
(3, 'App\\Models\\User', 136),
(3, 'App\\Models\\User', 137),
(3, 'App\\Models\\User', 138),
(3, 'App\\Models\\User', 139),
(3, 'App\\Models\\User', 140),
(3, 'App\\Models\\User', 141),
(3, 'App\\Models\\User', 142),
(3, 'App\\Models\\User', 151),
(3, 'App\\Models\\User', 152),
(3, 'App\\Models\\User', 153),
(3, 'App\\Models\\User', 154),
(3, 'App\\Models\\User', 156),
(3, 'App\\Models\\User', 157),
(3, 'App\\Models\\User', 158),
(3, 'App\\Models\\User', 159),
(3, 'App\\Models\\User', 160),
(3, 'App\\Models\\User', 161),
(3, 'App\\Models\\User', 162),
(3, 'App\\Models\\User', 163),
(3, 'App\\Models\\User', 164),
(3, 'App\\Models\\User', 165),
(3, 'App\\Models\\User', 166),
(3, 'App\\Models\\User', 167),
(3, 'App\\Models\\User', 168),
(3, 'App\\Models\\User', 173),
(3, 'App\\Models\\User', 174);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_details`
--

CREATE TABLE `payment_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_date` date DEFAULT NULL,
  `paid_amount` decimal(10,2) DEFAULT NULL,
  `payment_number` varchar(255) DEFAULT NULL,
  `transaction_number` varchar(255) DEFAULT NULL,
  `payment_reason_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ref_reason_id` int(11) DEFAULT NULL,
  `transfer_number` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `slip` varchar(255) DEFAULT NULL,
  `transaction_id` bigint(20) UNSIGNED NOT NULL,
  `payment_method_id` bigint(20) UNSIGNED NOT NULL,
  `member_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_details`
--

INSERT INTO `payment_details` (`id`, `payment_date`, `paid_amount`, `payment_number`, `transaction_number`, `payment_reason_id`, `ref_reason_id`, `transfer_number`, `message`, `slip`, `transaction_id`, `payment_method_id`, `member_id`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, '2024-07-06', 120000.00, NULL, NULL, 1, NULL, NULL, NULL, 'document/member/3/bank-info/FILESLIP_1720245146.pdf', 1, 1, 3, NULL, 1, '2024-07-06 09:52:26', '2024-07-06 09:52:26'),
(2, '2024-07-06', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 2, 1, 4, NULL, 1, '2024-07-06 12:57:26', '2024-07-06 12:57:26'),
(3, '2024-07-06', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 3, 1, 5, NULL, 1, '2024-07-06 13:38:35', '2024-07-06 13:38:35'),
(4, '2024-07-06', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 4, 1, 6, NULL, 1, '2024-07-06 13:49:36', '2024-07-06 13:49:36'),
(5, '2024-07-06', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 5, 1, 7, NULL, 1, '2024-07-06 15:48:03', '2024-07-06 15:48:03'),
(6, '2024-07-06', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 6, 1, 8, NULL, 1, '2024-07-06 16:01:05', '2024-07-06 16:01:05'),
(7, '2024-07-06', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 7, 1, 9, NULL, 1, '2024-07-06 16:46:49', '2024-07-06 16:46:49'),
(8, '2024-07-06', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 8, 1, 10, NULL, 1, '2024-07-06 17:48:25', '2024-07-06 17:48:25'),
(9, '2024-07-06', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 9, 1, 11, NULL, 1, '2024-07-06 17:58:45', '2024-07-06 17:58:45'),
(10, '2024-07-06', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 10, 1, 12, NULL, 1, '2024-07-06 18:10:49', '2024-07-06 18:10:49'),
(11, '2024-07-06', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 11, 1, 13, NULL, 1, '2024-07-06 18:19:15', '2024-07-06 18:19:15'),
(12, '2024-07-06', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 12, 1, 14, NULL, 1, '2024-07-06 18:28:22', '2024-07-06 18:28:22'),
(14, '2024-07-06', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 14, 1, 16, NULL, 1, '2024-07-06 19:42:39', '2024-07-06 19:42:39'),
(15, '2024-07-07', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 15, 1, 17, NULL, 1, '2024-07-07 08:14:03', '2024-07-07 08:14:03'),
(16, '2024-07-07', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 16, 1, 18, NULL, 1, '2024-07-07 08:22:57', '2024-07-07 08:22:57'),
(17, '2024-07-10', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 17, 1, 19, NULL, 1, '2024-07-10 06:35:54', '2024-07-10 06:35:54'),
(18, '2024-07-10', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 18, 1, 20, NULL, 1, '2024-07-10 06:58:57', '2024-07-10 06:58:57'),
(19, '2024-07-10', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 19, 1, 21, NULL, 1, '2024-07-10 07:08:06', '2024-07-10 07:08:06'),
(20, '2024-07-10', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 20, 1, 22, NULL, 1, '2024-07-10 07:19:06', '2024-07-10 07:19:06'),
(21, '2024-07-10', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 21, 1, 23, NULL, 1, '2024-07-10 07:28:03', '2024-07-10 07:28:03'),
(22, '2024-07-10', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 22, 1, 24, NULL, 1, '2024-07-10 07:40:03', '2024-07-10 07:40:03'),
(23, '2024-07-10', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 23, 1, 25, NULL, 1, '2024-07-10 07:48:28', '2024-07-10 07:48:28'),
(24, '2024-07-10', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 24, 1, 26, NULL, 1, '2024-07-10 07:58:24', '2024-07-10 07:58:24'),
(25, '2024-07-10', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 25, 1, 27, NULL, 1, '2024-07-10 08:11:51', '2024-07-10 08:11:51'),
(26, '2024-07-11', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 26, 1, 28, NULL, 1, '2024-07-11 08:50:29', '2024-07-11 08:50:29'),
(27, '2024-07-11', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 27, 1, 29, NULL, 1, '2024-07-11 08:57:49', '2024-07-11 08:57:49'),
(28, '2024-07-11', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 28, 1, 30, NULL, 1, '2024-07-11 09:08:30', '2024-07-11 09:08:30'),
(29, '2024-07-11', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 29, 1, 31, NULL, 1, '2024-07-11 09:18:21', '2024-07-11 09:18:21'),
(30, '2024-07-11', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 30, 1, 32, NULL, 1, '2024-07-11 09:34:22', '2024-07-11 09:34:22'),
(32, '2024-07-11', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 32, 1, 34, NULL, 1, '2024-07-11 10:24:20', '2024-07-11 10:24:20'),
(33, '2024-07-11', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 33, 1, 35, NULL, 1, '2024-07-11 10:37:05', '2024-07-11 10:37:05'),
(34, '2024-07-11', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 34, 1, 36, NULL, 1, '2024-07-11 10:45:39', '2024-07-11 10:45:39'),
(35, '2024-07-11', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 35, 1, 37, NULL, 1, '2024-07-11 10:51:36', '2024-07-11 10:51:36'),
(36, '2024-07-11', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 36, 1, 38, NULL, 1, '2024-07-11 11:00:54', '2024-07-11 11:00:54'),
(37, '2024-07-11', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 37, 1, 39, NULL, 1, '2024-07-11 18:16:41', '2024-07-11 18:16:41'),
(38, '2024-07-11', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 38, 1, 40, NULL, 1, '2024-07-11 18:23:51', '2024-07-11 18:23:51'),
(39, '2024-07-11', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 39, 1, 41, NULL, 1, '2024-07-11 18:30:21', '2024-07-11 18:30:21'),
(40, '2024-07-11', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 40, 1, 42, NULL, 1, '2024-07-11 18:36:11', '2024-07-11 18:36:11'),
(41, '2024-07-11', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 41, 1, 43, NULL, 1, '2024-07-11 19:46:18', '2024-07-11 19:46:18'),
(42, '2024-07-11', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 42, 1, 44, NULL, 1, '2024-07-11 20:52:23', '2024-07-11 20:52:23'),
(43, '2024-07-11', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 43, 1, 45, NULL, 1, '2024-07-11 21:02:24', '2024-07-11 21:02:24'),
(44, '2024-07-12', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 44, 1, 46, NULL, 1, '2024-07-12 07:15:54', '2024-07-12 07:15:54'),
(45, '2024-07-13', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 45, 1, 47, NULL, 1, '2024-07-13 08:16:05', '2024-07-13 08:16:05'),
(46, '2024-07-13', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 46, 1, 48, NULL, 1, '2024-07-13 08:24:31', '2024-07-13 08:24:31'),
(47, '2024-07-13', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 47, 1, 49, NULL, 1, '2024-07-13 08:31:38', '2024-07-13 08:31:38'),
(48, '2024-07-13', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 48, 1, 50, NULL, 1, '2024-07-13 08:39:26', '2024-07-13 08:39:26'),
(49, '2024-07-13', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 49, 1, 51, NULL, 1, '2024-07-13 08:47:56', '2024-07-13 08:47:56'),
(50, '2024-07-13', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 50, 1, 52, NULL, 1, '2024-07-13 08:55:25', '2024-07-13 08:55:25'),
(51, '2024-07-13', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 51, 1, 53, NULL, 1, '2024-07-13 09:05:10', '2024-07-13 09:05:10'),
(52, '2024-07-13', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 52, 1, 54, NULL, 1, '2024-07-13 09:19:10', '2024-07-13 09:19:10'),
(53, '2024-07-13', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 53, 1, 55, NULL, 1, '2024-07-13 09:28:00', '2024-07-13 09:28:00'),
(54, '2024-07-13', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 54, 1, 56, NULL, 1, '2024-07-13 09:41:23', '2024-07-13 09:41:23'),
(55, '2024-07-13', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 55, 1, 57, NULL, 1, '2024-07-13 09:47:06', '2024-07-13 09:47:06'),
(56, '2024-07-13', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 56, 1, 58, NULL, 1, '2024-07-13 09:54:19', '2024-07-13 09:54:19'),
(57, '2024-07-13', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 57, 1, 59, NULL, 1, '2024-07-13 10:01:40', '2024-07-13 10:01:40'),
(58, '2024-07-13', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 58, 1, 60, NULL, 1, '2024-07-13 10:07:51', '2024-07-13 10:07:51'),
(59, '2024-07-13', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 59, 1, 61, NULL, 1, '2024-07-13 10:16:00', '2024-07-13 10:16:00'),
(60, '2024-07-13', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 60, 1, 62, NULL, 1, '2024-07-13 10:22:46', '2024-07-13 10:22:46'),
(61, '2024-07-13', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 61, 1, 63, NULL, 1, '2024-07-13 10:32:34', '2024-07-13 10:32:34'),
(62, '2024-07-13', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 62, 1, 64, NULL, 1, '2024-07-13 20:27:15', '2024-07-13 20:27:15'),
(63, '2024-07-13', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 63, 1, 65, NULL, 1, '2024-07-13 20:41:34', '2024-07-13 20:41:34'),
(64, '2024-07-13', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 64, 1, 66, NULL, 1, '2024-07-13 20:54:46', '2024-07-13 20:54:46'),
(65, '2024-07-13', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 65, 1, 67, NULL, 1, '2024-07-13 21:05:24', '2024-07-13 21:05:24'),
(66, '2024-07-13', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 66, 1, 68, NULL, 1, '2024-07-13 21:12:42', '2024-07-13 21:12:42'),
(67, '2024-07-13', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 67, 1, 69, NULL, 1, '2024-07-13 21:20:18', '2024-07-13 21:20:18'),
(68, '2024-07-13', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 68, 1, 70, NULL, 1, '2024-07-13 21:32:08', '2024-07-13 21:32:08'),
(69, '2024-07-14', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 69, 1, 71, NULL, 1, '2024-07-14 04:33:12', '2024-07-14 04:33:12'),
(70, '2024-07-14', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 70, 1, 72, NULL, 1, '2024-07-14 04:43:07', '2024-07-14 04:43:07'),
(71, '2024-07-14', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 71, 1, 73, NULL, 1, '2024-07-14 04:50:36', '2024-07-14 04:50:36'),
(72, '2024-07-14', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 72, 1, 74, NULL, 1, '2024-07-14 05:03:37', '2024-07-14 05:03:37'),
(73, '2024-07-14', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 73, 1, 75, NULL, 1, '2024-07-14 05:16:57', '2024-07-14 05:16:57'),
(74, '2024-07-14', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 74, 1, 76, NULL, 1, '2024-07-14 05:32:52', '2024-07-14 05:32:52'),
(75, '2024-07-14', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 75, 1, 77, NULL, 1, '2024-07-14 05:40:50', '2024-07-14 05:40:50'),
(76, '2024-07-14', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 76, 1, 78, NULL, 1, '2024-07-14 05:51:16', '2024-07-14 05:51:16'),
(77, '2024-07-14', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 77, 1, 79, NULL, 1, '2024-07-14 06:00:22', '2024-07-14 06:00:22'),
(78, '2024-07-14', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 78, 1, 80, NULL, 1, '2024-07-14 06:09:53', '2024-07-14 06:09:53'),
(79, '2024-07-14', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 79, 1, 81, NULL, 1, '2024-07-14 06:17:05', '2024-07-14 06:17:05'),
(80, '2024-07-14', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 80, 1, 82, NULL, 1, '2024-07-14 06:24:57', '2024-07-14 06:24:57'),
(81, '2024-07-14', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 81, 1, 83, NULL, 1, '2024-07-14 06:32:25', '2024-07-14 06:32:25'),
(82, '2024-07-14', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 82, 1, 84, NULL, 1, '2024-07-14 06:38:22', '2024-07-14 06:38:22'),
(83, '2024-07-14', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 83, 1, 85, NULL, 1, '2024-07-14 06:48:14', '2024-07-14 06:48:14'),
(86, '2024-07-26', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 86, 1, 88, NULL, 1, '2024-07-26 19:55:51', '2024-07-26 19:55:51'),
(87, '2024-07-26', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 87, 1, 89, NULL, 1, '2024-07-26 20:03:52', '2024-07-26 20:03:52'),
(88, '2024-07-26', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 88, 1, 90, NULL, 1, '2024-07-26 20:10:53', '2024-07-26 20:10:53'),
(89, '2024-07-26', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 89, 1, 91, NULL, 1, '2024-07-26 20:17:48', '2024-07-26 20:17:48'),
(90, '2024-07-26', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 90, 1, 92, NULL, 1, '2024-07-26 20:25:13', '2024-07-26 20:25:13'),
(91, '2024-07-26', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 91, 1, 93, NULL, 1, '2024-07-26 20:35:45', '2024-07-26 20:35:45'),
(92, '2024-07-26', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 92, 1, 94, NULL, 1, '2024-07-26 20:45:34', '2024-07-26 20:45:34'),
(93, '2024-07-26', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 93, 1, 95, NULL, 1, '2024-07-26 20:54:12', '2024-07-26 20:54:12'),
(94, '2024-07-26', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 94, 1, 96, NULL, 1, '2024-07-26 21:01:59', '2024-07-26 21:01:59'),
(95, '2024-07-26', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 95, 1, 97, NULL, 1, '2024-07-26 21:08:43', '2024-07-26 21:08:43'),
(96, '2024-07-26', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 96, 1, 98, NULL, 1, '2024-07-26 21:17:20', '2024-07-26 21:17:20'),
(97, '2024-07-26', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 97, 1, 99, NULL, 1, '2024-07-26 21:26:48', '2024-07-26 21:26:48'),
(98, '2024-07-27', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 98, 1, 100, NULL, 1, '2024-07-27 05:38:33', '2024-07-27 05:38:33'),
(99, '2024-07-27', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 99, 1, 101, NULL, 1, '2024-07-27 05:45:58', '2024-07-27 05:45:58'),
(101, '2024-07-27', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 101, 1, 103, NULL, 1, '2024-07-27 06:01:27', '2024-07-27 06:01:27'),
(102, '2024-07-27', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 102, 1, 104, NULL, 1, '2024-07-27 06:08:24', '2024-07-27 06:08:24'),
(103, '2024-07-27', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 103, 1, 105, NULL, 1, '2024-07-27 06:19:43', '2024-07-27 06:19:43'),
(104, '2024-07-27', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 104, 1, 106, NULL, 1, '2024-07-27 06:30:20', '2024-07-27 06:30:20'),
(105, '2024-07-27', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 105, 1, 107, NULL, 1, '2024-07-27 06:37:56', '2024-07-27 06:37:56'),
(106, '2024-07-27', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 106, 1, 108, NULL, 1, '2024-07-27 06:44:15', '2024-07-27 06:44:15'),
(107, '2024-07-27', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 107, 1, 109, NULL, 1, '2024-07-27 06:52:38', '2024-07-27 06:52:38'),
(108, '2024-07-27', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 108, 1, 110, NULL, 1, '2024-07-27 06:59:28', '2024-07-27 06:59:28'),
(109, '2024-07-27', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 109, 1, 111, NULL, 1, '2024-07-27 07:07:00', '2024-07-27 07:07:00'),
(110, '2024-07-27', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 110, 1, 112, NULL, 1, '2024-07-27 07:14:38', '2024-07-27 07:14:38'),
(111, '2024-07-27', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 111, 1, 113, NULL, 1, '2024-07-27 07:27:54', '2024-07-27 07:27:54'),
(112, '2024-07-27', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 112, 1, 114, NULL, 1, '2024-07-27 07:34:26', '2024-07-27 07:34:26'),
(113, '2024-07-27', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 113, 1, 115, NULL, 1, '2024-07-27 07:42:46', '2024-07-27 07:42:46'),
(114, '2024-07-27', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 114, 1, 116, NULL, 1, '2024-07-27 08:18:21', '2024-07-27 08:18:21'),
(115, '2024-07-28', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 115, 1, 117, NULL, 1, '2024-07-28 07:55:17', '2024-07-28 07:55:17'),
(116, '2024-07-28', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 116, 1, 118, NULL, 1, '2024-07-28 08:02:07', '2024-07-28 08:02:07'),
(117, '2024-07-28', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 117, 1, 119, NULL, 1, '2024-07-28 08:10:27', '2024-07-28 08:10:27'),
(118, '2024-07-28', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 118, 1, 120, NULL, 1, '2024-07-28 08:17:49', '2024-07-28 08:17:49'),
(119, '2024-07-28', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 119, 1, 121, NULL, 1, '2024-07-28 08:27:18', '2024-07-28 08:27:18'),
(120, '2024-07-28', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 120, 1, 122, NULL, 1, '2024-07-28 08:36:31', '2024-07-28 08:36:31'),
(121, '2024-07-28', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 121, 1, 123, NULL, 1, '2024-07-28 08:42:52', '2024-07-28 08:42:52'),
(122, '2024-07-28', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 122, 1, 124, NULL, 1, '2024-07-28 08:50:43', '2024-07-28 08:50:43'),
(123, '2024-07-28', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 123, 1, 125, NULL, 1, '2024-07-28 08:57:06', '2024-07-28 08:57:06'),
(124, '2024-07-28', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 124, 1, 126, NULL, 1, '2024-07-28 09:02:22', '2024-07-28 09:02:22'),
(125, '2024-07-28', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 125, 1, 127, NULL, 1, '2024-07-28 09:08:09', '2024-07-28 09:08:09'),
(126, '2024-07-30', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 126, 1, 128, NULL, 1, '2024-07-30 07:19:19', '2024-07-30 07:19:19'),
(127, '2024-07-30', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 127, 1, 129, NULL, 1, '2024-07-30 07:33:56', '2024-07-30 07:33:56'),
(128, '2024-07-30', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 128, 1, 130, NULL, 1, '2024-07-30 07:46:22', '2024-07-30 07:46:22'),
(129, '2024-07-30', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 129, 1, 131, NULL, 1, '2024-07-30 07:59:53', '2024-07-30 07:59:53'),
(130, '2024-07-30', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 130, 1, 132, NULL, 1, '2024-07-30 08:06:03', '2024-07-30 08:06:03'),
(131, '2024-07-30', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 131, 1, 133, NULL, 1, '2024-07-30 08:16:34', '2024-07-30 08:16:34'),
(132, '2024-08-21', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 132, 1, 134, NULL, 1, '2024-08-21 07:08:43', '2024-08-21 07:08:43'),
(133, '2024-08-21', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 133, 1, 135, NULL, 1, '2024-08-21 07:23:08', '2024-08-21 07:23:08'),
(134, '2024-08-21', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 134, 1, 136, NULL, 1, '2024-08-21 13:58:55', '2024-08-21 13:58:55'),
(135, '2024-08-21', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 135, 1, 137, NULL, 1, '2024-08-21 14:39:57', '2024-08-21 14:39:57'),
(136, '2024-08-22', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 136, 1, 138, NULL, 1, '2024-08-22 09:57:03', '2024-08-22 09:57:03'),
(137, '2024-08-22', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 137, 1, 139, NULL, 1, '2024-08-22 10:13:00', '2024-08-22 10:13:00'),
(138, '2024-08-22', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 138, 1, 140, NULL, 1, '2024-08-22 10:26:21', '2024-08-22 10:26:21'),
(139, '2024-08-22', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 139, 1, 141, NULL, 1, '2024-08-22 10:51:46', '2024-08-22 10:51:46'),
(140, '2024-09-07', 68000.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, 140, 1, 142, NULL, 1, '2024-09-07 06:56:04', '2024-09-07 06:56:04'),
(141, '2024-09-07', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 141, 1, 151, NULL, 1, '2024-09-07 07:35:17', '2024-09-07 07:35:17'),
(142, '2024-09-07', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 142, 1, 152, NULL, 1, '2024-09-07 07:50:38', '2024-09-07 07:50:38'),
(143, '2024-09-07', 68000.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, 143, 1, 153, NULL, 1, '2024-09-07 08:05:06', '2024-09-07 08:05:06'),
(144, '2024-09-16', 20000.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, 144, 1, 154, NULL, 1, '2024-09-16 15:37:49', '2024-09-16 15:37:49'),
(145, '2024-09-25', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 145, 1, 155, NULL, 1, '2024-09-25 10:20:30', '2024-09-25 10:20:30'),
(146, '2024-10-03', 68000.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, 146, 1, 156, NULL, 1, '2024-10-03 16:15:58', '2024-10-03 16:15:58'),
(147, '2024-10-03', 68000.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, 147, 1, 157, NULL, 1, '2024-10-03 17:00:12', '2024-10-03 17:00:12'),
(148, '2024-11-16', 68000.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, 148, 1, 158, NULL, 1, '2024-11-16 08:57:54', '2024-11-16 08:57:54'),
(149, '2024-11-16', 68000.00, NULL, NULL, 1, NULL, NULL, NULL, 'document/member/159/bank-info/FILESLIP_1731730658.jpg', 149, 1, 159, NULL, 1, '2024-11-16 09:17:38', '2024-11-16 09:17:38'),
(150, '2024-11-16', 68000.00, NULL, NULL, 1, NULL, NULL, NULL, 'document/member/160/bank-info/FILESLIP_1731733357.pdf', 150, 1, 160, NULL, 1, '2024-11-16 10:02:37', '2024-11-16 10:02:37'),
(151, '2024-11-16', 68000.00, NULL, NULL, 1, NULL, NULL, NULL, 'document/member/161/bank-info/FILESLIP_1731734304.pdf', 151, 1, 161, NULL, 1, '2024-11-16 10:18:24', '2024-11-16 10:18:24'),
(152, '2024-11-16', 68000.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, 152, 1, 162, NULL, 1, '2024-11-16 11:01:01', '2024-11-16 11:01:01'),
(153, '2024-11-16', 68000.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, 153, 1, 163, NULL, 1, '2024-11-16 11:16:51', '2024-11-16 11:16:51'),
(154, '2024-11-16', 68000.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, 154, 1, 164, NULL, 1, '2024-11-16 11:31:26', '2024-11-16 11:31:26'),
(155, '2025-01-13', 65000.00, NULL, NULL, 1, NULL, NULL, NULL, 'document/member/165/bank-info/FILESLIP_1736773705.pdf', 155, 1, 165, NULL, 1, '2025-01-13 18:08:25', '2025-01-13 18:08:25'),
(156, '2025-01-13', 68000.00, NULL, NULL, 1, NULL, NULL, NULL, 'document/member/166/bank-info/FILESLIP_1736774884.pdf', 156, 1, 166, NULL, 1, '2025-01-13 18:28:04', '2025-01-13 18:28:04'),
(157, '2025-01-13', 80000.00, NULL, NULL, 1, NULL, NULL, NULL, 'document/member/167/bank-info/FILESLIP_1736778158.pdf', 157, 1, 167, NULL, 1, '2025-01-13 19:22:38', '2025-01-13 19:22:38'),
(158, '2025-01-13', 83000.00, NULL, NULL, 1, NULL, NULL, NULL, 'document/member/168/bank-info/FILESLIP_1736780300.pdf', 158, 1, 168, NULL, 1, '2025-01-13 19:58:20', '2025-01-13 19:58:20'),
(159, '2025-01-26', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 159, 1, 170, NULL, 1, '2025-01-26 16:57:12', '2025-01-26 16:57:12'),
(160, '2025-01-29', 80000.00, NULL, NULL, 1, NULL, NULL, NULL, 'document/member/171/bank-info/FILESLIP_1738146675.jpg', 160, 1, 171, NULL, 1, '2025-01-29 15:31:15', '2025-01-29 15:31:15'),
(161, '2025-02-01', 80000.00, NULL, NULL, 1, NULL, NULL, NULL, 'document/member/172/bank-info/FILESLIP_1738397490.jpeg', 161, 1, 172, NULL, 1, '2025-02-01 13:11:30', '2025-02-01 13:11:30'),
(162, '2025-02-03', 120000.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, 162, 1, 173, NULL, 1, '2025-02-03 18:41:16', '2025-02-03 18:41:16'),
(163, '2025-02-03', 20000.00, NULL, NULL, 1, NULL, NULL, NULL, NULL, 163, 1, 174, NULL, 1, '2025-02-03 19:52:31', '2025-02-03 19:52:31'),
(164, '2025-02-04', 68000.00, NULL, NULL, 1, NULL, NULL, NULL, 'document/member/175/bank-info/FILESLIP_1738677560.jpeg', 164, 1, 175, NULL, 1, '2025-02-04 18:59:20', '2025-02-04 18:59:20'),
(165, '2025-02-12', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 165, 1, 176, NULL, 1, '2025-02-12 18:40:55', '2025-02-12 18:40:55');

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `name`, `image_path`, `status`, `created_at`, `updated_at`) VALUES
(1, 'bKash', 'bKash.png', 1, '2024-02-18 00:06:56', '2024-02-18 00:06:56'),
(2, 'City-Bank', 'city-bank.png', 1, '2024-02-18 00:06:56', '2024-02-18 00:06:56');

-- --------------------------------------------------------

--
-- Table structure for table `payment_numbers`
--

CREATE TABLE `payment_numbers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `number` varchar(255) DEFAULT NULL,
  `payment_reason_id` bigint(20) UNSIGNED NOT NULL,
  `ref_reason_id` int(11) DEFAULT NULL,
  `payment_method_id` bigint(20) UNSIGNED NOT NULL,
  `member_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_reasons`
--

CREATE TABLE `payment_reasons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_reasons`
--

INSERT INTO `payment_reasons` (`id`, `name`, `description`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Membership', NULL, 1, 0, '2024-02-18 00:06:56', '2024-02-18 00:06:56'),
(2, 'Event', NULL, 1, 0, '2024-02-18 00:06:56', '2024-02-18 00:06:56'),
(3, 'Annual', NULL, 1, 0, '2024-02-18 00:06:56', '2024-02-18 00:06:56');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Member menu access', 'web', '2024-02-18 00:06:54', '2024-02-18 00:06:54'),
(2, 'Payment menu access', 'web', '2024-02-18 00:06:54', '2024-02-18 00:06:54'),
(3, 'Post menu access', 'web', '2024-02-18 00:06:54', '2024-02-18 00:06:54'),
(4, 'Setting menu access', 'web', '2024-02-18 00:06:54', '2024-02-18 00:06:54'),
(5, 'Member access', 'web', '2024-02-18 00:06:54', '2024-02-18 00:06:54'),
(6, 'Member edit', 'web', '2024-02-18 00:06:54', '2024-02-18 00:06:54'),
(7, 'Member view', 'web', '2024-02-18 00:06:54', '2024-02-18 00:06:54'),
(8, 'Member delete', 'web', '2024-02-18 00:06:54', '2024-02-18 00:06:54'),
(9, 'Member approve access', 'web', '2024-02-18 00:06:54', '2024-02-18 00:06:54'),
(10, 'Member approved', 'web', '2024-02-18 00:06:54', '2024-02-18 00:06:54'),
(11, 'Member approve record', 'web', '2024-02-18 00:06:54', '2024-02-18 00:06:54'),
(12, 'CommitteeType access', 'web', '2024-02-18 00:06:54', '2024-02-18 00:06:54'),
(13, 'CommitteeType create', 'web', '2024-02-18 00:06:54', '2024-02-18 00:06:54'),
(14, 'CommitteeType edit', 'web', '2024-02-18 00:06:54', '2024-02-18 00:06:54'),
(15, 'CommitteeType view', 'web', '2024-02-18 00:06:54', '2024-02-18 00:06:54'),
(16, 'CommitteeType delete', 'web', '2024-02-18 00:06:54', '2024-02-18 00:06:54'),
(17, 'MemberType access', 'web', '2024-02-18 00:06:54', '2024-02-18 00:06:54'),
(18, 'MemberType create', 'web', '2024-02-18 00:06:54', '2024-02-18 00:06:54'),
(19, 'MemberType edit', 'web', '2024-02-18 00:06:54', '2024-02-18 00:06:54'),
(20, 'MemberType view', 'web', '2024-02-18 00:06:54', '2024-02-18 00:06:54'),
(21, 'MemberType delete', 'web', '2024-02-18 00:06:54', '2024-02-18 00:06:54'),
(22, 'Qualification access', 'web', '2024-02-18 00:06:54', '2024-02-18 00:06:54'),
(23, 'Qualification create', 'web', '2024-02-18 00:06:54', '2024-02-18 00:06:54'),
(24, 'Qualification edit', 'web', '2024-02-18 00:06:54', '2024-02-18 00:06:54'),
(25, 'Qualification view', 'web', '2024-02-18 00:06:54', '2024-02-18 00:06:54'),
(26, 'Qualification delete', 'web', '2024-02-18 00:06:54', '2024-02-18 00:06:54'),
(27, 'Annual fees access', 'web', '2024-02-18 00:06:54', '2024-02-18 00:06:54'),
(28, 'Annual fees approved', 'web', '2024-02-18 00:06:54', '2024-02-18 00:06:54'),
(29, 'Annual fees record', 'web', '2024-02-18 00:06:54', '2024-02-18 00:06:54'),
(30, 'Event fees access', 'web', '2024-02-18 00:06:54', '2024-02-18 00:06:54'),
(31, 'Event fees approved', 'web', '2024-02-18 00:06:54', '2024-02-18 00:06:54'),
(32, 'Event fees record', 'web', '2024-02-18 00:06:54', '2024-02-18 00:06:54'),
(33, 'Membership fees access', 'web', '2024-02-18 00:06:54', '2024-02-18 00:06:54'),
(34, 'Membership fees approved', 'web', '2024-02-18 00:06:54', '2024-02-18 00:06:54'),
(35, 'Membership fees record', 'web', '2024-02-18 00:06:55', '2024-02-18 00:06:55'),
(36, 'Pyment number access', 'web', '2024-02-18 00:06:55', '2024-02-18 00:06:55'),
(37, 'Pyment number create', 'web', '2024-02-18 00:06:55', '2024-02-18 00:06:55'),
(38, 'Pyment number edit', 'web', '2024-02-18 00:06:55', '2024-02-18 00:06:55'),
(39, 'Pyment number view', 'web', '2024-02-18 00:06:55', '2024-02-18 00:06:55'),
(40, 'Pyment number delete', 'web', '2024-02-18 00:06:55', '2024-02-18 00:06:55'),
(41, 'Pyment fees access', 'web', '2024-02-18 00:06:55', '2024-02-18 00:06:55'),
(42, 'Pyment annual fees', 'web', '2024-02-18 00:06:55', '2024-02-18 00:06:55'),
(43, 'Pyment membership fees', 'web', '2024-02-18 00:06:55', '2024-02-18 00:06:55'),
(44, 'Gallery access', 'web', '2024-02-18 00:06:55', '2024-02-18 00:06:55'),
(45, 'Gallery create', 'web', '2024-02-18 00:06:55', '2024-02-18 00:06:55'),
(46, 'Gallery edit', 'web', '2024-02-18 00:06:55', '2024-02-18 00:06:55'),
(47, 'Gallery delete', 'web', '2024-02-18 00:06:55', '2024-02-18 00:06:55'),
(48, 'Event access', 'web', '2024-02-18 00:06:55', '2024-02-18 00:06:55'),
(49, 'Event create', 'web', '2024-02-18 00:06:55', '2024-02-18 00:06:55'),
(50, 'Event edit', 'web', '2024-02-18 00:06:55', '2024-02-18 00:06:55'),
(51, 'Event delete', 'web', '2024-02-18 00:06:55', '2024-02-18 00:06:55'),
(52, 'Contact access', 'web', '2024-02-18 00:06:55', '2024-02-18 00:06:55'),
(53, 'Contact reply', 'web', '2024-02-18 00:06:55', '2024-02-18 00:06:55'),
(54, 'Contact delete', 'web', '2024-02-18 00:06:55', '2024-02-18 00:06:55'),
(55, 'Role access', 'web', '2024-02-18 00:06:55', '2024-02-18 00:06:55'),
(56, 'Role create', 'web', '2024-02-18 00:06:55', '2024-02-18 00:06:55'),
(57, 'Role edit', 'web', '2024-02-18 00:06:55', '2024-02-18 00:06:55'),
(58, 'Role delete', 'web', '2024-02-18 00:06:55', '2024-02-18 00:06:55'),
(59, 'User access', 'web', '2024-02-18 00:06:55', '2024-02-18 00:06:55'),
(60, 'User create', 'web', '2024-02-18 00:06:55', '2024-02-18 00:06:55'),
(61, 'User edit', 'web', '2024-02-18 00:06:55', '2024-02-18 00:06:55'),
(62, 'User delete', 'web', '2024-02-18 00:06:55', '2024-02-18 00:06:55'),
(63, 'Super-Admin', 'web', '2024-02-18 00:06:55', '2024-02-18 00:06:55'),
(64, 'Admin', 'web', '2024-02-18 00:06:55', '2024-02-18 00:06:55'),
(65, 'Member', 'web', '2024-02-18 00:06:55', '2024-02-18 00:06:55'),
(66, 'Data Setting', 'web', '2024-02-18 00:06:55', '2024-02-18 00:06:55'),
(67, 'Student Member', 'web', '2024-02-18 00:06:55', '2024-02-18 00:06:55'),
(68, 'Candidate Member', 'web', '2024-02-18 00:06:55', '2024-02-18 00:06:55'),
(69, 'Professional Member', 'web', '2024-02-18 00:06:55', '2024-02-18 00:06:55'),
(70, 'Associate Member', 'web', '2024-02-18 00:06:55', '2024-02-18 00:06:55'),
(71, 'Trade Member', 'web', '2024-02-18 00:06:55', '2024-02-18 00:06:55'),
(72, 'Corporate Member', 'web', '2024-02-18 00:06:55', '2024-02-18 00:06:55');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Super-Admin', 'web', '2024-02-18 00:06:53', '2024-02-18 00:06:53'),
(2, 'Admin', 'web', '2024-02-18 00:06:53', '2024-02-18 00:06:53'),
(3, 'Member', 'web', '2024-02-18 00:06:53', '2024-02-18 00:06:53');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(44, 2),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(65, 2),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('4M7zdgZyhRGtmpGjkBmjmWKxi3DdKHKdOpnn4joB', NULL, '138.197.47.45', 'Mozilla/5.0 (compatible)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVlQ2TUR6Nm82MGp1SHpWZ3hRU0xoQkpmaFlYbVp5VXdWNVJQYjdWYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9iYWZpaXRhLm9yZy5iZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1739686667),
('AaW4YzA1cOthGURvRXayPlEC1EqpWHiDNwWbqUHb', NULL, '207.46.13.107', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQVFZZER0N1RCeWkybDBmUnFvNWl2Mjg4TE5XRGp1U1NWYlhYcDZnWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHBzOi8vd3d3LmJhZmlpdGEub3JnLmJkL3BhZ2VzL2Fib3V0LXVzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1739691851),
('AeJlkExX901k7cPeMbnhke098JR0mSIVgz50kKtQ', NULL, '37.111.212.191', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSHdaaW1jMGRMSWFKTzQ2Ulpjb09nUjVnSTFJNTNWczdrUk5pMXdVeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHBzOi8vd3d3LmJhZmlpdGEub3JnLmJkL3BhZ2VzLzAvbWVtYmVyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1739697177),
('cXheDgTiWQSlr7A9LmIxghx9JbBBXcrxKfgXsIO2', NULL, '72.14.201.130', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Mobile Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoianBhVTZFeWpXSU5ORnhtWlJUQVdJOTdaSHQ0MHlkemI5UDBOS2o0eiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1739689988),
('dixrewXXYdzg6Xqpn7NP84zxEw0YAxS9rIYScujR', NULL, '66.249.64.37', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.6943.53 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibUJtRHQzMFVzUTMwYkxiZTh3QVFEWXl1Z2dwUHg0Q1Z3TGExN3Y2VCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHBzOi8vd3d3LmJhZmlpdGEub3JnLmJkL3BhZ2VzL2Fib3V0LXVzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1739729985),
('eBpfXLxfT8WGFEo1RD26elJ0WDuFyPbprUNyozQy', NULL, '42.113.129.150', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUHM4OXVLcURkakFlbHdJdkphN0d2TlJMaWRidmNvZkdUdFV5c01vViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHBzOi8vd3d3LmJhZmlpdGEub3JnLmJkL3BhZ2VzLzAvbWVtYmVyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1739700263),
('jSfHg49ZdnARg6DRM4yB7NIcVOaG20N8HeodJRU7', NULL, '58.145.186.128', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOGkydDh5cnV4aVlEVUtJMnVwNXlmT210dUlEU1p4cFd0NE8yVVFaRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHBzOi8vd3d3LmJhZmlpdGEub3JnLmJkL3BhZ2VzLzAvbWVtYmVyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1739729586),
('kALqAiAq75JsRkdWVI2ikN9mdLrPOGjfls8whcrv', NULL, '103.73.199.15', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYWZMR0NBM1phSXJTNU5hQTVFaVNueXBUandHU0FtaHh5MjZQR0ZVUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHBzOi8vd3d3LmJhZmlpdGEub3JnLmJkL3BhZ2VzLzAvbWVtYmVyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1739776175),
('kHTWezOkAdXwxKKBy673t95TtpV9yKNCJpFqkAnM', NULL, '138.197.47.45', 'Mozilla/5.0 (compatible)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMHQ3c205b3ZPUjRxd2xEa25vczB4SlJHaXJyUm9GTHNocjRURklMMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHBzOi8vYmFmaWl0YS5vcmcuYmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1739686669),
('lsnF80LN9lcO0G3cgnX0BhACveZP8CVAQzBcHW77', NULL, '104.131.81.103', 'Mozilla/5.0 (compatible)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWVcxSjVDQzI1M3BXTENSTHF6ZHVGeVl2NWtHNHlaNTBHaFRldzNabiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHBzOi8vd3d3LmJhZmlpdGEub3JnLmJkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1739692169),
('p5Wxm4HfEzSurTsvoHwFSnzxjK4Vek5T03dxID2Q', NULL, '175.44.42.112', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0 Mobile/15E148 Safari/605.1.15', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUVluTnI4aFlIckswcFN6TTg1aFI4OUI4eTMwaXJUNGNZU0FhOHJJbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9iYWZpaXRhLm9yZy5iZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1739761350),
('ROTXldx0c37b5NFm5ZFkX9ZvB6jN0gKAx62ZlkhV', NULL, '95.108.213.126', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia2lSUGxONU55d0xXWnk2UDJ4ZEpvdHhBRHRBOWF4SFRaUjZFMFJZViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTM6Imh0dHBzOi8vd3d3LmJhZmlpdGEub3JnLmJkL3BhZ2VzL2dhbGxlcnktaW1hZ2UvNi9zaG93Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1739686866),
('tCM2tnNAkifsrDdZFhfz8V4E6qz6fMIaIk8RdLDo', NULL, '103.135.136.6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT0FnS3NPU2NRQ1phbThSWE5uMllHWWtZWW9GRDRwRVhKaVFZNHpzeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHBzOi8vd3d3LmJhZmlpdGEub3JnLmJkL3BhZ2VzLzAvbWVtYmVyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1739713214),
('uYosPlIckZ3Unt0zKVYwPX8hlxGQDvZhYsWpatrH', NULL, '103.135.136.6', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaWZYdTBHeWp0cE83R3l4bWMyNkZ3QzFFV0xXOUZqQkRFaGxpUW9zUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHBzOi8vd3d3LmJhZmlpdGEub3JnLmJkL3BhZ2VzLzAvbWVtYmVyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1739772394),
('VWOEiaQj5ZMI0yYZbWKykGugzFHoDN0AketaLSwX', NULL, '104.131.81.103', 'Mozilla/5.0 (compatible)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMGhMWFoyMHJVdHQ4NHpIaWFBTEI2MWpKOWNZNXowa0lXcFFDTGQyVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHA6Ly93d3cuYmFmaWl0YS5vcmcuYmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1739692167),
('ZQg0ejWF6mjqUY1CTy0MrqD3kAt1z6NJWcKLWG4v', NULL, '103.135.136.6', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicDh5NXhvR25sWEVGQ1VMUzlDRWtPZk5TMU1iU2JxMnZJZWFKdXd3aiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHBzOi8vd3d3LmJhZmlpdGEub3JnLmJkL3BhZ2VzLzAvbWVtYmVyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1739766164);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `transaction_type` tinyint(4) NOT NULL DEFAULT 1,
  `transaction_id` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `payment_method_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `amount`, `transaction_type`, `transaction_id`, `status`, `payment_method_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 120000.00, 1, NULL, 1, 1, 3, '2024-07-06 09:52:26', '2024-07-06 09:52:26'),
(2, NULL, 1, NULL, 1, 1, 4, '2024-07-06 12:57:26', '2024-07-06 12:57:26'),
(3, NULL, 1, NULL, 1, 1, 5, '2024-07-06 13:38:35', '2024-07-06 13:38:35'),
(4, NULL, 1, NULL, 1, 1, 6, '2024-07-06 13:49:36', '2024-07-06 13:49:36'),
(5, NULL, 1, NULL, 1, 1, 7, '2024-07-06 15:48:03', '2024-07-06 15:48:03'),
(6, NULL, 1, NULL, 1, 1, 8, '2024-07-06 16:01:05', '2024-07-06 16:01:05'),
(7, NULL, 1, NULL, 1, 1, 9, '2024-07-06 16:46:49', '2024-07-06 16:46:49'),
(8, NULL, 1, NULL, 1, 1, 10, '2024-07-06 17:48:25', '2024-07-06 17:48:25'),
(9, NULL, 1, NULL, 1, 1, 11, '2024-07-06 17:58:45', '2024-07-06 17:58:45'),
(10, NULL, 1, NULL, 1, 1, 12, '2024-07-06 18:10:49', '2024-07-06 18:10:49'),
(11, NULL, 1, NULL, 1, 1, 13, '2024-07-06 18:19:15', '2024-07-06 18:19:15'),
(12, NULL, 1, NULL, 1, 1, 14, '2024-07-06 18:28:22', '2024-07-06 18:28:22'),
(14, NULL, 1, NULL, 1, 1, 16, '2024-07-06 19:42:39', '2024-07-06 19:42:39'),
(15, NULL, 1, NULL, 1, 1, 17, '2024-07-07 08:14:03', '2024-07-07 08:14:03'),
(16, NULL, 1, NULL, 1, 1, 18, '2024-07-07 08:22:57', '2024-07-07 08:22:57'),
(17, NULL, 1, NULL, 1, 1, 19, '2024-07-10 06:35:54', '2024-07-10 06:35:54'),
(18, NULL, 1, NULL, 1, 1, 20, '2024-07-10 06:58:57', '2024-07-10 06:58:57'),
(19, NULL, 1, NULL, 1, 1, 21, '2024-07-10 07:08:06', '2024-07-10 07:08:06'),
(20, NULL, 1, NULL, 1, 1, 22, '2024-07-10 07:19:06', '2024-07-10 07:19:06'),
(21, NULL, 1, NULL, 1, 1, 23, '2024-07-10 07:28:03', '2024-07-10 07:28:03'),
(22, NULL, 1, NULL, 1, 1, 24, '2024-07-10 07:40:03', '2024-07-10 07:40:03'),
(23, NULL, 1, NULL, 1, 1, 25, '2024-07-10 07:48:28', '2024-07-10 07:48:28'),
(24, NULL, 1, NULL, 1, 1, 26, '2024-07-10 07:58:24', '2024-07-10 07:58:24'),
(25, NULL, 1, NULL, 1, 1, 27, '2024-07-10 08:11:51', '2024-07-10 08:11:51'),
(26, NULL, 1, NULL, 1, 1, 28, '2024-07-11 08:50:29', '2024-07-11 08:50:29'),
(27, NULL, 1, NULL, 1, 1, 29, '2024-07-11 08:57:49', '2024-07-11 08:57:49'),
(28, NULL, 1, NULL, 1, 1, 30, '2024-07-11 09:08:30', '2024-07-11 09:08:30'),
(29, NULL, 1, NULL, 1, 1, 31, '2024-07-11 09:18:21', '2024-07-11 09:18:21'),
(30, NULL, 1, NULL, 1, 1, 32, '2024-07-11 09:34:22', '2024-07-11 09:34:22'),
(32, NULL, 1, NULL, 1, 1, 34, '2024-07-11 10:24:20', '2024-07-11 10:24:20'),
(33, NULL, 1, NULL, 1, 1, 35, '2024-07-11 10:37:05', '2024-07-11 10:37:05'),
(34, NULL, 1, NULL, 1, 1, 36, '2024-07-11 10:45:39', '2024-07-11 10:45:39'),
(35, NULL, 1, NULL, 1, 1, 37, '2024-07-11 10:51:36', '2024-07-11 10:51:36'),
(36, NULL, 1, NULL, 1, 1, 38, '2024-07-11 11:00:54', '2024-07-11 11:00:54'),
(37, NULL, 1, NULL, 1, 1, 39, '2024-07-11 18:16:41', '2024-07-11 18:16:41'),
(38, NULL, 1, NULL, 1, 1, 40, '2024-07-11 18:23:50', '2024-07-11 18:23:50'),
(39, NULL, 1, NULL, 1, 1, 41, '2024-07-11 18:30:21', '2024-07-11 18:30:21'),
(40, NULL, 1, NULL, 1, 1, 42, '2024-07-11 18:36:11', '2024-07-11 18:36:11'),
(41, NULL, 1, NULL, 1, 1, 43, '2024-07-11 19:46:18', '2024-07-11 19:46:18'),
(42, NULL, 1, NULL, 1, 1, 44, '2024-07-11 20:52:23', '2024-07-11 20:52:23'),
(43, NULL, 1, NULL, 1, 1, 45, '2024-07-11 21:02:24', '2024-07-11 21:02:24'),
(44, NULL, 1, NULL, 1, 1, 46, '2024-07-12 07:15:54', '2024-07-12 07:15:54'),
(45, NULL, 1, NULL, 1, 1, 47, '2024-07-13 08:16:05', '2024-07-13 08:16:05'),
(46, NULL, 1, NULL, 1, 1, 48, '2024-07-13 08:24:31', '2024-07-13 08:24:31'),
(47, NULL, 1, NULL, 1, 1, 49, '2024-07-13 08:31:38', '2024-07-13 08:31:38'),
(48, NULL, 1, NULL, 1, 1, 50, '2024-07-13 08:39:26', '2024-07-13 08:39:26'),
(49, NULL, 1, NULL, 1, 1, 51, '2024-07-13 08:47:56', '2024-07-13 08:47:56'),
(50, NULL, 1, NULL, 1, 1, 52, '2024-07-13 08:55:25', '2024-07-13 08:55:25'),
(51, NULL, 1, NULL, 1, 1, 53, '2024-07-13 09:05:10', '2024-07-13 09:05:10'),
(52, NULL, 1, NULL, 1, 1, 54, '2024-07-13 09:19:10', '2024-07-13 09:19:10'),
(53, NULL, 1, NULL, 1, 1, 55, '2024-07-13 09:28:00', '2024-07-13 09:28:00'),
(54, NULL, 1, NULL, 1, 1, 56, '2024-07-13 09:41:23', '2024-07-13 09:41:23'),
(55, NULL, 1, NULL, 1, 1, 57, '2024-07-13 09:47:06', '2024-07-13 09:47:06'),
(56, NULL, 1, NULL, 1, 1, 58, '2024-07-13 09:54:19', '2024-07-13 09:54:19'),
(57, NULL, 1, NULL, 1, 1, 59, '2024-07-13 10:01:40', '2024-07-13 10:01:40'),
(58, NULL, 1, NULL, 1, 1, 60, '2024-07-13 10:07:51', '2024-07-13 10:07:51'),
(59, NULL, 1, NULL, 1, 1, 61, '2024-07-13 10:16:00', '2024-07-13 10:16:00'),
(60, NULL, 1, NULL, 1, 1, 62, '2024-07-13 10:22:46', '2024-07-13 10:22:46'),
(61, NULL, 1, NULL, 1, 1, 63, '2024-07-13 10:32:34', '2024-07-13 10:32:34'),
(62, NULL, 1, NULL, 1, 1, 64, '2024-07-13 20:27:15', '2024-07-13 20:27:15'),
(63, NULL, 1, NULL, 1, 1, 65, '2024-07-13 20:41:34', '2024-07-13 20:41:34'),
(64, NULL, 1, NULL, 1, 1, 66, '2024-07-13 20:54:45', '2024-07-13 20:54:45'),
(65, NULL, 1, NULL, 1, 1, 67, '2024-07-13 21:05:24', '2024-07-13 21:05:24'),
(66, NULL, 1, NULL, 1, 1, 68, '2024-07-13 21:12:42', '2024-07-13 21:12:42'),
(67, NULL, 1, NULL, 1, 1, 69, '2024-07-13 21:20:18', '2024-07-13 21:20:18'),
(68, NULL, 1, NULL, 1, 1, 70, '2024-07-13 21:32:08', '2024-07-13 21:32:08'),
(69, NULL, 1, NULL, 1, 1, 71, '2024-07-14 04:33:12', '2024-07-14 04:33:12'),
(70, NULL, 1, NULL, 1, 1, 72, '2024-07-14 04:43:07', '2024-07-14 04:43:07'),
(71, NULL, 1, NULL, 1, 1, 73, '2024-07-14 04:50:36', '2024-07-14 04:50:36'),
(72, NULL, 1, NULL, 1, 1, 74, '2024-07-14 05:03:37', '2024-07-14 05:03:37'),
(73, NULL, 1, NULL, 1, 1, 75, '2024-07-14 05:16:57', '2024-07-14 05:16:57'),
(74, NULL, 1, NULL, 1, 1, 76, '2024-07-14 05:32:52', '2024-07-14 05:32:52'),
(75, NULL, 1, NULL, 1, 1, 77, '2024-07-14 05:40:50', '2024-07-14 05:40:50'),
(76, NULL, 1, NULL, 1, 1, 78, '2024-07-14 05:51:16', '2024-07-14 05:51:16'),
(77, NULL, 1, NULL, 1, 1, 79, '2024-07-14 06:00:22', '2024-07-14 06:00:22'),
(78, NULL, 1, NULL, 1, 1, 80, '2024-07-14 06:09:53', '2024-07-14 06:09:53'),
(79, NULL, 1, NULL, 1, 1, 81, '2024-07-14 06:17:05', '2024-07-14 06:17:05'),
(80, NULL, 1, NULL, 1, 1, 82, '2024-07-14 06:24:57', '2024-07-14 06:24:57'),
(81, NULL, 1, NULL, 1, 1, 83, '2024-07-14 06:32:25', '2024-07-14 06:32:25'),
(82, NULL, 1, NULL, 1, 1, 84, '2024-07-14 06:38:22', '2024-07-14 06:38:22'),
(83, NULL, 1, NULL, 1, 1, 85, '2024-07-14 06:48:14', '2024-07-14 06:48:14'),
(86, NULL, 1, NULL, 1, 1, 88, '2024-07-26 19:55:51', '2024-07-26 19:55:51'),
(87, NULL, 1, NULL, 1, 1, 89, '2024-07-26 20:03:52', '2024-07-26 20:03:52'),
(88, NULL, 1, NULL, 1, 1, 90, '2024-07-26 20:10:53', '2024-07-26 20:10:53'),
(89, NULL, 1, NULL, 1, 1, 91, '2024-07-26 20:17:48', '2024-07-26 20:17:48'),
(90, NULL, 1, NULL, 1, 1, 92, '2024-07-26 20:25:13', '2024-07-26 20:25:13'),
(91, NULL, 1, NULL, 1, 1, 93, '2024-07-26 20:35:45', '2024-07-26 20:35:45'),
(92, NULL, 1, NULL, 1, 1, 94, '2024-07-26 20:45:34', '2024-07-26 20:45:34'),
(93, NULL, 1, NULL, 1, 1, 95, '2024-07-26 20:54:12', '2024-07-26 20:54:12'),
(94, NULL, 1, NULL, 1, 1, 96, '2024-07-26 21:01:59', '2024-07-26 21:01:59'),
(95, NULL, 1, NULL, 1, 1, 97, '2024-07-26 21:08:43', '2024-07-26 21:08:43'),
(96, NULL, 1, NULL, 1, 1, 98, '2024-07-26 21:17:20', '2024-07-26 21:17:20'),
(97, NULL, 1, NULL, 1, 1, 99, '2024-07-26 21:26:48', '2024-07-26 21:26:48'),
(98, NULL, 1, NULL, 1, 1, 100, '2024-07-27 05:38:33', '2024-07-27 05:38:33'),
(99, NULL, 1, NULL, 1, 1, 101, '2024-07-27 05:45:58', '2024-07-27 05:45:58'),
(101, NULL, 1, NULL, 1, 1, 103, '2024-07-27 06:01:27', '2024-07-27 06:01:27'),
(102, NULL, 1, NULL, 1, 1, 104, '2024-07-27 06:08:24', '2024-07-27 06:08:24'),
(103, NULL, 1, NULL, 1, 1, 105, '2024-07-27 06:19:43', '2024-07-27 06:19:43'),
(104, NULL, 1, NULL, 1, 1, 106, '2024-07-27 06:30:20', '2024-07-27 06:30:20'),
(105, NULL, 1, NULL, 1, 1, 107, '2024-07-27 06:37:56', '2024-07-27 06:37:56'),
(106, NULL, 1, NULL, 1, 1, 108, '2024-07-27 06:44:15', '2024-07-27 06:44:15'),
(107, NULL, 1, NULL, 1, 1, 109, '2024-07-27 06:52:38', '2024-07-27 06:52:38'),
(108, NULL, 1, NULL, 1, 1, 110, '2024-07-27 06:59:28', '2024-07-27 06:59:28'),
(109, NULL, 1, NULL, 1, 1, 111, '2024-07-27 07:07:00', '2024-07-27 07:07:00'),
(110, NULL, 1, NULL, 1, 1, 112, '2024-07-27 07:14:38', '2024-07-27 07:14:38'),
(111, NULL, 1, NULL, 1, 1, 113, '2024-07-27 07:27:54', '2024-07-27 07:27:54'),
(112, NULL, 1, NULL, 1, 1, 114, '2024-07-27 07:34:26', '2024-07-27 07:34:26'),
(113, NULL, 1, NULL, 1, 1, 115, '2024-07-27 07:42:46', '2024-07-27 07:42:46'),
(114, NULL, 1, NULL, 1, 1, 116, '2024-07-27 08:18:21', '2024-07-27 08:18:21'),
(115, NULL, 1, NULL, 1, 1, 117, '2024-07-28 07:55:17', '2024-07-28 07:55:17'),
(116, NULL, 1, NULL, 1, 1, 118, '2024-07-28 08:02:07', '2024-07-28 08:02:07'),
(117, NULL, 1, NULL, 1, 1, 119, '2024-07-28 08:10:27', '2024-07-28 08:10:27'),
(118, NULL, 1, NULL, 1, 1, 120, '2024-07-28 08:17:49', '2024-07-28 08:17:49'),
(119, NULL, 1, NULL, 1, 1, 121, '2024-07-28 08:27:18', '2024-07-28 08:27:18'),
(120, NULL, 1, NULL, 1, 1, 122, '2024-07-28 08:36:31', '2024-07-28 08:36:31'),
(121, NULL, 1, NULL, 1, 1, 123, '2024-07-28 08:42:52', '2024-07-28 08:42:52'),
(122, NULL, 1, NULL, 1, 1, 124, '2024-07-28 08:50:43', '2024-07-28 08:50:43'),
(123, NULL, 1, NULL, 1, 1, 125, '2024-07-28 08:57:06', '2024-07-28 08:57:06'),
(124, NULL, 1, NULL, 1, 1, 126, '2024-07-28 09:02:22', '2024-07-28 09:02:22'),
(125, NULL, 1, NULL, 1, 1, 127, '2024-07-28 09:08:09', '2024-07-28 09:08:09'),
(126, NULL, 1, NULL, 1, 1, 128, '2024-07-30 07:19:19', '2024-07-30 07:19:19'),
(127, NULL, 1, NULL, 1, 1, 129, '2024-07-30 07:33:56', '2024-07-30 07:33:56'),
(128, NULL, 1, NULL, 1, 1, 130, '2024-07-30 07:46:22', '2024-07-30 07:46:22'),
(129, NULL, 1, NULL, 1, 1, 131, '2024-07-30 07:59:53', '2024-07-30 07:59:53'),
(130, NULL, 1, NULL, 1, 1, 132, '2024-07-30 08:06:03', '2024-07-30 08:06:03'),
(131, NULL, 1, NULL, 1, 1, 133, '2024-07-30 08:16:34', '2024-07-30 08:16:34'),
(132, NULL, 1, NULL, 1, 1, 134, '2024-08-21 07:08:43', '2024-08-21 07:08:43'),
(133, NULL, 1, NULL, 1, 1, 135, '2024-08-21 07:23:08', '2024-08-21 07:23:08'),
(134, NULL, 1, NULL, 1, 1, 136, '2024-08-21 13:58:55', '2024-08-21 13:58:55'),
(135, NULL, 1, NULL, 1, 1, 137, '2024-08-21 14:39:57', '2024-08-21 14:39:57'),
(136, NULL, 1, NULL, 1, 1, 138, '2024-08-22 09:57:03', '2024-08-22 09:57:03'),
(137, NULL, 1, NULL, 1, 1, 139, '2024-08-22 10:13:00', '2024-08-22 10:13:00'),
(138, NULL, 1, NULL, 1, 1, 140, '2024-08-22 10:26:21', '2024-08-22 10:26:21'),
(139, NULL, 1, NULL, 1, 1, 141, '2024-08-22 10:51:46', '2024-08-22 10:51:46'),
(140, 68000.00, 1, NULL, 1, 1, 142, '2024-09-07 06:56:04', '2024-09-07 06:56:04'),
(141, NULL, 1, NULL, 1, 1, 151, '2024-09-07 07:35:17', '2024-09-07 07:35:17'),
(142, NULL, 1, NULL, 1, 1, 152, '2024-09-07 07:50:38', '2024-09-07 07:50:38'),
(143, 68000.00, 1, NULL, 1, 1, 153, '2024-09-07 08:05:06', '2024-09-07 08:05:06'),
(144, 20000.00, 1, NULL, 1, 1, 154, '2024-09-16 15:37:49', '2024-09-16 15:37:49'),
(145, NULL, 1, NULL, 1, 1, 155, '2024-09-25 10:20:30', '2024-09-25 10:20:30'),
(146, 68000.00, 1, NULL, 1, 1, 156, '2024-10-03 16:15:58', '2024-10-03 16:15:58'),
(147, 68000.00, 1, NULL, 1, 1, 157, '2024-10-03 17:00:12', '2024-10-03 17:00:12'),
(148, 68000.00, 1, NULL, 1, 1, 158, '2024-11-16 08:57:54', '2024-11-16 08:57:54'),
(149, 68000.00, 1, NULL, 1, 1, 159, '2024-11-16 09:17:38', '2024-11-16 09:17:38'),
(150, 68000.00, 1, NULL, 1, 1, 160, '2024-11-16 10:02:37', '2024-11-16 10:02:37'),
(151, 68000.00, 1, NULL, 1, 1, 161, '2024-11-16 10:18:24', '2024-11-16 10:18:24'),
(152, 68000.00, 1, NULL, 1, 1, 162, '2024-11-16 11:01:01', '2024-11-16 11:01:01'),
(153, 68000.00, 1, NULL, 1, 1, 163, '2024-11-16 11:16:51', '2024-11-16 11:16:51'),
(154, 68000.00, 1, NULL, 1, 1, 164, '2024-11-16 11:31:26', '2024-11-16 11:31:26'),
(155, 65000.00, 1, NULL, 1, 1, 165, '2025-01-13 18:08:25', '2025-01-13 18:08:25'),
(156, 68000.00, 1, NULL, 1, 1, 166, '2025-01-13 18:28:04', '2025-01-13 18:28:04'),
(157, 80000.00, 1, NULL, 1, 1, 167, '2025-01-13 19:22:38', '2025-01-13 19:22:38'),
(158, 83000.00, 1, NULL, 1, 1, 168, '2025-01-13 19:58:20', '2025-01-13 19:58:20'),
(159, NULL, 1, NULL, 1, 1, 170, '2025-01-26 16:57:12', '2025-01-26 16:57:12'),
(160, 80000.00, 1, NULL, 1, 1, 171, '2025-01-29 15:31:15', '2025-01-29 15:31:15'),
(161, 80000.00, 1, NULL, 1, 1, 172, '2025-02-01 13:11:30', '2025-02-01 13:11:30'),
(162, 120000.00, 1, NULL, 1, 1, 173, '2025-02-03 18:41:16', '2025-02-03 18:41:16'),
(163, 20000.00, 1, NULL, 1, 1, 174, '2025-02-03 19:52:31', '2025-02-03 19:52:31'),
(164, 68000.00, 1, NULL, 1, 1, 175, '2025-02-04 18:59:20', '2025-02-04 18:59:20'),
(165, NULL, 1, NULL, 1, 1, 176, '2025-02-12 18:40:55', '2025-02-12 18:40:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `member_code` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(255) DEFAULT NULL,
  `member_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description` text DEFAULT NULL,
  `join_date` date DEFAULT NULL,
  `departure_date` date DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `is_admin` tinyint(4) NOT NULL DEFAULT 0,
  `approve_by` bigint(20) UNSIGNED DEFAULT NULL,
  `index` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `member_code`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `member_type_id`, `description`, `join_date`, `departure_date`, `status`, `is_admin`, `approve_by`, `index`, `created_at`, `updated_at`) VALUES
(1, 'BAFIITA', 'Admin', 'BAFIITA-ADMIN', '2024-02-18 00:06:53', '$2y$10$Hb4vAicn14Rw2TI9EGEnM.8F020Fdrzxu94AEEEgkrHak9UOPESTK', NULL, NULL, NULL, NULL, NULL, 'fix/admin.jpg', NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, '2024-02-18 00:06:53', '2024-02-18 00:06:53'),
(3, 'Sudhir Chowdhury', 'choenterprise@yahoo.com', 'DMB#0001', '2024-07-06 09:52:24', '$2y$10$hgtq0plcup/zG9uLGzbVfe2cFLUWZBZYMnCSuc6Jy8OUhqfwcjSD2', NULL, NULL, NULL, NULL, NULL, '3_Sudhir Chowdhury.jpg', 1, NULL, '2024-07-06', NULL, 1, 0, 1, NULL, '2024-07-06 09:52:24', '2024-07-06 09:59:34'),
(4, 'Md. Sabir Hossain', 'mstradingdhkbd@yahoo.com', 'DMB#0002', '2024-07-06 12:57:26', '$2y$10$aQKq5l3xPx84i.Jvz..rBOYkHmdORYHYp8reOHgQ9BEa9CoUuA88e', NULL, NULL, NULL, NULL, NULL, '4_Md. Sabir Hossain.jpg', 1, NULL, '2024-07-06', NULL, 1, 0, 1, NULL, '2024-07-06 12:57:26', '2024-07-06 13:01:00'),
(5, 'MD. Helal Uddin', 'rafeu16@yahoo.com', 'DMB#0003', '2024-07-06 13:38:35', '$2y$10$UnEEm6jccP4redtx58O/qOgMBGkcMyI7mapj3xcMth3kHkCfQVrpe', NULL, NULL, NULL, NULL, NULL, '5_MD. Helal Uddin.jpg', 1, NULL, '2024-07-06', NULL, 1, 0, 1, NULL, '2024-07-06 13:38:35', '2024-07-06 13:51:30'),
(6, 'Momtaz Hossain Eaty', 'eatyenterprise@gmail.com', 'DMB#0005', '2024-07-06 13:49:36', '$2y$10$ws/1mIc7Fk97VkoTPc0T2OZU8gfYBGnnTanUAiu.o2iI72SjiWOWa', NULL, NULL, NULL, NULL, NULL, '6_Momtaz Hossain Eaty.jpg', 1, NULL, '2024-07-06', NULL, 1, 0, 1, NULL, '2024-07-06 13:49:36', '2024-07-06 13:52:18'),
(7, 'Md. Jahirul Islam', 'modinajahir@yahoo.com', 'DMB#0007', '2024-07-06 15:48:02', '$2y$10$681RM8o6xqPXJw98V8ZHkOkn.olMCxYIp9tlVteCvkDgEwELZrI1W', NULL, NULL, NULL, NULL, NULL, '7_Md. Jahirul Islam.jpg', 1, NULL, '2024-07-06', NULL, 1, 0, 1, NULL, '2024-07-06 15:48:02', '2024-07-06 16:48:46'),
(8, 'Abdul Wadud Bhuiyan', 'bstrading79@yahoo.com', 'DMB#0009', '2024-07-06 16:01:04', '$2y$10$x4ieEGiaTt/plQHeQ6UUOuPtw4WMLZiWTjj2IWwiA/jIP7b8fwIBe', NULL, NULL, NULL, NULL, NULL, '8_Abdul Wadud Bhuiyan.jpg', 1, NULL, '2024-07-06', NULL, 1, 0, 1, NULL, '2024-07-06 16:01:04', '2024-07-06 16:49:20'),
(9, 'Md. Mahbubul Alam', 'mahbub73.alam@gmail.com', 'DMB#0010', '2024-07-06 16:46:48', '$2y$10$uxLMS.CW4yrmt8JpctsmD.SKs7M5YvQKlcSsBQj40IF7N.1dOIZ3e', NULL, NULL, NULL, NULL, NULL, '9_Md. Mahbubul Alam.jpg', 1, NULL, '2024-07-06', NULL, 1, 0, 1, NULL, '2024-07-06 16:46:48', '2024-07-06 16:49:45'),
(10, 'Shuball Chandra Misra', 'misrag7@yahoo.com', 'DMB#0012', '2024-07-06 17:48:25', '$2y$10$IpI4PHzk7RR1jHcToMRZeeo7e5Q9Pw3LfTopS6W7XaKAxo7dxEGmi', NULL, NULL, NULL, NULL, NULL, '10_Shuball Chandra Misra.jpg', 1, NULL, '2024-07-06', NULL, 1, 0, 1, NULL, '2024-07-06 17:48:25', '2024-07-06 19:10:21'),
(11, 'Sadia Afrine Munni', 'synthiaenterprise21@gmail.com', 'DMB#0014', '2024-07-06 17:58:45', '$2y$10$bBHD5cxTMKPYI0c0fMdhs.Pec5b6PfHWpQUP4zVZGAEC5NyTmsUN.', NULL, NULL, NULL, NULL, NULL, '11_Shuball Chandra Misra.jpg', 1, NULL, '2024-07-06', NULL, 1, 0, 1, NULL, '2024-07-06 17:58:45', '2024-09-16 14:02:02'),
(12, 'A .M  Amirul Islam Bhuiyan', 'islamdhakabd@gmail.com', 'DMB#0015', '2024-07-06 18:10:49', '$2y$10$dvFAA0Q9fgfDu/9hKgEl9uVWNQfIHv31qNBaZNgymqpmPvGSTmrR.', NULL, NULL, NULL, NULL, NULL, '12_A .M  Amirul Islam Bhuiyan.jpg', 1, NULL, '2024-07-06', NULL, 1, 0, 1, NULL, '2024-07-06 18:10:49', '2024-07-06 19:11:19'),
(13, 'Md. Golam Mostofa', 'gm_enterprise@yahoo.com', 'DMB#0016', '2024-07-06 18:19:14', '$2y$10$.PJsAu8cuOSB7PDCEx1GIu2oc6H45sSkwoxDpm/5WreSlEPc9hc5e', NULL, NULL, NULL, NULL, NULL, '13_Md. Golam Mostofa.jpg', 1, NULL, '2024-07-06', NULL, 1, 0, 1, NULL, '2024-07-06 18:19:14', '2024-07-06 19:11:46'),
(14, 'Md.  Alal  Ahmed', 'msalalenterprise@yahoo.com', 'DMB#0017', '2024-07-06 18:28:22', '$2y$10$wXYeb2v/q.kkJ8ApVfcUMO6lr4f.tu6MC9iqaVwoW3OkvGiQ29rlO', NULL, NULL, NULL, NULL, NULL, '14_Md.  Alal  Ahmed.jpg', 1, NULL, '2024-07-06', NULL, 1, 0, 1, NULL, '2024-07-06 18:28:22', '2024-07-06 19:12:10'),
(16, 'Md. Obaidullah  Khan', 'Proconin2004@gmail.com', 'GMB#0021', '2024-07-06 19:42:39', '$2y$10$j0N7VWD0KW2oMO9JScOqheRu.WWJef8iFOGh16yKSbt0oxOEJKbA2', NULL, NULL, NULL, NULL, NULL, '16_Md. Obaidullah  Khan.jpg', 2, NULL, '2024-07-06', NULL, 1, 0, 1, NULL, '2024-07-06 19:42:39', '2024-07-06 19:44:48'),
(17, 'Md. Abul  Kalam Azad', 'alaminpoultryfeed@yahoo.com', 'DMB#0024', '2024-07-07 08:14:02', '$2y$10$ZBdfatDxSCk70/8KvyWHp.6CXpirgvGYeMLNaK5t5CDjFw8IRRBFi', NULL, NULL, NULL, NULL, NULL, '17_Md. Abul  Kalam Azad.jpg', 1, NULL, '2024-07-07', NULL, 1, 0, 1, NULL, '2024-07-07 08:14:02', '2024-07-07 08:27:20'),
(18, 'Md. Habibur  Rahman', 'nasrin.agri.ind@gmail.com', 'DMB#0028', '2024-07-07 08:22:56', '$2y$10$oRITCuaXYD5nOde5qkYbGeiZgM64h87XWVXcFCIGoq3KdmtaNHVfG', NULL, NULL, NULL, NULL, NULL, '18_Md. Habibur  Rahman.jpg', 1, NULL, '2024-07-07', NULL, 1, 0, 1, NULL, '2024-07-07 08:22:56', '2024-07-07 08:27:49'),
(19, 'Md. Shahjahan Miah', 'smsfeeds@hotmail.com', 'DMB#0033', '2024-07-10 06:35:53', '$2y$10$XkGisIAvzof45569Hzdegu3j.tvsTnDFSGUKtZll0X2B3AcyOhf12', NULL, NULL, NULL, NULL, NULL, '19_Md. Shahjahan Miah.jpg', 1, NULL, '2024-07-10', NULL, 1, 0, 1, NULL, '2024-07-10 06:35:53', '2024-07-10 08:16:49'),
(20, 'Md. Sayedul  Hoque  Khan', 'Kafp08@yahoo.com', 'DMB#0035', '2024-07-10 06:58:57', '$2y$10$I939vDHZEZUg0JsUgGM32e0uONnndW3y9oUEwj32BlH8iriUQQerq', NULL, NULL, NULL, NULL, NULL, '20_Md. Sayedul  Hoque  Khan.jpg', 1, NULL, '2024-07-10', NULL, 1, 0, 1, NULL, '2024-07-10 06:58:57', '2024-07-10 08:17:22'),
(21, 'Syed  Kamalur Rahman', 'khokoncrtc@gmail.com', 'DMB#0037', '2024-07-10 07:08:06', '$2y$10$EMVcXP0XYsQot48la3y.L.t9wPAzYwqgXfrLjgTX4j5Up6XbJ.Fzu', NULL, NULL, NULL, NULL, NULL, '21_Syed  Kamalur Rahman.jpg', 1, NULL, '2024-07-10', NULL, 1, 0, 1, NULL, '2024-07-10 07:08:06', '2024-07-10 08:17:50'),
(22, 'Md. Suruzzaman', 'zamanbrothers442@gmail.com', 'GMB#0040', '2024-07-10 07:19:06', '$2y$10$Z5SIIY9MP3Ulfd6k1HSUW.CKvWfUV2PCad9pQuakzQkjlmbkDLqb6', NULL, NULL, NULL, NULL, NULL, '22_Md. Suruzzaman.jpg', 1, NULL, '2024-07-10', NULL, 1, 0, 1, NULL, '2024-07-10 07:19:06', '2024-07-10 08:18:15'),
(23, 'MD. Farook', 'ftc_2000@yahoo.com', 'DMB#0043', '2024-07-10 07:28:03', '$2y$10$tozdcnQ.nkdqs70dO1cEtueCwl3dtFrroCcHCxF5/rwEJ1HaXL1V2', NULL, NULL, NULL, NULL, NULL, '23_MD. Farook.jpg', 1, NULL, '2024-07-10', NULL, 1, 0, 1, NULL, '2024-07-10 07:28:03', '2024-07-10 08:19:27'),
(24, 'Md. Khorshed  Alam', 'tajreadyfeed@gmail.com', 'GMB#0046', '2024-07-10 07:40:03', '$2y$10$PazqBs6AZjd5YCMvjn11cu6zNnLMgfGagMHAsd1krd9Q9t5xe8Y5e', NULL, NULL, NULL, NULL, NULL, '24_Md. Khorshed  Alam.jpg', 2, NULL, '2024-07-10', NULL, 1, 0, 1, NULL, '2024-07-10 07:40:03', '2024-07-10 08:19:52'),
(25, 'Md. Darugale', 'msmonirandbrothers480@gmail.com', 'GMB#0047', '2024-07-10 07:48:28', '$2y$10$7zCbA.NntT/bPHSZRWN7/.59h8qCQkxRkduzZTL8/2NvyEFCPW8ve', NULL, NULL, NULL, NULL, NULL, '25_Md. Darugale.jpg', 2, NULL, '2024-07-10', NULL, 1, 0, 1, NULL, '2024-07-10 07:48:28', '2024-07-10 08:20:23'),
(26, 'Mr. Kazi Abu Sayed', 'sayed@kaziagro.com', 'DMB#0048', '2024-07-10 07:58:24', '$2y$10$gAFgAYkaRSXE8zKXsXA6GeleZQz2Zh8o4aXtTIAoc37Vr26Aor7lm', NULL, NULL, NULL, NULL, NULL, '26_Mr. Kazi Abu Sayed.jpg', 1, NULL, '2024-07-10', NULL, 1, 0, 1, NULL, '2024-07-10 07:58:24', '2024-07-10 08:20:48'),
(27, 'Abdur Rahman', 'rubaentp@gmail.com', 'GMB#0049', '2024-07-10 08:11:50', '$2y$10$KNIJUBXgmV1WdqADnuNZXOAiXm7Q4abMax3tAn2C2/htLvpqsLq4O', NULL, NULL, NULL, NULL, NULL, '27_Abdur Rahman.jpg', 2, NULL, '2024-07-10', NULL, 1, 0, 1, NULL, '2024-07-10 08:11:50', '2024-07-10 08:21:16'),
(28, 'Mohammed Mansur Meah', 'bogdadmonsur@gmail.com', 'DMB#0051', '2024-07-11 08:50:29', '$2y$10$9PF1zRmdB38vcuoKXh6da.LXAdjlM3fAA9VswXatmH0FrjrgKDzY6', NULL, NULL, NULL, NULL, NULL, '28_Mohammed Mansur Meah.jpg', 1, NULL, '2024-07-11', NULL, 1, 0, 1, NULL, '2024-07-11 08:50:29', '2024-07-11 11:05:37'),
(29, 'Md. Ashraful  Alam', 'bsagrotrading@gmail.com', 'GMB#0054', '2024-07-11 08:57:49', '$2y$10$FgwcSVeoLrZLYBQFks/r..tSkazmhfuFwgqANxx8A0bGUVut6XkC6', NULL, NULL, NULL, NULL, NULL, '29_Md. Ashraful  Alam.jpg', 2, NULL, '2024-07-11', NULL, 1, 0, 1, NULL, '2024-07-11 08:57:49', '2024-07-11 13:16:12'),
(30, 'Mohammed  Shah Akram', 'onlyakram@gmail.com', 'DMB#0056', '2024-07-11 09:08:30', '$2y$10$fYYQYMnaMD9W6aN.bNLm8uRs7U0gugHF9xj.W73OalodKeRV2WBry', NULL, NULL, NULL, NULL, NULL, '30_Mohammed  Shah Akram.jpg', 1, NULL, '2024-07-11', NULL, 1, 0, 1, NULL, '2024-07-11 09:08:30', '2024-07-11 13:17:06'),
(31, 'Md. Lokman Hakim', 'baizidfeedagency@yahoo.com', 'GMB#0057', '2024-07-11 09:18:21', '$2y$10$Zh2rUf38k7Nk.c1Gq8hr6eds4I359VCqEn7OxP/XoEEULQr3ozYmm', NULL, NULL, NULL, NULL, NULL, '31_Md. Lokman Hakim.jpg', 2, NULL, '2024-07-11', NULL, 1, 0, 1, NULL, '2024-07-11 09:18:21', '2024-07-11 13:17:31'),
(32, 'Md. Jahangir Alam', 'jahangir.bd1979@gmail.com', 'GMB#0063', '2024-07-11 09:34:21', '$2y$10$YXWjucabdvK/WroCkkzN/O4Xf0mHPz1k3C5nd2xKotzKSfhJHgRrS', NULL, NULL, NULL, NULL, NULL, '32_Md. Jahangir Alam.jpg', 2, NULL, '2024-07-11', NULL, 1, 0, 1, NULL, '2024-07-11 09:34:21', '2024-07-11 13:18:41'),
(34, 'Mosharaf Hossain Chowdhury', 'ibratastrade@gmail.com', 'DMB#0066', '2024-07-11 10:24:20', '$2y$10$hh4l4F4wSeT6n5C75IIz7OCBJSenuAEALuw0uXva5lVc4NHQOsmya', NULL, NULL, NULL, NULL, NULL, '34_Mosharaf Hossain Chowdhury.jpg', 1, NULL, '2024-07-11', NULL, 1, 0, 1, NULL, '2024-07-11 10:24:20', '2024-07-11 13:19:39'),
(35, 'Abu Hossain Noor', 'nurunnahartrader@gmail.com', 'GMB#0069', '2024-07-11 10:37:04', '$2y$10$MWyr17a9eraEnKO93acpeuXqKCxB9oy.DuzPOwmjk3/KBB902jx6W', NULL, NULL, NULL, NULL, NULL, '35_Abu Hossain Noor.jpg', 2, NULL, '2024-07-11', NULL, 1, 0, 1, NULL, '2024-07-11 10:37:04', '2024-07-11 13:20:17'),
(36, 'Sanjoy Kumar Agouroula', 'Sanjoytrading554@gmail.com', 'DMB#0070', '2024-07-11 10:45:39', '$2y$10$jrNZWQ402PnML3jDZjdvFeSLZwZwilDksTeZ/NPqaBzI5qsYDpVz.', NULL, NULL, NULL, NULL, NULL, '36_Sanjoy Kumar Agouroula.jpg', 1, NULL, '2024-07-11', NULL, 1, 0, 1, NULL, '2024-07-11 10:45:39', '2024-07-11 13:20:53'),
(37, 'Dipali Rani Nath', 'raninathdipali@gamil.com', 'GMB#0071', '2024-07-11 10:51:36', '$2y$10$1ZeA61nXOCDlb5vwzRQFHO1a/2mVmVa6DXqvacNDOTSy/UMBl1wH.', NULL, NULL, NULL, NULL, NULL, '37_Dipali Rani Nath.jpg', 2, NULL, '2024-07-11', NULL, 1, 0, 1, NULL, '2024-07-11 10:51:36', '2024-07-11 13:22:32'),
(38, 'Mr. ATM. Shahin Pervez', 'sarafenterprise142gmail.com', 'GMB#0075', '2024-07-11 11:00:54', '$2y$10$EBwhJz0tpnEvtOEf60gtz.JZV5SJMgLpWRzDVKkhP/MAvG6oN0y9W', NULL, NULL, NULL, NULL, NULL, '38_Mr. ATM. Shahin Pervez.jpg', 2, NULL, '2024-07-11', NULL, 1, 0, 1, NULL, '2024-07-11 11:00:54', '2024-07-11 13:23:04'),
(39, 'NurJahan Begum', 'sawjahan@gmail.com', 'GMB#0087', '2024-07-11 18:16:41', '$2y$10$GKmy9IJgG.PgXsNcciln8OYbM3nyn9T4M9jiEI8bykBbKWovYcbMq', NULL, NULL, NULL, NULL, NULL, '39_NurJahan Begum.jpg', 2, NULL, '2024-07-13', NULL, 1, 0, 1, NULL, '2024-07-11 18:16:41', '2024-07-13 08:02:54'),
(40, 'Md. Rashedul Jakir', 'rashedulvet@gmail.com', 'GMB#0095', '2024-07-11 18:23:50', '$2y$10$.Zbqxrjq77lpIeLCVwDNseJoV1cWdU8ZPHgqOXvT0ki2CPKHS0c/6', NULL, NULL, NULL, NULL, NULL, '40_Md. Rashedul Jakir.jpg', 2, NULL, '2024-07-13', NULL, 1, 0, 1, NULL, '2024-07-11 18:23:50', '2024-07-13 08:03:19'),
(41, 'Dr. Mujammel Huq Khan', 'vet.mujammel@gmail.com', 'GMB#0096', '2024-07-11 18:30:20', '$2y$10$eh0UaJ26V97xBBRgE7EIe.ccaygbsNRBHlZM5zPtdu2gy7zGegFMa', NULL, NULL, NULL, NULL, NULL, '41_Dr. Mujammel Huq Khan.jpg', 2, NULL, '2024-07-13', NULL, 1, 0, 1, NULL, '2024-07-11 18:30:20', '2024-07-13 08:03:40'),
(42, 'Dr.Gadadhar Chandra Shil', 'gsranjan1672@yahoo.com', 'GMB#0097', '2024-07-11 18:36:11', '$2y$10$ot5vKJFZJFQJxNpVlyV6S.TY5r86BXmppDHZxNRYtc1FFuEsTQOpq', NULL, NULL, NULL, NULL, NULL, '42_Dr.Gadadhar Chandra Shil.jpg', 2, NULL, '2024-07-13', NULL, 1, 0, 1, NULL, '2024-07-11 18:36:11', '2024-07-13 08:04:04'),
(43, 'Md. Mosarraf  Hossain', 'unisunmarketing@gmail.com', 'GMB#0098', '2024-07-11 19:46:17', '$2y$10$l.xuTbK.xFcAvZzC70vaG.JuluJ5aM4EJEv04kYBjcE/021JuSYmy', NULL, NULL, NULL, NULL, NULL, '43_Md. Mosarraf  Hossain.jpg', 2, NULL, '2024-07-13', NULL, 1, 0, 1, NULL, '2024-07-11 19:46:17', '2024-07-13 08:04:30'),
(44, 'Joyanta  Kumar Deb', 'naturecareltd3@gmail.com', 'DMB#0100', '2024-07-11 20:52:22', '$2y$10$eMZHzSBen.nPfyHZOZUrp.j2hnBfwZMKFOKxSr7EPxkGEowYwAg02', NULL, NULL, NULL, NULL, NULL, '44_Joyanta  Kumar Deb.jpg', 1, NULL, '2024-07-13', NULL, 1, 0, 1, NULL, '2024-07-11 20:52:22', '2024-07-13 08:06:11'),
(45, 'Sukumar Chandra Adhikary', 'sukumaradhikary95@gmail.com', 'GMB#0103', '2024-07-11 21:02:23', '$2y$10$nu4BF/CbLnOr7Dqv4P1tq.FwqQSaBUf2jFbnnsWoOUoythv6kpxzC', NULL, NULL, NULL, NULL, NULL, '45_Sukumar Chandra Adhikary.jpg', 2, NULL, '2024-07-13', NULL, 1, 0, 1, NULL, '2024-07-11 21:02:23', '2024-07-13 08:06:35'),
(46, 'Naznin Akter', 'salmatrading.ctg@gmail.com', 'GMB#0107', '2024-07-12 07:15:53', '$2y$10$9hggh2G.IKV.Whlo8ghEgOF3.d2YWBZ71zduSrQIciKRt77iVCiNm', NULL, NULL, NULL, NULL, NULL, '46_Naznin Akter.jpg', 2, NULL, '2024-07-13', NULL, 1, 0, 1, NULL, '2024-07-12 07:15:53', '2024-07-13 08:07:35'),
(47, 'Md. Yousuf', 'yousuf.coo@parmonyenterprise.com', 'GMB#0111', '2024-07-13 08:16:05', '$2y$10$dKts4hBC3xGIeEMWa356..O3wa7hCwHwrglpifDbpNbPQoifRzyFW', NULL, NULL, NULL, NULL, NULL, '47_Md. Yousuf.jpg', 2, NULL, '2024-07-13', NULL, 1, 0, 1, NULL, '2024-07-13 08:16:05', '2024-07-13 11:02:58'),
(48, 'Md. Selim Reza Hiron', 'progressagrovet@gmail.com', 'GMB#0113', '2024-07-13 08:24:31', '$2y$10$9y15NuyzSEbi4HMPum2U6ug9.XiIlxo3fU5iiplk75Tzwnv3EM8vO', NULL, NULL, NULL, NULL, NULL, '48_Md. Selim Reza Hiron.jpg', 2, NULL, '2024-07-13', NULL, 1, 0, 1, NULL, '2024-07-13 08:24:31', '2024-07-13 11:03:23'),
(49, 'Mrs. Tanjida Afrose', 'Padda786@gmail.com', 'DMB#0114', '2024-07-13 08:31:38', '$2y$10$fobw/miMB5yeCb5fBzpi8eo.9qodBA6/o14jlTZ6sSkUS0RXnirie', NULL, NULL, NULL, NULL, NULL, '49_Mrs. Tanjida Afrose.jpg', 1, NULL, '2024-07-13', NULL, 1, 0, 1, NULL, '2024-07-13 08:31:38', '2024-07-13 11:03:45'),
(50, 'Md. Gias Uddin Khan', 'gk.moonstar@gmail.com', 'GMB#0115', '2024-07-13 08:39:25', '$2y$10$ef3h7pBRR12IzeTAL5Ugeef4GmYKGa438kF5id1.BHRM5GkGLblvW', NULL, NULL, NULL, NULL, NULL, '50_Md. Gias Uddin Khan.jpg', 2, NULL, '2024-07-13', NULL, 1, 0, 1, NULL, '2024-07-13 08:39:25', '2024-07-13 11:04:06'),
(51, 'Md. Anamul Haque Molah', 'enamhatcheryandfeedsltd@gmail.com', 'GMB#0116', '2024-07-13 08:47:56', '$2y$10$uQFR8X/aANro/762lREa6eKmIrDeVcA6Gw8/ZEGWJsSjmWpxQa0FO', NULL, NULL, NULL, NULL, NULL, '51_Md. Anamul Haque Molah.jpg', 2, NULL, '2024-07-13', NULL, 1, 0, 1, NULL, '2024-07-13 08:47:56', '2024-07-13 11:04:33'),
(52, 'Md. Awlad Hossain Matber', 'matber2286@gmail.com', 'DMB#0117', '2024-07-13 08:55:25', '$2y$10$c7wr/YUnsQQpvVpTUXHhC.CYvk09yHI68HUBJwJS6PNGRJc7cq4kC', NULL, NULL, NULL, NULL, NULL, '52_Md. Awlad Hossain Matber.jpg', 1, NULL, '2024-07-13', NULL, 1, 0, 1, NULL, '2024-07-13 08:55:25', '2024-07-13 11:04:50'),
(53, 'Mr. Md. Shadak Ali', 'mdshadakali1960@gmail.com', 'DMB#0118', '2024-07-13 09:05:10', '$2y$10$Q8Dq6WAVVIe8FMdTHP4AEOTRkpL45sxucp9tEToBPdtu89eEh3B7K', NULL, NULL, NULL, NULL, NULL, '53_Mr. Md. Shadak Ali.jpg', 1, NULL, '2024-07-13', NULL, 1, 0, 1, NULL, '2024-07-13 09:05:10', '2024-07-13 11:05:14'),
(54, 'Joyanta  Kumar Deb', 'moheuddin.ncmfg@gmail.com', 'GMB#0121', '2024-07-13 09:19:10', '$2y$10$VFb5kqbJypj8vJQb7Zyz6Oz7dN2ynu36TbUI3M.jaOd7FDbVTNhZO', NULL, NULL, NULL, NULL, NULL, '54_Joyanta  Kumar Deb.jpg', 2, NULL, '2024-07-13', NULL, 1, 0, 1, NULL, '2024-07-13 09:19:10', '2024-07-13 11:05:34'),
(55, 'Anjon Majumder', 'anamikagroup7@gmail.com', 'DMB#0122', '2024-07-13 09:27:59', '$2y$10$czdL6hmWKGj7aNxy5YaAFO5xHJy1gRY0JkXwxViTeGiJvTsBfcayq', NULL, NULL, NULL, NULL, NULL, '55_Anjon Majumder.jpg', 1, NULL, '2024-07-13', NULL, 1, 0, 1, NULL, '2024-07-13 09:27:59', '2024-07-13 11:05:52'),
(56, 'AKM Tariqul Islam', 'tariqual618@gmail.cm', 'GMB#0123', '2024-07-13 09:41:23', '$2y$10$YyurXMbAsVErwTwvcUosL.fSY.jhxjBgPDjcSKCUGNHnb1WBmy12e', NULL, NULL, NULL, NULL, NULL, '56_AKM Tariqul Islam.jpg', 2, NULL, '2024-07-13', NULL, 1, 0, 1, NULL, '2024-07-13 09:41:23', '2024-07-13 11:06:13'),
(57, 'Md. Sazzadul Hassan', 'sazzadul.hassan@basf.com', 'DMB#0124', '2024-07-13 09:47:06', '$2y$10$z/Z5VDtGQM3BYyhQhP/WHuoQ.Wp.moImB.0RaWqFfDU7kDCYNMxNq', NULL, NULL, NULL, NULL, NULL, '57_Md. Sazzadul Hassan.jpg', 1, NULL, '2024-07-13', NULL, 1, 0, 1, NULL, '2024-07-13 09:47:06', '2024-07-13 11:08:14'),
(58, 'Md. Mizanur Rahaman', 'topnichbd@yahoo.com', 'DMB#0125', '2024-07-13 09:54:19', '$2y$10$T5QTBuEgDVHm03m9C2GJWewxwH5jFJOKwaI2UUVWaJLV/jnUBlm1.', NULL, NULL, NULL, NULL, NULL, '58_Md. Mizanur Rahaman.jpg', 1, NULL, '2024-07-13', NULL, 1, 0, 1, NULL, '2024-07-13 09:54:19', '2024-07-13 11:08:32'),
(59, 'Md. Ayub Ali', 'surmaenterprise22@gmail.com', 'GMB#0126', '2024-07-13 10:01:40', '$2y$10$7bbebjWMOMEWWeRGunF/yOmlEA/mluylFXzHN.UWjO9d.7P/wGg0K', NULL, NULL, NULL, NULL, NULL, '59_Md. Ayub Ali.jpg', 2, NULL, '2024-07-13', NULL, 1, 0, 1, NULL, '2024-07-13 10:01:40', '2024-07-13 11:08:54'),
(60, 'M.A Rakib', 'genevatradecentre@yahoo.com', 'DMB#0127', '2024-07-13 10:07:51', '$2y$10$GatDVRWuN0yFsxdOfqoQhOdpfANpbVY7W3cbBUzzaepNy1PH0Wy6K', NULL, NULL, NULL, NULL, NULL, '60_M.A Rakib.jpg', 1, NULL, '2024-07-13', NULL, 1, 0, 1, NULL, '2024-07-13 10:07:51', '2024-07-13 11:09:18'),
(61, 'MD. Jahid Hossain', 'jahidh873@gmail.com', 'DMB#0128', '2024-07-13 10:16:00', '$2y$10$jqzq.9YxTGYV7zEfoRzSbeSNNyrQuD1seISDoUdZ2l78ydnIKMVTS', NULL, NULL, NULL, NULL, NULL, '61_MD. Jahid Hossain.jpg', 1, NULL, '2024-07-13', NULL, 1, 0, 1, NULL, '2024-07-13 10:16:00', '2024-07-13 11:09:56'),
(62, 'Md. Mohi Uddin', 'mntalukder1987@gmail.com', 'DMB#0129', '2024-07-13 10:22:46', '$2y$10$E.CzgNQarH9uZ.EMPoRM5OQ5b25v9.9d6u7hF1Dh7QYlgY2w8F90W', NULL, NULL, NULL, NULL, NULL, '62_Md. Mohi Uddin.jpg', 1, NULL, '2024-07-13', NULL, 1, 0, 1, NULL, '2024-07-13 10:22:46', '2024-07-13 11:10:17'),
(63, 'Md. Nizamul Islam Salim', 'salimbhuyan9107@gmail.com', 'DMB#0130', '2024-07-13 10:32:34', '$2y$10$6hc4weG99ZO9gv/DPThDb.ivx87cYuvs/z.SdoQgeIrM7QtpRx5Oq', NULL, NULL, NULL, NULL, NULL, '63_Md. Nizamul Islam Salim.jpg', 1, NULL, '2024-07-13', NULL, 1, 0, 1, NULL, '2024-07-13 10:32:34', '2024-07-13 11:10:40'),
(64, 'Md. Anwarul Haque', 'padmafeed@gmail.com', 'DMB#0134', '2024-07-13 20:27:14', '$2y$10$B84XId45nuZYbt9E81VUD..HxVr0XoXuDUYZ5WsiIGMlm5ox567i2', NULL, NULL, NULL, NULL, NULL, '64_Md. Anwarul Haque.jpg', 1, NULL, '2024-07-13', NULL, 1, 0, 1, NULL, '2024-07-13 20:27:14', '2024-07-13 21:36:20'),
(65, 'Md. Zainul Abedin', 'modina.abedin@gmail.com', 'DMB#0136', '2024-07-13 20:41:33', '$2y$10$u9cgVorqjzo2dwKtGegvU.EyQIykYKvtMHf66q/r75kJNx4UB5fqS', NULL, NULL, NULL, NULL, NULL, '65_Md. Zainul Abedin.jpg', 1, NULL, '2024-07-13', NULL, 1, 0, 1, NULL, '2024-07-13 20:41:33', '2024-07-13 21:36:47'),
(66, 'Mrs. Mina Dey', 'papritraders@gmail.com', 'DMB#0138', '2024-07-13 20:54:45', '$2y$10$z/sRQG87e3MxSdunu4B/O.brg2TdOT6bmn86IGKPczNrgciZE8.Ve', NULL, NULL, NULL, NULL, NULL, '66_Mrs. Mina Dey.jpg', 1, NULL, '2024-07-13', NULL, 1, 0, 1, NULL, '2024-07-13 20:54:45', '2024-07-13 21:37:22'),
(67, 'MD. Shamim', 'nipooontrade522_ctg@yahoo.com', 'GMB#0139', '2024-07-13 21:05:24', '$2y$10$EK5SfF9U4xGAL0mZnG7BNuCahoB4NPcKkw9tbbpVWh.UexX/I5pmC', NULL, NULL, NULL, NULL, NULL, '67_MD. Shamim.jpg', 2, NULL, '2024-07-13', NULL, 1, 0, 1, NULL, '2024-07-13 21:05:24', '2024-07-13 21:37:43'),
(68, 'MD. Kamal Hussain', 'khussian56@gmail.com', 'DMB#0140', '2024-07-13 21:12:42', '$2y$10$i0wIJL.u8IIqcy1OFV/AIe.5oY2Ynrm.5klBwUK8cJjC0.BTrk0gS', NULL, NULL, NULL, NULL, NULL, '68_MD. Kamal Hussain.jpg', 1, NULL, '2024-07-13', NULL, 1, 0, 1, NULL, '2024-07-13 21:12:42', '2024-07-13 21:38:07'),
(69, 'Md. Ayaz Hossain', 'tanvir.ayazenterprise@gmail.com', 'DMB#0141', '2024-07-13 21:20:18', '$2y$10$cYDzsRoAdPra9JtP8gBkY.iLKLy.JdFYrbxdiolSQ9j3bfbli9Xgi', NULL, NULL, NULL, NULL, NULL, '69_Md. Ayaz Hossain.jpg', 1, NULL, '2024-07-13', NULL, 1, 0, 1, NULL, '2024-07-13 21:20:18', '2024-07-13 21:39:45'),
(70, 'Md. Altaf  Hossain  Biswas, MBA', 'btc-.trading@btcgroupbd.com', 'DMB#0142', '2024-07-13 21:32:08', '$2y$10$m6qQXqaVfxSPCSmJ3l0lVObRaXEk.7h8CoOQHPlERIuzzOF8mWXFe', NULL, NULL, NULL, NULL, NULL, '70_Md. Altaf  Hossain  Biswas.jpg', 1, NULL, '2024-07-13', NULL, 1, 0, 1, NULL, '2024-07-13 21:32:08', '2024-07-13 21:40:07'),
(71, 'Tafazzal Hossain', 'throbin32@yahoo.com', 'DMB#0146', '2024-07-14 04:33:12', '$2y$10$KqSEhRVuL0oWPw7ZxK75EOT7MvthCVg0DAXIPQ0Yfzw/MW87JfpsO', NULL, NULL, NULL, NULL, NULL, '71_Tafazzal Hossain.jpg', 1, NULL, '2024-07-14', NULL, 1, 0, 1, NULL, '2024-07-14 04:33:12', '2024-07-14 07:44:28'),
(72, 'Abdullah Al Azim', 'azim@wmgltd.com', 'GMB#0147', '2024-07-14 04:43:07', '$2y$10$aUAJvkATxsMp9AhdQ5a/DOGskSS9sB8xZoxPMYWOU4wo0krzpfDSK', NULL, NULL, NULL, NULL, NULL, '72_Abdullah Al Azim.jpg', 2, NULL, '2024-07-14', NULL, 1, 0, 1, NULL, '2024-07-14 04:43:07', '2024-07-14 07:44:51'),
(73, 'Faiyaz Bin Rahman', 'agrotraxbd@gmail.com', 'DMB#0148', '2024-07-14 04:50:36', '$2y$10$3LQ98U.ZeArEt28BNxPZPOWaYQeiC/iAYlIb2xnMKH4hIL8ofyukG', NULL, NULL, NULL, NULL, NULL, '73_Faiyaz Bin Rahman.jpg', 1, NULL, '2024-07-14', NULL, 1, 0, 1, NULL, '2024-07-14 04:50:36', '2024-07-14 07:45:21'),
(74, 'Ariful Haque  Monir', 'neximcoennam@yahoo.com', 'DMB#0149', '2024-07-14 05:03:37', '$2y$10$ZPCdn.s2I2.54Y8lDSet9.oivsw2rkxA.rZ0.AFIicGYmF/Z7aSGe', NULL, NULL, NULL, NULL, NULL, '74_Ariful Haque  Monir.jpg', 1, NULL, '2024-07-14', NULL, 1, 0, 1, NULL, '2024-07-14 05:03:37', '2024-07-14 07:45:43'),
(75, 'Nazma Akter', 'sakhawats52@gmail.com', 'GMB#0150', '2024-07-14 05:16:57', '$2y$10$xmOPMHqJ91a6CEk5U3IPt.u69lArArDnnT8DPk2FRepyj0BW9RJwa', NULL, NULL, NULL, NULL, NULL, '75_Nazma Akter.jpg', 2, NULL, '2024-07-14', NULL, 1, 0, 1, NULL, '2024-07-14 05:16:57', '2024-07-14 07:46:30'),
(76, 'Safiqul Islam', 'sabiq.nourish@gmail.com', 'GMB#0151', '2024-07-14 05:32:52', '$2y$10$qi59R0f4wWJLvbcFJox1wuI3w7iZD6Nr6/AluVaPCo.qpmZJnScTu', NULL, NULL, NULL, NULL, NULL, '76_Safiqul Islam.jpg', 2, NULL, '2024-07-14', NULL, 1, 0, 1, NULL, '2024-07-14 05:32:52', '2024-07-14 07:47:38'),
(77, 'Sohel Ahmed', 'ahossain0209@gmail.com', 'GMB#0154', '2024-07-14 05:40:50', '$2y$10$VHGF6EqM7A5.h878/QmU8.JkykVZIO.HUK0GO31m5xpPFQq9VQKNa', NULL, NULL, NULL, NULL, NULL, '77_Sohel Ahmed.jpg', 2, NULL, '2024-07-14', NULL, 1, 0, 1, NULL, '2024-07-14 05:40:50', '2024-07-14 07:48:19'),
(78, 'Md. Manzurul Alam', 'stoneplanetenterprise@gmail.com', 'GMB#0155', '2024-07-14 05:51:16', '$2y$10$uI0tOh1P/v4yZj5HHdKzju072/wJvhZ2cuL/qjZ.qSXvWGQHERo9K', NULL, NULL, NULL, NULL, NULL, '78_Md. Manzurul Alam.jpg', 2, NULL, '2024-07-14', NULL, 1, 0, 1, NULL, '2024-07-14 05:51:16', '2024-07-14 07:48:46'),
(79, 'Sibbir Ahammed Shibli', 'rico@citechco.net', 'GMB#0157', '2024-07-14 06:00:22', '$2y$10$bkOiKWJ99RIlofhE8b5FMORFm6FfOt0Bn5ZQZLajKGqeqXaLy8Gt2', NULL, NULL, NULL, NULL, NULL, '79_Sibbir Ahammed Shibli.jpg', 2, NULL, '2024-07-14', NULL, 1, 0, 1, NULL, '2024-07-14 06:00:22', '2024-07-14 07:49:19'),
(80, 'Mohammad Robiul Islam', 'MRIAzad@citechco.net', 'GMB#0158', '2024-07-14 06:09:52', '$2y$10$xTyj3evsHRmXUmiqJJ6L6OCH/zfntiNoNo0ra/XHRxgAY./Nfph1.', NULL, NULL, NULL, NULL, NULL, '80_Mohammad Robiul Islam.jpg', 2, NULL, '2024-07-14', NULL, 1, 0, 1, NULL, '2024-07-14 06:09:52', '2024-07-14 07:49:43'),
(81, 'Md. Fazle Rabby', 'frtrading97@gmail.com', 'GMB#0160', '2024-07-14 06:17:05', '$2y$10$DtKa4ltv0lTNBSN5pnp.Ye5FkWphQkS/iQpCMwIloznpPRdpBBUkW', NULL, NULL, NULL, NULL, NULL, '81_Md. Fazle Rabby.jpg', 2, NULL, '2024-07-14', NULL, 1, 0, 1, NULL, '2024-07-14 06:17:05', '2024-07-14 07:52:12'),
(82, 'Shamim Hasnain', 'riverisland Indltd@gmail.com', 'GMB#0162', '2024-07-14 06:24:57', '$2y$10$kQesdAKC2Y0/51V1pAreLekQeEYeNUVWOMbxKJycwOh9hsOe/EADq', NULL, NULL, NULL, NULL, NULL, '82_Shamim Hasnain.jpg', 2, NULL, '2024-07-14', NULL, 1, 0, 1, NULL, '2024-07-14 06:24:57', '2024-07-14 07:54:08'),
(83, 'Md. Shakibur Rahman', 'shakib.mcdonaldcrops@gmail.com', 'GMB#0164', '2024-07-14 06:32:25', '$2y$10$6IzJnyXZh/rJmT7SexmZauCVwlRuwPJP32un.x40v.djYw4HoqpjS', NULL, NULL, NULL, NULL, NULL, '83_Md. Shakibur Rahman.jpg', 2, NULL, '2024-07-14', NULL, 1, 0, 1, NULL, '2024-07-14 06:32:25', '2024-07-14 07:55:46'),
(84, 'Md. Murad Miah', 'mdmurad247@gmail.com', 'GMB#0164', '2024-07-14 06:38:22', '$2y$10$156UAAnGK9/RKXav0sY.b.kRUp6hpxAyu/5wojh8wDfHNQX1ICDW2', NULL, NULL, NULL, NULL, NULL, '84_Md. Murad Miah.jpg', 2, NULL, '2024-07-14', NULL, 1, 0, 1, NULL, '2024-07-14 06:38:22', '2024-07-14 07:56:22'),
(85, 'Fakrul Islam', 'fakrul06rohy@gmail.com', 'GBM#0165', '2024-07-14 06:48:14', '$2y$10$Qlm4D5kZlOwIcbtkiaqI6.AJIhuAsTKanRMiLLSpTq7hYRhR2gsM2', NULL, NULL, NULL, NULL, NULL, '85_Fakrul Islam.jpg', 2, NULL, '2024-07-14', NULL, 1, 0, 1, NULL, '2024-07-14 06:48:14', '2024-07-14 07:56:49'),
(88, 'S.M. Mizanur Rahman', 'mmrahman1678@gmail.com', 'GMB#0169', '2024-07-26 19:55:51', '$2y$10$TEmwZX0CSJfM/gpPoUrC3.u3pfJFuVFLqcSZYaNoJZFQV.hoeZthK', NULL, NULL, NULL, NULL, NULL, '88_S.M. Mizanur Rahman.jpg', 2, NULL, '2024-07-26', NULL, 1, 0, 1, NULL, '2024-07-26 19:55:51', '2024-07-26 21:31:50'),
(89, 'Shyam Sundar Agurwala', 'mahakal.international@gmail.com', 'GMB#0170', '2024-07-26 20:03:52', '$2y$10$bgVQxlqZLwbp/OO7vlvqI.WcHuoULmIK0KjOOyI/cQ9fK.VFOYf3q', NULL, NULL, NULL, NULL, NULL, '89_Shyam Sundar Agurwala.jpg', 2, NULL, '2024-07-26', NULL, 1, 0, 1, NULL, '2024-07-26 20:03:52', '2024-07-26 21:32:21'),
(90, 'Md. Monowar Hossain', 'novelbiotechbd@gmail.com', 'GMB#0170', '2024-07-26 20:10:53', '$2y$10$xZ2NpnwoT/oMbBy6tvrUHuoiCcrdc525JFIsIY5CC93LFtG0CN6Wm', NULL, NULL, NULL, NULL, NULL, '90_Md. Monowar Hossain.jpg', 2, NULL, '2024-07-26', NULL, 1, 0, 1, NULL, '2024-07-26 20:10:53', '2024-07-26 21:32:49'),
(91, 'MD. KAZI NASIR UDDIN', 'kazinasir774@gmail.com', 'GMB#0172', '2024-07-26 20:17:48', '$2y$10$Lam4U1rmd5UC/Lyw4ncUquGOdD.mEPalBhN4XuEetzSsZpqvi/yJO', NULL, NULL, NULL, NULL, NULL, '91_MD. KAZI NASIR UDDIN.jpg', 2, NULL, '2024-07-26', NULL, 1, 0, 1, NULL, '2024-07-26 20:17:48', '2024-07-26 21:33:49'),
(92, 'Dr. Azimul Hauqe', 'synergybioscience22@gmail.com', 'GMB#0173', '2024-07-26 20:25:13', '$2y$10$M.gTxpFtPziCOsRfwRTH7Ovn4UVunRW0tXnwJDEj/U4jQGokUPbY2', NULL, NULL, NULL, NULL, NULL, '92_Dr. Azimul Hauqe.jpg', 2, NULL, '2024-07-26', NULL, 1, 0, 1, NULL, '2024-07-26 20:25:13', '2024-07-26 21:34:13'),
(93, 'Sayed Kamalur Rahman Khakon', 'abbrahossain@gmail.com', 'GMB#0174', '2024-07-26 20:35:45', '$2y$10$jYIAEUyZJCVJvAjuJEmXCeq8VDcG7HbMq0aHtiqQUbAKecEWqe3Fu', NULL, NULL, NULL, NULL, NULL, '93_Sayed Kamalur Rahman Khakon.jpg', 2, NULL, '2024-07-26', NULL, 1, 0, 1, NULL, '2024-07-26 20:35:45', '2024-07-26 21:34:50'),
(94, 'A.K.M. Badruzzaman', 'badruzzaman1973@gmail.com', 'GMB#0175', '2024-07-26 20:45:34', '$2y$10$6vOV5nJaijDxRBuQVuEoHOz/0rbsFGxMZ7UgNCpYLnOSyAqKDjedi', NULL, NULL, NULL, NULL, NULL, '94_A.K.M. Badruzzaman.jpg', 2, NULL, '2024-07-26', NULL, 1, 0, 1, NULL, '2024-07-26 20:45:34', '2024-07-26 21:35:23'),
(95, 'Md. Nurul Alam', 'Info.atragro2@gmail.com', 'DMB#0176', '2024-07-26 20:54:12', '$2y$10$Uuqy9VTDhvbbVZ4DkBz2geuR4ftUfp9uzl1t3KfQzwz.DbTaq3Nv2', NULL, NULL, NULL, NULL, NULL, '95_Md. Nurul Alam.jpg', 1, NULL, '2024-07-26', NULL, 1, 0, 1, NULL, '2024-07-26 20:54:12', '2024-07-26 21:36:14'),
(96, 'Ashim Kumar Ghosh', 'majumderderagrotech@gmail.com', 'DMB#0177', '2024-07-26 21:01:59', '$2y$10$EzxJu6MgVZk19qiRbIoaA.BCA8hTbHh2Qo8VAKtGEE.OxJzethX8i', NULL, NULL, NULL, NULL, NULL, '96_Ashim Kumar Ghosh.jpg', 1, NULL, '2024-07-26', NULL, 1, 0, 1, NULL, '2024-07-26 21:01:59', '2024-07-26 21:38:23'),
(97, 'Md. Sabbir Ahmed', 'sabbiralalgroup@gmail.com', 'GMB#0178', '2024-07-26 21:08:43', '$2y$10$pmxnHzYhf/1l04j.bPKxPujAGbPnCVV0gDMd19Tywnefymtb9.5RC', NULL, NULL, NULL, NULL, NULL, '97_Md. Sabbir Ahmed.jpg', 2, NULL, '2024-07-26', NULL, 1, 0, 1, NULL, '2024-07-26 21:08:43', '2024-07-26 21:38:42'),
(98, 'Md. Asaduzzaman Azad', 'azadpatgram@gmail.com', 'DMB#0179', '2024-07-26 21:17:20', '$2y$10$R5Zwot59URCZy.hoUqO8y.gONsvskpMtiYSvQ/pDPUp9J2x7.dZNK', NULL, NULL, NULL, NULL, NULL, '98_Md. Asaduzzaman Azad.jpg', 1, NULL, '2024-07-26', NULL, 1, 0, 1, NULL, '2024-07-26 21:17:20', '2024-07-26 21:39:08'),
(99, 'Md. Yasir Rabbi', 'evertradingbd@gmail.com', 'GMB#0180', '2024-07-26 21:26:48', '$2y$10$Jp1KogIMw/GoTVDrd1iDxulKHv8zQyn6bZASq.qUDf/sZxUjJlGBi', NULL, NULL, NULL, NULL, NULL, '99_Md. Yasir Rabbi.jpg', 2, NULL, '2024-07-26', NULL, 1, 0, 1, NULL, '2024-07-26 21:26:48', '2024-07-26 21:40:10'),
(100, 'Dr. Mohammad Mozammel Hossain Sarker', 'mhsarker76@gmail.com', 'GMB#0181', '2024-07-27 05:38:33', '$2y$10$ZBYI2L06nxt/ln2Eigawo.hHwAPvDPrFOsdDeD59p47XEqqJX26lq', NULL, NULL, NULL, NULL, NULL, '100_Dr. Mohammad Mozammel Hossain Sarker.jpg', 2, NULL, '2024-07-27', NULL, 1, 0, 1, NULL, '2024-07-27 05:38:33', '2024-07-27 07:59:12'),
(101, 'Md. Imrol Koyes', 'imrol.kayes_khan@yahoo.com', 'DMB#0182', '2024-07-27 05:45:58', '$2y$10$u.lST7Vjl/u1pUVk1EquR.P3c4Y23ccrgBs65aOO4uPcXvot3EqF.', NULL, NULL, NULL, NULL, NULL, '101_Md. Imrol Koyes.jpg', 1, NULL, '2024-07-27', NULL, 1, 0, 1, NULL, '2024-07-27 05:45:58', '2024-07-27 07:59:50'),
(103, 'Md. Lutfar Rahman', 'rahman.ghl@gmail.com', 'GMB#0184', '2024-07-27 06:01:27', '$2y$10$3uHkTeXXYT19iM.uVDaBLuVsT73GYdequho6QOpviagmp4EG442n6', NULL, NULL, NULL, NULL, NULL, '103_Md. Lutfar Rahman.jpg', 2, NULL, '2024-07-27', NULL, 1, 0, 1, NULL, '2024-07-27 06:01:27', '2024-07-27 08:05:27'),
(104, 'Kazi Salah Uddin', 'kazitrustlink@gmail.com', 'DMB#0185', '2024-07-27 06:08:24', '$2y$10$s7Vqo2diwXL2VsB8CEeJm.mCQRCBqO6Hf2Yg8VMEGBL6EzHkwjB0i', NULL, NULL, NULL, NULL, NULL, '104_Kazi Salah Uddin.jpg', 1, NULL, '2024-07-27', NULL, 1, 0, 1, NULL, '2024-07-27 06:08:24', '2024-07-27 08:06:59'),
(105, 'Mohd. Atiar Rahman', 'aranimalhealth@gmail.com', 'DMB#0186', '2024-07-27 06:19:43', '$2y$10$EaZgI1IrUy1HCyTvBFvxV.S7f7zehtOqO3W2DZA3HKnvSto6Beq.W', NULL, NULL, NULL, NULL, NULL, '105_Mohd. Atiar Rahman.jpg', 1, NULL, '2024-07-27', NULL, 1, 0, 1, NULL, '2024-07-27 06:19:43', '2024-07-27 08:07:32'),
(106, 'Osiur Rahman', 'oiur.rahman@gmail.com', 'DMB#0187', '2024-07-27 06:30:20', '$2y$10$JEmHua2cI3eEBkaK1meHIevHWjYKwgqLZlQilGjIXowVfemPrInRq', NULL, NULL, NULL, NULL, NULL, '106_Osiur Rahman.jpg', 1, NULL, '2024-07-27', NULL, 1, 0, 1, NULL, '2024-07-27 06:30:20', '2024-07-27 08:08:07'),
(107, 'Md. Akterul Alam Kawser', 'raiseexim@gmail.com', 'DMB#0188', '2024-07-27 06:37:56', '$2y$10$CFf4Ep2uyzP4vXlY30k1KuQbDJZoXpS9lUe4nKrv7zR.bzH/hA.z6', NULL, NULL, NULL, NULL, NULL, '107_Md. Akterul Alam Kawser.jpg', 1, NULL, '2024-07-27', NULL, 1, 0, 1, NULL, '2024-07-27 06:37:56', '2024-07-27 08:08:36'),
(108, 'MD. Siddiqur Rahman', 'sajibhussain9880@gmail.com', 'DMB#0189', '2024-07-27 06:44:15', '$2y$10$vvTjC8ZOxGGM/UIn9aqdAOYy6VhpEkew5XK/mppd5YpOUEeBN0aIO', NULL, NULL, NULL, NULL, NULL, '108_MD. Siddiqur Rahman.jpg', 1, NULL, '2024-07-27', NULL, 1, 0, 1, NULL, '2024-07-27 06:44:15', '2024-07-27 08:09:05'),
(109, 'Oli Ullah', 'sarazan5276@gmail.com', 'GMB#0190', '2024-07-27 06:52:38', '$2y$10$B8tmVajdAPVz/Ez38L1nx.j9PoErhVytVPqWPAD0FSzHJk58.iB8G', NULL, NULL, NULL, NULL, NULL, '109_Oli Ullah.jpg', 1, NULL, '2024-07-27', NULL, 1, 0, 1, NULL, '2024-07-27 06:52:38', '2024-07-27 08:09:44'),
(110, 'Debangshu Bikash Bhowmik', 'riyad0167@gmail.com', 'GMB#0191', '2024-07-27 06:59:28', '$2y$10$wnQQ2F6ahgPbnEiSIAcp1.L9kGTjnX5m39rUS76Yl4x4i7H23WoOW', NULL, NULL, NULL, NULL, NULL, '110_Debangshu Bikash Bhowmik.jpg', 2, NULL, '2024-07-27', NULL, 1, 0, 1, NULL, '2024-07-27 06:59:28', '2024-07-27 08:10:17'),
(111, 'Md. Aman Ullah', 'favouriteint2000@gmail.com', 'GMB#0192', '2024-07-27 07:07:00', '$2y$10$5nzu8/2nvV.zve48Vu3fDuzjKzNFQpW6dPqnPvSHK/jkpjBFNOoo2', NULL, NULL, NULL, NULL, NULL, '111_Md. Aman Ullah.jpg', 2, NULL, '2024-07-27', NULL, 1, 0, 1, NULL, '2024-07-27 07:07:00', '2024-07-27 08:10:48'),
(112, 'Mohammed Abdul Halim', 'halim2510@yahoo.com', 'GMB#0193', '2024-07-27 07:14:38', '$2y$10$Rcoi3HT61nEIZN2SmwM9W.OC.E6i9dAZDlQ.qhjKdIeO5MBgNW3KG', NULL, NULL, NULL, NULL, NULL, '112_Mohammed Abdul Halim.jpg', 2, NULL, '2024-07-27', NULL, 1, 0, 1, NULL, '2024-07-27 07:14:38', '2024-07-27 08:11:25'),
(113, 'Md. Sabir Hossain', 'mars_feed@yahoo.com', 'GMB#0194', '2024-07-27 07:27:54', '$2y$10$FRgw7u5qn6.7jqpeIXrOeO1CgGPpP1BKfVlSl2DiHQ5XDqyBU5RPq', NULL, NULL, NULL, NULL, NULL, '113_Md. Sabir Hossain.jpg', 2, NULL, '2024-07-27', NULL, 1, 0, 1, NULL, '2024-07-27 07:27:54', '2024-07-27 08:11:56'),
(114, 'Md. Bozlur Rashid', 'sibbir.bd@gmail.com', 'GMB#0195', '2024-07-27 07:34:26', '$2y$10$9kbBqBnnSPAy3wTc3BBx9.l1rDnTpV1xK7ta4LD1jXD.Y9U2KLcfu', NULL, NULL, NULL, NULL, NULL, '114_Md. Bozlur Rashid.jpg', 2, NULL, '2024-07-27', NULL, 1, 0, 1, NULL, '2024-07-27 07:34:26', '2024-07-27 08:12:49'),
(115, 'Abul Kalam Azad', 'akazad@evergreen-bd.com', 'DMB#0196', '2024-07-27 07:42:46', '$2y$10$Q1zYHyI.HbX3SYAQ2sdHt.EzJ07hoxmSyRdd3RtkAE/B867WY6s8u', NULL, NULL, NULL, NULL, NULL, '115_Abul Kalam Azad.jpg', 1, NULL, '2024-07-27', NULL, 1, 0, 1, NULL, '2024-07-27 07:42:46', '2024-07-27 08:13:27'),
(116, 'Fatin Sadman', 'fastlinktrade19at@gmail.com', 'GMB#0183', '2024-07-27 08:18:21', '$2y$10$uWc2i3PbuFWNNFLx.zu8Iu4ji0gs0mWP0bIEoEGaS0ImjIaBfmMfu', NULL, NULL, NULL, NULL, NULL, '116_Fatin Sadman.jpg', 2, NULL, '2024-07-27', NULL, 1, 0, 1, NULL, '2024-07-27 08:18:21', '2024-07-27 08:19:59'),
(117, 'Md. Noman Siddique', 'noman@mountaininternationalbd.com', 'GMB#0197', '2024-07-28 07:55:17', '$2y$10$fxNnfpZ55g4sdXBwYHOe.OPN2YxJAG3eVtrGGBWkzsgt/Hd8jRGd6', NULL, NULL, NULL, NULL, NULL, '117_Md. Noman Siddique.jpg', 2, NULL, '2024-07-28', NULL, 1, 0, 1, NULL, '2024-07-28 07:55:17', '2024-07-28 15:50:17'),
(118, 'Md. Zahadul Hasan', 'k.m.zahidhasan@gmail.com', 'GMB#0201', '2024-07-28 08:02:07', '$2y$10$Jy6gmDSMawBPCxPlWUUB6uMXaMmcTnSuY5szVRcVyhIwS6J8t707S', NULL, NULL, NULL, NULL, NULL, '118_Md. Zahadul Hasan.jpg', 2, NULL, '2024-07-28', NULL, 1, 0, 1, NULL, '2024-07-28 08:02:07', '2024-07-28 15:50:54'),
(119, 'Mohammad Shafiul Alam', 'sabadsha31@gmail.com', 'GMB#0203', '2024-07-28 08:10:27', '$2y$10$nb2GPVJxL3U5zPUOhNPhceOMRorsR15s7EspknGReuvx9so6hWSWW', NULL, NULL, NULL, NULL, NULL, '119_Mohammad Shafiul Alam.jpg', 2, NULL, '2024-07-28', NULL, 1, 0, 1, NULL, '2024-07-28 08:10:27', '2024-07-28 15:52:20'),
(120, 'Mohammod Nazrul Islam Sarker', 'shadatsuccess100@gmail.com', 'GMB#0204', '2024-07-28 08:17:49', '$2y$10$3Af8HZ0.yNIrm3wqWrlSZObcbGmzob2zsMOfKYTdOKZmsRfZ3UvSK', NULL, NULL, NULL, NULL, NULL, '120_Mohammod Nazrul Islam Sarker.jpg', 2, NULL, '2024-07-28', NULL, 1, 0, 1, NULL, '2024-07-28 08:17:49', '2024-07-28 15:52:40'),
(121, 'Md. Aminul Islam', 'taslimaenterprise567@gmail.com', 'GMB#0205', '2024-07-28 08:27:18', '$2y$10$g8dBwSL.vZMIrlleAAHerOL3ZeBovJISSyGMjUnRox0tXrFv9Falu', NULL, NULL, NULL, NULL, NULL, '121_Md. Aminul Islam.jpg', 2, NULL, '2024-07-28', NULL, 1, 0, 1, NULL, '2024-07-28 08:27:18', '2024-07-28 15:53:20'),
(122, 'Mohammed Oliullah', 'mohammedoliullar@gmail.com', 'GMB#0206', '2024-07-28 08:36:31', '$2y$10$ui/35VDJziqiQF..hAYgOOmoDvK/7Ap5SHc0rTdFAnNIDrRSiebVO', NULL, NULL, NULL, NULL, NULL, '122_Mohammed Oliullah.jpg', 2, NULL, '2024-07-28', NULL, 1, 0, 1, NULL, '2024-07-28 08:36:31', '2024-07-28 15:53:49'),
(123, 'Mohmmed Sazzad Hossain Chowdhury', 'hossain@ibratasbd.com', 'DMB#0207', '2024-07-28 08:42:52', '$2y$10$XN53Td85ESRfN1ezDwTORe3TcqoAMeggc8ovY7wFY3zN1Zqh5Xq5K', NULL, NULL, NULL, NULL, NULL, '123_Mohmmed Sazzad Hossain Chowdhury.jpg', 1, NULL, '2024-07-28', NULL, 1, 0, 1, NULL, '2024-07-28 08:42:52', '2024-07-28 15:54:13'),
(124, 'Mahbubar Rahman', 'mahbubarrahman64@gmail.com', 'GMB#0209', '2024-07-28 08:50:43', '$2y$10$P.dLlkGCIfQqzuXn5cd2m..S8q4Sh7B7p2VLcIEzyo9XDEqdKIKF.', NULL, NULL, NULL, NULL, NULL, '124_Mahbubar Rahman.jpg', 2, NULL, '2024-07-28', NULL, 1, 0, 1, NULL, '2024-07-28 08:50:43', '2024-07-28 15:54:37'),
(125, 'Afia Sultana', 'msrrenterprisenatore@gmail.com', 'GMB#0210', '2024-07-28 08:57:06', '$2y$10$z4Gd4TrQ.opkwye/FlNcGe.aXbLG/8O7qoT/6b1ewIAcseLHngSGu', NULL, NULL, NULL, NULL, NULL, '125_Afia Sultana.jpg', 2, NULL, '2024-07-28', NULL, 1, 0, 1, NULL, '2024-07-28 08:57:06', '2024-07-28 15:59:51'),
(126, 'Rasel Kabir', 'plantegic@gmail.com', 'GMB#0211', '2024-07-28 09:02:22', '$2y$10$MzbKnL1elh5xiU8v43gCAu6h8RDcrxs4Uwr8zNR0btwX4lyY5E2tG', NULL, NULL, NULL, NULL, NULL, '126_Rasel Kabir.jpg', 2, NULL, '2024-07-28', NULL, 1, 0, 1, NULL, '2024-07-28 09:02:22', '2024-07-28 16:00:17'),
(127, 'Shah Fahad Habib', 'dakotagrainsbd@gmail.com', 'GMB#0212', '2024-07-28 09:08:08', '$2y$10$IiqENVKGC1Rnevr6RO2y0OWJY3gXFzSoTO1nTW1wUFvO96/67fIza', NULL, NULL, NULL, NULL, NULL, '127_Shah Fahad Habib.jpg', 2, NULL, '2024-07-28', NULL, 1, 0, 1, NULL, '2024-07-28 09:08:08', '2024-07-28 16:00:32'),
(128, 'Sudhir Chowdhury', 'keshobmay@gmail.com', 'GMB#0133', '2024-07-30 07:19:13', '$2y$10$gxGcwq5bv1u5oYjZTTt11OS.ibFBggw5O3FOMO9zu58QmvW2y5zK2', NULL, NULL, NULL, NULL, NULL, '128_Sudhir Chowdhury.jpg', 2, NULL, '2024-07-30', NULL, 1, 0, 1, NULL, '2024-07-30 07:19:13', '2024-07-30 08:21:46'),
(129, 'Md. Humayon  Kabir', 'Jananitrading01@gmail.com', 'DMB#0076', '2024-07-30 07:33:56', '$2y$10$afqVrhmBGF2SGnv14E2KTu9IWz0piaWE0T1cvXqRlMQ/9JbgPx1KS', NULL, NULL, NULL, NULL, NULL, '129_Md. Humayon  Kabir.jpg', 1, NULL, '2024-07-30', NULL, 1, 0, 1, NULL, '2024-07-30 07:33:56', '2024-07-30 08:22:41'),
(130, 'Md. Enamul Hoque', 'urmonir@gmail.com', 'DMB#0077', '2024-07-30 07:46:22', '$2y$10$JOntiI.OAAlP9/1v6MDgUe33vTDnbG11fRMBsczpVomuu5Ch0QN2a', NULL, NULL, NULL, NULL, NULL, '130_Md. Enamul Hoque.jpg', 1, NULL, '2024-07-30', NULL, 1, 0, 1, NULL, '2024-07-30 07:46:22', '2024-07-30 08:23:43'),
(131, 'Md. Rakibul Alam', 'ssrahmaninternationallimited@gmail.com', 'DMB#0202', '2024-07-30 07:59:53', '$2y$10$cYKXOFx6mBUcy0L8WQOmvexWxCeGR6lOaSkuPG/wZte2J/LEp1T8G', NULL, NULL, NULL, NULL, NULL, '131_Md. Rakibul Alam.jpg', 1, NULL, '2024-07-30', NULL, 1, 0, 1, NULL, '2024-07-30 07:59:53', '2024-07-30 08:24:14'),
(132, 'Sharmin Akter', 'ssbenterprise2018@gmail.com', 'GMB#0208', '2024-07-30 08:06:03', '$2y$10$Gk44Loko.FciG/DMfg75de0JwS6jC8ZVeGXjqSF88AIdKI.2maCem', NULL, NULL, NULL, NULL, NULL, '132_Sharmin Akter.jpg', 2, NULL, '2024-07-30', NULL, 1, 0, 1, NULL, '2024-07-30 08:06:03', '2024-07-30 08:24:43'),
(133, 'Md. Enamul Hoque', 'zahirulislam29@gmail.com', 'DMB#0078', '2024-07-30 08:16:34', '$2y$10$5Fg1POzcKLmvnyzVvNgiMOZKXZbOTWAC6J0cxxpu2qp.FU0unEfmK', NULL, NULL, NULL, NULL, NULL, '133_Md. Enamul Hoque.jpg', 1, NULL, '2024-07-30', NULL, 1, 0, 1, NULL, '2024-07-30 08:16:34', '2024-07-30 08:25:05'),
(134, 'Jaead Al Kawser', 'josim.jadid@gmail.com', 'DMB#0166', '2024-08-21 07:08:42', '$2y$10$PALsVu5hIc28AFKCCKiG1OR4zSoE77AQkeF/lJwDukcNpURdfmRxW', NULL, NULL, NULL, NULL, NULL, '134_Jaead Al Kawser.jpg', 1, NULL, '2024-08-21', NULL, 1, 0, 1, NULL, '2024-08-21 07:08:42', '2024-08-21 07:26:09'),
(135, 'Meherunnessa  Sathi', 'info@optriumbd.com', 'GMB#0167', '2024-08-21 07:23:07', '$2y$10$C1R9vIs.sG.VPHpHxzf9k.YyEJ/npZLtWThe6GgSoA28eWsomJ4OS', NULL, NULL, NULL, NULL, NULL, '135_Meherunnessa  Sathi.jpg', 2, NULL, '2024-08-21', NULL, 1, 0, 1, NULL, '2024-08-21 07:23:07', '2024-08-21 07:26:35'),
(136, 'Mohammad Nazmul Hoque', 'alamincompanyctg@gmail.com', 'GMB#0108', '2024-08-21 13:58:55', '$2y$10$rTYJs7Ypxru/hD/EwgfDueXEgHOBVy4vItY.pV0VbcNbgzMM/nNkC', NULL, NULL, NULL, NULL, NULL, '136_Mohammad Nazmul Hoque.jpg', 2, NULL, '2024-08-22', NULL, 1, 0, 1, NULL, '2024-08-21 13:58:55', '2024-08-22 10:55:03'),
(137, 'Md. Shamsul Alam', 'salma-group.com', 'GMB#0109', '2024-08-21 14:39:56', '$2y$10$ukdGsziKh7Dtcx25oj2N5uHl7XY0tHuUhWyiSLgYaIhtBeYxL67Oy', NULL, NULL, NULL, NULL, NULL, '137_Md. Shamsul Alam.jpg', 2, NULL, '2024-08-22', NULL, 1, 0, 1, NULL, '2024-08-21 14:39:56', '2024-08-22 10:55:34'),
(138, 'Md. Shamsul Alam', 'umaizatradebd@gmail.com', 'DMB#0131', '2024-08-22 09:57:03', '$2y$10$49zpayEpA99qvRb2zj0oC.not9BERr7CQXFpbdguReafIOOSyIRs.', NULL, NULL, NULL, NULL, NULL, '138_Md. Shamsul Alam.jpg', 1, NULL, '2024-08-22', NULL, 1, 0, 1, NULL, '2024-08-22 09:57:03', '2024-08-22 10:56:57'),
(139, 'Nur Ayesha Begum', 'sn.co2040@gmail.com', 'GMB#0156', '2024-08-22 10:13:00', '$2y$10$LHa7UR.c5YU6rGtOXLD8GOVVEjp82Zd/yCpppegqghY3slDi/n3bi', NULL, NULL, NULL, NULL, NULL, '139_Nur Ayesha Begum.jpg', 2, NULL, '2024-08-22', NULL, 1, 0, 1, NULL, '2024-08-22 10:13:00', '2024-08-22 10:57:26'),
(140, 'Mohammad Nazmul Hoque', 'mnesaru@yahoo.com', 'GMB#0110', '2024-08-22 10:26:21', '$2y$10$iP9BHozKonzuuazofW4UduwU6J/1dTi7D1DMQSLN/qjsVsBYJpfni', NULL, NULL, NULL, NULL, NULL, '140_Mohammad Nazmul Hoque.jpg', 2, NULL, '2024-08-22', NULL, 1, 0, 1, NULL, '2024-08-22 10:26:21', '2024-08-22 10:58:01'),
(141, 'Abul Hasan', 'abulhasanctg90@gmail.com', 'GMB#0159', '2024-08-22 10:51:46', '$2y$10$n2rN4tudfuUcldv8WM4Mu.qL7uA/HsAe7VywVEPOXz6BQfQ9t6OIa', NULL, NULL, NULL, NULL, NULL, '141_Abul Hasan.jpg', 2, NULL, '2024-08-22', NULL, 1, 0, 1, NULL, '2024-08-22 10:51:46', '2024-08-22 10:58:24'),
(142, 'Md. Nazrul Islam', 'nazrul7dof@gmail.com', 'GMB#0213', '2024-09-07 06:56:03', '$2y$10$JheKwTu7w3h7TfKNk19Uneq/6B2FO7wtstY42ApDckGu5ydUAkcMC', NULL, NULL, NULL, NULL, NULL, '142_Md. Nazrul Islam.jpg', 2, NULL, '2024-09-07', NULL, 1, 0, 1, NULL, '2024-09-07 06:56:03', '2024-09-07 08:07:24'),
(151, 'Zeeshan Yasir Sakib', 'zeeshanyasirsakib@gmail.com', 'GMB#0215', '2024-09-07 07:35:17', '$2y$10$RR7shc4j8lLvlunXjV1HMelJIplH3STFxXEv0P3VFWcXKOG5k8qIW', NULL, NULL, NULL, NULL, NULL, '151_Zeeshan Yasir Sakib.jpg', 2, NULL, '2024-09-07', NULL, 1, 0, 1, NULL, '2024-09-07 07:35:17', '2024-09-07 08:08:27'),
(152, 'Md. Arifur Rahman Sujon', 'arif.cdl@gmail.com', 'GMB#0216', '2024-09-07 07:50:38', '$2y$10$poqNhNJDn58ID4zsR2pDSOepajpMKKQqtBJqbQStvCoq0pQiYzTiS', NULL, NULL, NULL, NULL, NULL, '152_Md. Arifur Rahman Sujon.jpg', 2, NULL, '2024-09-07', NULL, 1, 0, 1, NULL, '2024-09-07 07:50:38', '2024-09-07 08:09:25'),
(153, 'Md. Didarul Islam', 'alihossanbd76@gmail.com', 'GMB#0217', '2024-09-07 08:05:06', '$2y$10$nuH9.9X3NfW7msK4ELwBoeYhAZM9E5S76Cn46doT/mY4wmZLHhoD.', NULL, NULL, NULL, NULL, NULL, '153_Md. Didarul Islam.jpg', 2, NULL, '2024-09-07', NULL, 1, 0, 1, NULL, '2024-09-07 08:05:06', '2024-09-07 08:10:00'),
(154, 'Md.  Zahirul  Islam', 'mse2000@yahoo.com', 'GMB#0020', '2024-09-16 15:37:48', '$2y$10$x5M0nEgGsxgEkn50BXBqZu4f8aEVMAdqapSzm5TL05R6rVOSLHsAG', NULL, NULL, NULL, NULL, NULL, '154_Md.  Zahirul  Islam.jpg', 2, NULL, '2024-09-16', NULL, 1, 0, 1, NULL, '2024-09-16 15:37:48', '2024-09-16 15:39:09'),
(155, 'Soid Amanulla', 'zulker.siddique@alltech.com', NULL, '2024-09-25 10:20:23', '$2y$10$BQ6U/InRPReOabylXTvzoO.hT9eBOW/seMfiywwYI6hPWON.9ljR6', NULL, NULL, NULL, NULL, NULL, '155_Soid Amanulla.jpg', 2, 'Application not approved', NULL, NULL, 2, 0, 1, NULL, '2024-09-25 10:20:23', '2025-01-13 20:02:01'),
(156, 'Biplab Kumar Pramanick', 'biplab.prplink@gmail.com', 'GMB#0218', '2024-10-03 16:15:58', '$2y$10$uU1yT4wI5MJkoaDmwvt3YeTbzPwftuXnXSuGBFmNPhNJPOIIPEQ6u', NULL, NULL, NULL, NULL, NULL, '156_Biplab Kumar Pramanick.jpg', 2, NULL, '2024-10-03', NULL, 1, 0, 1, NULL, '2024-10-03 16:15:58', '2024-10-03 17:03:20'),
(157, 'Hazi. Md. Issa Chowdhury', '01819312371', 'GMB#0219', '2024-10-03 17:00:12', '$2y$10$HRtl2hO4Zss.Ilh8JLICeOJDG08imBjuIQ3RZBDDq/rDL9qCIcu0O', NULL, NULL, NULL, NULL, NULL, '157_Hazi. Md. Issa Chowdhury.jpg', 2, NULL, '2024-10-03', NULL, 1, 0, 1, NULL, '2024-10-03 17:00:12', '2024-10-03 17:06:15'),
(158, 'Mohammad Abdur Rahman', 'synthia_enterprise2014@yahoo.com', 'GMB#0214', '2024-11-16 08:57:54', '$2y$10$Si51f.MQFGY21CvTBuPo.eeMY9XLsnP89fGZ6yoY9H/k1SxTSJD1i', NULL, NULL, NULL, NULL, NULL, '158_Mohammad Abdur Rahman.jpg', 2, NULL, '2024-11-16', NULL, 1, 0, 1, NULL, '2024-11-16 08:57:54', '2024-11-16 11:35:10'),
(159, 'Abdullah Al Jamil', 'aleya.commercial@gmail.com', 'GMB#0220', '2024-11-16 09:17:38', '$2y$10$7EauBAElFIHI58bGHgKNheTcWUlsbQvHRiq5ngY18il0aeMtqC6cG', NULL, NULL, NULL, NULL, NULL, '159_Abdullah Al Jamil.jpg', 2, NULL, '2024-11-16', NULL, 1, 0, 1, NULL, '2024-11-16 09:17:38', '2024-11-16 11:35:57'),
(160, 'S.k Wahiduzzaman', 'purabi_trading@yahoo.com', 'GMB#0221', '2024-11-16 10:02:37', '$2y$10$ksldokxLjrl6lFGKiGdiyuFEaOcRdkpelVRpah1PO0u0CMxUeXq1S', NULL, NULL, NULL, NULL, NULL, '160_S.k Wahiduzzaman.jpg', 2, NULL, '2024-11-16', NULL, 1, 0, 1, NULL, '2024-11-16 10:02:37', '2024-11-16 11:36:20'),
(161, 'Md. Rakibul Alam', 'smafzal2012@gmail.com', 'GMB#0222', '2024-11-16 10:18:21', '$2y$10$T3JHJyvE.EfMqHfguec4fe9CwJI2uu8FhiUo2WTNdE4SpCMyWe5ii', NULL, NULL, NULL, NULL, NULL, '161_Md. Rakibul Alam.jpg', 2, NULL, '2024-11-16', NULL, 1, 0, 1, NULL, '2024-11-16 10:18:21', '2024-11-16 11:36:46'),
(162, 'Ali Ahammd', 'ahmedtradingc@gmail.com', 'GMB#0223', '2024-11-16 11:01:00', '$2y$10$l3YCyQb4frKP2aJXJMKWC.krqVwY2d97ukcd9DfAUJPP9xAQvfdX.', NULL, NULL, NULL, NULL, NULL, '162_Ali Ahammd.jpg', 2, NULL, '2024-11-16', NULL, 1, 0, 1, NULL, '2024-11-16 11:01:00', '2024-11-16 11:37:20'),
(163, 'Mohammad Rubel Alam khan', 'rubelalam77@gmail.com', 'GMB#0224', '2024-11-16 11:16:51', '$2y$10$sOwZK8nIPxKSsP3LiFmoie7JcxpFU7gSAdUZ7HvKZ.7j2dv.iUH9e', NULL, NULL, NULL, NULL, NULL, '163_Mohammad Rubel Alam khan.jpg', 2, NULL, '2024-11-16', NULL, 1, 0, 1, NULL, '2024-11-16 11:16:51', '2024-11-16 11:37:47'),
(164, 'Kazi Abu Sayed', 'commercial@kaziagro.com', 'GMB#0225', '2024-11-16 11:31:26', '$2y$10$kxy3wY0wDflTQ9WFWZghhewKI4fI8KXOYMZKgIzdrNZdWPpkkeswK', NULL, NULL, NULL, NULL, NULL, '164_Kazi Abu Sayed.gif', 2, NULL, '2024-11-16', NULL, 1, 0, 1, NULL, '2024-11-16 11:31:26', '2024-11-16 11:38:15'),
(165, 'Alamgir Hossain', 'marinaagrotag@gmail.com', 'GMB#0226', '2025-01-13 18:08:25', '$2y$10$q0FR8cxKctmGEJyZUDZg5uarcqO0Wj.qdsi3qDoGAgIGrFGm5D4Ae', NULL, NULL, NULL, NULL, NULL, '165_Alamgir Hossain.jpg', 2, NULL, '2025-01-13', NULL, 1, 0, 1, NULL, '2025-01-13 18:08:25', '2025-01-13 20:04:17'),
(166, 'Mohammad Abdul Jabbar', 'majabbar.adhunik@gmail.com', 'GMB#0227', '2025-01-13 18:28:04', '$2y$10$eUk/v1itapL/a2RXicCVee46YnSfCyVKpqKiqqn0Ugv3KE7/4i3U6', NULL, NULL, NULL, NULL, NULL, '166_Mohammad Abdul Jabbar.jpg', 2, NULL, '2025-01-13', NULL, 1, 0, 1, NULL, '2025-01-13 18:28:04', '2025-01-13 20:05:25'),
(167, 'Md. Younus Ali', 'morium62@gmail.com', 'GMB#0231', '2025-01-13 19:22:38', '$2y$10$fR5AYuEbxI8sX0q1ZM1aUey9NLLrPmG5W45PWDVgQr6rsz6j3r1Fy', NULL, NULL, NULL, NULL, NULL, '167_Md. Younus Ali.jpg', 2, NULL, '2025-01-13', NULL, 1, 0, 1, NULL, '2025-01-13 19:22:38', '2025-01-13 20:06:53'),
(168, 'Md. Mahbub Ullah Rocky', 'raisa.tradeint786@gmail.com', 'GMB#0230', '2025-01-13 19:58:20', '$2y$10$dqIEmgcx//21WZld8iE5Seb/mTqiXS./VadYxHIV8YTLHFbRcuXVe', NULL, NULL, NULL, NULL, NULL, '168_Md. Mahbub Ullah Rocky.jpg', 2, NULL, '2025-01-13', NULL, 1, 0, 1, NULL, '2025-01-13 19:58:20', '2025-01-13 20:06:25'),
(169, 'jordan Singh', 'xinahe9908@chainds.com', NULL, '2025-01-16 21:16:27', '$2y$10$34IAUK2OsOcHsWHUP8.Te.MecmsMNj7GmskcUwpCxLD2RGWVd9L16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'test', NULL, NULL, 2, 0, 1, NULL, '2025-01-16 21:16:27', '2025-01-26 09:52:55'),
(170, 'Mukta Islam', 'greenmartassociates@gmail.com', NULL, '2025-01-26 16:57:12', '$2y$10$p2bJOTELdTQDi8crBwTjJelH5ycXYkEgDmYHanWAP6ORxHj5ZrdpW', NULL, NULL, NULL, NULL, NULL, '170_Mukta Islam.jpeg', 2, 'Incomplete Application form', NULL, NULL, 2, 0, 1, NULL, '2025-01-26 16:57:12', '2025-02-03 20:00:09'),
(171, 'Md. Rafiul Karim', 'rafiagrovet@gmail.com', NULL, '2025-01-29 15:31:06', '$2y$10$7Mq8uUwq5vJEYEUdgyh63e6a0wBiK.wxNmkjcus7XAUhc.0MwjwiW', NULL, NULL, NULL, NULL, NULL, '171_Md. Rafiul Karim.jpeg', 2, NULL, NULL, NULL, 0, 0, NULL, NULL, '2025-01-29 15:31:06', '2025-01-29 15:31:15'),
(172, 'Mukta Islam', 'tanziliak@gmail.com', NULL, '2025-02-01 13:11:29', '$2y$10$pqYxIWZpk4xtz9F4KYVL/eDwAOQekPzjO5oUo1QEOrC/XSafSPxiW', NULL, NULL, NULL, NULL, NULL, '172_Mukta Islam.jpeg', 2, NULL, NULL, NULL, 0, 0, NULL, NULL, '2025-02-01 13:11:29', '2025-02-01 13:11:30'),
(173, 'Shah Mohammad Sagir', 'shah.sagir1976@gmail.com', 'DMB#0030', '2025-02-03 18:41:16', '$2y$10$oM5RqX/uhMn4u6L8GVFw/.vo6xZWmGK/DitEMPA5F7lVPKWLTkcfO', NULL, NULL, NULL, NULL, NULL, '173_Shah Mohammad Sagir.jpg', 1, NULL, '2025-02-03', NULL, 1, 0, 1, NULL, '2025-02-03 18:41:16', '2025-02-03 19:55:54'),
(174, 'Md. Jahangir  Alam', 'info@smsfeedsltd.com', 'GMB#0018', '2025-02-03 19:52:31', '$2y$10$SYf0ZX6Cu4Qk3MxR7SfO4OPmjffOIOu0HbDLIlK0.NskXGRzZGwnu', NULL, NULL, NULL, NULL, NULL, '174_Md. Jahangir  Alam.jpg', 2, NULL, '2025-02-03', NULL, 1, 0, 1, NULL, '2025-02-03 19:52:31', '2025-02-03 19:55:29'),
(175, 'MD. JASHIM UDDIN HAIDER', 'pglcorporation85@gmail.com', NULL, '2025-02-04 18:59:19', '$2y$10$GBJjAikk9jpJ3qBeYkv/uuQG7hMULzBuofpLLAN.B8PhTfxntQNqW', NULL, NULL, NULL, NULL, NULL, '175_MD. JASHIM UDDIN HAIDER.jpeg', 2, NULL, NULL, NULL, 0, 0, NULL, NULL, '2025-02-04 18:59:19', '2025-02-04 18:59:20'),
(176, 'A K M Sadid Haq Rafee', 'rafeesadid@gmail.com', NULL, '2025-02-12 18:40:55', '$2y$10$birhXN4MJLp1NCiuRUklJe3pkJ7IcGJ5cw21eEDztpYd8dulpHrk6', NULL, NULL, NULL, NULL, NULL, '176_A K M Sadid Haq Rafee.jpg', 2, NULL, NULL, NULL, 0, 0, NULL, NULL, '2025-02-12 18:40:55', '2025-02-12 18:40:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `annual_fees`
--
ALTER TABLE `annual_fees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `annual_fees_payment_details_id_foreign` (`payment_details_id`),
  ADD KEY `annual_fees_member_id_foreign` (`member_id`);

--
-- Indexes for table `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cards_user_id_foreign` (`user_id`);

--
-- Indexes for table `committee_types`
--
ALTER TABLE `committee_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `committee_types_user_id_foreign` (`user_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `events_user_id_foreign` (`user_id`);

--
-- Indexes for table `event_registers`
--
ALTER TABLE `event_registers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_registers_event_id_foreign` (`event_id`),
  ADD KEY `event_registers_payment_details_id_foreign` (`payment_details_id`),
  ADD KEY `event_registers_member_id_foreign` (`member_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `fee_plans`
--
ALTER TABLE `fee_plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galleries_user_id_foreign` (`user_id`);

--
-- Indexes for table `gallery_images`
--
ALTER TABLE `gallery_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `info_banks`
--
ALTER TABLE `info_banks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `info_banks_member_id_foreign` (`member_id`);

--
-- Indexes for table `info_companies`
--
ALTER TABLE `info_companies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `info_companies_member_id_foreign` (`member_id`);

--
-- Indexes for table `info_documents`
--
ALTER TABLE `info_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `info_documents_member_id_foreign` (`member_id`);

--
-- Indexes for table `info_others`
--
ALTER TABLE `info_others`
  ADD PRIMARY KEY (`id`),
  ADD KEY `info_others_member_id_foreign` (`member_id`);

--
-- Indexes for table `info_personals`
--
ALTER TABLE `info_personals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `info_personals_member_id_foreign` (`member_id`);

--
-- Indexes for table `mast_qualifications`
--
ALTER TABLE `mast_qualifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mast_qualifications_user_id_foreign` (`user_id`);

--
-- Indexes for table `member_types`
--
ALTER TABLE `member_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_types_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_details`
--
ALTER TABLE `payment_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_details_transaction_id_foreign` (`transaction_id`),
  ADD KEY `payment_details_payment_method_id_foreign` (`payment_method_id`),
  ADD KEY `payment_details_member_id_foreign` (`member_id`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_numbers`
--
ALTER TABLE `payment_numbers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_numbers_payment_reason_id_foreign` (`payment_reason_id`),
  ADD KEY `payment_numbers_payment_method_id_foreign` (`payment_method_id`),
  ADD KEY `payment_numbers_member_id_foreign` (`member_id`),
  ADD KEY `payment_numbers_user_id_foreign` (`user_id`);

--
-- Indexes for table `payment_reasons`
--
ALTER TABLE `payment_reasons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_reasons_user_id_foreign` (`user_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_payment_method_id_foreign` (`payment_method_id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `annual_fees`
--
ALTER TABLE `annual_fees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cards`
--
ALTER TABLE `cards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `committee_types`
--
ALTER TABLE `committee_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `event_registers`
--
ALTER TABLE `event_registers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fee_plans`
--
ALTER TABLE `fee_plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `gallery_images`
--
ALTER TABLE `gallery_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `info_banks`
--
ALTER TABLE `info_banks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT for table `info_companies`
--
ALTER TABLE `info_companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT for table `info_documents`
--
ALTER TABLE `info_documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT for table `info_others`
--
ALTER TABLE `info_others`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT for table `info_personals`
--
ALTER TABLE `info_personals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- AUTO_INCREMENT for table `mast_qualifications`
--
ALTER TABLE `mast_qualifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `member_types`
--
ALTER TABLE `member_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `payment_details`
--
ALTER TABLE `payment_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payment_numbers`
--
ALTER TABLE `payment_numbers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_reasons`
--
ALTER TABLE `payment_reasons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `annual_fees`
--
ALTER TABLE `annual_fees`
  ADD CONSTRAINT `annual_fees_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `annual_fees_payment_details_id_foreign` FOREIGN KEY (`payment_details_id`) REFERENCES `payment_details` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cards`
--
ALTER TABLE `cards`
  ADD CONSTRAINT `cards_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `committee_types`
--
ALTER TABLE `committee_types`
  ADD CONSTRAINT `committee_types_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `event_registers`
--
ALTER TABLE `event_registers`
  ADD CONSTRAINT `event_registers_event_id_foreign` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `event_registers_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `event_registers_payment_details_id_foreign` FOREIGN KEY (`payment_details_id`) REFERENCES `payment_details` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `galleries`
--
ALTER TABLE `galleries`
  ADD CONSTRAINT `galleries_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `info_banks`
--
ALTER TABLE `info_banks`
  ADD CONSTRAINT `info_banks_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `info_companies`
--
ALTER TABLE `info_companies`
  ADD CONSTRAINT `info_companies_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `info_documents`
--
ALTER TABLE `info_documents`
  ADD CONSTRAINT `info_documents_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `info_others`
--
ALTER TABLE `info_others`
  ADD CONSTRAINT `info_others_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `info_personals`
--
ALTER TABLE `info_personals`
  ADD CONSTRAINT `info_personals_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `mast_qualifications`
--
ALTER TABLE `mast_qualifications`
  ADD CONSTRAINT `mast_qualifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `member_types`
--
ALTER TABLE `member_types`
  ADD CONSTRAINT `member_types_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payment_details`
--
ALTER TABLE `payment_details`
  ADD CONSTRAINT `payment_details_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payment_details_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payment_details_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payment_numbers`
--
ALTER TABLE `payment_numbers`
  ADD CONSTRAINT `payment_numbers_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payment_numbers_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payment_numbers_payment_reason_id_foreign` FOREIGN KEY (`payment_reason_id`) REFERENCES `payment_reasons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payment_numbers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payment_reasons`
--
ALTER TABLE `payment_reasons`
  ADD CONSTRAINT `payment_reasons_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
