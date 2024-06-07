-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2024 at 11:32 AM
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
-- Database: `nba_teams_2019`
--

-- --------------------------------------------------------

--
-- Table structure for table `blazers_newteam_roster`
--

CREATE TABLE `blazers_newteam_roster` (
  `PLAYER` varchar(120) NOT NULL,
  `POSITION` varchar(120) NOT NULL,
  `HEIGHT` varchar(120) NOT NULL,
  `WEIGHT` int(120) NOT NULL,
  `Birth Date` varchar(200) NOT NULL,
  `EXPERIENCE` varchar(30) NOT NULL,
  `COLLEGE` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `blazers_newteam_roster`
--

INSERT INTO `blazers_newteam_roster` (`PLAYER`, `POSITION`, `HEIGHT`, `WEIGHT`, `Birth Date`, `EXPERIENCE`, `COLLEGE`) VALUES
('Al-Farouq Aminu', 'F', '6-9', 220, 'September 21, 1990', '8', 'Wake Forest University'),
('Anfernee Simons', 'G', '6-4', 180, 'June 8, 1999', 'R', ''),
('Caleb Swanigan', 'F', '6-8', 250, 'April 18, 1997', '1', 'Purdue University'),
('CJ McCollum', 'G', '6-3', 190, 'September 19, 1991', '5', 'Lehigh University'),
('Damian Lillard', 'G', '6-3', 195, 'July 15, 1990', '6', 'Weber State University'),
('Evan Turner', 'G', '6-7', 220, 'October 27, 1988', '8', 'Ohio State University'),
('Gary Trent Jr.', 'G', '6-6', 209, 'January 18, 1999', 'R', 'Duke University'),
('Jake Layman', 'F', '6-9', 210, 'March 7, 1994', '2', 'University of Maryland'),
('Jusuf Nurkic', 'C', '7-0', 280, 'August 23, 1994', '4', ''),
('Maurice Harkless', 'F-G', '6-9', 215, 'May 11, 1993', '6', 'St. John\'s University'),
('Meyers Leonard', 'C-F', '7-1', 245, 'February 27, 1992', '6', 'University of Illinois at Urbana-Champaign'),
('Nik Stauskas', 'G', '6-6', 205, 'October 7, 1993', '4', 'University of Michigan'),
('Seth Curry', 'G', '6-2', 185, 'August 23, 1990', '4', 'Liberty University, Duke University'),
('Wade Baldwin', 'G', '6-4', 202, 'March 29, 1996', '2', 'Vanderbilt University'),
('Zach Collins', 'C-F', '7-0', 232, 'November 19, 1997', '1', 'Gonzaga University');

-- --------------------------------------------------------

--
-- Table structure for table `blazers_team_data`
--

CREATE TABLE `blazers_team_data` (
  `LOCATION` varchar(120) NOT NULL,
  `TEAM NAMES` varchar(120) NOT NULL,
  `PLAYOFF APPERANCES` varchar(120) NOT NULL,
  `CHAMPIONSHIPS` varchar(120) NOT NULL,
  `RECORD` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `blazers_team_data`
--

INSERT INTO `blazers_team_data` (`LOCATION`, `TEAM NAMES`, `PLAYOFF APPERANCES`, `CHAMPIONSHIPS`, `RECORD`) VALUES
('Portland, Oregon ', 'Portland Trail Blazers ', '34    ', '1    ', '26-18, 4th in West');

-- --------------------------------------------------------

--
-- Table structure for table `blazers_team_payroll`
--

CREATE TABLE `blazers_team_payroll` (
  `2018-19` varchar(200) NOT NULL,
  `Player` varchar(200) NOT NULL,
  `Age` varchar(200) NOT NULL,
  `2019-20` varchar(200) NOT NULL,
  `2020-21` varchar(200) NOT NULL,
  `2021-22` varchar(200) NOT NULL,
  `2022-23` varchar(200) NOT NULL,
  `2023-24` varchar(200) NOT NULL,
  `Signed Using` varchar(200) NOT NULL,
  `Guaranteed` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `blazers_team_payroll`
--

INSERT INTO `blazers_team_payroll` (`2018-19`, `Player`, `Age`, `2019-20`, `2020-21`, `2021-22`, `2022-23`, `2023-24`, `Signed Using`, `Guaranteed`) VALUES
('$27,977,689', 'Damian Lillard', '28', '$29,802,321', '$31,626,953', '', '', '', '1st Round Pick', '$89,406,963'),
('$25,759,766', 'CJ McCollum', '27', '$27,556,959', '$29,354,152', '', '', '', '1st Round Pick', '$82,670,877'),
('$17,868,852', 'Evan Turner', '30', '$18,606,557', '', '', '', '', 'Cap Space', '$36,475,409'),
('$11,111,111', 'Jusuf Nurkic', '24', '$12,000,000', '$12,000,000', '$12,000,000', '', '', '', '$39,111,111'),
('$10,837,079', 'Maurice Harkless', '25', '$11,511,234', '', '', '', '', 'Cap Space', '$22,348,313'),
('$10,595,506', 'Meyers Leonard', '26', '$11,286,515', '', '', '', '', 'Cap Space', '$21,882,021'),
('$6,957,105', 'Al-Farouq Aminu', '28', '', '', '', '', '', 'Cap Space', '$6,957,105'),
('$3,628,920', 'Zach Collins', '20', '$4,240,200', '$5,406,255', '', '', '', '1st Round Pick', '$7,869,120'),
('$2,795,000', 'Seth Curry', '28', '', '', '', '', '', 'MLE', '$2,795,000'),
('$1,835,520', 'Anfernee Simons', '19', '$2,149,560', '$2,252,040', '$3,938,818', '', '', '1st Round Pick', '$3,985,080'),
('$1,740,000', 'Caleb Swanigan', '21', '$2,033,160', '$3,665,787', '', '', '', '1st Round Pick', '$3,773,160'),
('$1,621,415', 'Nik Stauskas', '25', '', '', '', '', '', 'Minimum Salary', '$1,621,415'),
('$1,544,951', 'Jake Layman', '24', '', '', '', '', '', 'Cap Space', '$1,544,951'),
('$1,544,951', 'Wade Baldwin', '22', '', '', '', '', '', 'Minimum Salary', '$1,544,951'),
('$838,464', 'Gary Trent', '19', '$1,416,852', '$1,663,861', '', '', '', 'MLE', '$3,919,177'),
('$2,844,429', 'Andrew Nicholson', '28', '$2,844,429', '$2,844,429', '$2,844,429', '$2,844,429', '$2,844,429', '', '$17,066,574'),
('$1,913,345', 'Anderson Varejao', '36', '$1,913,345', '$1,913,345', '', '', '', '', '$5,740,035'),
('$333,333', 'Festus Ezeli', '29', '$333,333', '', '', '', '', '', '$666,666'),
('$131,747,436', 'Team Totals', '', '$125,694,465', '$90,726,822', '$18,783,247', '$2,844,429', '2844429', '', '$349,377,928');

-- --------------------------------------------------------

--
-- Table structure for table `bucks_newteam_roster`
--

CREATE TABLE `bucks_newteam_roster` (
  `PLAYER` varchar(120) NOT NULL,
  `POSITION` varchar(120) NOT NULL,
  `HEIGHT` varchar(120) NOT NULL,
  `WEIGHT` int(120) NOT NULL,
  `Birth Date` varchar(200) NOT NULL,
  `EXPERIENCE` varchar(30) NOT NULL,
  `COLLEGE` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `bucks_newteam_roster`
--

INSERT INTO `bucks_newteam_roster` (`PLAYER`, `POSITION`, `HEIGHT`, `WEIGHT`, `Birth Date`, `EXPERIENCE`, `COLLEGE`) VALUES
('Brook Lopez', 'C', '7-0', 275, 'April 1, 1988', '10', 'Stanford University'),
('Christian Wood', 'F', '6-11', 220, 'September 27, 1995', '2', 'University of Nevada, Las Vegas'),
('D.J. Wilson', 'F', '6-10', 234, 'February 19, 1996', '1', 'University of Michigan'),
('Donte DiVincenzo', 'G', '6-5', 205, 'January 31, 1997', 'R', 'Villanova University'),
('Eric Bledsoe', 'PG', '6-1', 205, 'December 9, 1989', '8', 'University of Kentucky'),
('Ersan Ilyasova', 'PF', '6-10', 235, 'May 15, 1987', '10', ''),
('Giannis Antetokounmpo', 'PF', '6-11', 222, 'December 6, 1994', '5', ''),
('Jaylen Morris', 'G', '6-5', 185, 'September 19, 1995', '1', 'Molloy'),
('Jodie Meeks', 'G', '6-4', 210, 'August 21, 1987', '9', 'University of Kentucky'),
('John Henson', 'C', '6-11', 229, 'December 28, 1990', '6', 'University of North Carolina'),
('Khris Middleton', 'SF', '6-8', 234, 'August 12, 1991', '6', 'Texas A&M University'),
('Malcolm Brogdon', 'PG', '6-5', 215, 'December 11, 1992', '2', 'University of Virginia'),
('Matthew Dellavedova', 'G', '6-4', 198, 'September 8, 1990', '5', 'Saint Mary\'s College of California'),
('Pat Connaughton', 'G', '6-5', 206, 'January 6, 1993', '3', 'University of Notre Dame'),
('Sterling Brown', 'SG', '6-5', 225, 'February 10, 1995', '1', 'Southern Methodist University'),
('Thon Maker', 'F-C', '7-1', 216, 'February 25, 1997', '2', ''),
('Tony Snell', 'SG', '6-7', 200, 'November 10, 1991', '5', 'University of New Mexico'),
('Trevon Duval', 'G', '6-3', 186, 'August 3, 1998', 'R', 'Duke University');

-- --------------------------------------------------------

--
-- Table structure for table `bucks_team_data`
--

CREATE TABLE `bucks_team_data` (
  `Location` varchar(120) NOT NULL,
  `TeamNames` varchar(120) NOT NULL,
  `PlayoffAppearances` varchar(120) NOT NULL,
  `Championships` varchar(120) NOT NULL,
  `Record` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `bucks_team_data`
--

INSERT INTO `bucks_team_data` (`Location`, `TeamNames`, `PlayoffAppearances`, `Championships`, `Record`) VALUES
('Milwaukee', 'Milwaukee Bucks ', '36', '2', '2389-2136');

-- --------------------------------------------------------

--
-- Table structure for table `bucks_team_payroll`
--

CREATE TABLE `bucks_team_payroll` (
  `2018-19` varchar(200) NOT NULL,
  `Player` varchar(200) NOT NULL,
  `Age` varchar(200) NOT NULL,
  `2019-20` varchar(200) NOT NULL,
  `2020-21` varchar(200) NOT NULL,
  `2021-22` varchar(200) NOT NULL,
  `2022-23` varchar(200) NOT NULL,
  `2023-24` varchar(200) NOT NULL,
  `Signed Using` varchar(200) NOT NULL,
  `Guaranteed` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `bucks_team_payroll`
--

INSERT INTO `bucks_team_payroll` (`2018-19`, `Player`, `Age`, `2019-20`, `2020-21`, `2021-22`, `2022-23`, `2023-24`, `Signed Using`, `Guaranteed`) VALUES
('$24,157,304', 'Giannis Antetokounmpo', '23', '$25,842,697', '$27,528,090', '', '', '', '1st Round Pick', '$77,528,091'),
('$15,000,000', 'Eric Bledsoe', '28', '', '', '', '', '', 'Bird Rights', '$15,000,000'),
('$13,000,000', 'Khris Middleton', '27', '$13,000,000', '', '', '', '', 'Bird Rights', '$13,000,000'),
('$11,327,466', 'John Henson', '27', '$9,732,396', '', '', '', '', '1st Round Pick', '$21,059,862'),
('$10,607,143', 'Tony Snell', '26', '$11,392,857', '$12,178,571', '', '', '', 'Cap space', '$22,000,000'),
('$9,607,500', 'Matthew Dellavedova', '28', '$9,607,500', '', '', '', '', 'Cap Space', '$19,215,000'),
('$7,000,000', 'Ersan Ilyasova', '31', '$7,000,000', '$7,000,000', '', '', '', 'MLE', '$14,000,000'),
('$3,454,500', 'Jodie Meeks', '31', '', '', '', '', '', 'TPE', '$3,454,500'),
('$3,382,000', 'Brook Lopez', '30', '', '', '', '', '', 'Bi-annual Exception', '$3,382,000'),
('$2,799,720', 'Thon Maker', '21', '$3,569,643', '', '', '', '', '1st Round pick', '$2,799,720'),
('$2,534,280', 'D.J. Wilson', '22', '$2,961,120', '$4,548,280', '', '', '', '1st Round Pick', '$2,534,280'),
('$2,481,000', 'Donte DiVincenzo', '21', '$2,905,800', '$3,044,160', '$4,675,830', '', '', '1st Round Pick', '$5,386,800'),
('$1,641,000', 'Pat Connaughton', '25', '$1,719,000', '', '', '', '', '', '$1,641,000'),
('$1,544,951', 'Malcolm Brogdon', '25', '', '', '', '', '', 'Cap Space', '$1,544,951'),
('$1,512,601', 'Christian Wood', '23', '', '', '', '', '', 'Minimum Salary', '$100,000'),
('$1,378,242', 'Sterling Brown', '23', '$1,618,520', '', '', '', '', 'MLE', '$1,378,242'),
('', 'Jaylen Morris', '23', '', '', '', '', '', 'Two-Way Contract', ''),
('', 'Trevon Duval', '20', '', '', '', '', '', '', ''),
('$3,500,000', 'Mirza Teletovic', '33', '$3,500,000', '$3,500,000', '', '', '', '', '$10,500,000'),
('$2,007,058', 'Spencer Hawes', '30', '$2,007,058', '', '', '', '', '', '$4,014,116'),
('$1,865,547', 'Larry Sanders', '29', '$1,865,547', '$1,865,547', '$1,865,547', '', '', '', '$7,462,188'),
('$118,800,312', 'Team Totals', '', '$96,722,138', '$59,664,648', '$6,541,377', '', '', '', '$226,000,750');

-- --------------------------------------------------------

--
-- Table structure for table `bulls_newteam_roster`
--

CREATE TABLE `bulls_newteam_roster` (
  `PLAYER` varchar(120) NOT NULL,
  `POSITION` varchar(120) NOT NULL,
  `HEIGHT` varchar(120) NOT NULL,
  `WEIGHT` int(120) NOT NULL,
  `Birth Date` varchar(200) NOT NULL,
  `EXPERIENCE` varchar(30) NOT NULL,
  `COLLEGE` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `bulls_newteam_roster`
--

INSERT INTO `bulls_newteam_roster` (`PLAYER`, `POSITION`, `HEIGHT`, `WEIGHT`, `Birth Date`, `EXPERIENCE`, `COLLEGE`) VALUES
('Antonio Blakeney', 'G', '6-4', 197, 'October 4, 1996', '1', 'Louisiana State University'),
('Bobby Portis', 'F', '6-11', 250, 'February 10, 1995', '3', 'University of Arkansas'),
('Cameron Payne', 'G', '6-3', 185, 'August 8, 1994', '3', 'Murray State University'),
('Chandler Hutchison', 'G', '6-7', 197, 'April 26, 1996', 'R', 'Boise State University'),
('Cristiano Felicio', 'F-C', '6-10', 275, 'July 7, 1992', '3', ''),
('Denzel Valentine', 'G', '6-6', 212, 'November 16, 1993', '2', 'Michigan State University'),
('Jabari Parker', 'F', '6-8', 250, 'March 15, 1995', '4', 'Duke University'),
('Justin Holiday', 'F', '6-6', 181, 'April 5, 1989', '5', 'University of Washington'),
('Kris Dunn', 'G', '6-4', 205, 'March 18, 1994', '2', 'Providence College'),
('Lauri Markkanen', 'F-C', '7-0', 230, 'May 22, 1997', '1', 'University of Arizona'),
('Rawle Alkins', 'G', '6-5', 220, 'October 29, 1997', 'R', 'University of Arizona'),
('Robin Lopez', 'C', '7-0', 255, 'April 1, 1988', '10', 'Stanford University'),
('Ryan Arcidiacono', 'G', '6-3', 188, 'March 26, 1994', '1', 'Villanova University'),
('Shaquille Harrison', 'G', '6-4', 190, 'October 6, 1993', '1', 'University of Tulsa'),
('Tyler Ulis', 'G', '5-10', 150, 'January 5, 1996', '2', 'University of Kentucky'),
('Wendell Carter Jr.', 'C', '6-10', 255, 'April 16, 1999', 'R', 'Duke University'),
('Zach LaVine', 'G', '6-5', 200, 'March 10, 1995', '4', 'University of California, Los Angeles');

-- --------------------------------------------------------

--
-- Table structure for table `bulls_team_data`
--

CREATE TABLE `bulls_team_data` (
  `LOCATION` varchar(120) NOT NULL,
  `TEAM NAMES` varchar(120) NOT NULL,
  `PLAYOFF APPERANCES` varchar(120) NOT NULL,
  `CHAMPIONSHIPS` varchar(120) NOT NULL,
  `RECORD` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `bulls_team_data`
--

INSERT INTO `bulls_team_data` (`LOCATION`, `TEAM NAMES`, `PLAYOFF APPERANCES`, `CHAMPIONSHIPS`, `RECORD`) VALUES
('Chicago, Illinois ', 'Chicago Bulls ', '35    ', '6    ', '10-33, 14th in East');

-- --------------------------------------------------------

--
-- Table structure for table `bulls_team_payroll`
--

CREATE TABLE `bulls_team_payroll` (
  `2018-19` varchar(200) NOT NULL,
  `Player` varchar(200) NOT NULL,
  `Age` varchar(200) NOT NULL,
  `2019-20` varchar(200) NOT NULL,
  `2020-21` varchar(200) NOT NULL,
  `2021-22` varchar(200) NOT NULL,
  `2022-23` varchar(200) NOT NULL,
  `2023-24` varchar(200) NOT NULL,
  `Signed Using` varchar(200) NOT NULL,
  `Guaranteed` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `bulls_team_payroll`
--

INSERT INTO `bulls_team_payroll` (`2018-19`, `Player`, `Age`, `2019-20`, `2020-21`, `2021-22`, `2022-23`, `2023-24`, `Signed Using`, `Guaranteed`) VALUES
('$20,000,000', 'Jabari Parker', '23', '$20,000,000', '', '', '', '', '', '$20,000,000'),
('$19,500,000', 'Zach LaVine', '23', '$19,500,000', '$19,500,000', '$19,500,000', '', '', '', '$78,000,000'),
('$14,357,750', 'Robin Lopez', '30', '', '', '', '', '', 'Cap Space', '$14,357,750'),
('$8,470,980', 'Cristiano Felicio', '26', '$8,156,500', '$7,529,020', '', '', '', 'Cap space', '$24,156,500'),
('$4,536,120', 'Lauri Markkanen', '21', '$5,300,400', '$6,731,508', '', '', '', '1st Round Pick', '$4,536,120'),
('$4,441,200', 'Wendell Carter', '19', '$5,201,400', '$5,448,840', '$6,920,027', '', '', '1st Round Pick', '$9,642,600'),
('$4,384,616', 'Justin Holiday', '29', '', '', '', '', '', 'MLE', '$4,384,616'),
('$4,221,000', 'Kris Dunn', '24', '$5,348,007', '', '', '', '', '1st Round pick', '$4,221,000'),
('$3,263,294', 'Cameron Payne', '24', '', '', '', '', '', '1st round pick', '$3,263,294'),
('$2,494,346', 'Bobby Portis', '23', '', '', '', '', '', '1st Round pick', '$2,494,346'),
('$2,280,600', 'Denzel Valentine', '24', '$3,377,569', '', '', '', '', '1st Round pick', '$2,280,600'),
('$1,991,520', 'Chandler Hutchison', '22', '$2,332,320', '$2,443,440', '$4,019,459', '', '', '1st Round Pick', '$4,323,840'),
('$1,349,383', 'Antonio Blakeney', '22', '$1,588,231', '', '', '', '', 'Minimum Salary', '$2,937,614'),
('$1,349,383', 'Ryan Arcidiacono', '24', '', '', '', '', '', 'Minimum Salary', ''),
('', 'Shaquille Harrison', '25', '', '', '', '', '', '', ''),
('', 'Rawle Alkins', '20', '', '', '', '', '', 'Two-Way Contract', ''),
('', 'Tyler Ulis', '22', '', '', '', '', '', 'Two-Way Contract', ''),
('$11,286,516', 'Omer Asik', '32', '$3,000,000', '', '', '', '', '', '$14,286,516'),
('$103,926,708', 'Team Totals', '', '$73,804,427', '$41,652,808', '$30,439,486', '', '', '', '$188,884,796');

-- --------------------------------------------------------

--
-- Table structure for table `cavs_newteam_roster`
--

CREATE TABLE `cavs_newteam_roster` (
  `PLAYER` varchar(120) NOT NULL,
  `POSITION` varchar(120) NOT NULL,
  `HEIGHT` varchar(120) NOT NULL,
  `WEIGHT` int(120) NOT NULL,
  `Birth Date` varchar(200) NOT NULL,
  `EXPERIENCE` varchar(30) NOT NULL,
  `COLLEGE` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cavs_newteam_roster`
--

INSERT INTO `cavs_newteam_roster` (`PLAYER`, `POSITION`, `HEIGHT`, `WEIGHT`, `Birth Date`, `EXPERIENCE`, `COLLEGE`) VALUES
('Ante Zizic', 'C', '6-11', 250, 'January 4, 1997', '1', ''),
('Billy Preston', 'F', '6-10', 240, 'October 26, 1997', 'R', 'University of Kansas'),
('Cedi Osman', 'SF', '6-8', 210, 'April 8, 1995', '1', ''),
('Channing Frye', 'C-F', '6-11', 255, 'May 17, 1983', '12', 'University of Arizona'),
('Collin Sexton', 'G', '6-3', 190, 'January 4, 1999', 'R', 'University of Alabama'),
('David Nwaba', 'SG', '6-4', 209, 'January 14, 1993', '2', 'California Polytechnic State University, San Luis Obispo'),
('George Hill', 'PG', '6-3', 188, 'May 4, 1986', '10', 'Indiana University-Purdue University Indianapolis'),
('J.R. Smith', 'G-F', '6-6', 225, 'September 9, 1985', '14', ''),
('John Holland', 'SF', '6-5', 205, 'November 6, 1988', '1', 'Boston University'),
('Jordan Clarkson', 'SG', '6-5', 194, 'June 7, 1992', '4', 'University of Tulsa, University of Missouri'),
('Kevin Love', 'C', '6-10', 251, 'September 7, 1988', '10', 'University of California, Los Angeles'),
('Kyle Korver', 'SG', '6-7', 212, 'March 17, 1981', '15', 'Creighton University'),
('Larry Nance Jr.', 'F-C', '6-9', 230, 'January 1, 1993', '3', 'University of Wyoming'),
('Rodney Hood', 'SG', '6-8', 206, 'October 20, 1992', '4', 'Mississippi State University, Duke University'),
('Sam Dekker', 'PF', '6-9', 230, 'May 6, 1994', '3', 'University of Wisconsin'),
('Tristan Thompson', 'C', '6-9', 238, 'March 13, 1991', '7', 'University of Texas at Austin');

-- --------------------------------------------------------

--
-- Table structure for table `cavs_team_data`
--

CREATE TABLE `cavs_team_data` (
  `LOCATION` varchar(120) NOT NULL,
  `TEAM NAMES` varchar(120) NOT NULL,
  `PLAYOFF APPERANCES` varchar(120) NOT NULL,
  `CHAMPIONSHIPS` varchar(120) NOT NULL,
  `RECORD` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cavs_team_data`
--

INSERT INTO `cavs_team_data` (`LOCATION`, `TEAM NAMES`, `PLAYOFF APPERANCES`, `CHAMPIONSHIPS`, `RECORD`) VALUES
('Cleveland, Ohio ', 'Cleveland Cavaliers ', '22    ', '1    ', '9-35, 15th in East');

-- --------------------------------------------------------

--
-- Table structure for table `cavs_team_payroll`
--

CREATE TABLE `cavs_team_payroll` (
  `2018-19` varchar(200) NOT NULL,
  `Player` varchar(200) NOT NULL,
  `Age` varchar(200) NOT NULL,
  `2019-20` varchar(200) NOT NULL,
  `2020-21` varchar(200) NOT NULL,
  `2021-22` varchar(200) NOT NULL,
  `2022-23` varchar(200) NOT NULL,
  `2023-24` varchar(200) NOT NULL,
  `Signed Using` varchar(200) NOT NULL,
  `Guaranteed` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cavs_team_payroll`
--

INSERT INTO `cavs_team_payroll` (`2018-19`, `Player`, `Age`, `2019-20`, `2020-21`, `2021-22`, `2022-23`, `2023-24`, `Signed Using`, `Guaranteed`) VALUES
('$24,119,025', 'Kevin Love', '30', '$28,900,000', '$31,300,000', '$31,300,000', '$28,900,000', '', 'Bird Rights', '$144,519,025'),
('$19,000,000', 'George Hill', '32', '$18,000,000', '', '', '', '', 'Cap space', '$20,000,000'),
('$17,469,565', 'Tristan Thompson', '27', '$18,539,130', '', '', '', '', 'Bird Rights', '$36,008,695'),
('$14,720,000', 'J.R. Smith', '33', '$15,680,000', '', '', '', '', 'Bird Rights', '$18,590,000'),
('$12,500,000', 'Jordan Clarkson', '26', '$13,437,500', '', '', '', '', 'Cap Space', '$25,937,500'),
('$7,560,000', 'Kyle Korver', '37', '$7,500,000', '', '', '', '', 'Bird Rights', '$11,000,000'),
('$4,068,600', 'Collin Sexton', '19', '$4,764,960', '$4,991,880', '$6,349,671', '', '', '1st Round Pick', '$8,833,560'),
('$3,472,887', 'Rodney Hood', '26', '', '', '', '', '', '', '$3,472,887'),
('$2,775,000', 'Cedi Osman', '23', '$2,907,143', '', '', '', '', 'MLE', '$5,682,143'),
('$2,760,095', 'Sam Dekker', '24', '', '', '', '', '', '1st Round pick', '$2,760,095'),
('$2,393,887', 'Channing Frye', '35', '', '', '', '', '', 'Minimum Salary', '$2,393,887'),
('$2,272,391', 'Larry Nance', '25', '$12,727,273', '$11,709,091', '$10,690,909', '$9,672,727', '', '1st Round pick', '$47,072,391'),
('$1,952,760', 'Ante Zizic', '21', '$2,281,800', '$3,872,215', '', '', '', '1st Round Pick', '$1,952,760'),
('$1,512,601', 'David Nwaba', '25', '', '', '', '', '', 'Minimum Salary', '$1,512,601'),
('', 'John Holland', '29', '', '', '', '', '', 'Two-Way Contract', ''),
('', 'Billy Preston', '21', '', '', '', '', '', 'Two-Way Contract', ''),
('$116,576,811', 'Team Totals', '', '$124,737,806', '$51,873,186', '$48,340,580', '$38,572,727', '', '', '$329,735,544');

-- --------------------------------------------------------

--
-- Table structure for table `celtics_newteam_roster`
--

CREATE TABLE `celtics_newteam_roster` (
  `PLAYER` varchar(120) NOT NULL,
  `POSITION` varchar(120) NOT NULL,
  `HEIGHT` varchar(120) NOT NULL,
  `WEIGHT` int(120) NOT NULL,
  `Birth Date` varchar(200) NOT NULL,
  `EXPERIENCE` varchar(30) NOT NULL,
  `COLLEGE` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `celtics_newteam_roster`
--

INSERT INTO `celtics_newteam_roster` (`PLAYER`, `POSITION`, `HEIGHT`, `WEIGHT`, `Birth Date`, `EXPERIENCE`, `COLLEGE`) VALUES
('Al Horford', 'C', '6-10', 245, 'June 3, 1986', '11', 'University of Florida'),
('Aron Baynes', 'C', '6-10', 260, 'December 9, 1986', '6', 'Washington State University'),
('Brad Wanamaker', 'G', '6-4', 210, 'July 25, 1989', 'R', 'University of Pittsburgh'),
('Daniel Theis', 'C', '6-9', 215, 'April 4, 1992', '1', ''),
('Gordon Hayward', 'SF', '6-8', 226, 'March 23, 1990', '8', 'Butler University'),
('Guerschon Yabusele', 'PF', '6-7', 260, 'December 17, 1995', '1', ''),
('Jabari Bird', 'G', '6-6', 197, 'July 3, 1994', '1', 'University of California'),
('Jaylen Brown', 'SG', '6-7', 225, 'October 24, 1996', '2', 'University of California'),
('Jayson Tatum', 'SF', '6-8', 205, 'March 3, 1998', '1', 'Duke University'),
('Kyrie Irving', 'PG', '6-3', 193, 'March 23, 1992', '7', 'Duke University'),
('Marcus Morris', 'PF', '6-9', 235, 'September 2, 1989', '7', 'University of Kansas'),
('Marcus Smart', 'SG', '6-4', 220, 'March 6, 1994', '4', 'Oklahoma State University'),
('PJ Dozier', 'G', '6-7', 201, 'October 25, 1996', '1', 'University of South Carolina'),
('Robert Williams', 'F', '6-10', 241, 'October 17, 1997', 'R', 'Texas A&M University'),
('Semi Ojeleye', 'PF', '6-7', 241, 'December 5, 1994', '1', 'Southern Methodist University'),
('Terry Rozier', 'PG', '6-2', 190, 'March 17, 1994', '3', 'University of Louisville'),
('Walt Lemon, Jr.', 'G', '6-3', 180, 'July 26, 1992', '1', 'Bradley University');

-- --------------------------------------------------------

--
-- Table structure for table `celtics_team_data`
--

CREATE TABLE `celtics_team_data` (
  `LOCATION` varchar(120) NOT NULL,
  `TEAM NAMES` varchar(120) NOT NULL,
  `PLAYOFF APPERANCES` varchar(120) NOT NULL,
  `CHAMPIONSHIPS` varchar(120) NOT NULL,
  `RECORD` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `celtics_team_data`
--

INSERT INTO `celtics_team_data` (`LOCATION`, `TEAM NAMES`, `PLAYOFF APPERANCES`, `CHAMPIONSHIPS`, `RECORD`) VALUES
('Boston, Massachusetts ', 'Boston Celtics ', '55    ', '17    ', '25-17, 5th in East');

-- --------------------------------------------------------

--
-- Table structure for table `celtics_team_payroll`
--

CREATE TABLE `celtics_team_payroll` (
  `2018-19` varchar(200) NOT NULL,
  `Player` varchar(200) NOT NULL,
  `Age` varchar(200) NOT NULL,
  `2019-20` varchar(200) NOT NULL,
  `2020-21` varchar(200) NOT NULL,
  `2021-22` varchar(200) NOT NULL,
  `2022-23` varchar(200) NOT NULL,
  `2023-24` varchar(200) NOT NULL,
  `Signed Using` varchar(200) NOT NULL,
  `Guaranteed` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `celtics_team_payroll`
--

INSERT INTO `celtics_team_payroll` (`2018-19`, `Player`, `Age`, `2019-20`, `2020-21`, `2021-22`, `2022-23`, `2023-24`, `Signed Using`, `Guaranteed`) VALUES
('$31,214,295', 'Gordon Hayward', '28', '$32,700,690', '$34,187,085', '', '', '', 'Cap space', '$63,914,985'),
('$28,928,710', 'Al Horford', '32', '$30,123,015', '', '', '', '', 'Cap Space', '$28,928,710'),
('$20,099,189', 'Kyrie Irving', '26', '$21,329,750', '', '', '', '', 'Bird Rights', '$20,099,189'),
('$11,660,716', 'Marcus Smart', '24', '$12,553,471', '$13,446,428', '$14,339,285', '', '', '', '$51,999,900'),
('$6,700,800', 'Jayson Tatum', '20', '$7,830,000', '$9,897,120', '', '', '', '1st Round Pick', '$6,700,800'),
('$5,375,000', 'Marcus Morris', '29', '', '', '', '', '', 'Bird Rights', '$5,375,000'),
('$5,193,600', 'Aron Baynes', '31', '$5,453,280', '', '', '', '', '', '$5,193,600'),
('$5,169,960', 'Jaylen Brown', '22', '$6,534,829', '', '', '', '', '1st Rd pick', '$5,169,960'),
('$3,050,390', 'Terry Rozier', '24', '', '', '', '', '', '1st round pick', '$3,050,390'),
('$2,667,600', 'Guerschon Yabusele', '22', '$3,117,240', '$4,781,846', '', '', '', '1st Round Pick', '$2,667,600'),
('$1,654,440', 'Robert Williams', '21', '$1,937,520', '$2,029,920', '$3,661,976', '', '', '1st Round Pick', '$3,591,960'),
('$1,378,242', 'Daniel Theis', '26', '', '', '', '', '', 'Minimum Salary', '$1,378,242'),
('$1,378,242', 'Semi Ojeleye', '23', '$1,618,520', '$1,752,950', '', '', '', '', '$1,378,242'),
('$1,349,383', 'Jabari Bird', '24', '$1,588,231', '', '', '', '', 'Minimum Salary', '$1,349,383'),
('$838,464', 'Brad Wanamaker', '29', '', '', '', '', '', 'Minimum Salary', '$838,464'),
('', 'PJ Dozier', '22', '', '', '', '', '', 'Two-Way Contract', ''),
('', 'Walt Lemon, Jr.', '26', '', '', '', '', '', 'Two-Way Contract', ''),
('$92,857', 'Demetrius Jackson', '24', '$92,857', '$92,857', '$92,857', '$92,857', '$92,857', '', '$557,142'),
('$126,751,888', 'Team Totals', '', '$124,879,403', '$66,188,206', '$18,094,118', '$92,857', '92857', '', '$202,193,567');

-- --------------------------------------------------------

--
-- Table structure for table `clippers_newteam_roster`
--

CREATE TABLE `clippers_newteam_roster` (
  `PLAYER` varchar(120) NOT NULL,
  `POSITION` varchar(120) NOT NULL,
  `HEIGHT` varchar(120) NOT NULL,
  `WEIGHT` int(120) NOT NULL,
  `Birth Date` varchar(200) NOT NULL,
  `EXPERIENCE` varchar(30) NOT NULL,
  `COLLEGE` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `clippers_newteam_roster`
--

INSERT INTO `clippers_newteam_roster` (`PLAYER`, `POSITION`, `HEIGHT`, `WEIGHT`, `Birth Date`, `EXPERIENCE`, `COLLEGE`) VALUES
('Angel Delgado', 'C', '6-10', 245, 'November 20, 1994', 'R', 'Seton Hall University'),
('Avery Bradley', 'SG', '6-2', 180, 'November 26, 1990', '8', 'University of Texas at Austin'),
('Boban Marjanovic', 'C', '7-3', 290, 'August 15, 1988', '3', ''),
('Danilo Gallinari', 'SF', '6-10', 225, 'August 8, 1988', '9', ''),
('Jerome Robinson', 'G', '6-6', 191, 'February 22, 1997', 'R', 'Boston College'),
('Johnathan Motley', 'F', '6-9', 238, 'May 4, 1995', '1', 'Baylor University'),
('Lou Williams', 'SG', '6-1', 175, 'October 27, 1986', '13', ''),
('Luc Mbah a Moute', 'PF', '6-8', 230, 'September 9, 1986', '10', 'University of California, Los Angeles'),
('Marcin Gortat', 'C', '6-11', 240, 'February 17, 1984', '11', ''),
('Mike Scott', 'PF', '6-8', 237, 'July 16, 1988', '6', 'University of Virginia'),
('Milos Teodosic', 'G', '6-5', 196, 'March 19, 1987', '1', ''),
('Montrezl Harrell', 'C', '6-8', 240, 'January 26, 1994', '3', 'University of Louisville'),
('Patrick Beverley', 'SG', '6-1', 185, 'July 12, 1988', '6', 'University of Arkansas'),
('Shai Gilgeous-Alexander', 'G', '6-6', 180, 'July 12, 1998', 'R', 'University of Kentucky'),
('Sindarius Thornwell', 'G', '6-5', 212, 'November 15, 1994', '1', 'University of South Carolina'),
('Tobias Harris', 'PF', '6-9', 235, 'July 15, 1992', '7', 'University of Tennessee'),
('Tyrone Wallace', 'G', '6-5', 205, 'June 10, 1994', '1', 'University of California');

-- --------------------------------------------------------

--
-- Table structure for table `clippers_team_data`
--

CREATE TABLE `clippers_team_data` (
  `LOCATION` varchar(120) NOT NULL,
  `TEAM NAMES` varchar(120) NOT NULL,
  `PLAYOFF APPERANCES` varchar(120) NOT NULL,
  `CHAMPIONSHIPS` varchar(120) NOT NULL,
  `RECORD` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `clippers_team_data`
--

INSERT INTO `clippers_team_data` (`LOCATION`, `TEAM NAMES`, `PLAYOFF APPERANCES`, `CHAMPIONSHIPS`, `RECORD`) VALUES
('Los Angeles, California ', ' Los Angeles Clippers, San Diego Clippers, Buffalo Braves ', '13    ', '0    ', '24-18, 5th in West');

-- --------------------------------------------------------

--
-- Table structure for table `clippers_team_payroll`
--

CREATE TABLE `clippers_team_payroll` (
  `2018-19` varchar(200) NOT NULL,
  `Player` varchar(200) NOT NULL,
  `Age` varchar(200) NOT NULL,
  `2019-20` varchar(200) NOT NULL,
  `2020-21` varchar(200) NOT NULL,
  `2021-22` varchar(200) NOT NULL,
  `2022-23` varchar(200) NOT NULL,
  `2023-24` varchar(200) NOT NULL,
  `Signed Using` varchar(200) NOT NULL,
  `Guaranteed` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `clippers_team_payroll`
--

INSERT INTO `clippers_team_payroll` (`2018-19`, `Player`, `Age`, `2019-20`, `2020-21`, `2021-22`, `2022-23`, `2023-24`, `Signed Using`, `Guaranteed`) VALUES
('$21,587,579', 'Danilo Gallinari', '30', '$22,615,559', '', '', '', '', 'Sign and Trade', '$44,203,138'),
('$14,800,000', 'Tobias Harris', '26', '', '', '', '', '', 'Bird Rights', '$14,800,000'),
('$13,565,218', 'Marcin Gortat', '34', '', '', '', '', '', 'Bird Rights', '$13,565,218'),
('$12,000,000', 'Avery Bradley', '27', '$12,960,000', '', '', '', '', '', '$12,000,000'),
('$8,000,000', 'Lou Williams', '32', '$8,000,000', '$1,500,000', '', '', '', 'Cap Space', '$16,000,000'),
('$7,000,000', 'Boban Marjanovic', '30', '', '', '', '', '', 'Cap Space', '$7,000,000'),
('$6,300,000', 'Milos Teodosic', '31', '', '', '', '', '', 'MLE', '$6,300,000'),
('$6,000,000', 'Montrezl Harrell', '24', '$6,000,000', '', '', '', '', '', '$12,000,000'),
('$5,027,028', 'Patrick Beverley', '30', '', '', '', '', '', 'Bird Rights', ''),
('$4,320,500', 'Mike Scott', '30', '', '', '', '', '', 'MLE', '$4,320,500'),
('$4,320,500', 'Luc Mbah a Moute', '32', '', '', '', '', '', 'MLE', '$4,320,500'),
('$3,375,360', 'Shai Gilgeous-Alexander', '20', '$3,952,920', '$4,141,320', '$5,495,532', '', '', '1st Round Pick', '$7,328,280'),
('$3,046,200', 'Jerome Robinson', '21', '$3,567,720', '$3,737,520', '$5,340,916', '', '', '1st Round Pick', '$6,613,920'),
('$1,378,242', 'Sindarius Thornwell', '23', '$1,618,520', '', '', '', '', 'MLE', '$1,378,242'),
('$1,349,383', 'Tyrone Wallace', '24', '$1,588,231', '', '', '', '', 'Minimum Salary', ''),
('', 'Angel Delgado', '23', '', '', '', '', '', 'Two-Way Contract', ''),
('', 'Johnathan Motley', '23', '', '', '', '', '', 'Two-Way Contract', ''),
('$5,285,394', 'Alexis Ajinca', '30', '', '', '', '', '', '', '$5,285,394'),
('$1,378,242', 'Jawun Evans', '22', '', '', '', '', '', '', '$1,378,242'),
('$650,000', 'Carlos Delfino', '36', '', '', '', '', '', '', '$650,000'),
('$252,043', 'Miroslav Raduljica', '30', '', '', '', '', '', '', '$252,043'),
('$119,635,689', 'Team Totals', '', '$60,302,950', '$9,378,840', '$10,836,448', '', '', '', '$157,395,477');

-- --------------------------------------------------------

--
-- Table structure for table `grizzlies_newteam_roster`
--

CREATE TABLE `grizzlies_newteam_roster` (
  `PLAYER` varchar(120) NOT NULL,
  `POSITION` varchar(120) NOT NULL,
  `HEIGHT` varchar(120) NOT NULL,
  `WEIGHT` int(120) NOT NULL,
  `Birth Date` varchar(200) NOT NULL,
  `EXPERIENCE` varchar(30) NOT NULL,
  `COLLEGE` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `grizzlies_newteam_roster`
--

INSERT INTO `grizzlies_newteam_roster` (`PLAYER`, `POSITION`, `HEIGHT`, `WEIGHT`, `Birth Date`, `EXPERIENCE`, `COLLEGE`) VALUES
('Andrew Harrison', 'G', '6-6', 213, 'October 28, 1994', '2', 'University of Kentucky'),
('Chandler Parsons', 'SF', '6-10', 230, 'October 25, 1988', '7', 'University of Florida'),
('D.J. Stephens', 'G-F', '6-5', 188, 'December 19, 1990', '1', 'University of Memphis'),
('Dillon Brooks', 'SF', '6-6', 220, 'January 22, 1996', '1', 'University of Oregon'),
('Garrett Temple', 'SG', '6-6', 195, 'May 8, 1986', '8', 'Louisiana State University'),
('Ivan Rabb', 'F', '6-10', 220, 'February 4, 1997', '1', 'University of California'),
('JaMychal Green', 'PF', '6-9', 227, 'June 21, 1990', '4', 'University of Alabama'),
('Jaren Jackson Jr.', 'F', '6-11', 242, 'September 15, 1999', 'R', 'Michigan State University'),
('Jevon Carter', 'G', '6-2', 205, 'September 14, 1995', 'R', 'West Virginia University'),
('Kyle Anderson', 'SF', '6-9', 230, 'September 20, 1993', '4', 'University of California, Los Angeles'),
('Marc Gasol', 'C', '7-1', 255, 'January 29, 1985', '10', ''),
('MarShon Brooks', 'SG', '6-5', 200, 'January 26, 1989', '4', 'Providence College'),
('Mike Conley', 'PG', '6-1', 175, 'October 11, 1987', '11', 'Ohio State University'),
('Omri Casspi', 'F', '6-9', 225, 'June 22, 1988', '9', ''),
('Shelvin Mack', 'PG', '6-3', 203, 'April 22, 1990', '7', 'Butler University'),
('Wayne Selden', 'SG', '6-5', 230, 'September 30, 1994', '2', 'University of Kansas'),
('Yuta Watanabe', 'F', '6-9', 205, 'October 13, 1994', 'R', 'George Washington University');

-- --------------------------------------------------------

--
-- Table structure for table `grizzlies_team_data`
--

CREATE TABLE `grizzlies_team_data` (
  `LOCATION` varchar(120) NOT NULL,
  `TEAM NAMES` varchar(120) NOT NULL,
  `PLAYOFF APPERANCES` varchar(120) NOT NULL,
  `CHAMPIONSHIPS` varchar(120) NOT NULL,
  `RECORD` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `grizzlies_team_data`
--

INSERT INTO `grizzlies_team_data` (`LOCATION`, `TEAM NAMES`, `PLAYOFF APPERANCES`, `CHAMPIONSHIPS`, `RECORD`) VALUES
('Memphis, Tennessee ', ' Memphis Grizzlies, Vancouver Grizzlies ', '10    ', '0    ', '7-5, 7th in West');

-- --------------------------------------------------------

--
-- Table structure for table `grizzlies_team_payroll`
--

CREATE TABLE `grizzlies_team_payroll` (
  `2018-19` varchar(200) NOT NULL,
  `Player` varchar(200) NOT NULL,
  `Age` varchar(200) NOT NULL,
  `2019-20` varchar(200) NOT NULL,
  `2020-21` varchar(200) NOT NULL,
  `2021-22` varchar(200) NOT NULL,
  `2022-23` varchar(200) NOT NULL,
  `2023-24` varchar(200) NOT NULL,
  `Signed Using` varchar(200) NOT NULL,
  `Guaranteed` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `grizzlies_team_payroll`
--

INSERT INTO `grizzlies_team_payroll` (`2018-19`, `Player`, `Age`, `2019-20`, `2020-21`, `2021-22`, `2022-23`, `2023-24`, `Signed Using`, `Guaranteed`) VALUES
('$30,521,116', 'Mike Conley', '31', '$32,511,623', '$34,504,132', '', '', '', 'Cap Space', '$85,459,122'),
('$24,119,025', 'Marc Gasol', '33', '$25,595,700', '', '', '', '', 'Bird Rights', '$24,119,025'),
('$24,107,258', 'Chandler Parsons', '30', '$25,102,511', '', '', '', '', 'Cap Space', '$49,209,769'),
('$8,641,000', 'Kyle Anderson', '25', '$9,073,050', '$9,505,100', '$9,937,150', '', '', 'MLE', '$37,156,300'),
('$8,000,000', 'Garrett Temple', '32', '', '', '', '', '', 'Cap Space', '$8,000,000'),
('$7,866,667', 'JaMychal Green', '28', '', '', '', '', '', 'Bird Rights', '$7,866,667'),
('$5,915,040', 'Jaren Jackson', '19', '$6,927,480', '$7,257,360', '$9,180,560', '', '', '1st Round Pick', '$12,842,520'),
('$2,176,260', 'Omri Casspi', '30', '', '', '', '', '', 'Minimum Salary', '$2,176,260'),
('$2,029,463', 'Shelvin Mack', '28', '', '', '', '', '', 'Minimum Salary', '$2,029,463'),
('$1,656,092', 'MarShon Brooks', '29', '', '', '', '', '', '', '$1,656,092'),
('$1,544,951', 'Wayne Selden', '24', '', '', '', '', '', '', '$1,544,951'),
('$1,544,951', 'Andrew Harrison', '24', '', '', '', '', '', 'Cap Space', ''),
('$1,378,242', 'Dillon Brooks', '22', '$1,618,520', '', '', '', '', 'MLE', '$1,378,242'),
('$1,378,242', 'Ivan Rabb', '21', '$1,618,520', '', '', '', '', 'MLE', '$1,378,242'),
('$838,464', 'Jevon Carter', '23', '$1,416,852', '', '', '', '', 'MInimum Salary', '$2,255,316'),
('', 'D.J. Stephens', '27', '', '', '', '', '', 'Two-Way Contract', ''),
('', 'Yuta Watanabe', '24', '', '', '', '', '', 'Two-Way Contract', ''),
('$1,378,242', 'Rade Zagorac', '23', '', '', '', '', '', '', '$1,378,242'),
('$459,414', 'Dakari Johnson', '23', '$459,414', '$459,414', '', '', '', '', '$1,378,242'),
('$123,554,427', 'Team Totals', '', '$104,323,670', '$51,726,006', '$19,117,710', '', '', '', '$239,828,453');

-- --------------------------------------------------------

--
-- Table structure for table `hawks_newteam_roster`
--

CREATE TABLE `hawks_newteam_roster` (
  `PLAYER` varchar(120) NOT NULL,
  `POSITION` varchar(120) NOT NULL,
  `HEIGHT` varchar(120) NOT NULL,
  `WEIGHT` int(120) NOT NULL,
  `Birth Date` varchar(200) NOT NULL,
  `EXPERIENCE` varchar(30) NOT NULL,
  `COLLEGE` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `hawks_newteam_roster`
--

INSERT INTO `hawks_newteam_roster` (`PLAYER`, `POSITION`, `HEIGHT`, `WEIGHT`, `Birth Date`, `EXPERIENCE`, `COLLEGE`) VALUES
('Alex Len', 'C', '7-1', 260, 'June 16, 1993', '5', 'University of Maryland'),
('Alex Poythress', 'PF', '6-7', 238, 'September 6, 1993', '2', 'University of Kentucky'),
('Daniel Hamilton', 'G-F', '6-7', 195, 'August 8, 1995', '1', 'University of Connecticut'),
('DeAndre\' Bembry', 'SF', '6-6', 210, 'July 4, 1994', '2', 'Saint Joseph\'s University'),
('Dewayne Dedmon', 'C', '7-0', 245, 'August 12, 1989', '5', 'University of Southern California'),
('Jaylen Adams', 'G', '6-2', 190, 'May 4, 1996', 'R', 'St. Bonaventure University'),
('Jeremy Lin', 'PG', '6-3', 200, 'August 23, 1988', '8', 'Harvard University'),
('John Collins', 'F', '6-10', 235, 'September 23, 1997', '1', 'Wake Forest University'),
('Justin Anderson', 'G', '6-6', 228, 'November 19, 1993', '3', 'University of Virginia'),
('Kent Bazemore', 'SG', '6-5', 201, 'July 1, 1989', '6', 'Old Dominion University'),
('Kevin Huerter', 'G', '6-7', 190, 'August 27, 1998', 'R', 'University of Maryland'),
('Miles Plumlee', 'C', '6-11', 249, 'September 1, 1988', '6', 'Duke University'),
('Omari Spellman', 'F', '6-9', 245, 'July 21, 1997', 'R', 'Villanova University'),
('Taurean Prince', 'SF', '6-8', 220, 'March 22, 1994', '2', 'Baylor University'),
('Trae Young', 'G', '6-2', 180, 'September 19, 1998', 'R', 'University of Oklahoma'),
('Tyler Dorsey', 'SG', '6-5', 183, 'February 14, 1996', '1', 'University of Oregon'),
('Vince Carter', 'SF', '6-6', 220, 'January 26, 1977', '20', 'University of North Carolina');

-- --------------------------------------------------------

--
-- Table structure for table `hawks_team_data`
--

CREATE TABLE `hawks_team_data` (
  `LOCATION` varchar(120) NOT NULL,
  `TEAM NAMES` varchar(120) NOT NULL,
  `PLAYOFF APPERANCES` varchar(120) NOT NULL,
  `CHAMPIONSHIPS` varchar(120) NOT NULL,
  `RECORD` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `hawks_team_data`
--

INSERT INTO `hawks_team_data` (`LOCATION`, `TEAM NAMES`, `PLAYOFF APPERANCES`, `CHAMPIONSHIPS`, `RECORD`) VALUES
('Atlanta, Georgia ', 'Atlanta Hawks, St. Louis Hawks, Milwaukee Hawks, Tri-Cities Blackhawks ', '46    ', '1    ', '13-29, 12th in East');

-- --------------------------------------------------------

--
-- Table structure for table `hawks_team_payroll`
--

CREATE TABLE `hawks_team_payroll` (
  `2018-19` varchar(200) NOT NULL,
  `Player` varchar(200) NOT NULL,
  `Age` varchar(200) NOT NULL,
  `2019-20` varchar(200) NOT NULL,
  `2020-21` varchar(200) NOT NULL,
  `2021-22` varchar(200) NOT NULL,
  `2022-23` varchar(200) NOT NULL,
  `2023-24` varchar(200) NOT NULL,
  `Signed Using` varchar(200) NOT NULL,
  `Guaranteed` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `hawks_team_payroll`
--

INSERT INTO `hawks_team_payroll` (`2018-19`, `Player`, `Age`, `2019-20`, `2020-21`, `2021-22`, `2022-23`, `2023-24`, `Signed Using`, `Guaranteed`) VALUES
('$18,089,887', 'Kent Bazemore', '29', '$19,269,662', '', '', '', '', 'Cap Space', '$18,089,887'),
('$13,768,421', 'Jeremy Lin', '30', '', '', '', '', '', 'Cap Space', '$13,768,421'),
('$12,500,000', 'Miles Plumlee', '30', '$12,500,000', '', '', '', '', 'Bird Rights', '$25,000,000'),
('$7,200,000', 'Dewayne Dedmon', '29', '', '', '', '', '', 'Cap space', '$7,200,000'),
('$5,356,440', 'Trae Young', '20', '$6,273,000', '$6,571,800', '$8,326,471', '', '', '1st Round Pick', '$11,629,440'),
('$4,350,000', 'Alex Len', '25', '$4,160,000', '', '', '', '', 'Room Exception', '$8,510,000'),
('$2,526,840', 'Taurean Waller-Prince', '24', '$3,481,986', '', '', '', '', '1st Round pick', '$6,008,826'),
('$2,516,048', 'Justin Anderson', '24', '', '', '', '', '', '1st Round pick', '$2,516,048'),
('$2,393,887', 'Vince Carter', '41', '', '', '', '', '', 'Minimum Salary', '$2,393,887'),
('$2,299,080', 'John Collins', '21', '$2,686,560', '$4,137,302', '', '', '', '1st Round Pick', '$4,985,640'),
('$2,250,960', 'Kevin Huerter', '20', '$2,636,280', '$2,761,920', '$4,253,357', '', '', '1st Round Pick', '$4,887,240'),
('$1,634,640', 'DeAndre\' Bembry', '24', '$2,603,982', '', '', '', '', '1st Round pick', '$4,238,622'),
('$1,620,480', 'Omari Spellman', '21', '$1,897,800', '$1,988,280', '$3,588,845', '', '', '1st Round Pick', '$3,518,280'),
('$1,378,242', 'Tyler Dorsey', '22', '', '', '', '', '', 'Minimum Salary', '$1,378,242'),
('$1,349,383', 'Daniel Hamilton', '23', '', '', '', '', '', 'Minimum Salary', '$1,349,383'),
('', 'Alex Poythress', '25', '', '', '', '', '', 'Two-Way Contract', ''),
('', 'Jaylen Adams', '22', '', '', '', '', '', 'Two-Way Contract', ''),
('$25,534,253', 'Carmelo Anthony', '34', '', '', '', '', '', '', '$25,534,253'),
('$2,304,226', 'Jamal Crawford', '38', '', '', '', '', '', '', '$2,304,226'),
('$107,072,787', 'Team Totals', '', '$55,509,270', '$15,459,302', '$16,168,673', '', '', '', '$143,312,395');

-- --------------------------------------------------------

--
-- Table structure for table `heat_newteam_roster`
--

CREATE TABLE `heat_newteam_roster` (
  `PLAYER` varchar(120) NOT NULL,
  `POSITION` varchar(120) NOT NULL,
  `HEIGHT` varchar(120) NOT NULL,
  `WEIGHT` int(120) NOT NULL,
  `Birth Date` varchar(200) NOT NULL,
  `EXPERIENCE` varchar(30) NOT NULL,
  `COLLEGE` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `heat_newteam_roster`
--

INSERT INTO `heat_newteam_roster` (`PLAYER`, `POSITION`, `HEIGHT`, `WEIGHT`, `Birth Date`, `EXPERIENCE`, `COLLEGE`) VALUES
('Bam Adebayo', 'C', '6-10', 243, 'July 18, 1997', '1', 'University of Kentucky'),
('Derrick Jones Jr.', 'SF', '6-7', 190, 'February 15, 1997', '2', 'University of Nevada, Las Vegas'),
('Dion Waiters', 'G', '6-4', 225, 'December 10, 1991', '6', 'Syracuse University'),
('Duncan Robinson', 'G', '6-8', 215, 'April 22, 1994', 'R', 'University of Michigan'),
('Dwyane Wade', 'SG', '6-4', 220, 'January 17, 1982', '15', 'Marquette University'),
('Goran Dragic', 'PG', '6-3', 190, 'May 6, 1986', '10', ''),
('Hassan Whiteside', 'C', '7-0', 265, 'June 13, 1989', '6', 'Marshall University'),
('James Johnson', 'F', '6-9', 250, 'February 20, 1987', '9', 'Wake Forest University'),
('Josh Richardson', 'SF', '6-6', 200, 'September 15, 1993', '3', 'University of Tennessee'),
('Justise Winslow', 'F', '6-7', 225, 'March 26, 1996', '3', 'Duke University'),
('Kelly Olynyk', 'PF', '7-0', 238, 'April 19, 1991', '5', 'Gonzaga University'),
('Rodney McGruder', 'SG', '6-4', 205, 'July 29, 1991', '2', 'Kansas State University'),
('Tyler Johnson', 'PG', '6-4', 186, 'May 7, 1992', '4', 'California State University, Fresno'),
('Udonis Haslem', 'F-C', '6-8', 235, 'June 9, 1980', '15', 'University of Florida'),
('Wayne Ellington', 'G', '6-4', 200, 'October 29, 1987', '9', 'University of North Carolina'),
('Yante Maten', 'F', '6-8', 243, 'August 14, 1996', 'R', 'University of Georgia');

-- --------------------------------------------------------

--
-- Table structure for table `heat_team_data`
--

CREATE TABLE `heat_team_data` (
  `LOCATION` varchar(120) NOT NULL,
  `TEAM NAMES` varchar(120) NOT NULL,
  `PLAYOFF APPERANCES` varchar(120) NOT NULL,
  `CHAMPIONSHIPS` varchar(120) NOT NULL,
  `RECORD` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `heat_team_data`
--

INSERT INTO `heat_team_data` (`LOCATION`, `TEAM NAMES`, `PLAYOFF APPERANCES`, `CHAMPIONSHIPS`, `RECORD`) VALUES
('Miami, Florida ', 'Miami Heat ', '20    ', '3    ', '21-20, 6th in East');

-- --------------------------------------------------------

--
-- Table structure for table `heat_team_payroll`
--

CREATE TABLE `heat_team_payroll` (
  `2018-19` varchar(200) NOT NULL,
  `Player` varchar(200) NOT NULL,
  `Age` varchar(200) NOT NULL,
  `2019-20` varchar(200) NOT NULL,
  `2020-21` varchar(200) NOT NULL,
  `2021-22` varchar(200) NOT NULL,
  `2022-23` varchar(200) NOT NULL,
  `2023-24` varchar(200) NOT NULL,
  `Signed Using` varchar(200) NOT NULL,
  `Guaranteed` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `heat_team_payroll`
--

INSERT INTO `heat_team_payroll` (`2018-19`, `Player`, `Age`, `2019-20`, `2020-21`, `2021-22`, `2022-23`, `2023-24`, `Signed Using`, `Guaranteed`) VALUES
('$25,434,263', 'Hassan Whiteside', '29', '$27,093,018', '', '', '', '', 'Cap Space', '$25,434,263'),
('$19,245,370', 'Tyler Johnson', '26', '$19,245,370', '', '', '', '', 'Cap Space', '$19,245,370'),
('$18,109,175', 'Goran Dragic', '32', '$19,217,900', '', '', '', '', 'Bird Rights', '$18,109,175'),
('$14,651,700', 'James Johnson', '31', '$15,349,400', '$16,047,100', '', '', '', 'Cap space', '$30,001,100'),
('$12,137,527', 'Kelly Olynyk', '27', '$11,667,885', '$12,198,243', '', '', '', 'Cap space', '$23,805,412'),
('$11,550,000', 'Dion Waiters', '26', '$12,100,000', '$12,650,000', '', '', '', 'Cap space', '$36,300,000'),
('$9,367,200', 'Josh Richardson', '25', '$10,100,000', '$10,800,000', '$11,600,000', '', '', 'Minimum Salary', '$30,267,200'),
('$6,270,000', 'Wayne Ellington', '30', '', '', '', '', '', '', '$6,270,000'),
('$3,448,926', 'Justise Winslow', '22', '$13,000,000', '$13,000,000', '$13,000,000', '', '', '1st round pick', '$29,448,926'),
('$2,955,840', 'Bam Adebayo', '21', '$3,454,080', '$5,115,492', '', '', '', '1st Round Pick', '$6,409,920'),
('$2,393,887', 'Dwyane Wade', '36', '', '', '', '', '', 'Minimum Salary', '$2,393,887'),
('$2,393,887', 'Udonis Haslem', '38', '', '', '', '', '', 'Minimum Salary', '$2,393,887'),
('$1,544,951', 'Rodney McGruder', '27', '', '', '', '', '', 'Minimum Salary', '$1,544,951'),
('$1,512,601', 'Derrick Jones', '21', '$1,645,357', '', '', '', '', 'Minimum Salary', '$1,512,601'),
('', 'Yante Maten', '22', '', '', '', '', '', 'Two-Way Contract', ''),
('', 'Duncan Robinson', '24', '', '', '', '', '', 'Two-Way Contract', ''),
('$26,837,720', 'Chris Bosh', '34', '', '', '', '', '', '', '$26,837,720'),
('$350,088', 'A.J. Hammons', '26', '$350,087', '$350,087', '', '', '', '', '$1,050,262'),
('$158,203,135', 'Team Totals', '', '$133,223,097', '$70,160,922', '$24,600,000', '', '', '', '$261,024,674');

-- --------------------------------------------------------

--
-- Table structure for table `hornets_newteam_roster`
--

CREATE TABLE `hornets_newteam_roster` (
  `PLAYER` varchar(120) NOT NULL,
  `POSITION` varchar(120) NOT NULL,
  `HEIGHT` varchar(120) NOT NULL,
  `WEIGHT` int(120) NOT NULL,
  `Birth Date` varchar(200) NOT NULL,
  `EXPERIENCE` varchar(30) NOT NULL,
  `COLLEGE` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `hornets_newteam_roster`
--

INSERT INTO `hornets_newteam_roster` (`PLAYER`, `POSITION`, `HEIGHT`, `WEIGHT`, `Birth Date`, `EXPERIENCE`, `COLLEGE`) VALUES
('Bismack Biyombo', 'C-F', '6-9', 255, 'August 28, 1992', '7', ''),
('Cody Zeller', 'C', '7-0', 240, 'October 5, 1992', '5', 'Indiana University'),
('Devonte\' Graham', 'G', '6-2', 185, 'February 22, 1995', 'R', 'University of Kansas'),
('Dwayne Bacon', 'G', '6-6', 222, 'August 30, 1995', '1', 'Florida State University'),
('Frank Kaminsky', 'F-C', '7-0', 242, 'April 4, 1993', '3', 'University of Wisconsin'),
('J.P. Macura', 'G', '6-5', 203, 'June 5, 1995', 'R', 'Xavier University'),
('Jeremy Lamb', 'SG', '6-5', 185, 'May 30, 1992', '6', 'University of Connecticut'),
('Joe Chealey', 'G', '6-3', 190, 'November 1, 1995', 'R', 'College of Charleston'),
('Kemba Walker', 'PG', '6-1', 172, 'May 8, 1990', '7', 'University of Connecticut'),
('Malik Monk', 'SG', '6-3', 200, 'February 4, 1998', '1', 'University of Kentucky'),
('Marvin Williams', 'PF', '6-9', 237, 'June 19, 1986', '13', 'University of North Carolina'),
('Michael Kidd-Gilchrist', 'SF', '6-7', 232, 'September 26, 1993', '6', 'University of Kentucky'),
('Miles Bridges', 'G-F', '6-7', 225, 'March 21, 1998', 'R', 'Michigan State University'),
('Nicolas Batum', 'SG', '6-8', 200, 'December 14, 1988', '10', ''),
('Tony Parker', 'PG', '6-2', 185, 'May 17, 1982', '17', ''),
('Willy Hernangomez', 'C', '6-11', 240, 'May 27, 1994', '2', '');

-- --------------------------------------------------------

--
-- Table structure for table `hornets_team_data`
--

CREATE TABLE `hornets_team_data` (
  `LOCATION` varchar(120) NOT NULL,
  `TEAM NAMES` varchar(120) NOT NULL,
  `PLAYOFF APPERANCES` varchar(120) NOT NULL,
  `CHAMPIONSHIPS` varchar(120) NOT NULL,
  `RECORD` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `hornets_team_data`
--

INSERT INTO `hornets_team_data` (`LOCATION`, `TEAM NAMES`, `PLAYOFF APPERANCES`, `CHAMPIONSHIPS`, `RECORD`) VALUES
('Charlotte, North Carolina ', ' Charlotte Bobcats, Charlotte Hornets ', '10    ', '0    ', '19-23, 8th in East');

-- --------------------------------------------------------

--
-- Table structure for table `hornets_team_payroll`
--

CREATE TABLE `hornets_team_payroll` (
  `2018-19` varchar(200) NOT NULL,
  `Player` varchar(200) NOT NULL,
  `Age` varchar(200) NOT NULL,
  `2019-20` varchar(200) NOT NULL,
  `2020-21` varchar(200) NOT NULL,
  `2021-22` varchar(200) NOT NULL,
  `2022-23` varchar(200) NOT NULL,
  `2023-24` varchar(200) NOT NULL,
  `Signed Using` varchar(200) NOT NULL,
  `Guaranteed` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `hornets_team_payroll`
--

INSERT INTO `hornets_team_payroll` (`2018-19`, `Player`, `Age`, `2019-20`, `2020-21`, `2021-22`, `2022-23`, `2023-24`, `Signed Using`, `Guaranteed`) VALUES
('$24,000,000', 'Nicolas Batum', '29', '$25,565,217', '$27,130,434', '', '', '', 'Cap Space', '$49,565,217'),
('$17,000,000', 'Bismack Biyombo', '26', '$17,000,000', '', '', '', '', 'Cap Space', '$17,000,000'),
('$14,087,500', 'Marvin Williams', '32', '$15,006,250', '', '', '', '', 'Cap Space', '$14,087,500'),
('$13,528,090', 'Cody Zeller', '26', '$14,471,910', '$15,415,730', '', '', '', '1st Round Pick', '$43,415,730'),
('$13,000,000', 'Michael Kidd-Gilchrist', '25', '$13,000,000', '', '', '', '', '1st Round Pick', '$13,000,000'),
('$12,000,000', 'Kemba Walker', '28', '', '', '', '', '', '1st Round Pick', '$12,000,000'),
('$7,488,372', 'Jeremy Lamb', '26', '', '', '', '', '', 'Rookie scale extension', '$7,488,372'),
('$5,000,000', 'Tony Parker', '36', '$5,000,000', '', '', '', '', 'MLE', '$10,000,000'),
('$3,627,842', 'Frank Kaminsky', '25', '', '', '', '', '', '1st round pick', '$3,627,842'),
('$3,447,480', 'Malik Monk', '20', '$4,028,400', '$5,345,687', '', '', '', '1st Round Pick', '$3,447,480'),
('$3,206,640', 'Miles Bridges', '20', '$3,755,400', '$3,934,320', '$5,421,493', '', '', '1st Round Pick', '$6,962,040'),
('$1,544,951', 'Willy Hernangomez', '24', '$1,701,735', '', '', '', '', 'Cap Space', '$1,544,951'),
('$1,378,242', 'Dwayne Bacon', '23', '$1,618,520', '', '', '', '', 'MLE', '$1,378,242'),
('$988,464', 'Devonte\' Graham', '23', '$1,416,852', '$1,663,861', '', '', '', 'MLE', '$2,405,316'),
('', 'Joe Chealey', '22', '', '', '', '', '', 'Two-Way Contract', ''),
('', 'J.P. Macura', '23', '', '', '', '', '', 'Two-Way Contract', ''),
('$120,297,581', 'Team Totals', '', '$102,564,284', '$53,490,032', '$5,421,493', '', '', '', '$185,922,690');

-- --------------------------------------------------------

--
-- Table structure for table `jazz_newteam_roster`
--

CREATE TABLE `jazz_newteam_roster` (
  `PLAYER` varchar(120) NOT NULL,
  `POSITION` varchar(120) NOT NULL,
  `HEIGHT` varchar(120) NOT NULL,
  `WEIGHT` int(120) NOT NULL,
  `Birth Date` varchar(200) NOT NULL,
  `EXPERIENCE` varchar(30) NOT NULL,
  `COLLEGE` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `jazz_newteam_roster`
--

INSERT INTO `jazz_newteam_roster` (`PLAYER`, `POSITION`, `HEIGHT`, `WEIGHT`, `Birth Date`, `EXPERIENCE`, `COLLEGE`) VALUES
('Alec Burks', 'SG', '6-6', 214, 'July 20, 1991', '7', 'University of Colorado'),
('Dante Exum', 'PG', '6-6', 190, 'July 13, 1995', '3', ''),
('Derrick Favors', 'C', '6-10', 265, 'July 15, 1991', '8', 'Georgia Institute of Technology'),
('Donovan Mitchell', 'SG', '6-3', 211, 'September 7, 1996', '1', 'University of Louisville'),
('Ekpe Udoh', 'C-F', '6-10', 240, 'May 20, 1987', '6', 'University of Michigan, Baylor University'),
('Georges Niang', 'PF', '6-8', 230, 'June 17, 1993', '2', 'Iowa State University'),
('Grayson Allen', 'G', '6-5', 205, 'October 8, 1995', 'R', 'Duke University'),
('Isaiah Cousins', 'G', '6-5', 191, 'March 13, 1994', 'R', 'University of Oklahoma'),
('Jae Crowder', 'SF', '6-6', 235, 'July 6, 1990', '6', 'Marquette University'),
('Joe Ingles', 'SF', '6-8', 226, 'October 2, 1987', '4', ''),
('Naz Mitrou-Long', 'G', '6-4', 209, 'August 3, 1993', '1', 'Iowa State University'),
('Raul Neto', 'G', '6-1', 179, 'May 19, 1992', '3', ''),
('Ricky Rubio', 'PG', '6-4', 194, 'October 21, 1990', '7', ''),
('Royce O\'Neale', 'SF', '6-6', 215, 'June 5, 1993', '1', 'Baylor University'),
('Rudy Gobert', 'C', '7-1', 245, 'June 26, 1992', '5', ''),
('Thabo Sefolosha', 'G-F', '6-7', 220, 'May 2, 1984', '12', ''),
('Tony Bradley', 'F-C', '6-11', 240, 'January 8, 1998', '1', 'University of North Carolina'),
('Tyler Cavanaugh', 'F', '6-9', 239, 'February 9, 1994', '1', 'George Washington University');

-- --------------------------------------------------------

--
-- Table structure for table `jazz_team_data`
--

CREATE TABLE `jazz_team_data` (
  `LOCATION` varchar(120) NOT NULL,
  `TEAM NAMES` varchar(120) NOT NULL,
  `PLAYOFF APPERANCES` varchar(120) NOT NULL,
  `CHAMPIONSHIPS` varchar(120) NOT NULL,
  `RECORD` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `jazz_team_data`
--

INSERT INTO `jazz_team_data` (`LOCATION`, `TEAM NAMES`, `PLAYOFF APPERANCES`, `CHAMPIONSHIPS`, `RECORD`) VALUES
('Salt Lake City, Utah ', ' Utah Jazz, New Orleans Jazz ', '27    ', '0    ', '23-21, 9th in West');

-- --------------------------------------------------------

--
-- Table structure for table `jazz_team_payroll`
--

CREATE TABLE `jazz_team_payroll` (
  `2018-19` varchar(200) NOT NULL,
  `Player` varchar(200) NOT NULL,
  `Age` varchar(200) NOT NULL,
  `2019-20` varchar(200) NOT NULL,
  `2020-21` varchar(200) NOT NULL,
  `2021-22` varchar(200) NOT NULL,
  `2022-23` varchar(200) NOT NULL,
  `2023-24` varchar(200) NOT NULL,
  `Signed Using` varchar(200) NOT NULL,
  `Guaranteed` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `jazz_team_payroll`
--

INSERT INTO `jazz_team_payroll` (`2018-19`, `Player`, `Age`, `2019-20`, `2020-21`, `2021-22`, `2022-23`, `2023-24`, `Signed Using`, `Guaranteed`) VALUES
('$23,241,573', 'Rudy Gobert', '26', '$25,008,427', '$26,525,281', '', '', '', '1st Round Pick', '$74,775,281'),
('$16,900,000', 'Derrick Favors', '27', '$16,900,000', '', '', '', '', '', '$16,000,000'),
('$14,975,000', 'Ricky Rubio', '28', '', '', '', '', '', '1st Round Pick', '$14,975,000'),
('$13,045,455', 'Joe Ingles', '31', '$11,954,546', '$10,863,637', '', '', '', 'Bird Rights', '$35,863,638'),
('$11,536,515', 'Alec Burks', '27', '', '', '', '', '', '1st Round Pick', '$11,536,515'),
('$9,600,000', 'Dante Exum', '23', '$9,600,000', '$9,600,000', '', '', '', 'Cap Space', '$27,300,000'),
('$7,305,825', 'Jae Crowder', '28', '$7,815,533', '', '', '', '', 'Bird Rights', '$15,121,358'),
('$5,250,000', 'Thabo Sefolosha', '34', '', '', '', '', '', 'Cap space', '$5,250,000'),
('$3,360,000', 'Ekpe Udoh', '31', '', '', '', '', '', 'Room Exception', '$3,360,000'),
('$3,111,480', 'Donovan Mitchell', '22', '$3,635,760', '$5,195,501', '', '', '', '1st Round Pick', '$6,747,240'),
('$2,150,000', 'Raul Neto', '26', '$2,150,000', '', '', '', '', '', '$2,150,000'),
('$2,074,320', 'Grayson Allen', '23', '$2,429,400', '$2,545,320', '$4,054,695', '', '', '1st Round Pick', '$4,503,720'),
('$1,679,520', 'Tony Bradley', '20', '$1,962,360', '$3,542,060', '', '', '', '1st Round Pick', '$3,641,880'),
('$1,512,601', 'Georges Niang', '25', '$1,645,357', '$1,783,557', '', '', '', '', '$1,512,601'),
('$1,378,242', 'Royce O\'Neale', '25', '$1,618,520', '', '', '', '', 'Cap space', ''),
('$838,464', 'Isaiah Cousins', '24', '', '', '', '', '', 'Minimum Salary', ''),
('', 'Naz Mitrou-Long', '25', '', '', '', '', '', 'Two-Way Contract', ''),
('', 'Tyler Cavanaugh', '24', '', '', '', '', '', 'Two-Way Contract', ''),
('$117,958,995', 'Team Totals', '', '$84,719,903', '$60,055,356', '$4,054,695', '', '', '', '$222,737,233');

-- --------------------------------------------------------

--
-- Table structure for table `kings_newteam_roster`
--

CREATE TABLE `kings_newteam_roster` (
  `PLAYER` varchar(120) NOT NULL,
  `POSITION` varchar(120) NOT NULL,
  `HEIGHT` varchar(120) NOT NULL,
  `WEIGHT` int(120) NOT NULL,
  `Birth Date` varchar(200) NOT NULL,
  `EXPERIENCE` varchar(30) NOT NULL,
  `COLLEGE` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `kings_newteam_roster`
--

INSERT INTO `kings_newteam_roster` (`PLAYER`, `POSITION`, `HEIGHT`, `WEIGHT`, `Birth Date`, `EXPERIENCE`, `COLLEGE`) VALUES
('Ben McLemore', 'G', '6-5', 195, 'February 11, 1993', '5', 'University of Kansas'),
('Bogdan Bogdanovic', 'G', '6-6', 205, 'August 18, 1992', '1', ''),
('Buddy Hield', 'SG', '6-4', 214, 'December 17, 1993', '2', 'University of Oklahoma'),
('De\'Aaron Fox', 'PG', '6-3', 170, 'December 20, 1997', '1', 'University of Kentucky'),
('Frank Mason III', 'PG', '6-0', 189, 'April 3, 1994', '1', 'University of Kansas'),
('Harry Giles', 'F-C', '6-10', 240, 'April 22, 1998', 'R', 'Duke University'),
('Iman Shumpert', 'SG', '6-5', 220, 'June 26, 1990', '7', 'Georgia Institute of Technology'),
('Justin Jackson', 'SF', '6-8', 200, 'March 28, 1995', '1', 'University of North Carolina'),
('Kosta Koufos', 'C', '7-0', 265, 'February 24, 1989', '10', 'Ohio State University'),
('Marvin Bagley III', 'F', '6-11', 234, 'March 14, 1999', 'R', 'Duke University'),
('Nemanja Bjelica', 'PF', '6-10', 240, 'May 9, 1988', '3', ''),
('Skal Labissiere', 'F', '6-11', 225, 'March 18, 1996', '2', 'University of Kentucky'),
('Troy Williams', 'F', '6-7', 218, 'December 30, 1994', '2', 'Indiana University'),
('Wenyen Gabriel', 'F', '6-9', 205, 'March 26, 1997', 'R', 'University of Kentucky'),
('Willie Cauley-Stein', 'C', '7-0', 240, 'August 18, 1993', '3', 'University of Kentucky'),
('Yogi Ferrell', 'SG', '6-0', 180, 'May 9, 1993', '2', 'Indiana University'),
('Zach Randolph', 'F-C', '6-9', 260, 'July 16, 1981', '17', 'Michigan State University');

-- --------------------------------------------------------

--
-- Table structure for table `kings_team_data`
--

CREATE TABLE `kings_team_data` (
  `LOCATION` varchar(120) NOT NULL,
  `TEAM NAMES` varchar(120) NOT NULL,
  `PLAYOFF APPERANCES` varchar(120) NOT NULL,
  `CHAMPIONSHIPS` varchar(120) NOT NULL,
  `RECORD` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `kings_team_data`
--

INSERT INTO `kings_team_data` (`LOCATION`, `TEAM NAMES`, `PLAYOFF APPERANCES`, `CHAMPIONSHIPS`, `RECORD`) VALUES
('Sacramento, California ', ' Sacramento Kings, Kansas City Kings, Kansas City-Omaha Kings, Cincinnati Royals, Rochester Royals ', '29    ', '1    ', '22-21, 10th in West');

-- --------------------------------------------------------

--
-- Table structure for table `kings_team_payroll`
--

CREATE TABLE `kings_team_payroll` (
  `2018-19` varchar(200) NOT NULL,
  `Player` varchar(200) NOT NULL,
  `Age` varchar(200) NOT NULL,
  `2019-20` varchar(200) NOT NULL,
  `2020-21` varchar(200) NOT NULL,
  `2021-22` varchar(200) NOT NULL,
  `2022-23` varchar(200) NOT NULL,
  `2023-24` varchar(200) NOT NULL,
  `Signed Using` varchar(200) NOT NULL,
  `Guaranteed` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `kings_team_payroll`
--

INSERT INTO `kings_team_payroll` (`2018-19`, `Player`, `Age`, `2019-20`, `2020-21`, `2021-22`, `2022-23`, `2023-24`, `Signed Using`, `Guaranteed`) VALUES
('$11,692,308', 'Zach Randolph', '37', '', '', '', '', '', 'Cap space', '$11,692,308'),
('$11,011,234', 'Iman Shumpert', '28', '', '', '', '', '', 'Bird Rights', '$11,011,234'),
('$9,000,000', 'Bogdan Bogdanovic', '26', '$8,529,386', '', '', '', '', 'Cap space', '$17,529,386'),
('$8,739,500', 'Kosta Koufos', '29', '', '', '', '', '', 'Cap Space', '$8,739,500'),
('$7,305,600', 'Marvin Bagley', '19', '$8,556,120', '$8,963,640', '$11,312,114', '', '', '1st Round Pick', '$15,861,720'),
('$6,500,000', 'Nemanja Bjelica', '30', '$6,825,000', '$7,150,000', '', '', '', '', '$13,325,000'),
('$5,470,920', 'De\'Aaron Fox', '20', '$6,392,760', '$8,099,627', '', '', '', '1st Round Pick', '$5,470,920'),
('$5,460,000', 'Ben McLemore', '25', '', '', '', '', '', 'MLE', '$5,460,000'),
('$4,696,875', 'Willie Cauley-Stein', '25', '', '', '', '', '', '1st round pick', '$4,696,875'),
('$3,833,760', 'Buddy Hield', '24', '$4,861,208', '', '', '', '', '1st Round pick', '$3,833,760'),
('$3,000,000', 'Yogi Ferrell', '25', '$3,150,000', '', '', '', '', 'Cap Space', '$3,000,000'),
('$2,807,880', 'Justin Jackson', '23', '$3,280,920', '$5,029,650', '', '', '', '1st Round Pick', '$2,807,880'),
('$2,207,040', 'Harry Giles', '20', '$2,578,800', '$3,976,510', '', '', '', '1st Round Pick', '$2,207,040'),
('$1,544,951', 'Skal Labissiere', '22', '$2,338,847', '', '', '', '', '1st Round pick', '$1,544,951'),
('$1,378,242', 'Frank Mason', '24', '$1,618,520', '', '', '', '', '', '$1,378,242'),
('', 'Troy Williams', '23', '', '', '', '', '', 'Two-Way Contract', ''),
('', 'Wenyen Gabriel', '21', '', '', '', '', '', 'Two-Way Contract', ''),
('$2,133,542', 'Matt Barnes', '38', '$2,133,541', '', '', '', '', '', '$4,267,083'),
('$2,000,400', 'Georgios Papagiannis', '21', '', '', '', '', '', '', '$2,000,400'),
('$1,544,951', 'Deyonta Davis', '21', '', '', '', '', '', '', '$1,544,951'),
('$517,219', 'Caron Butler', '38', '', '', '', '', '', '', '$517,219'),
('$90,844,422', 'Team Totals', '', '$50,265,102', '$33,219,427', '$11,312,114', '', '', '', '$116,888,469');

-- --------------------------------------------------------

--
-- Table structure for table `knicks_newteam_roster`
--

CREATE TABLE `knicks_newteam_roster` (
  `PLAYER` varchar(120) NOT NULL,
  `POSITION` varchar(120) NOT NULL,
  `HEIGHT` varchar(120) NOT NULL,
  `WEIGHT` int(120) NOT NULL,
  `Birth Date` varchar(200) NOT NULL,
  `EXPERIENCE` varchar(30) NOT NULL,
  `COLLEGE` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `knicks_newteam_roster`
--

INSERT INTO `knicks_newteam_roster` (`PLAYER`, `POSITION`, `HEIGHT`, `WEIGHT`, `Birth Date`, `EXPERIENCE`, `COLLEGE`) VALUES
('Allonzo Trier', 'G', '6-5', 205, 'January 17, 1996', 'R', 'University of Arizona'),
('Courtney Lee', 'G', '6-5', 200, 'October 3, 1985', '10', 'Western Kentucky University'),
('Damyean Dotson', 'G', '6-6', 205, 'May 6, 1994', '1', 'University of Oregon, University of Houston'),
('Emmanuel Mudiay', 'G', '6-5', 200, 'March 5, 1996', '3', ''),
('Enes Kanter', 'C', '6-11', 245, 'May 20, 1992', '7', ''),
('Frank Ntilikina', 'PG', '6-5', 190, 'July 28, 1998', '1', ''),
('Isaiah Hicks', 'F', '6-9', 233, 'July 24, 1994', '1', 'University of North Carolina'),
('Joakim Noah', 'C', '6-11', 230, 'February 25, 1985', '11', 'University of Florida'),
('Kevin Knox', 'F', '6-9', 215, 'August 11, 1999', 'R', 'University of Kentucky'),
('Kristaps Porzingis', 'F-C', '7-3', 240, 'August 2, 1995', '3', ''),
('Lance Thomas', 'PF', '6-8', 235, 'April 24, 1988', '7', 'Duke University'),
('Luke Kornet', 'F', '7-1', 250, 'July 15, 1995', '1', 'Vanderbilt University'),
('Mario Hezonja', 'SF', '6-8', 215, 'February 25, 1995', '3', ''),
('Mitchell Robinson', 'C', '7-0', 225, 'April 1, 1998', 'R', ''),
('Noah Vonleh', 'PF', '6-10', 240, 'August 24, 1995', '4', 'Indiana University'),
('Ron Baker', 'SG', '6-4', 220, 'March 30, 1993', '2', 'Wichita State University'),
('Tim Hardaway Jr.', 'SG', '6-6', 205, 'March 16, 1992', '5', 'University of Michigan'),
('Trey Burke', 'PG', '6-1', 191, 'November 12, 1992', '5', 'University of Michigan');

-- --------------------------------------------------------

--
-- Table structure for table `knicks_team_data`
--

CREATE TABLE `knicks_team_data` (
  `LOCATION` varchar(120) NOT NULL,
  `TEAM NAMES` varchar(120) NOT NULL,
  `PLAYOFF APPERANCES` varchar(120) NOT NULL,
  `CHAMPIONSHIPS` varchar(120) NOT NULL,
  `RECORD` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `knicks_team_data`
--

INSERT INTO `knicks_team_data` (`LOCATION`, `TEAM NAMES`, `PLAYOFF APPERANCES`, `CHAMPIONSHIPS`, `RECORD`) VALUES
('New York, New York ', 'New York Knicks ', '42    ', '2    ', '10-32, 13th in East');

-- --------------------------------------------------------

--
-- Table structure for table `knicks_team_payroll`
--

CREATE TABLE `knicks_team_payroll` (
  `2018-19` varchar(200) NOT NULL,
  `Player` varchar(200) NOT NULL,
  `Age` varchar(200) NOT NULL,
  `2019-20` varchar(200) NOT NULL,
  `2020-21` varchar(200) NOT NULL,
  `2021-22` varchar(200) NOT NULL,
  `2022-23` varchar(200) NOT NULL,
  `2023-24` varchar(200) NOT NULL,
  `Signed Using` varchar(200) NOT NULL,
  `Guaranteed` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `knicks_team_payroll`
--

INSERT INTO `knicks_team_payroll` (`2018-19`, `Player`, `Age`, `2019-20`, `2020-21`, `2021-22`, `2022-23`, `2023-24`, `Signed Using`, `Guaranteed`) VALUES
('$18,622,514', 'Enes Kanter', '26', '', '', '', '', '', 'Bird Rights', '$18,622,514'),
('$18,530,000', 'Joakim Noah', '33', '$6,431,666', '$6,431,666', '$6,431,666', '', '', 'Cap Space', '$37,824,998'),
('$17,325,000', 'Tim Hardaway', '26', '$18,150,000', '$18,975,000', '', '', '', 'Cap space', '$35,475,000'),
('$12,253,780', 'Courtney Lee', '33', '$12,759,670', '', '', '', '', 'Cap Space', '$25,013,450'),
('$7,119,650', 'Lance Thomas', '30', '$7,583,975', '', '', '', '', 'Cap Space', '$7,119,650'),
('$6,500,000', 'Mario Hezonja', '23', '', '', '', '', '', 'MLE', '$6,500,000'),
('$5,697,054', 'Kristaps Porzingis', '23', '', '', '', '', '', '1st round pick', '$5,697,054'),
('$4,544,400', 'Ron Baker', '25', '', '', '', '', '', 'Room Exception', '$4,544,400'),
('$4,294,480', 'Emmanuel Mudiay', '22', '', '', '', '', '', '1st round pick', '$4,294,480'),
('$4,155,720', 'Frank Ntilikina', '20', '$4,855,800', '$6,176,578', '', '', '', '1st Round Pick', '$9,011,520'),
('$3,739,920', 'Kevin Knox', '19', '$4,380,120', '$4,588,680', '$5,845,978', '', '', '1st Round Pick', '$8,120,040'),
('$1,795,015', 'Trey Burke', '25', '', '', '', '', '', 'Minimum Salary', '$100,000'),
('$1,621,415', 'Noah Vonleh', '23', '', '', '', '', '', 'Minimum Salary', ''),
('$1,619,000', 'Luke Kornet', '23', '', '', '', '', '', '', '$1,619,000'),
('$1,485,440', 'Mitchell Robinson', '20', '$1,559,712', '$1,663,861', '$1,802,057', '', '', 'MLE', '$3,045,152'),
('$1,378,242', 'Damyean Dotson', '24', '$1,618,520', '', '', '', '', 'Minimum Salary', '$1,378,242'),
('', 'Isaiah Hicks', '24', '', '', '', '', '', 'Two-Way Contract', ''),
('', 'Allonzo Trier', '22', '', '', '', '', '', 'Two-Way Contract', ''),
('$110,681,630', 'Team Totals', '', '$57,339,463', '$37,835,785', '$14,079,701', '', '', '', '$168,365,500');

-- --------------------------------------------------------

--
-- Table structure for table `lakers_newteam_roster`
--

CREATE TABLE `lakers_newteam_roster` (
  `PLAYER` varchar(120) NOT NULL,
  `POSITION` varchar(120) NOT NULL,
  `HEIGHT` varchar(120) NOT NULL,
  `WEIGHT` int(120) NOT NULL,
  `Birth Date` varchar(200) NOT NULL,
  `EXPERIENCE` varchar(30) NOT NULL,
  `COLLEGE` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `lakers_newteam_roster`
--

INSERT INTO `lakers_newteam_roster` (`PLAYER`, `POSITION`, `HEIGHT`, `WEIGHT`, `Birth Date`, `EXPERIENCE`, `COLLEGE`) VALUES
('Alex Caruso', 'G', '6-5', 186, 'February 28, 1994', '1', 'Texas A&M University'),
('Brandon Ingram', 'F', '6-9', 190, 'September 2, 1997', '2', 'Duke University'),
('Isaac Bonga', 'G', '6-8', 179, 'November 8, 1999', 'R', ''),
('Ivica Zubac', 'C', '7-1', 265, 'March 18, 1997', '2', ''),
('JaVale McGee', 'C', '7-0', 270, 'January 19, 1988', '10', 'University of Nevada, Reno'),
('Johnathan Williams', 'F', '6-9', 228, 'May 22, 1995', 'R', 'University of Missouri, Gonzaga University'),
('Josh Hart', 'G', '6-5', 209, 'March 6, 1995', '1', 'Villanova University'),
('Kentavious Caldwell-Pope', 'G', '6-5', 205, 'February 18, 1993', '5', 'University of Georgia'),
('Kyle Kuzma', 'F', '6-9', 220, 'July 24, 1995', '1', 'University of Utah'),
('Lance Stephenson', 'G-F', '6-5', 230, 'September 5, 1990', '8', 'University of Cincinnati'),
('LeBron James', 'F-G', '6-8', 250, 'December 30, 1984', '15', ''),
('Lonzo Ball', 'G', '6-6', 190, 'October 27, 1997', '1', 'University of California, Los Angeles'),
('Michael Beasley', 'F', '6-9', 235, 'January 9, 1989', '10', 'Kansas State University'),
('Moritz Wagner', 'F-C', '6-11', 245, 'April 26, 1997', 'R', 'University of Michigan'),
('Rajon Rondo', 'G', '6-1', 186, 'February 22, 1986', '12', 'University of Kentucky'),
('Svi Mykhailiuk', 'G-F', '6-8', 205, 'June 10, 1997', 'R', 'University of Kansas');

-- --------------------------------------------------------

--
-- Table structure for table `lakers_team_data`
--

CREATE TABLE `lakers_team_data` (
  `Location` varchar(120) NOT NULL,
  `TeamNames` varchar(120) NOT NULL,
  `PlayoffAppearances` varchar(120) NOT NULL,
  `Championships` varchar(120) NOT NULL,
  `Record` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `lakers_team_data`
--

INSERT INTO `lakers_team_data` (`Location`, `TeamNames`, `PlayoffAppearances`, `Championships`, `Record`) VALUES
('Los Angeles', ' Los Angeles Lakers, Minneapolis Lakers ', '64', '17', '3550-2454');

-- --------------------------------------------------------

--
-- Table structure for table `lakers_team_payroll`
--

CREATE TABLE `lakers_team_payroll` (
  `2018-19` varchar(200) NOT NULL,
  `Player` varchar(200) NOT NULL,
  `Age` varchar(200) NOT NULL,
  `2019-20` varchar(200) NOT NULL,
  `2020-21` varchar(200) NOT NULL,
  `2021-22` varchar(200) NOT NULL,
  `2022-23` varchar(200) NOT NULL,
  `2023-24` varchar(200) NOT NULL,
  `Signed Using` varchar(200) NOT NULL,
  `Guaranteed` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `lakers_team_payroll`
--

INSERT INTO `lakers_team_payroll` (`2018-19`, `Player`, `Age`, `2019-20`, `2020-21`, `2021-22`, `2022-23`, `2023-24`, `Signed Using`, `Guaranteed`) VALUES
('$35,654,150', 'LeBron James', '33', '$37,436,858', '$39,219,565', '$41,002,273', '', '', '', '$113,310,573'),
('$12,000,000', 'Kentavious Caldwell-Pope', '25', '', '', '', '', '', '', '$12,000,000'),
('$9,000,000', 'Rajon Rondo', '32', '', '', '', '', '', '', '$9,000,000'),
('$7,461,960', 'Lonzo Ball', '21', '$8,719,320', '$11,003,782', '', '', '', '1st Round Pick', '$16,181,280'),
('$5,757,120', 'Brandon Ingram', '21', '$7,265,485', '', '', '', '', '1st Round pick', '$13,022,605'),
('$4,449,000', 'Lance Stephenson', '28', '', '', '', '', '', '', '$4,449,000'),
('$3,500,000', 'Michael Beasley', '29', '', '', '', '', '', 'Room Exception', '$3,500,000'),
('$2,393,887', 'JaVale McGee', '30', '', '', '', '', '', 'Minimum Salary', '$2,393,887'),
('$1,762,080', 'Moritz Wagner', '21', '$2,063,520', '$3,893,618', '$2,161,920', '', '', '1st Round Pick', '$3,825,600'),
('$1,689,840', 'Kyle Kuzma', '23', '$1,974,600', '$3,562,178', '', '', '', '1st Round Pick', '$3,664,440'),
('$1,655,160', 'Josh Hart', '23', '$1,934,160', '$3,491,159', '', '', '', '1st Round Pick', '$3,589,320'),
('$1,544,951', 'Ivica Zubac', '21', '', '', '', '', '', 'Cap Space', '$1,544,951'),
('$1,487,694', 'Sviatoslav Mykhailiuk', '21', '$1,416,852', '$1,663,861', '', '', '', 'Cap Space', '$1,487,694'),
('$1,000,000', 'Isaac Bonga', '18', '$1,663,861', '$1,416,852', '', '', '', '', '$2,663,861'),
('', 'Johnathan Williams', '23', '', '', '', '', '', 'Two-Way Contract', ''),
('', 'Alex Caruso', '24', '', '', '', '', '', 'Two-Way Contract', ''),
('$14,354,067', 'Luol Deng', '33', '$4,990,000', '$4,990,000', '$4,990,000', '', '', '', '$29,324,067'),
('$103,709,909', 'Team Totals', '', '$67,464,656', '$69,241,015', '$48,154,193', '', '', '', '$219,957,278');

-- --------------------------------------------------------

--
-- Table structure for table `magic_newteam_roster`
--

CREATE TABLE `magic_newteam_roster` (
  `PLAYER` varchar(120) NOT NULL,
  `POSITION` varchar(120) NOT NULL,
  `HEIGHT` varchar(120) NOT NULL,
  `WEIGHT` int(120) NOT NULL,
  `Birth Date` varchar(200) NOT NULL,
  `EXPERIENCE` varchar(30) NOT NULL,
  `COLLEGE` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `magic_newteam_roster`
--

INSERT INTO `magic_newteam_roster` (`PLAYER`, `POSITION`, `HEIGHT`, `WEIGHT`, `Birth Date`, `EXPERIENCE`, `COLLEGE`) VALUES
('Aaron Gordon', 'PF', '6-9', 220, 'September 16, 1995', '4', 'University of Arizona'),
('Amile Jefferson', 'F', '6-9', 224, 'May 7, 1993', 'R', 'Duke University'),
('D.J. Augustin', 'PG', '6-0', 183, 'November 10, 1987', '10', 'University of Texas at Austin'),
('Evan Fournier', 'SF', '6-7', 205, 'October 29, 1992', '6', ''),
('Isaiah Briscoe', 'G', '6-3', 224, 'April 13, 1996', 'R', 'University of Kentucky'),
('Jarell Martin', 'F', '6-10', 239, 'May 24, 1994', '3', 'Louisiana State University'),
('Jerian Grant', 'PG', '6-4', 195, 'October 9, 1992', '3', 'University of Notre Dame'),
('Jonathan Isaac', 'PF', '6-10', 210, 'October 3, 1997', '1', 'Florida State University'),
('Jonathon Simmons', 'SG', '6-6', 195, 'September 14, 1989', '3', 'University of Houston'),
('Khem Birch', 'C-F', '6-9', 220, 'September 28, 1992', '1', 'University of Pittsburgh, University of Nevada, Las Vegas'),
('Melvin Frazier', 'G', '6-6', 200, 'August 30, 1996', 'R', 'Tulane University'),
('Mohamed Bamba', 'C', '7-0', 225, 'May 12, 1998', 'R', 'University of Texas at Austin'),
('Nikola Vucevic', 'C', '7-0', 260, 'October 24, 1990', '7', 'University of Southern California'),
('Terrence Ross', 'SG', '6-7', 206, 'February 5, 1991', '6', 'University of Washington'),
('Timofey Mozgov', 'C', '7-1', 275, 'July 16, 1986', '8', ''),
('Troy Caupain', 'G', '6-4', 210, 'November 29, 1995', 'R', 'University of Cincinnati'),
('Wesley Iwundu', 'F', '6-7', 193, 'December 20, 1994', '1', 'Kansas State University');

-- --------------------------------------------------------

--
-- Table structure for table `magic_team_data`
--

CREATE TABLE `magic_team_data` (
  `LOCATION` varchar(120) NOT NULL,
  `TEAM NAMES` varchar(120) NOT NULL,
  `PLAYOFF APPERANCES` varchar(120) NOT NULL,
  `CHAMPIONSHIPS` varchar(120) NOT NULL,
  `RECORD` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `magic_team_data`
--

INSERT INTO `magic_team_data` (`LOCATION`, `TEAM NAMES`, `PLAYOFF APPERANCES`, `CHAMPIONSHIPS`, `RECORD`) VALUES
('Orlando, Florida ', 'Orlando Magic ', '14    ', '0    ', '18-24, 10th in East');

-- --------------------------------------------------------

--
-- Table structure for table `magic_team_payroll`
--

CREATE TABLE `magic_team_payroll` (
  `2018-19` varchar(200) NOT NULL,
  `Player` varchar(200) NOT NULL,
  `Age` varchar(200) NOT NULL,
  `2019-20` varchar(200) NOT NULL,
  `2020-21` varchar(200) NOT NULL,
  `2021-22` varchar(200) NOT NULL,
  `2022-23` varchar(200) NOT NULL,
  `2023-24` varchar(200) NOT NULL,
  `Signed Using` varchar(200) NOT NULL,
  `Guaranteed` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `magic_team_payroll`
--

INSERT INTO `magic_team_payroll` (`2018-19`, `Player`, `Age`, `2019-20`, `2020-21`, `2021-22`, `2022-23`, `2023-24`, `Signed Using`, `Guaranteed`) VALUES
('$21,590,909', 'Aaron Gordon', '23', '$19,863,636', '$18,136,364', '$16,409,091', '', '', '', '$76,000,000'),
('$17,000,000', 'Evan Fournier', '25', '$17,000,000', '$17,000,000', '', '', '', 'Cap Space', '$34,000,000'),
('$16,000,000', 'Timofey Mozgov', '32', '$16,720,000', '', '', '', '', 'Cap Space', '$32,720,000'),
('$12,750,000', 'Nikola Vucevic', '28', '', '', '', '', '', 'Bird Rights', '$12,750,000'),
('$10,500,000', 'Terrence Ross', '27', '', '', '', '', '', 'Rookie scale extension', '$10,500,000'),
('$7,250,000', 'D.J. Augustin', '30', '$7,250,000', '', '', '', '', 'Cap Space', '$14,500,000'),
('$6,000,000', 'Jonathon Simmons', '29', '$5,700,000', '', '', '', '', 'Cap space', '$7,000,000'),
('$4,969,080', 'Jonathan Isaac', '21', '$5,806,440', '$7,362,566', '', '', '', '1st Round Pick', '$10,775,520'),
('$4,865,040', 'Mohamed Bamba', '20', '$5,697,600', '$5,969,040', '$7,568,742', '', '', '1st Round Pick', '$24,100,422'),
('$2,639,314', 'Jerian Grant', '26', '', '', '', '', '', '1st Round pick', '$2,639,314'),
('$2,416,222', 'Jarell Martin', '24', '', '', '', '', '', '1st Round pick', '$2,416,222'),
('$1,378,242', 'Wesley Iwundu', '23', '$1,618,520', '', '', '', '', '', '$1,378,242'),
('$1,378,242', 'Khem Birch', '26', '', '', '', '', '', 'Minimum Salary', '$1,378,242'),
('$1,050,000', 'Melvin Frazier', '22', '$1,416,852', '$1,663,861', '', '', '', 'MLE', '$2,466,852'),
('$838,464', 'Isaiah Briscoe', '22', '$1,663,861', '$838,464', '', '', '', 'MLE', '$500,000'),
('', 'Troy Caupain', '22', '', '', '', '', '', 'Two-Way Contract', ''),
('', 'Amile Jefferson', '25', '', '', '', '', '', 'Two-Way Contract', ''),
('$1,000,000', 'Shelvin Mack', '28', '', '', '', '', '', '', '$1,000,000'),
('$333,333', 'C.J. Watson', '34', '$333,333', '', '', '', '', '', '$666,666'),
('$111,958,846', 'Team Totals', '', '$83,070,242', '$50,970,295', '$23,977,833', '', '', '', '$234,791,480');

-- --------------------------------------------------------

--
-- Table structure for table `mavs_newteam_roster`
--

CREATE TABLE `mavs_newteam_roster` (
  `PLAYER` varchar(120) NOT NULL,
  `POSITION` varchar(120) NOT NULL,
  `HEIGHT` varchar(120) NOT NULL,
  `WEIGHT` int(120) NOT NULL,
  `Birth Date` varchar(200) NOT NULL,
  `EXPERIENCE` varchar(30) NOT NULL,
  `COLLEGE` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `mavs_newteam_roster`
--

INSERT INTO `mavs_newteam_roster` (`PLAYER`, `POSITION`, `HEIGHT`, `WEIGHT`, `Birth Date`, `EXPERIENCE`, `COLLEGE`) VALUES
('Daryl Macon', 'G', '6-3', 185, 'November 29, 1995', 'R', 'University of Arkansas'),
('DeAndre Jordan', 'C', '6-11', 265, 'July 21, 1988', '10', 'Texas A&M University'),
('Dennis Smith Jr.', 'PG', '6-3', 195, 'November 25, 1997', '1', 'North Carolina State University'),
('Devin Harris', 'PG', '6-3', 192, 'February 27, 1983', '14', 'University of Wisconsin'),
('Dirk Nowitzki', 'F', '7-0', 245, 'June 19, 1978', '20', ''),
('Dorian Finney-Smith', 'PF', '6-8', 220, 'May 4, 1993', '2', 'University of Florida'),
('Dwight Powell', 'C', '6-11', 240, 'July 20, 1991', '4', 'Stanford University'),
('Harrison Barnes', 'F', '6-8', 210, 'May 30, 1992', '6', 'University of North Carolina'),
('J.J. Barea', 'PG', '6-0', 185, 'June 26, 1984', '12', 'Northeastern University'),
('Jalen Brunson', 'G', '6-3', 190, 'August 31, 1996', 'R', 'Villanova University'),
('Kostas Antetokounmpo', 'F', '6-10', 197, 'November 20, 1997', 'R', 'University of Dayton'),
('Luka Doncic', 'G-F', '6-7', 218, 'February 28, 1999', 'R', ''),
('Maxi Kleber', 'PF', '6-10', 220, 'January 29, 1992', '1', ''),
('Ray Spalding', 'F', '6-10', 215, 'March 11, 1997', 'R', 'University of Louisville'),
('Ryan Broekhoff', 'F', '6-7', 215, 'August 23, 1990', 'R', 'Valparaiso University'),
('Salah Mejri', 'C', '7-1', 245, 'June 15, 1986', '3', ''),
('Wesley Matthews', 'SF', '6-5', 220, 'October 14, 1986', '9', 'Marquette University');

-- --------------------------------------------------------

--
-- Table structure for table `mavs_team_data`
--

CREATE TABLE `mavs_team_data` (
  `LOCATION` varchar(120) NOT NULL,
  `TEAM NAMES` varchar(120) NOT NULL,
  `PLAYOFF APPERANCES` varchar(120) NOT NULL,
  `CHAMPIONSHIPS` varchar(120) NOT NULL,
  `RECORD` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `mavs_team_data`
--

INSERT INTO `mavs_team_data` (`LOCATION`, `TEAM NAMES`, `PLAYOFF APPERANCES`, `CHAMPIONSHIPS`, `RECORD`) VALUES
('Dallas, Texas ', 'Dallas Mavericks ', '21    ', '1    ', '20-22, 12th in West');

-- --------------------------------------------------------

--
-- Table structure for table `mavs_team_payroll`
--

CREATE TABLE `mavs_team_payroll` (
  `2018-19` varchar(200) NOT NULL,
  `Player` varchar(200) NOT NULL,
  `Age` varchar(200) NOT NULL,
  `2019-20` varchar(200) NOT NULL,
  `2020-21` varchar(200) NOT NULL,
  `2021-22` varchar(200) NOT NULL,
  `2022-23` varchar(200) NOT NULL,
  `2023-24` varchar(200) NOT NULL,
  `Signed Using` varchar(200) NOT NULL,
  `Guaranteed` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `mavs_team_payroll`
--

INSERT INTO `mavs_team_payroll` (`2018-19`, `Player`, `Age`, `2019-20`, `2020-21`, `2021-22`, `2022-23`, `2023-24`, `Signed Using`, `Guaranteed`) VALUES
('$24,107,258', 'Harrison Barnes', '26', '$25,102,512', '', '', '', '', 'Cap Space', '$24,107,258'),
('$22,900,000', 'DeAndre Jordan', '30', '', '', '', '', '', '', '$22,900,000'),
('$18,622,514', 'Wesley Matthews', '32', '', '', '', '', '', 'Cap Space', '$18,622,514'),
('$9,631,250', 'Dwight Powell', '27', '$10,259,375', '', '', '', '', 'Cap Space', '$9,631,250'),
('$6,560,640', 'Luka Doncic', '19', '$7,683,360', '$8,049,360', '$10,174,391', '', '', '1st Round Pick', '$14,244,000'),
('$5,000,000', 'Dirk Nowitzki', '40', '', '', '', '', '', 'Cap Space', '$5,000,000'),
('$3,819,960', 'Dennis Smith', '20', '$4,463,640', '$5,686,677', '', '', '', '1st Round Pick', '$8,283,600'),
('$3,710,850', 'J.J. Barea', '34', '', '', '', '', '', 'Cap Space', '$3,710,850'),
('$2,393,887', 'Devin Harris', '35', '', '', '', '', '', 'Minimum Salary', '$2,393,887'),
('$1,567,007', 'Salah Mejri', '32', '', '', '', '', '', 'Minimum Salary', '$1,567,007'),
('$1,544,951', 'Dorian Finney-Smith', '25', '', '', '', '', '', 'Minimum Salary', '$1,544,951'),
('$1,378,242', 'Maxi Kleber', '26', '', '', '', '', '', 'Minimum Salary', '$1,378,242'),
('$1,230,000', 'Jalen Brunson', '22', '$1,416,582', '$1,663,861', '$1,802,057', '', '', 'Cap Space', '$4,310,443'),
('$838,464', 'Ryan Broekhoff', '28', '$1,443,842', '', '', '', '', '', '$838,464'),
('$838,464', 'Ray Spalding', '21', '$1,416,852', '$1,663,861', '$1,802,057', '', '', 'Minimum Salary', '$2,255,316'),
('', 'Daryl Macon', '22', '', '', '', '', '', 'Two-Way Contract', ''),
('', 'Kostas Antetokounmpo', '20', '', '', '', '', '', 'Two-Way Contract', ''),
('$1,544,951', 'Chinanu Onuaku', '21', '', '', '', '', '', '', '$1,544,951'),
('$105,688,438', 'Team Totals', '', '$51,786,163', '$17,063,759', '$13,778,505', '', '', '', '$122,332,733');

-- --------------------------------------------------------

--
-- Table structure for table `nets_newteam_roster`
--

CREATE TABLE `nets_newteam_roster` (
  `PLAYER` varchar(120) NOT NULL,
  `POSITION` varchar(120) NOT NULL,
  `HEIGHT` varchar(120) NOT NULL,
  `WEIGHT` int(120) NOT NULL,
  `Birth Date` varchar(200) NOT NULL,
  `EXPERIENCE` varchar(30) NOT NULL,
  `COLLEGE` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `nets_newteam_roster`
--

INSERT INTO `nets_newteam_roster` (`PLAYER`, `POSITION`, `HEIGHT`, `WEIGHT`, `Birth Date`, `EXPERIENCE`, `COLLEGE`) VALUES
('Alan Williams', 'F-C', '6-8', 260, 'January 28, 1993', '3', 'University of California, Santa Barbara'),
('Allen Crabbe', 'G-F', '6-6', 210, 'April 9, 1992', '5', 'University of California'),
('Caris LeVert', 'SF', '6-7', 203, 'August 25, 1994', '2', 'University of Michigan'),
('D\'Angelo Russell', 'PG', '6-5', 195, 'February 23, 1996', '3', 'Ohio State University'),
('DeMarre Carroll', 'F', '6-8', 215, 'July 27, 1986', '9', 'Vanderbilt University, University of Missouri'),
('Dzanan Musa', 'G-F', '6-10', 195, 'May 8, 1999', 'R', ''),
('Ed Davis', 'C', '6-10', 240, 'June 5, 1989', '8', 'University of North Carolina'),
('Jared Dudley', 'PF', '6-7', 225, 'July 10, 1985', '11', 'Boston College'),
('Jarrett Allen', 'C', '6-10', 234, 'April 21, 1998', '1', 'University of Texas at Austin'),
('Joe Harris', 'SG', '6-6', 219, 'September 6, 1991', '4', 'University of Virginia'),
('Kenneth Faried', 'F', '6-8', 228, 'November 19, 1989', '7', 'Morehead State University'),
('Rodions Kurucs', 'F', '6-9', 220, 'February 5, 1998', 'R', ''),
('Rondae Hollis-Jefferson', 'F', '6-7', 220, 'January 3, 1995', '3', 'University of Arizona'),
('Shabazz Napier', 'G', '6-1', 175, 'July 14, 1991', '4', 'University of Connecticut'),
('Spencer Dinwiddie', 'PG', '6-6', 200, 'April 6, 1993', '4', 'University of Colorado'),
('Theo Pinson', 'G', '6-6', 220, 'November 5, 1995', 'R', 'University of North Carolina'),
('Treveon Graham', 'SG', '6-6', 220, 'October 29, 1993', '2', 'Virginia Commonwealth University');

-- --------------------------------------------------------

--
-- Table structure for table `nets_team_data`
--

CREATE TABLE `nets_team_data` (
  `LOCATION` varchar(120) NOT NULL,
  `TEAM NAMES` varchar(120) NOT NULL,
  `PLAYOFF APPERANCES` varchar(120) NOT NULL,
  `CHAMPIONSHIPS` varchar(120) NOT NULL,
  `RECORD` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `nets_team_data`
--

INSERT INTO `nets_team_data` (`LOCATION`, `TEAM NAMES`, `PLAYOFF APPERANCES`, `CHAMPIONSHIPS`, `RECORD`) VALUES
('Brooklyn, New York ', ' Brooklyn Nets, New Jersey Nets, New York Nets, New Jersey Americans ', '26        (19 NBA & 7 ABA)    ', '2        (0 NBA & 2 ABA)    ', '21-23, 7th in East');

-- --------------------------------------------------------

--
-- Table structure for table `nets_team_payroll`
--

CREATE TABLE `nets_team_payroll` (
  `2018-19` varchar(200) NOT NULL,
  `Player` varchar(200) NOT NULL,
  `Age` varchar(200) NOT NULL,
  `2019-20` varchar(200) NOT NULL,
  `2020-21` varchar(200) NOT NULL,
  `2021-22` varchar(200) NOT NULL,
  `2022-23` varchar(200) NOT NULL,
  `2023-24` varchar(200) NOT NULL,
  `Signed Using` varchar(200) NOT NULL,
  `Guaranteed` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `nets_team_payroll`
--

INSERT INTO `nets_team_payroll` (`2018-19`, `Player`, `Age`, `2019-20`, `2020-21`, `2021-22`, `2022-23`, `2023-24`, `Signed Using`, `Guaranteed`) VALUES
('$18,500,000', 'Allen Crabbe', '26', '$18,500,000', '', '', '', '', 'Cap Space', '$18,500,000'),
('$15,400,000', 'DeMarre Carroll', '32', '', '', '', '', '', 'Cap Space', '$15,400,000'),
('$13,764,045', 'Kenneth Faried', '28', '', '', '', '', '', '1st Round Pick', '$13,764,045'),
('$9,530,000', 'Jared Dudley', '33', '', '', '', '', '', 'Cap Space', '$9,530,000'),
('$8,333,333', 'Joe Harris', '27', '$7,670,000', '', '', '', '', 'Early Bird Rights', '$16,003,333'),
('$7,019,698', 'D\'Angelo Russell', '22', '', '', '', '', '', '1st round pick', '$7,019,698'),
('$4,449,000', 'Ed Davis', '29', '', '', '', '', '', 'Room Exception', '$4,449,000'),
('$2,470,357', 'Rondae Hollis-Jefferson', '23', '', '', '', '', '', '1st Round pick', '$2,470,357'),
('$2,034,120', 'Jarrett Allen', '20', '$2,376,840', '$3,909,902', '', '', '', '1st Round Pick', '$4,410,960'),
('$1,942,422', 'Shabazz Napier', '27', '$1,845,301', '', '', '', '', 'Cap Space', '$1,942,422'),
('$1,702,800', 'Caris LeVert', '24', '$2,625,718', '', '', '', '', '1st Round pick', '$4,328,518'),
('$1,656,092', 'Spencer Dinwiddie', '25', '', '', '', '', '', 'Minimum Salary', '$1,656,092'),
('$1,632,240', 'Dzanan Musa', '19', '$1,911,600', '$2,002,800', '$3,615,054', '', '', '1st Round Pick', '$3,543,840'),
('$1,618,320', 'Rodions Kurucs', '20', '$1,699,236', '$1,780,152', '$1,861,068', '', '', '', '$5,097,708'),
('$1,512,601', 'Treveon Graham', '24', '$1,645,357', '', '', '', '', 'Minimum Salary', '$1,512,601'),
('', 'Theo Pinson', '22', '', '', '', '', '', 'Two-Way Contract', ''),
('', 'Alan Williams', '25', '', '', '', '', '', 'Two-Way Contract', ''),
('$18,919,725', 'Dwight Howard', '32', '', '', '', '', '', '', '$18,919,725'),
('$5,474,787', 'Deron Williams', '34', '$5,474,787', '', '', '', '', '', '$10,949,574'),
('$115,959,540', 'Team Totals', '', '$43,748,839', '$7,692,854', '$5,476,122', '', '', '', '$139,497,873');

-- --------------------------------------------------------

--
-- Table structure for table `nuggets_newteam_roster`
--

CREATE TABLE `nuggets_newteam_roster` (
  `PLAYER` varchar(120) NOT NULL,
  `POSITION` varchar(120) NOT NULL,
  `HEIGHT` varchar(120) NOT NULL,
  `WEIGHT` int(120) NOT NULL,
  `Birth Date` varchar(200) NOT NULL,
  `EXPERIENCE` varchar(30) NOT NULL,
  `COLLEGE` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `nuggets_newteam_roster`
--

INSERT INTO `nuggets_newteam_roster` (`PLAYER`, `POSITION`, `HEIGHT`, `WEIGHT`, `Birth Date`, `EXPERIENCE`, `COLLEGE`) VALUES
('DeVaughn Akoon-Purcell', 'G', '6-5', 200, 'June 5, 1993', 'R', 'Illinois State University'),
('Gary Harris', 'SG', '6-4', 210, 'September 14, 1994', '4', 'Michigan State University'),
('Isaiah Thomas', 'G', '5-9', 185, 'February 7, 1989', '7', 'University of Washington'),
('Jamal Murray', 'PG', '6-4', 207, 'February 23, 1997', '2', 'University of Kentucky'),
('Jarred Vanderbilt', 'F', '6-9', 214, 'April 3, 1999', 'R', 'University of Kentucky'),
('Juan Hernangomez', 'PF', '6-9', 230, 'September 28, 1995', '2', ''),
('Malik Beasley', 'SG', '6-5', 196, 'November 26, 1996', '2', 'Florida State University'),
('Mason Plumlee', 'C', '6-11', 245, 'March 5, 1990', '5', 'Duke University'),
('Michael Porter Jr.', 'F', '6-10', 215, 'June 29, 1998', 'R', 'University of Missouri'),
('Monte Morris', 'PG', '6-3', 175, 'June 27, 1995', '1', 'Iowa State University'),
('Nikola Jokic', 'C', '6-10', 250, 'February 19, 1995', '3', ''),
('Paul Millsap', 'PF', '6-8', 246, 'February 10, 1985', '12', 'Louisiana Tech University'),
('Thomas Welsh', 'C', '7-0', 255, 'February 3, 1996', 'R', 'University of California, Los Angeles'),
('Torrey Craig', 'G-F', '6-6', 215, 'December 19, 1990', '1', 'University of South Carolina Upstate'),
('Trey Lyles', 'PF', '6-10', 234, 'November 5, 1995', '3', 'University of Kentucky'),
('Tyler Lydon', 'F', '6-10', 215, 'April 9, 1996', '1', 'Syracuse University'),
('Will Barton', 'SG', '6-6', 175, 'January 6, 1991', '6', 'University of Memphis');

-- --------------------------------------------------------

--
-- Table structure for table `nuggets_team_data`
--

CREATE TABLE `nuggets_team_data` (
  `Location` varchar(120) NOT NULL,
  `TeamNames` varchar(120) NOT NULL,
  `PlayoffAppearances` varchar(120) NOT NULL,
  `Championships` varchar(120) NOT NULL,
  `Record` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `nuggets_team_data`
--

INSERT INTO `nuggets_team_data` (`Location`, `TeamNames`, `PlayoffAppearances`, `Championships`, `Record`) VALUES
('Denver', ' Denver Nuggets, Denver Rockets ', '39', '1', '2367-2246');

-- --------------------------------------------------------

--
-- Table structure for table `nuggets_team_payroll`
--

CREATE TABLE `nuggets_team_payroll` (
  `2018-19` varchar(200) NOT NULL,
  `Player` varchar(200) NOT NULL,
  `Age` varchar(200) NOT NULL,
  `2019-20` varchar(200) NOT NULL,
  `2020-21` varchar(200) NOT NULL,
  `2021-22` varchar(200) NOT NULL,
  `2022-23` varchar(200) NOT NULL,
  `2023-24` varchar(200) NOT NULL,
  `Signed Using` varchar(200) NOT NULL,
  `Guaranteed` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `nuggets_team_payroll`
--

INSERT INTO `nuggets_team_payroll` (`2018-19`, `Player`, `Age`, `2019-20`, `2020-21`, `2021-22`, `2022-23`, `2023-24`, `Signed Using`, `Guaranteed`) VALUES
('$29,730,769', 'Paul Millsap', '33', '$30,500,000', '', '', '', '', 'Cap space', '$29,730,769'),
('$24,605,181', 'Nikola Jokic', '23', '$27,504,630', '$29,542,010', '$31,579,390', '', '', '', '$146,847,981'),
('$16,517,857', 'Gary Harris', '24', '$17,839,286', '$19,160,714', '$20,482,143', '', '', '1st Round Pick', '$74,000,000'),
('$12,917,808', 'Mason Plumlee', '28', '$14,041,096', '', '', '', '', 'Cap space', '$26,958,904'),
('$11,830,358', 'Will Barton', '27', '$12,960,000', '$13,920,000', '$14,880,000', '', '', '', '$38,710,358'),
('$3,499,800', 'Jamal Murray', '21', '$4,444,746', '', '', '', '', '1st Round pick', '$3,499,800'),
('$3,364,249', 'Trey Lyles', '22', '', '', '', '', '', '1st round pick', '$3,364,249'),
('$2,894,160', 'Michael Porter', '20', '$3,389,400', '$3,550,800', '$5,258,735', '', '', '1st Round Pick', '$6,283,560'),
('$2,166,360', 'Juan Hernangomez', '23', '$3,321,030', '', '', '', '', '1st Round pick', '$2,166,360'),
('$2,029,463', 'Isaiah Thomas', '29', '', '', '', '', '', 'Minimum Salary', '$2,029,463'),
('$2,000,000', 'Torrey Craig', '27', '$2,100,000', '', '', '', '', 'MLE', '$4,100,000'),
('$1,874,640', 'Tyler Lydon', '22', '$2,190,720', '', '', '', '', '1st Round Pick', '$1,874,640'),
('$1,773,840', 'Malik Beasley', '21', '$2,731,714', '', '', '', '', '1st Round pick', '$1,773,840'),
('$1,349,383', 'Monte Morris', '23', '$1,588,231', '$1,663,861', '', '', '', 'Minimum Salary', '$2,937,614'),
('$838,464', 'Jarred Vanderbilt', '19', '$1,663,861', '$1,416,852', '', '', '', 'MLE', '$2,255,316'),
('', 'DeVaughn Akoon-Purcell', '25', '', '', '', '', '', 'Two-Way Contract', ''),
('', 'Thomas Welsh', '22', '', '', '', '', '', 'Two-Way Contract', ''),
('$117,392,332', 'Team Totals', '', '$124,274,714', '$69,254,237', '$72,200,268', '', '', '', '$346,532,854');

-- --------------------------------------------------------

--
-- Table structure for table `pacers_newteam_roster`
--

CREATE TABLE `pacers_newteam_roster` (
  `PLAYER` varchar(120) NOT NULL,
  `POSITION` varchar(120) NOT NULL,
  `HEIGHT` varchar(120) NOT NULL,
  `WEIGHT` int(120) NOT NULL,
  `Birth Date` varchar(200) NOT NULL,
  `EXPERIENCE` varchar(30) NOT NULL,
  `COLLEGE` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `pacers_newteam_roster`
--

INSERT INTO `pacers_newteam_roster` (`PLAYER`, `POSITION`, `HEIGHT`, `WEIGHT`, `Birth Date`, `EXPERIENCE`, `COLLEGE`) VALUES
('Aaron Holiday', 'G', '6-1', 185, 'September 30, 1996', 'R', 'University of California, Los Angeles'),
('Alize Johnson', 'F', '6-9', 212, 'April 22, 1996', 'R', 'Missouri State'),
('Ben Moore', 'F', '6-7', 203, 'May 13, 1995', '1', 'Southern Methodist University'),
('Bojan Bogdanovic', 'SF', '6-8', 216, 'April 18, 1989', '4', ''),
('Cory Joseph', 'PG', '6-3', 193, 'August 20, 1991', '7', 'University of Texas at Austin'),
('Darren Collison', 'PG', '6-0', 175, 'August 23, 1987', '9', 'University of California, Los Angeles'),
('Davon Reed', 'G', '6-5', 208, 'June 11, 1995', '1', 'University of Miami'),
('Domantas Sabonis', 'C', '6-11', 240, 'May 3, 1996', '2', 'Gonzaga University'),
('Doug McDermott', 'SF', '6-8', 225, 'January 3, 1992', '4', 'Creighton University'),
('Edmond Sumner', 'PG', '6-6', 176, 'December 31, 1995', '1', 'Xavier University'),
('Ike Anigbogu', 'F-C', '6-10', 252, 'October 22, 1998', '1', 'University of California, Los Angeles'),
('Kyle O\'Quinn', 'C', '6-10', 250, 'March 26, 1990', '6', 'Norfolk State University'),
('Myles Turner', 'C', '6-11', 243, 'March 24, 1996', '3', 'University of Texas at Austin'),
('T.J. Leaf', 'PF', '6-10', 222, 'April 30, 1997', '1', 'University of California, Los Angeles'),
('Thaddeus Young', 'PF', '6-8', 221, 'June 21, 1988', '11', 'Georgia Institute of Technology'),
('Tyreke Evans', 'PG', '6-6', 220, 'September 19, 1989', '9', 'University of Memphis'),
('Victor Oladipo', 'SG', '6-4', 210, 'May 4, 1992', '5', 'Indiana University');

-- --------------------------------------------------------

--
-- Table structure for table `pacers_team_data`
--

CREATE TABLE `pacers_team_data` (
  `LOCATION` varchar(120) NOT NULL,
  `TEAM NAMES` varchar(120) NOT NULL,
  `PLAYOFF APPERANCES` varchar(120) NOT NULL,
  `CHAMPIONSHIPS` varchar(120) NOT NULL,
  `RECORD` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `pacers_team_data`
--

INSERT INTO `pacers_team_data` (`LOCATION`, `TEAM NAMES`, `PLAYOFF APPERANCES`, `CHAMPIONSHIPS`, `RECORD`) VALUES
('Indianapolis, Indiana ', 'Indiana Pacers ', '34        (25 NBA & 9 ABA)    ', '3        (0 NBA & 3 ABA)    ', '28-14, 3rd in East');

-- --------------------------------------------------------

--
-- Table structure for table `pacers_team_payroll`
--

CREATE TABLE `pacers_team_payroll` (
  `2018-19` varchar(200) NOT NULL,
  `Player` varchar(200) NOT NULL,
  `Age` varchar(200) NOT NULL,
  `2019-20` varchar(200) NOT NULL,
  `2020-21` varchar(200) NOT NULL,
  `2021-22` varchar(200) NOT NULL,
  `2022-23` varchar(200) NOT NULL,
  `2023-24` varchar(200) NOT NULL,
  `Signed Using` varchar(200) NOT NULL,
  `Guaranteed` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `pacers_team_payroll`
--

INSERT INTO `pacers_team_payroll` (`2018-19`, `Player`, `Age`, `2019-20`, `2020-21`, `2021-22`, `2022-23`, `2023-24`, `Signed Using`, `Guaranteed`) VALUES
('$21,000,000', 'Victor Oladipo', '26', '$21,000,000', '$21,000,000', '', '', '', '1st Round Pick', '$63,000,000'),
('$13,764,045', 'Thaddeus Young', '30', '', '', '', '', '', 'Bird Rights', '$13,764,045'),
('$12,400,000', 'Tyreke Evans', '29', '', '', '', '', '', '', '$12,400,000'),
('$10,500,000', 'Bojan Bogdanovic', '29', '', '', '', '', '', 'Cap space', '$10,500,000'),
('$10,000,000', 'Darren Collison', '31', '', '', '', '', '', 'Cap space', '$10,000,000'),
('$7,945,000', 'Cory Joseph', '27', '', '', '', '', '', 'Cap Space', '$7,945,000'),
('$7,333,334', 'Doug McDermott', '26', '$7,333,334', '$7,333,333', '', '', '', '', '$22,000,001'),
('$4,449,000', 'Kyle O\'Quinn', '28', '', '', '', '', '', 'Room Exception', '$4,449,000'),
('$3,410,284', 'Myles Turner', '22', '$18,000,000', '$18,000,000', '$18,000,000', '$18,000,000', '', '1st round pick', '$75,410,284'),
('$2,659,800', 'Domantas Sabonis', '22', '$3,529,555', '', '', '', '', '1st Round pick', '$6,189,355'),
('$2,407,560', 'T.J. Leaf', '21', '$2,813,280', '$4,326,825', '', '', '', '1st Round Pick', '$5,220,840'),
('$1,911,960', 'Aaron Holiday', '22', '$2,239,200', '$2,345,640', '$3,980,551', '', '', '1st Round Pick', '$4,151,160'),
('$1,378,242', 'Ike Anigbogu', '20', '$1,618,520', '', '', '', '', 'Cap space', '$1,378,242'),
('$1,349,383', 'Ben Moore', '23', '', '', '', '', '', 'Minimum Salary', ''),
('$838,464', 'Alize Johnson', '22', '$1,416,852', '', '', '', '', 'Minimum Salary', '$838,464'),
('', 'Edmond Sumner', '22', '', '', '', '', '', 'Two-Way Contract', ''),
('', 'Davon Reed', '23', '', '', '', '', '', 'Two-Way Contract', ''),
('$4,000,000', 'Al Jefferson', '33', '', '', '', '', '', '', '$4,000,000'),
('$2,245,400', 'Monta Ellis', '33', '$2,245,400', '$2,245,400', '$2,245,400', '', '', '', '$8,981,600'),
('$107,592,472', 'Team Totals', '', '$60,196,141', '$55,251,198', '$24,225,951', '$18,000,000', '', '', '$250,227,991');

-- --------------------------------------------------------

--
-- Table structure for table `pelicans_newteam_roster`
--

CREATE TABLE `pelicans_newteam_roster` (
  `PLAYER` varchar(120) NOT NULL,
  `POSITION` varchar(120) NOT NULL,
  `HEIGHT` varchar(120) NOT NULL,
  `WEIGHT` int(120) NOT NULL,
  `Birth Date` varchar(200) NOT NULL,
  `EXPERIENCE` varchar(30) NOT NULL,
  `COLLEGE` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `pelicans_newteam_roster`
--

INSERT INTO `pelicans_newteam_roster` (`PLAYER`, `POSITION`, `HEIGHT`, `WEIGHT`, `Birth Date`, `EXPERIENCE`, `COLLEGE`) VALUES
('Anthony Davis', 'PF', '6-10', 253, 'March 11, 1993', '6', 'University of Kentucky'),
('Cheick Diallo', 'PF', '6-9', 220, 'September 13, 1996', '2', 'University of Kansas'),
('Darius Miller', 'SF', '6-8', 235, 'March 21, 1990', '4', 'University of Kentucky'),
('E\'Twaun Moore', 'SG', '6-4', 191, 'February 28, 1989', '7', 'Purdue University'),
('Elfrid Payton', 'PG', '6-4', 185, 'February 22, 1994', '4', 'University of Louisiana at Lafayette'),
('Frank Jackson', 'G', '6-4', 202, 'May 4, 1998', 'R', 'Duke University'),
('Ian Clark', 'G', '6-3', 175, 'March 7, 1991', '5', 'Belmont University'),
('Jahlil Okafor', 'C', '6-11', 275, 'December 15, 1995', '3', 'Duke University'),
('Jrue Holiday', 'SG', '6-4', 205, 'June 12, 1990', '9', 'University of California, Los Angeles'),
('Julius Randle', 'C', '6-9', 250, 'November 29, 1994', '4', 'University of Kentucky'),
('Kenrich Williams', 'G-F', '6-7', 210, 'December 2, 1994', 'R', ''),
('Nikola Mirotic', 'PF', '6-10', 220, 'February 11, 1991', '4', ''),
('Solomon Hill', 'SF', '6-7', 225, 'March 18, 1991', '5', 'University of Arizona'),
('Tim Frazier', 'G', '6-1', 170, 'November 1, 1990', '4', 'Pennsylvania State University'),
('Trevon Bluiett', 'G', '6-6', 198, 'November 5, 1994', 'R', 'Xavier University'),
('Wesley Johnson', 'F-G', '6-7', 215, 'July 11, 1987', '8', 'Iowa State University, Syracuse University');

-- --------------------------------------------------------

--
-- Table structure for table `pelicans_team_data`
--

CREATE TABLE `pelicans_team_data` (
  `LOCATION` varchar(120) NOT NULL,
  `TEAM NAMES` varchar(120) NOT NULL,
  `PLAYOFF APPERANCES` varchar(120) NOT NULL,
  `CHAMPIONSHIPS` varchar(120) NOT NULL,
  `RECORD` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `pelicans_team_data`
--

INSERT INTO `pelicans_team_data` (`LOCATION`, `TEAM NAMES`, `PLAYOFF APPERANCES`, `CHAMPIONSHIPS`, `RECORD`) VALUES
('New Orleans, Louisiana ', ' New Orleans Pelicans, New Orleans/Oklahoma City Hornets, New Orleans Hornets ', '7    ', '0    ', '20-23, 13th in West');

-- --------------------------------------------------------

--
-- Table structure for table `pelicans_team_payroll`
--

CREATE TABLE `pelicans_team_payroll` (
  `2018-19` varchar(200) NOT NULL,
  `Player` varchar(200) NOT NULL,
  `Age` varchar(200) NOT NULL,
  `2019-20` varchar(200) NOT NULL,
  `2020-21` varchar(200) NOT NULL,
  `2021-22` varchar(200) NOT NULL,
  `2022-23` varchar(200) NOT NULL,
  `2023-24` varchar(200) NOT NULL,
  `Signed Using` varchar(200) NOT NULL,
  `Guaranteed` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `pelicans_team_payroll`
--

INSERT INTO `pelicans_team_payroll` (`2018-19`, `Player`, `Age`, `2019-20`, `2020-21`, `2021-22`, `2022-23`, `2023-24`, `Signed Using`, `Guaranteed`) VALUES
('$25,976,111', 'Jrue Holiday', '28', '$26,131,111', '$26,131,111', '$27,020,000', '', '', 'Bird Rights', '$78,238,333'),
('$25,434,263', 'Anthony Davis', '25', '$27,093,019', '$28,751,775', '', '', '', '1st Round Pick', '$52,527,282'),
('$12,500,000', 'Nikola Mirotic', '27', '', '', '', '', '', 'Cap space', '$12,500,000'),
('$12,252,928', 'Solomon Hill', '27', '$13,258,781', '', '', '', '', 'Cap Space', '$25,511,709'),
('$8,808,685', 'E\'Twaun Moore', '29', '$8,664,928', '', '', '', '', 'Cap Space', '$17,473,613'),
('$8,641,000', 'Julius Randle', '23', '$9,073,050', '', '', '', '', 'MLE', '$8,641,000'),
('$6,134,520', 'Wesley Johnson', '31', '', '', '', '', '', 'Cap Space', '$6,134,520'),
('$3,000,000', 'Elfrid Payton', '24', '', '', '', '', '', 'Bi-annual Exception', '$3,000,000'),
('$2,205,000', 'Darius Miller', '28', '', '', '', '', '', 'MLE', '$2,205,000'),
('$1,757,429', 'Ian Clark', '27', '', '', '', '', '', 'Minimum Salary', '$1,757,429'),
('$1,567,007', 'Tim Frazier', '27', '', '', '', '', '', 'Minimum Salary', ''),
('$1,567,007', 'Jahlil Okafor', '22', '$1,702,486', '', '', '', '', 'Minimum Salary', ''),
('$1,544,951', 'Cheick Diallo', '22', '', '', '', '', '', 'Minimum Salary', '$1,544,951'),
('$1,378,242', 'Frank Jackson', '20', '$1,618,520', '', '', '', '', 'MLE', '$1,884,242'),
('$838,464', 'Kenrich Williams', '23', '$1,416,852', '', '', '', '', 'Minimum Salary', ''),
('', 'Trevon Bluiett', '23', '', '', '', '', '', 'Two-Way Contract', ''),
('$50,000', 'Garlon Green', '27', '', '', '', '', '', '', '$50,000'),
('$34,183', 'Troy Williams', '23', '', '', '', '', '', '', '$34,183'),
('$113,689,790', 'Team Totals', '', '$88,958,747', '$54,882,886', '$27,020,000', '', '', '', '$211,502,262');

-- --------------------------------------------------------

--
-- Table structure for table `pistons_newteam_roster`
--

CREATE TABLE `pistons_newteam_roster` (
  `PLAYER` varchar(120) NOT NULL,
  `POSITION` varchar(120) NOT NULL,
  `HEIGHT` varchar(120) NOT NULL,
  `WEIGHT` int(120) NOT NULL,
  `Birth Date` varchar(200) NOT NULL,
  `EXPERIENCE` varchar(30) NOT NULL,
  `COLLEGE` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `pistons_newteam_roster`
--

INSERT INTO `pistons_newteam_roster` (`PLAYER`, `POSITION`, `HEIGHT`, `WEIGHT`, `Birth Date`, `EXPERIENCE`, `COLLEGE`) VALUES
('Andre Drummond', 'C', '6-11', 279, 'August 10, 1993', '6', 'University of Connecticut'),
('Blake Griffin', 'PF', '6-10', 251, 'March 16, 1989', '8', 'University of Oklahoma'),
('Bruce Brown', 'G', '6-5', 202, 'August 15, 1996', 'R', 'University of Miami'),
('Glenn Robinson III', 'SF', '6-6', 222, 'January 8, 1994', '4', 'University of Michigan'),
('Henry Ellenson', 'F', '6-11', 245, 'January 13, 1997', '2', 'Marquette University'),
('Ish Smith', 'PG', '6-0', 175, 'July 5, 1988', '8', 'Wake Forest University'),
('Jon Leuer', 'F', '6-10', 228, 'May 14, 1989', '7', 'University of Wisconsin'),
('Jose Calderon', 'G', '6-3', 200, 'September 28, 1981', '13', ''),
('Keenan Evans', 'G', '6-3', 190, 'August 23, 1996', 'R', 'Texas Tech University'),
('Khyri Thomas', 'G', '6-3', 210, 'May 8, 1996', 'R', 'Creighton University'),
('Langston Galloway', 'SG', '6-2', 200, 'December 9, 1991', '4', 'Saint Joseph\'s University'),
('Luke Kennard', 'SG', '6-6', 206, 'June 24, 1996', '1', 'Duke University'),
('Reggie Bullock', 'G-F', '6-7', 205, 'March 16, 1991', '5', 'University of North Carolina'),
('Reggie Jackson', 'PG', '6-3', 208, 'April 16, 1990', '7', 'Boston College'),
('Stanley Johnson', 'F', '6-7', 245, 'May 29, 1996', '3', 'University of Arizona'),
('Zach Lofton', 'G', '6-4', 180, 'November 18, 1992', 'R', 'Illinois State University, Texas Southern University, New Mexico State University'),
('Zaza Pachulia', 'C', '6-11', 270, 'February 10, 1984', '15', '');

-- --------------------------------------------------------

--
-- Table structure for table `pistons_team_data`
--

CREATE TABLE `pistons_team_data` (
  `LOCATION` varchar(120) NOT NULL,
  `TEAM NAMES` varchar(120) NOT NULL,
  `PLAYOFF APPERANCES` varchar(120) NOT NULL,
  `CHAMPIONSHIPS` varchar(120) NOT NULL,
  `RECORD` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `pistons_team_data`
--

INSERT INTO `pistons_team_data` (`LOCATION`, `TEAM NAMES`, `PLAYOFF APPERANCES`, `CHAMPIONSHIPS`, `RECORD`) VALUES
('Detroit, Michigan ', ' Detroit Pistons, Fort Wayne Pistons ', '41    ', '3    ', '18-23, 9th in East');

-- --------------------------------------------------------

--
-- Table structure for table `pistons_team_payroll`
--

CREATE TABLE `pistons_team_payroll` (
  `2018-19` varchar(200) NOT NULL,
  `Player` varchar(200) NOT NULL,
  `Age` varchar(200) NOT NULL,
  `2019-20` varchar(200) NOT NULL,
  `2020-21` varchar(200) NOT NULL,
  `2021-22` varchar(200) NOT NULL,
  `2022-23` varchar(200) NOT NULL,
  `2023-24` varchar(200) NOT NULL,
  `Signed Using` varchar(200) NOT NULL,
  `Guaranteed` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `pistons_team_payroll`
--

INSERT INTO `pistons_team_payroll` (`2018-19`, `Player`, `Age`, `2019-20`, `2020-21`, `2021-22`, `2022-23`, `2023-24`, `Signed Using`, `Guaranteed`) VALUES
('$32,088,932', 'Blake Griffin', '29', '$34,234,964', '$36,595,996', '$38,957,028', '', '', 'Bird Rights', '$102,919,892'),
('$25,434,263', 'Andre Drummond', '25', '$27,093,019', '$28,751,775', '', '', '', 'Cap Space', '$52,527,282'),
('$17,043,478', 'Reggie Jackson', '28', '$18,086,956', '', '', '', '', 'Bird Rights', '$35,130,434'),
('$10,002,681', 'Jon Leuer', '29', '$9,508,043', '', '', '', '', 'Cap Space', '$19,510,724'),
('$7,000,000', 'Langston Galloway', '26', '$7,333,333', '', '', '', '', 'MLE', '$14,333,333'),
('$6,000,000', 'Ish Smith', '30', '', '', '', '', '', 'Cap Space', '$6,000,000'),
('$4,075,000', 'Glenn Robinson', '24', '$4,150,000', '', '', '', '', 'MLE', '$4,075,000'),
('$3,940,402', 'Stanley Johnson', '22', '', '', '', '', '', '1st round pick', '$3,940,402'),
('$3,275,280', 'Luke Kennard', '22', '$3,827,160', '$5,273,826', '', '', '', '1st Round Pick', '$3,275,280'),
('$2,500,000', 'Reggie Bullock', '27', '', '', '', '', '', 'Cap space', '$2,500,000'),
('$2,393,887', 'Zaza Pachulia', '34', '', '', '', '', '', 'Minimum Salary', '$2,393,887'),
('$2,393,887', 'Jose Calderon', '37', '', '', '', '', '', 'Minimum Salary', '$2,393,887'),
('$1,857,480', 'Henry Ellenson', '21', '$2,856,804', '', '', '', '', '1st Round pick', '$1,857,480'),
('$838,464', 'Khyri Thomas', '22', '$838,464', '$1,663,861', '', '', '', 'MLE', '$1,676,928'),
('$838,464', 'Bruce Brown', '22', '$1,416,852', '$1,663,861', '', '', '', 'MLE', '$2,255,316'),
('', 'Zach Lofton', '25', '', '', '', '', '', 'Two-Way Contract', ''),
('', 'Keenan Evans', '22', '', '', '', '', '', 'Two-Way Contract', ''),
('$5,331,729', 'Josh Smith', '32', '$5,331,729', '', '', '', '', '', '$10,663,458'),
('$125,013,947', 'Team Totals', '', '$114,677,324', '$73,949,319', '$38,957,028', '', '', '', '$265,453,303');

-- --------------------------------------------------------

--
-- Table structure for table `raptors_newteam_roster`
--

CREATE TABLE `raptors_newteam_roster` (
  `PLAYER` varchar(120) NOT NULL,
  `POSITION` varchar(120) NOT NULL,
  `HEIGHT` varchar(120) NOT NULL,
  `WEIGHT` int(120) NOT NULL,
  `Birth Date` varchar(200) NOT NULL,
  `EXPERIENCE` varchar(30) NOT NULL,
  `COLLEGE` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `raptors_newteam_roster`
--

INSERT INTO `raptors_newteam_roster` (`PLAYER`, `POSITION`, `HEIGHT`, `WEIGHT`, `Birth Date`, `EXPERIENCE`, `COLLEGE`) VALUES
('C.J. Miles', 'G-F', '6-6', 225, 'April 18, 1987', '13', ''),
('Danny Green', 'G-F', '6-6', 215, 'June 22, 1987', '9', 'University of North Carolina'),
('Delon Wright', 'G', '6-5', 183, 'April 26, 1992', '3', 'University of Utah'),
('Fred VanVleet', 'G', '6-0', 195, 'February 25, 1994', '2', 'Wichita State University'),
('Greg Monroe', 'C-F', '6-11', 265, 'June 4, 1990', '8', 'Georgetown University'),
('Jonas Valanciunas', 'C', '7-0', 265, 'May 6, 1992', '6', ''),
('Kawhi Leonard', 'F', '6-7', 230, 'June 29, 1991', '7', 'San Diego State University'),
('Kay Felder', 'G', '5-9', 176, 'March 29, 1995', '2', 'Oakland University'),
('Kyle Lowry', 'G', '6-0', 205, 'March 25, 1986', '12', 'Villanova University'),
('Lorenzo Brown', 'G', '6-5', 189, 'August 26, 1990', '4', 'North Carolina State University'),
('Malachi Richardson', 'G', '6-6', 205, 'January 5, 1996', '2', 'Syracuse University'),
('Norman Powell', 'G', '6-4', 215, 'May 25, 1993', '3', 'University of California, Los Angeles'),
('OG Anunoby', 'F', '6-8', 232, 'July 17, 1997', '1', 'Indiana University'),
('Pascal Siakam', 'F', '6-9', 230, 'February 4, 1994', '2', 'New Mexico State University'),
('Serge Ibaka', 'F-C', '6-10', 235, 'September 18, 1989', '9', '');

-- --------------------------------------------------------

--
-- Table structure for table `raptors_team_data`
--

CREATE TABLE `raptors_team_data` (
  `LOCATION` varchar(120) NOT NULL,
  `TEAM NAMES` varchar(120) NOT NULL,
  `PLAYOFF APPERANCES` varchar(120) NOT NULL,
  `CHAMPIONSHIPS` varchar(120) NOT NULL,
  `RECORD` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `raptors_team_data`
--

INSERT INTO `raptors_team_data` (`LOCATION`, `TEAM NAMES`, `PLAYOFF APPERANCES`, `CHAMPIONSHIPS`, `RECORD`) VALUES
('Toronto, Canada ', 'Toronto Raptors ', '10    ', '0    ', '13-4, 1st in East');

-- --------------------------------------------------------

--
-- Table structure for table `raptors_team_payroll`
--

CREATE TABLE `raptors_team_payroll` (
  `2018-19` varchar(200) NOT NULL,
  `Player` varchar(200) NOT NULL,
  `Age` varchar(200) NOT NULL,
  `2019-20` varchar(200) NOT NULL,
  `2020-21` varchar(200) NOT NULL,
  `2021-22` varchar(200) NOT NULL,
  `2022-23` varchar(200) NOT NULL,
  `2023-24` varchar(200) NOT NULL,
  `Signed Using` varchar(200) NOT NULL,
  `Guaranteed` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `raptors_team_payroll`
--

INSERT INTO `raptors_team_payroll` (`2018-19`, `Player`, `Age`, `2019-20`, `2020-21`, `2021-22`, `2022-23`, `2023-24`, `Signed Using`, `Guaranteed`) VALUES
('$31,000,000', 'Kyle Lowry', '32', '$33,296,296', '', '', '', '', 'Bird Rights', '$64,296,296'),
('$21,666,667', 'Serge Ibaka', '28', '$23,271,604', '', '', '', '', 'Cap space', '$44,938,271'),
('$20,099,189', 'Kawhi Leonard', '27', '$21,329,752', '', '', '', '', 'Bird Rights', '$20,099,189'),
('$16,539,326', 'Jonas Valanciunas', '26', '$17,617,977', '', '', '', '', '1st Round Pick', '$16,539,326'),
('$10,000,000', 'Danny Green', '31', '', '', '', '', '', 'Bird Rights', '$10,000,000'),
('$9,367,200', 'Norman Powell', '25', '$10,116,576', '$10,865,952', '$11,615,328', '', '', 'Cap Space', '$30,349,728'),
('$9,000,000', 'Fred VanVleet', '24', '$9,000,000', '', '', '', '', 'Bird Rights', '$18,000,000'),
('$8,333,333', 'C.J. Miles', '31', '$8,730,158', '', '', '', '', 'MLE', '$8,333,333'),
('$2,536,898', 'Delon Wright', '26', '', '', '', '', '', '1st Round pick', '$2,536,898'),
('$2,200,000', 'Greg Monroe', '28', '', '', '', '', '', '', '$2,200,000'),
('$1,952,760', 'OG Anunoby', '21', '$2,281,800', '$3,872,215', '', '', '', '1st Round Pick', '$1,952,760'),
('$1,621,415', 'Lorenzo Brown', '28', '', '', '', '', '', 'Minimum Salary', ''),
('$1,569,360', 'Malachi Richardson', '22', '$2,581,597', '', '', '', '', '1st Round pick', '$1,569,360'),
('$1,544,951', 'Pascal Siakam', '24', '$2,351,839', '', '', '', '', '1st Round pick', '$1,544,951'),
('$1,512,601', 'Kay Felder', '23', '', '', '', '', '', 'Minimum Salary', ''),
('$1,000,000', 'Justin Hamilton', '28', '$1,000,000', '', '', '', '', '', '$2,000,000'),
('$139,943,700', 'Team Totals', '', '$131,577,599', '$14,738,167', '$11,615,328', '', '', '', '$224,360,112');

-- --------------------------------------------------------

--
-- Table structure for table `rockets_newteam_roster`
--

CREATE TABLE `rockets_newteam_roster` (
  `PLAYER` varchar(120) NOT NULL,
  `POSITION` varchar(120) NOT NULL,
  `HEIGHT` varchar(120) NOT NULL,
  `WEIGHT` int(120) NOT NULL,
  `Birth Date` varchar(200) NOT NULL,
  `EXPERIENCE` varchar(30) NOT NULL,
  `COLLEGE` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `rockets_newteam_roster`
--

INSERT INTO `rockets_newteam_roster` (`PLAYER`, `POSITION`, `HEIGHT`, `WEIGHT`, `Birth Date`, `EXPERIENCE`, `COLLEGE`) VALUES
('Austin Rivers', 'PG', '6-4', 200, 'August 1, 1992', '6', 'Duke University'),
('Brandon Knight', 'PG', '6-3', 195, 'December 2, 1991', '6', 'University of Kentucky'),
('Carmelo Anthony', 'PF', '6-8', 240, 'May 29, 1984', '15', 'Syracuse University'),
('Chris Paul', 'PG', '6-0', 175, 'May 6, 1985', '13', 'Wake Forest University'),
('Clint Capela', 'C', '6-10', 240, 'May 18, 1994', '4', ''),
('Danuel House', 'SF', '6-7', 220, 'June 7, 1993', '2', 'Texas A&M University'),
('Eric Gordon', 'SG', '6-4', 215, 'December 25, 1988', '10', 'Indiana University'),
('Gary Clark', 'PF', '6-8', 225, 'November 16, 1994', 'R', 'University of Cincinnati'),
('Gerald Green', 'SG', '6-7', 205, 'January 26, 1986', '11', ''),
('Isaiah Hartenstein', 'PF', '7-0', 249, 'May 5, 1998', 'R', ''),
('James Ennis', 'SF', '6-7', 210, 'July 1, 1990', '4', 'California State University, Long Beach'),
('James Harden', 'SG', '6-5', 220, 'August 26, 1989', '9', 'Arizona State University'),
('Marquese Chriss', 'PF', '6-10', 240, 'July 2, 1997', '2', 'University of Washington'),
('Nene', 'C', '6-11', 250, 'September 13, 1982', '16', ''),
('P.J. Tucker', 'PF', '6-6', 245, 'May 5, 1985', '7', 'University of Texas at Austin'),
('Vince Edwards', 'SF', '6-8', 225, 'April 5, 1996', 'R', 'Purdue University');

-- --------------------------------------------------------

--
-- Table structure for table `rockets_team_data`
--

CREATE TABLE `rockets_team_data` (
  `LOCATION` varchar(120) NOT NULL,
  `TEAM NAMES` varchar(120) NOT NULL,
  `PLAYOFF APPERANCES` varchar(120) NOT NULL,
  `CHAMPIONSHIPS` varchar(120) NOT NULL,
  `RECORD` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `rockets_team_data`
--

INSERT INTO `rockets_team_data` (`LOCATION`, `TEAM NAMES`, `PLAYOFF APPERANCES`, `CHAMPIONSHIPS`, `RECORD`) VALUES
('Houston, Texas ', ' Houston Rockets, San Diego Rockets ', '32    ', '2    ', '8-7, 8th in West');

-- --------------------------------------------------------

--
-- Table structure for table `rockets_team_payroll`
--

CREATE TABLE `rockets_team_payroll` (
  `2018-19` varchar(200) NOT NULL,
  `Player` varchar(200) NOT NULL,
  `Age` varchar(200) NOT NULL,
  `2019-20` varchar(200) NOT NULL,
  `2020-21` varchar(200) NOT NULL,
  `2021-22` varchar(200) NOT NULL,
  `2022-23` varchar(200) NOT NULL,
  `2023-24` varchar(200) NOT NULL,
  `Signed Using` varchar(200) NOT NULL,
  `Guaranteed` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `rockets_team_payroll`
--

INSERT INTO `rockets_team_payroll` (`2018-19`, `Player`, `Age`, `2019-20`, `2020-21`, `2021-22`, `2022-23`, `2023-24`, `Signed Using`, `Guaranteed`) VALUES
('$35,654,150', 'Chris Paul', '33', '$38,506,482', '$41,358,814', '$44,211,146', '', '', '', '$159,730,592'),
('$30,431,854', 'James Harden', '29', '$37,800,000', '$40,824,000', '$43,848,000', '$46,872,000', '', 'Bird Rights', '$152,903,854'),
('$15,293,104', 'Clint Capela', '24', '$16,456,522', '$17,500,000', '$18,543,478', '$19,586,957', '', '', '$87,380,061'),
('$14,631,250', 'Brandon Knight', '26', '$15,643,750', '', '', '', '', '', '$30,275,000'),
('$13,500,375', 'Eric Gordon', '29', '$14,057,730', '', '', '', '', 'Cap Space', '$27,558,105'),
('$7,969,537', 'P.J. Tucker', '33', '$8,349,039', '$7,969,537', '', '', '', 'MLE', '$18,887,764'),
('$3,651,480', 'Nene Hilario', '36', '$3,825,360', '', '', '', '', 'Non-Bird Rights', '$7,476,840'),
('$3,206,160', 'Marquese Chriss', '21', '$4,078,236', '', '', '', '', '1st Rd pick', '$3,206,160'),
('$2,393,887', 'Gerald Green', '32', '', '', '', '', '', 'Minimum Salary', '$2,393,887'),
('$2,393,887', 'Carmelo Anthony', '34', '', '', '', '', '', 'Minimum Salary', '$2,393,887'),
('$1,757,429', 'Michael Carter-Williams', '27', '', '', '', '', '', 'Minimum Salary', '$1,200,000'),
('$1,621,415', 'James Ennis', '28', '$1,845,301', '', '', '', '', '', '$1,621,415'),
('$1,378,242', 'Zhou Qi', '22', '$1,618,520', '$1,752,950', '', '', '', 'MLE', ''),
('$838,464', 'Isaiah Hartenstein', '20', '$1,416,852', '$1,663,861', '', '', '', 'MLE', '$838,464'),
('', 'Vince Edwards', '22', '', '', '', '', '', 'Two-Way Contract', ''),
('', 'Gary Clark', '23', '', '', '', '', '', 'Two-Way Contract', ''),
('$122,741', 'Troy Williams', '23', '$122,741', '$122,741', '$122,741', '$122,741', '', '', '$613,705'),
('$134,843,975', 'Team Totals', '', '$143,720,533', '$111,191,903', '$106,725,365', '$66,581,698', '', '', '$496,479,734');

-- --------------------------------------------------------

--
-- Table structure for table `sixers_newteam_roster`
--

CREATE TABLE `sixers_newteam_roster` (
  `PLAYER` varchar(120) NOT NULL,
  `POSITION` varchar(120) NOT NULL,
  `HEIGHT` varchar(120) NOT NULL,
  `WEIGHT` int(120) NOT NULL,
  `Birth Date` varchar(200) NOT NULL,
  `EXPERIENCE` varchar(30) NOT NULL,
  `COLLEGE` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `sixers_newteam_roster`
--

INSERT INTO `sixers_newteam_roster` (`PLAYER`, `POSITION`, `HEIGHT`, `WEIGHT`, `Birth Date`, `EXPERIENCE`, `COLLEGE`) VALUES
('Amir Johnson', 'C', '6-9', 240, 'May 1, 1987', '13', ''),
('Ben Simmons', 'PG', '6-10', 230, 'July 20, 1996', '1', 'Louisiana State University'),
('Demetrius Jackson', 'G', '6-1', 201, 'September 7, 1994', '2', 'University of Notre Dame'),
('Furkan Korkmaz', 'SG', '6-7', 185, 'July 24, 1997', '1', ''),
('J.J. Redick', 'SG', '6-4', 190, 'June 24, 1984', '12', 'Duke University'),
('Jimmy Butler', 'SG', '6-8', 236, 'September 14, 1989', '7', 'Marquette University'),
('Joel Embiid', 'C', '7-0', 250, 'March 16, 1994', '2', 'University of Kansas'),
('Jonah Bolden', 'PF', '6-10', 220, 'January 2, 1996', 'R', 'University of California, Los Angeles'),
('Justin Patton', 'C', '6-11', 229, 'June 14, 1997', '1', 'Creighton University'),
('Landry Shamet', 'SG', '6-4', 180, 'March 13, 1997', 'R', 'Wichita State University'),
('Markelle Fultz', 'SG', '6-4', 195, 'May 29, 1998', '1', 'University of Washington'),
('Mike Muscala', 'PF', '6-11', 240, 'July 1, 1991', '5', 'Bucknell University'),
('Shake Milton', 'G', '6-6', 205, 'September 26, 1996', 'R', 'Southern Methodist University'),
('T.J. McConnell', 'PG', '6-2', 200, 'March 25, 1992', '3', 'Duquesne University, University of Arizona'),
('Wilson Chandler', 'PF', '6-8', 225, 'May 10, 1987', '10', 'DePaul University'),
('Zhaire Smith', 'G', '6-5', 195, 'June 4, 1999', 'R', 'Texas Tech University');

-- --------------------------------------------------------

--
-- Table structure for table `sixers_team_data`
--

CREATE TABLE `sixers_team_data` (
  `LOCATION` varchar(120) NOT NULL,
  `TEAM NAMES` varchar(120) NOT NULL,
  `PLAYOFF APPERANCES` varchar(120) NOT NULL,
  `CHAMPIONSHIPS` varchar(120) NOT NULL,
  `RECORD` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `sixers_team_data`
--

INSERT INTO `sixers_team_data` (`LOCATION`, `TEAM NAMES`, `PLAYOFF APPERANCES`, `CHAMPIONSHIPS`, `RECORD`) VALUES
('Pennsylvania', 'Philadelphia ', '48    ', '3    ', '27-16, 4th in East');

-- --------------------------------------------------------

--
-- Table structure for table `sixers_team_data_two`
--

CREATE TABLE `sixers_team_data_two` (
  `LOCATION` varchar(120) NOT NULL,
  `TEAM NAMES` varchar(120) NOT NULL,
  `PLAYOFF APPERANCES` varchar(120) NOT NULL,
  `CHAMPIONSHIPS` varchar(120) NOT NULL,
  `RECORD` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `sixers_team_data_two`
--

INSERT INTO `sixers_team_data_two` (`LOCATION`, `TEAM NAMES`, `PLAYOFF APPERANCES`, `CHAMPIONSHIPS`, `RECORD`) VALUES
('Pennsylvania', 'Philadelphia ', '48    ', '3    ', '27-16, 4th in East');

-- --------------------------------------------------------

--
-- Table structure for table `sixers_team_payroll`
--

CREATE TABLE `sixers_team_payroll` (
  `2018-19` varchar(200) NOT NULL,
  `Player` varchar(200) NOT NULL,
  `Age` varchar(200) NOT NULL,
  `2019-20` varchar(200) NOT NULL,
  `2020-21` varchar(200) NOT NULL,
  `2021-22` varchar(200) NOT NULL,
  `2022-23` varchar(200) NOT NULL,
  `2023-24` varchar(200) NOT NULL,
  `Signed Using` varchar(200) NOT NULL,
  `Guaranteed` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `sixers_team_payroll`
--

INSERT INTO `sixers_team_payroll` (`2018-19`, `Player`, `Age`, `2019-20`, `2020-21`, `2021-22`, `2022-23`, `2023-24`, `Signed Using`, `Guaranteed`) VALUES
('$25,467,250', 'Joel Embiid', '24', '$27,270,000', '$29,290,000', '$31,310,000', '$33,330,000', '', '1st Round Pick', '$25,467,250'),
('$20,445,779', 'Jimmy Butler', '29', '$19,841,627', '', '', '', '', 'Bird Rights', '$20,445,779'),
('$12,800,562', 'Wilson Chandler', '31', '', '', '', '', '', '', '$12,800,562'),
('$12,250,000', 'J.J. Redick', '34', '', '', '', '', '', '', '$12,250,000'),
('$8,339,880', 'Markelle Fultz', '20', '$9,745,200', '$12,288,697', '', '', '', '1st Round Pick', '$18,085,080'),
('$6,434,520', 'Ben Simmons', '22', '$8,113,930', '', '', '', '', '1st Round pick', '$14,548,450'),
('$5,000,000', 'Mike Muscala', '27', '', '', '', '', '', 'Cap space', '$5,000,000'),
('$2,667,600', 'Justin Patton', '21', '', '', '', '', '', '1st Round Pick', '$2,667,600'),
('$2,611,800', 'Zhaire Smith', '19', '$3,058,800', '$3,204,600', '$4,915,856', '', '', '1st Round Pick', '$5,670,600'),
('$2,393,887', 'Amir Johnson', '31', '', '', '', '', '', 'Minimum Salary', '$2,393,887'),
('$1,740,000', 'Furkan Korkmaz', '21', '', '', '', '', '', '1st Round Pick', '$1,740,000'),
('$1,703,640', 'Landry Shamet', '21', '$1,995,120', '$2,090,040', '$3,768,342', '', '', '1st Round Pick', '$3,698,760'),
('$1,690,000', 'Jonah Bolden', '22', '$1,698,450', '$1,766,550', '$1,845,000', '', '', '', '$3,388,450'),
('$1,600,520', 'T.J. McConnell', '26', '', '', '', '', '', 'Minimum Salary', ''),
('', 'Shake Milton', '22', '', '', '', '', '', 'Two-Way Contract', ''),
('', 'Demetrius Jackson', '24', '', '', '', '', '', 'Two-Way Contract', ''),
('$105,145,438', 'Team Totals', '', '$71,723,127', '$48,639,887', '$41,839,198', '$33,330,000', '', '', '$128,156,418');

-- --------------------------------------------------------

--
-- Table structure for table `spurs_newteam_roster`
--

CREATE TABLE `spurs_newteam_roster` (
  `PLAYER` varchar(120) NOT NULL,
  `POSITION` varchar(120) NOT NULL,
  `HEIGHT` varchar(120) NOT NULL,
  `WEIGHT` int(120) NOT NULL,
  `Birth Date` varchar(200) NOT NULL,
  `EXPERIENCE` varchar(30) NOT NULL,
  `COLLEGE` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `spurs_newteam_roster`
--

INSERT INTO `spurs_newteam_roster` (`PLAYER`, `POSITION`, `HEIGHT`, `WEIGHT`, `Birth Date`, `EXPERIENCE`, `COLLEGE`) VALUES
('Bryn Forbes', 'SG', '6-3', 190, 'July 23, 1993', '2', 'Michigan State University'),
('Chimezie Metu', 'F', '6-11', 225, 'March 22, 1997', 'R', 'University of Southern California'),
('Dante Cunningham', 'SF', '6-8', 230, 'April 22, 1987', '9', 'Villanova University'),
('Davis Bertans', 'PF', '6-10', 210, 'November 12, 1992', '2', ''),
('Dejounte Murray', 'G', '6-5', 170, 'September 19, 1996', '2', 'University of Washington'),
('DeMar DeRozan', 'SG', '6-7', 221, 'August 7, 1989', '9', 'University of Southern California'),
('Derrick White', 'G', '6-5', 190, 'July 2, 1994', '1', 'University of Colorado'),
('Drew Eubanks', 'F', '6-10', 240, 'February 1, 1997', 'R', 'Oregon State University'),
('Jakob Poeltl', 'C', '7-0', 248, 'October 15, 1995', '2', 'University of Utah'),
('LaMarcus Aldridge', 'C', '6-11', 260, 'July 19, 1985', '12', 'University of Texas at Austin'),
('Lonnie Walker', 'G', '6-5', 204, 'December 14, 1998', 'R', 'University of Miami'),
('Marco Belinelli', 'SG', '6-5', 210, 'March 25, 1986', '11', ''),
('Patty Mills', 'PG', '6-0', 185, 'August 11, 1988', '9', 'Saint Mary\'s College of California'),
('Pau Gasol', 'C', '7-0', 250, 'July 6, 1980', '17', ''),
('Quincy Pondexter', 'G-F', '6-7', 220, 'March 10, 1988', '6', 'University of Washington'),
('Rudy Gay', 'PF', '6-8', 230, 'August 17, 1986', '12', 'University of Connecticut');

-- --------------------------------------------------------

--
-- Table structure for table `spurs_team_data`
--

CREATE TABLE `spurs_team_data` (
  `LOCATION` varchar(120) NOT NULL,
  `TEAM NAMES` varchar(120) NOT NULL,
  `PLAYOFF APPERANCES` varchar(120) NOT NULL,
  `CHAMPIONSHIPS` varchar(120) NOT NULL,
  `RECORD` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `spurs_team_data`
--

INSERT INTO `spurs_team_data` (`LOCATION`, `TEAM NAMES`, `PLAYOFF APPERANCES`, `CHAMPIONSHIPS`, `RECORD`) VALUES
('San Antonio, Texas ', ' San Antonio Spurs, Texas Chaparrals, Dallas Chaparrals ', '46        (38 NBA & 8 ABA)    ', '5        (5 NBA & 0 ABA)    ', '25-19, 7th in West');

-- --------------------------------------------------------

--
-- Table structure for table `spurs_team_payroll`
--

CREATE TABLE `spurs_team_payroll` (
  `2018-19` varchar(200) NOT NULL,
  `Player` varchar(200) NOT NULL,
  `Age` varchar(200) NOT NULL,
  `2019-20` varchar(200) NOT NULL,
  `2020-21` varchar(200) NOT NULL,
  `2021-22` varchar(200) NOT NULL,
  `2022-23` varchar(200) NOT NULL,
  `2023-24` varchar(200) NOT NULL,
  `Signed Using` varchar(200) NOT NULL,
  `Guaranteed` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `spurs_team_payroll`
--

INSERT INTO `spurs_team_payroll` (`2018-19`, `Player`, `Age`, `2019-20`, `2020-21`, `2021-22`, `2022-23`, `2023-24`, `Signed Using`, `Guaranteed`) VALUES
('$27,739,975', 'DeMar DeRozan', '29', '$27,739,975', '$27,739,975', '', '', '', 'Cap Space', '$55,479,950'),
('$22,347,015', 'LaMarcus Aldridge', '33', '$26,000,000', '$24,000,000', '', '', '', 'Cap Space', '$55,347,015'),
('$16,800,000', 'Pau Gasol', '38', '$16,000,000', '', '', '', '', '', '$23,500,000'),
('$11,571,429', 'Patty Mills', '30', '$12,428,571', '$13,285,714', '', '', '', 'Bird Rights', '$37,285,714'),
('$10,087,200', 'Rudy Gay', '32', '', '', '', '', '', 'Non-Bird Rights', '$10,087,200'),
('$7,000,000', 'Davis Bertans', '25', '$7,000,000', '', '', '', '', 'Early Bird Rights', '$14,000,000'),
('$6,153,846', 'Marco Belinelli', '32', '$5,846,154', '', '', '', '', 'MLE', '$12,000,000'),
('$3,125,000', 'Bryn Forbes', '25', '$2,875,000', '', '', '', '', 'Early Bird Rights', '$6,000,000'),
('$2,947,320', 'Jakob Poeltl', '23', '$3,754,886', '', '', '', '', '1st Round pick', '$6,702,206'),
('$2,500,000', 'Dante Cunningham', '31', '', '', '', '', '', 'Bi-annual Exception', '$2,500,000'),
('$2,357,160', 'Lonnie Walker', '19', '$2,760,480', '$2,892,000', '$4,447,896', '', '', '1st Round Pick', '$5,117,640'),
('$1,893,447', 'Quincy Pondexter', '30', '', '', '', '', '', '', ''),
('$1,667,160', 'Derrick White', '24', '$1,948,080', '$3,516,284', '', '', '', '1st Round Pick', '$3,615,240'),
('$1,544,951', 'Dejounte Murray', '22', '$2,321,735', '', '', '', '', '1st Round pick', '$3,866,686'),
('$838,464', 'Chimezie Metu', '21', '', '', '', '', '', 'MLE', '$838,464'),
('', 'Drew Eubanks', '21', '', '', '', '', '', 'Two-Way Contract', ''),
('$2,500,000', 'Manu Ginobili', '41', '', '', '', '', '', '', '$2,500,000'),
('$1,881,250', 'Tim Duncan', '42', '', '', '', '', '', '', '$1,881,250'),
('$122,954,217', 'Team Totals', '', '$108,674,881', '$71,433,973', '$4,447,896', '', '', '', '$240,721,365');

-- --------------------------------------------------------

--
-- Table structure for table `stephen_curry`
--

CREATE TABLE `stephen_curry` (
  `Season` varchar(30) NOT NULL,
  `Team` varchar(30) NOT NULL,
  `G` int(30) NOT NULL,
  `GS` int(30) NOT NULL,
  `MP` double(10,1) NOT NULL,
  `FG` double(10,1) NOT NULL,
  `3P` double(10,1) NOT NULL,
  `FT` double(10,1) NOT NULL,
  `RB` double(10,1) NOT NULL,
  `AST` double(10,1) NOT NULL,
  `STL` double(10,1) NOT NULL,
  `BLK` double(10,1) NOT NULL,
  `TOV` double(10,1) NOT NULL,
  `PTS` double(10,1) NOT NULL,
  `DOUBLE-DOUBLES` int(45) NOT NULL,
  `TRIPLE-DOUBLES` int(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `stephen_curry`
--

INSERT INTO `stephen_curry` (`Season`, `Team`, `G`, `GS`, `MP`, `FG`, `3P`, `FT`, `RB`, `AST`, `STL`, `BLK`, `TOV`, `PTS`, `DOUBLE-DOUBLES`, `TRIPLE-DOUBLES`) VALUES
('2009-10', 'GSW', 80, 77, 36.2, 46.2, 43.7, 88.5, 4.5, 5.9, 1.9, 0.2, 3.0, 17.5, 12, 1),
('2010-11', 'GSW', 74, 74, 33.6, 48.0, 44.2, 93.4, 3.9, 5.8, 1.5, 0.3, 3.0, 18.6, 5, 0),
('2011-12', 'GSW', 26, 23, 28.2, 49.0, 45.5, 80.9, 3.4, 5.3, 1.5, 0.3, 2.5, 14.7, 3, 0),
('2012-13', 'GSW', 78, 78, 38.2, 45.1, 45.3, 90.0, 4.0, 6.9, 1.6, 0.2, 3.1, 22.9, 15, 0),
('2013-14', 'GSW', 78, 78, 36.5, 47.1, 42.4, 88.5, 4.3, 8.5, 1.6, 0.2, 3.8, 24.0, 28, 4),
('2014-15', 'GSW', 80, 80, 32.7, 48.7, 44.3, 91.4, 4.3, 7.7, 2.0, 0.2, 3.1, 23.8, 23, 0),
('2015-16', 'GSW', 79, 79, 34.2, 50.4, 45.4, 90.8, 5.4, 6.7, 2.1, 0.2, 3.3, 30.1, 15, 2),
('2016-17', 'GSW', 79, 79, 33.4, 46.8, 41.1, 89.8, 4.5, 6.6, 1.8, 0.2, 3.0, 25.3, 9, 0),
('2017-18', 'GSW', 51, 51, 32.0, 49.5, 42.3, 92.1, 5.1, 6.1, 1.6, 0.2, 3.0, 26.4, 5, 0),
('2018-19', 'GSW', 31, 31, 34.5, 48.7, 44.3, 91.5, 5.2, 5.6, 1.3, 0.3, 3.1, 28.8, 1, 0),
('Career', '', 637, 631, 34.4, 47.8, 43.8, 90.4, 4.4, 6.8, 1.8, 0.2, 3.2, 23.2, 115, 7);

-- --------------------------------------------------------

--
-- Table structure for table `suns_newteam_roster`
--

CREATE TABLE `suns_newteam_roster` (
  `PLAYER` varchar(120) NOT NULL,
  `POSITION` varchar(120) NOT NULL,
  `HEIGHT` varchar(120) NOT NULL,
  `WEIGHT` int(120) NOT NULL,
  `Birth Date` varchar(200) NOT NULL,
  `EXPERIENCE` varchar(30) NOT NULL,
  `COLLEGE` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `suns_newteam_roster`
--

INSERT INTO `suns_newteam_roster` (`PLAYER`, `POSITION`, `HEIGHT`, `WEIGHT`, `Birth Date`, `EXPERIENCE`, `COLLEGE`) VALUES
('De\'Anthony Melton', 'G', '6-4', 200, 'May 28, 1998', 'R', 'University of Southern California'),
('Deandre Ayton', 'F-C', '7-1', 250, 'July 23, 1998', 'R', 'University of Arizona'),
('Devin Booker', 'SG', '6-6', 206, 'October 30, 1996', '3', 'University of Kentucky'),
('Dragan Bender', 'F', '7-1', 225, 'November 17, 1997', '2', ''),
('Elie Okobo', 'G', '6-2', 180, 'October 23, 1997', 'R', ''),
('George King', 'G-F', '6-6', 225, 'January 15, 1994', 'R', 'University of Colorado'),
('Isaiah Canaan', 'PG', '6-0', 201, 'May 21, 1991', '5', 'Murray State University'),
('Jamal Crawford', 'G', '6-5', 200, 'March 20, 1980', '18', 'University of Michigan'),
('Josh Jackson', 'SF', '6-8', 207, 'February 10, 1997', '1', 'University of Kansas'),
('Mikal Bridges', 'G', '6-7', 210, 'August 30, 1996', 'R', 'Villanova University'),
('Richaun Holmes', 'F-C', '6-10', 245, 'October 15, 1993', '3', 'Bowling Green State University'),
('Ryan Anderson', 'PF', '6-10', 240, 'May 6, 1988', '10', 'University of California'),
('T.J. Warren', 'SF', '6-8', 230, 'September 5, 1993', '4', 'North Carolina State University'),
('Trevor Ariza', 'SF', '6-8', 215, 'June 30, 1985', '14', 'University of California, Los Angeles'),
('Troy Daniels', 'SG', '6-4', 205, 'July 15, 1991', '5', 'Virginia Commonwealth University'),
('Tyson Chandler', 'C', '7-1', 240, 'October 2, 1982', '17', '');

-- --------------------------------------------------------

--
-- Table structure for table `suns_team_data`
--

CREATE TABLE `suns_team_data` (
  `LOCATION` varchar(120) NOT NULL,
  `TEAM NAMES` varchar(120) NOT NULL,
  `PLAYOFF APPERANCES` varchar(120) NOT NULL,
  `CHAMPIONSHIPS` varchar(120) NOT NULL,
  `RECORD` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `suns_team_data`
--

INSERT INTO `suns_team_data` (`LOCATION`, `TEAM NAMES`, `PLAYOFF APPERANCES`, `CHAMPIONSHIPS`, `RECORD`) VALUES
('Phoenix, Arizona ', 'Phoenix Suns ', '29    ', '0    ', '11-33, 15th in West');

-- --------------------------------------------------------

--
-- Table structure for table `suns_team_payroll`
--

CREATE TABLE `suns_team_payroll` (
  `2018-19` varchar(200) NOT NULL,
  `Player` varchar(200) NOT NULL,
  `Age` varchar(200) NOT NULL,
  `2019-20` varchar(200) NOT NULL,
  `2020-21` varchar(200) NOT NULL,
  `2021-22` varchar(200) NOT NULL,
  `2022-23` varchar(200) NOT NULL,
  `2023-24` varchar(200) NOT NULL,
  `Signed Using` varchar(200) NOT NULL,
  `Guaranteed` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `suns_team_payroll`
--

INSERT INTO `suns_team_payroll` (`2018-19`, `Player`, `Age`, `2019-20`, `2020-21`, `2021-22`, `2022-23`, `2023-24`, `Signed Using`, `Guaranteed`) VALUES
('$20,421,546', 'Ryan Anderson', '30', '$15,600,000', '', '', '', '', 'Cap Space', '$36,021,546'),
('$15,000,000', 'Trevor Ariza', '33', '', '', '', '', '', 'Cap Space', '$15,000,000'),
('$13,585,000', 'Tyson Chandler', '36', '', '', '', '', '', 'Cap Space', '$13,585,000'),
('$11,750,000', 'T.J. Warren', '25', '$10,810,000', '$11,750,000', '$12,690,000', '', '', '1st Round Pick', '$47,000,000'),
('$8,165,160', 'Deandre Ayton', '20', '$9,562,920', '$10,018,200', '$12,632,950', '', '', '1st Round Pick', '$17,728,080'),
('$6,041,520', 'Josh Jackson', '21', '$7,059,480', '$8,930,242', '', '', '', '1st Round Pick', '$13,101,000'),
('$4,661,280', 'Dragan Bender', '20', '$5,896,519', '', '', '', '', '1st Round pick', '$4,661,280'),
('$3,552,960', 'Mikal Bridges', '22', '$4,161,000', '$4,359,000', '$5,557,725', '', '', '1st Round Pick', '$7,713,960'),
('$3,314,365', 'Devin Booker', '21', '$27,250,000', '$29,430,000', '$31,610,000', '$33,790,000', '$35,920,000', '1st round pick', '$3,314,365'),
('$3,258,539', 'Troy Daniels', '27', '', '', '', '', '', 'Cap Space', '$3,258,539'),
('$2,393,887', 'Jamal Crawford', '38', '', '', '', '', '', 'Minimum Salary', ''),
('$1,600,520', 'Richaun Holmes', '25', '', '', '', '', '', 'Cap Space', ''),
('$1,512,601', 'Isaiah Canaan', '27', '', '', '', '', '', '', ''),
('$1,238,464', 'Elie Okobo', '21', '$1,416,852', '$1,663,861', '$1,802,057', '', '', '', '$2,655,316'),
('$949,000', 'De\'Anthony Melton', '20', '$1,416,852', '', '', '', '', '', '$2,365,852'),
('', 'George King', '24', '', '', '', '', '', 'Two-Way Contract', ''),
('$7,464,912', 'Darrell Arthur', '30', '', '', '', '', '', '', '$7,464,912'),
('$1,378,242', 'Davon Reed', '23', '', '', '', '', '', '', '$1,378,242'),
('$50,000', 'Shaquille Harrison', '25', '', '', '', '', '', '', '$50,000'),
('$106,337,996', 'Team Totals', '', '$83,173,623', '$66,151,303', '$64,292,732', '$33,790,000', '35920000', '', '$175,298,092');

-- --------------------------------------------------------

--
-- Table structure for table `thunder_newteam_roster`
--

CREATE TABLE `thunder_newteam_roster` (
  `PLAYER` varchar(120) NOT NULL,
  `POSITION` varchar(120) NOT NULL,
  `HEIGHT` varchar(120) NOT NULL,
  `WEIGHT` int(120) NOT NULL,
  `Birth Date` varchar(200) NOT NULL,
  `EXPERIENCE` varchar(30) NOT NULL,
  `COLLEGE` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `thunder_newteam_roster`
--

INSERT INTO `thunder_newteam_roster` (`PLAYER`, `POSITION`, `HEIGHT`, `WEIGHT`, `Birth Date`, `EXPERIENCE`, `COLLEGE`) VALUES
('Abdel Nader', 'F', '6-6', 230, 'September 25, 1993', '1', 'Northern Illinois University, Iowa State University'),
('Alex Abrines', 'SG', '6-6', 190, 'August 1, 1993', '2', ''),
('Andre Roberson', 'G-F', '6-7', 210, 'December 4, 1991', '5', 'University of Colorado'),
('Dennis Schroder', 'PG', '6-1', 172, 'September 15, 1993', '5', ''),
('Deonte Burton', 'G', '6-5', 250, 'January 31, 1994', 'R', 'Marquette University, Iowa State University'),
('Hamidou Diallo', 'G', '6-5', 198, 'July 31, 1998', 'R', 'University of Kentucky'),
('Jerami Grant', 'PF', '6-8', 210, 'March 12, 1994', '4', 'Syracuse University'),
('Nerlens Noel', 'C', '6-11', 228, 'April 10, 1994', '4', 'University of Kentucky'),
('Patrick Patterson', 'PF', '6-9', 230, 'March 14, 1989', '8', 'University of Kentucky'),
('Paul George', 'SF', '6-9', 220, 'May 2, 1990', '8', 'California State University, Fresno'),
('Raymond Felton', 'PG', '6-1', 205, 'June 26, 1984', '13', 'University of North Carolina'),
('Russell Westbrook', 'G', '6-3', 200, 'November 12, 1988', '10', 'University of California, Los Angeles'),
('Steven Adams', 'C', '7-0', 255, 'July 20, 1993', '5', 'University of Pittsburgh'),
('Terrance Ferguson', 'SG', '6-7', 184, 'May 17, 1998', '1', ''),
('Timothe Luwawu-Cabarrot', 'F', '6-6', 205, 'May 9, 1995', '2', ''),
('Tyler Davis', 'C', '6-10', 265, 'May 22, 1997', 'R', 'Texas A&M University');

-- --------------------------------------------------------

--
-- Table structure for table `thunder_team_data`
--

CREATE TABLE `thunder_team_data` (
  `LOCATION` varchar(120) NOT NULL,
  `TEAM NAMES` varchar(120) NOT NULL,
  `PLAYOFF APPERANCES` varchar(120) NOT NULL,
  `CHAMPIONSHIPS` varchar(120) NOT NULL,
  `RECORD` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `thunder_team_data`
--

INSERT INTO `thunder_team_data` (`LOCATION`, `TEAM NAMES`, `PLAYOFF APPERANCES`, `CHAMPIONSHIPS`, `RECORD`) VALUES
('Oklahoma City, Oklahoma ', ' Oklahoma City Thunder, Seattle SuperSonics ', '30    ', '1    ', '26-16, 3rd in West');

-- --------------------------------------------------------

--
-- Table structure for table `thunder_team_payroll`
--

CREATE TABLE `thunder_team_payroll` (
  `2018-19` varchar(200) NOT NULL,
  `Player` varchar(200) NOT NULL,
  `Age` varchar(200) NOT NULL,
  `2019-20` varchar(200) NOT NULL,
  `2020-21` varchar(200) NOT NULL,
  `2021-22` varchar(200) NOT NULL,
  `2022-23` varchar(200) NOT NULL,
  `2023-24` varchar(200) NOT NULL,
  `Signed Using` varchar(200) NOT NULL,
  `Guaranteed` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `thunder_team_payroll`
--

INSERT INTO `thunder_team_payroll` (`2018-19`, `Player`, `Age`, `2019-20`, `2020-21`, `2021-22`, `2022-23`, `2023-24`, `Signed Using`, `Guaranteed`) VALUES
('$35,654,150', 'Russell Westbrook', '29', '$38,178,000', '$41,006,000', '$43,848,000', '$46,662,000', '', 'Bird Rights', '$158,686,150'),
('$30,560,700', 'Paul George', '28', '$33,005,556', '$35,450,412', '$37,895,268', '', '', 'Maximum Salary', '$99,016,668'),
('$24,157,304', 'Steven Adams', '25', '$25,842,697', '$27,528,090', '', '', '', '1st Round Pick', '$77,528,091'),
('$15,500,000', 'Dennis Schroder', '25', '$15,500,000', '$15,500,000', '', '', '', '1st Round Pick', '$46,500,000'),
('$10,000,000', 'Andre Roberson', '26', '$10,740,741', '', '', '', '', 'Bird Rights', '$20,740,741'),
('$8,653,847', 'Jerami Grant', '24', '$9,346,153', '$9,346,153', '', '', '', '', '$18,000,000'),
('$5,455,236', 'Alex Abrines', '25', '', '', '', '', '', 'Cap Space', '$5,455,236'),
('$5,451,600', 'Patrick Patterson', '29', '$5,711,200', '', '', '', '', 'MLE', '$5,451,600'),
('$2,393,887', 'Raymond Felton', '34', '', '', '', '', '', 'Minimum Salary', '$2,393,887'),
('$2,118,840', 'Terrance Ferguson', '20', '$2,475,840', '$3,944,013', '', '', '', '1st Round Pick', '$2,118,840'),
('$1,757,429', 'Nerlens Noel', '24', '$1,988,119', '', '', '', '', 'Minimum Salary', '$1,757,429'),
('$1,544,951', 'Timothe Luwawu-Cabarrot', '23', '$2,529,684', '', '', '', '', '1st Round pick', '$1,544,951'),
('$1,378,242', 'Abdel Nader', '25', '$1,618,520', '$1,752,950', '', '', '', '', '$1,378,242'),
('$838,464', 'Hamidou Diallo', '20', '$1,416,852', '$1,663,861', '', '', '', 'MLE', '$2,255,316'),
('', 'Deonte Burton', '24', '', '', '', '', '', 'Two-Way Contract', ''),
('', 'Tyler Davis', '21', '', '', '', '', '', 'Two-Way Contract', ''),
('$999,200', 'Kyle Singler', '30', '$999,200', '$999,200', '$999,200', '$999,200', '', '', '$4,996,000'),
('$146,463,850', 'Team Totals', '', '$149,352,562', '$137,190,679', '$82,742,468', '$47,661,200', '', '', '$447,823,151');

-- --------------------------------------------------------

--
-- Table structure for table `timberwolves_newteam_roster`
--

CREATE TABLE `timberwolves_newteam_roster` (
  `PLAYER` varchar(120) NOT NULL,
  `POSITION` varchar(120) NOT NULL,
  `HEIGHT` varchar(120) NOT NULL,
  `WEIGHT` int(120) NOT NULL,
  `Birth Date` varchar(200) NOT NULL,
  `EXPERIENCE` varchar(30) NOT NULL,
  `COLLEGE` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `timberwolves_newteam_roster`
--

INSERT INTO `timberwolves_newteam_roster` (`PLAYER`, `POSITION`, `HEIGHT`, `WEIGHT`, `Birth Date`, `EXPERIENCE`, `COLLEGE`) VALUES
('Andrew Wiggins', 'SF', '6-8', 199, 'February 23, 1995', '4', 'University of Kansas'),
('Anthony Tolliver', 'PF', '6-8', 240, 'June 1, 1985', '10', 'Creighton University'),
('C.J. Williams', 'G', '6-5', 225, 'February 6, 1990', '1', 'North Carolina State University'),
('Derrick Rose', 'PG', '6-3', 190, 'October 4, 1988', '9', 'University of Memphis'),
('Gorgui Dieng', 'C', '6-11', 241, 'January 18, 1990', '5', 'University of Louisville'),
('James Nunnally', 'F', '6-7', 205, 'July 14, 1990', '1', 'University of California, Santa Barbara'),
('Jared Terrell', 'G', '6-3', 215, 'February 10, 1995', 'R', 'University of Rhode Island'),
('Jeff Teague', 'PG', '6-2', 186, 'June 10, 1988', '9', 'Wake Forest University'),
('Jimmy Butler', 'SG', '6-8', 236, 'September 14, 1989', '7', 'Marquette University'),
('Josh Okogie', 'G', '6-4', 213, 'September 1, 1998', 'R', 'Georgia Institute of Technology'),
('Justin Patton', 'C', '6-11', 229, 'June 14, 1997', '1', 'Creighton University'),
('Karl-Anthony Towns', 'C', '7-0', 244, 'November 15, 1995', '3', 'University of Kentucky'),
('Keita Bates-Diop', 'F', '6-7', 235, 'January 23, 1996', 'R', 'Ohio State University'),
('Luol Deng', 'F', '6-9', 220, 'April 16, 1985', '14', 'Duke University'),
('Taj Gibson', 'PF', '6-9', 225, 'June 24, 1985', '9', 'University of Southern California'),
('Tyus Jones', 'PG', '6-2', 195, 'May 10, 1996', '3', 'Duke University');

-- --------------------------------------------------------

--
-- Table structure for table `timberwolves_team_data`
--

CREATE TABLE `timberwolves_team_data` (
  `LOCATION` varchar(120) NOT NULL,
  `TEAM NAMES` varchar(120) NOT NULL,
  `PLAYOFF APPERANCES` varchar(120) NOT NULL,
  `CHAMPIONSHIPS` varchar(120) NOT NULL,
  `2017-18 RECORD` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `timberwolves_team_data`
--

INSERT INTO `timberwolves_team_data` (`LOCATION`, `TEAM NAMES`, `PLAYOFF APPERANCES`, `CHAMPIONSHIPS`, `2017-18 RECORD`) VALUES
('Minneapolis, Minnesota ', 'Minnesota Timberwolves ', '9    ', '0    ', '47-34, 7th in West');

-- --------------------------------------------------------

--
-- Table structure for table `timberwolves_team_payroll`
--

CREATE TABLE `timberwolves_team_payroll` (
  `2018-19` varchar(200) NOT NULL,
  `Player` varchar(200) NOT NULL,
  `Age` varchar(200) NOT NULL,
  `2019-20` varchar(200) NOT NULL,
  `2020-21` varchar(200) NOT NULL,
  `2021-22` varchar(200) NOT NULL,
  `2022-23` varchar(200) NOT NULL,
  `2023-24` varchar(200) NOT NULL,
  `Signed Using` varchar(200) NOT NULL,
  `Guaranteed` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `timberwolves_team_payroll`
--

INSERT INTO `timberwolves_team_payroll` (`2018-19`, `Player`, `Age`, `2019-20`, `2020-21`, `2021-22`, `2022-23`, `2023-24`, `Signed Using`, `Guaranteed`) VALUES
('$25,467,250', 'Andrew Wiggins', '23', '$27,270,000', '$29,290,000', '$31,310,000', '$33,330,000', '', '1st Round Pick', '$146,667,250'),
('$20,445,779', 'Jimmy Butler', '29', '$19,841,627', '', '', '', '', 'Bird Rights', '$20,445,779'),
('$19,000,000', 'Jeff Teague', '30', '$19,000,000', '', '', '', '', 'Cap space', '$19,000,000'),
('$15,170,787', 'Gorgui Dieng', '28', '$16,229,213', '$17,287,640', '', '', '', '1st Round Pick', '$48,687,640'),
('$14,000,000', 'Taj Gibson', '33', '', '', '', '', '', 'Cap space', '$14,000,000'),
('$7,839,435', 'Karl-Anthony Towns', '22', '$27,250,000', '$29,430,000', '$31,610,000', '$33,790,000', '$35,670,000', '1st round pick', '$163,409,435'),
('$5,750,000', 'Anthony Tolliver', '33', '', '', '', '', '', 'MLE', '$5,750,000'),
('$2,667,600', 'Justin Patton', '21', '$3,117,240', '$4,781,846', '', '', '', '1st Round Pick', '$2,667,600'),
('$2,444,053', 'Tyus Jones', '22', '', '', '', '', '', '1st Round pick', '$2,444,053'),
('$2,393,887', 'Luol Deng', '33', '', '', '', '', '', '', '$2,393,887'),
('$2,176,260', 'Derrick Rose', '30', '', '', '', '', '', 'Minimum Salary', '$2,176,260'),
('$2,160,720', 'Josh Okogie', '20', '$2,530,680', '$2,651,040', '$4,087,904', '', '', '1st Round Pick', '$4,691,400'),
('$1,349,383', 'James Nunnally', '28', '$1,588,231', '', '', '', '', 'Minimum Salary', ''),
('$838,464', 'Keita Bates-Diop', '22', '$1,416,852', '$1,663,861', '', '', '', 'MLE', '$2,255,316'),
('', 'Jared Terrell', '23', '', '', '', '', '', 'Two-Way Contract', ''),
('', 'C.J. Williams', '28', '', '', '', '', '', 'Two-Way Contract', ''),
('$1,360,304', 'Kevin Martin', '35', '', '', '', '', '', '', '$1,360,304'),
('$685,341', 'Cole Aldrich', '29', '$685,340', '$685,340', '', '', '', '', '$2,056,021'),
('$123,749,263', 'Team Totals', '', '$118,929,183', '$85,789,727', '$67,007,904', '$67,120,000', '35670000', '', '$438,004,945');

-- --------------------------------------------------------

--
-- Table structure for table `warriors_team_data`
--

CREATE TABLE `warriors_team_data` (
  `Location` varchar(120) NOT NULL,
  `TeamNames` varchar(120) NOT NULL,
  `PlayoffAppearances` varchar(120) NOT NULL,
  `Championships` varchar(120) NOT NULL,
  `Record` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `warriors_team_data`
--

INSERT INTO `warriors_team_data` (`Location`, `TeamNames`, `PlayoffAppearances`, `Championships`, `Record`) VALUES
('Oakland', 'Golden State Warriors, San Francisco Warriors, Philadelphia Warriors ', '38', '7', '2969-3134');

-- --------------------------------------------------------

--
-- Table structure for table `warriors_team_payroll`
--

CREATE TABLE `warriors_team_payroll` (
  `2018-19` varchar(200) NOT NULL,
  `Player` varchar(200) NOT NULL,
  `Age` varchar(200) NOT NULL,
  `2019-20` varchar(200) NOT NULL,
  `2020-21` varchar(200) NOT NULL,
  `2021-22` varchar(200) NOT NULL,
  `2022-23` varchar(200) NOT NULL,
  `2023-24` varchar(200) NOT NULL,
  `Signed Using` varchar(200) NOT NULL,
  `Guaranteed` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `warriors_team_payroll`
--

INSERT INTO `warriors_team_payroll` (`2018-19`, `Player`, `Age`, `2019-20`, `2020-21`, `2021-22`, `2022-23`, `2023-24`, `Signed Using`, `Guaranteed`) VALUES
('$37,457,154', 'Stephen Curry', '30', '$40,231,758', '$43,006,362', '$45,780,966', '', '', 'Bird Rights', '$166,476,240'),
('$30,000,000', 'Kevin Durant', '30', '$31,500,000', '', '', '', '', '', '$30,000,000'),
('$18,988,725', 'Klay Thompson', '28', '', '', '', '', '', '1st Round Pick', '$18,988,725'),
('$17,469,565', 'Draymond Green', '28', '$18,539,130', '', '', '', '', 'Bird Rights', '$36,008,695'),
('$16,000,000', 'Andre Iguodala', '34', '$17,185,185', '', '', '', '', 'Bird Rights', '$33,185,185'),
('$8,307,692', 'Shaun Livingston', '33', '$7,692,308', '', '', '', '', 'Bird Rights', '$10,307,692'),
('$5,337,000', 'DeMarcus Cousins', '28', '', '', '', '', '', 'MLE', '$5,337,000'),
('$2,165,481', 'Jonas Jerebko', '31', '', '', '', '', '', 'Minimum Salary', '$2,165,481'),
('$1,644,240', 'Jacob Evans', '21', '$1,925,880', '$2,017,320', '$3,641,263', '', '', '1st Round Pick', '$3,570,120'),
('$1,349,383', 'Alfonzo McKinnie', '26', '', '', '', '', '', 'Minimum Salary', ''),
('$1,567,007', 'Kevon Looney', '22', '', '', '', '', '', '', '$1,567,007'),
('$1,544,951', 'Quinn Cook', '25', '', '', '', '', '', '', '$1,544,951'),
('$1,544,951', 'Damian Jones', '23', '$2,305,057', '', '', '', '', '1st Round pick', '$1,544,951'),
('$1,378,252', 'Jordan Bell', '23', '', '', '', '', '', 'Minimum Salary', '$1,378,252'),
('$1,349,383', 'Alfonzo McKinnie', '26', '', '', '', '', '', 'Minimum Salary', ''),
('', 'Marcus Derrickson', '22', '', '', '', '', '', 'Two-Way Contract', ''),
('', 'Damion Lee', '26', '', '', '', '', '', 'Two-Way Contract', ''),
('$945,126', 'Jason Thompson', '32', '', '', '', '', '', '', '$945,126'),
('$147,048,910', 'Team Totals', '', '$119,379,318', '$45,023,682', '$49,422,229', '', '', '', '$313,019,425');

-- --------------------------------------------------------

--
-- Table structure for table `warriors_team_roster`
--

CREATE TABLE `warriors_team_roster` (
  `Player` varchar(120) NOT NULL,
  `Position` varchar(120) NOT NULL,
  `Height` varchar(120) NOT NULL,
  `Weight` int(120) NOT NULL,
  `BirthDate` varchar(200) NOT NULL,
  `Experience` varchar(30) NOT NULL,
  `College` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `warriors_team_roster`
--

INSERT INTO `warriors_team_roster` (`Player`, `Position`, `Height`, `Weight`, `BirthDate`, `Experience`, `College`) VALUES
('Alfonzo McKinnie', 'SF', '6-8', 215, 'September 17, 1992', '1', 'University of Wisconsin-Green Bay'),
('Andre Iguodala', 'SF', '6-6', 215, 'January 28, 1984', '14', 'University of Arizona'),
('Damian Jones', 'C', '7-0', 245, 'June 30, 1995', '2', 'Vanderbilt University'),
('Damion Lee', 'G', '6-6', 210, 'October 21, 1992', '1', 'Drexel University, University of Louisville'),
('DeMarcus Cousins', 'C-F', '6-11', 270, 'August 13, 1990', '8', 'University of Kentucky'),
('Draymond Green', 'PF', '6-7', 230, 'March 4, 1990', '6', 'Michigan State University'),
('Jacob Evans', 'G-F', '6-6', 210, 'June 18, 1997', 'R', 'University of Cincinnati'),
('Jonas Jerebko', 'PF', '6-10', 231, 'March 2, 1987', '8', ''),
('Jordan Bell', 'C', '6-9', 224, 'January 7, 1995', '1', 'University of Oregon'),
('Kevin Durant', 'PF', '6-9', 240, 'September 29, 1988', '11', 'University of Texas at Austin'),
('Kevon Looney', 'C', '6-9', 220, 'February 6, 1996', '3', 'University of California, Los Angeles'),
('Klay Thompson', 'SG', '6-7', 215, 'February 8, 1990', '7', 'Washington State University'),
('Marcus Derrickson', 'F', '6-7', 250, 'February 1, 1996', 'R', 'Georgetown University'),
('Quinn Cook', 'PG', '6-2', 184, 'March 23, 1993', '2', 'Duke University'),
('Shaun Livingston', 'PG', '6-7', 192, 'September 11, 1985', '13', ''),
('Stephen Curry', 'PG', '6-3', 190, 'March 14, 1988', '9', 'Davidson College');

-- --------------------------------------------------------

--
-- Table structure for table `wizards_newteam_roster`
--

CREATE TABLE `wizards_newteam_roster` (
  `PLAYER` varchar(120) NOT NULL,
  `POSITION` varchar(120) NOT NULL,
  `HEIGHT` varchar(120) NOT NULL,
  `WEIGHT` int(120) NOT NULL,
  `Birth Date` varchar(200) NOT NULL,
  `EXPERIENCE` varchar(30) NOT NULL,
  `COLLEGE` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `wizards_newteam_roster`
--

INSERT INTO `wizards_newteam_roster` (`PLAYER`, `POSITION`, `HEIGHT`, `WEIGHT`, `Birth Date`, `EXPERIENCE`, `COLLEGE`) VALUES
('Austin Rivers', 'G', '6-4', 200, 'August 1, 1992', '6', 'Duke University'),
('Bradley Beal', 'G', '6-5', 207, 'June 28, 1993', '6', 'University of Florida'),
('Devin Robinson', 'F', '6-8', 190, 'March 7, 1995', '1', 'University of Florida'),
('Dwight Howard', 'C', '6-11', 265, 'December 8, 1985', '14', ''),
('Ian Mahinmi', 'C', '6-11', 250, 'November 5, 1986', '10', ''),
('Jason Smith', 'F-C', '7-0', 245, 'March 2, 1986', '10', 'Colorado State University'),
('Jeff Green', 'F', '6-9', 235, 'August 28, 1986', '10', 'Georgetown University'),
('John Wall', 'G', '6-4', 195, 'September 6, 1990', '8', 'University of Kentucky'),
('Jordan McRae', 'G', '6-6', 185, 'March 28, 1991', '2', 'University of Tennessee'),
('Kelly Oubre Jr.', 'F', '6-7', 205, 'December 9, 1995', '3', 'University of Kansas'),
('Markieff Morris', 'F', '6-10', 245, 'September 2, 1989', '7', 'University of Kansas'),
('Otto Porter', 'F', '6-8', 198, 'June 3, 1993', '5', 'Georgetown University'),
('Thomas Bryant', 'C', '6-10', 248, 'July 31, 1997', '1', 'Indiana University'),
('Tomas Satoransky', 'G', '6-7', 210, 'October 30, 1991', '2', ''),
('Troy Brown Jr.', 'G-F', '6-7', 215, 'July 28, 1999', 'R', 'University of Oregon');

-- --------------------------------------------------------

--
-- Table structure for table `wizards_team_data`
--

CREATE TABLE `wizards_team_data` (
  `LOCATION` varchar(120) NOT NULL,
  `TEAM NAMES` varchar(120) NOT NULL,
  `PLAYOFF APPERANCES` varchar(120) NOT NULL,
  `CHAMPIONSHIPS` varchar(120) NOT NULL,
  `RECORD` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `wizards_team_data`
--

INSERT INTO `wizards_team_data` (`LOCATION`, `TEAM NAMES`, `PLAYOFF APPERANCES`, `CHAMPIONSHIPS`, `RECORD`) VALUES
('Washington, District of Columbia ', ' Washington Wizards, Washington Bullets, Capital Bullets, Baltimore Bullets, Chicago Zephyrs, Chicago Packers ', '29    ', '1    ', '18-25, 11th in East');

-- --------------------------------------------------------

--
-- Table structure for table `wizards_team_payroll`
--

CREATE TABLE `wizards_team_payroll` (
  `2018-19` varchar(200) NOT NULL,
  `Player` varchar(200) NOT NULL,
  `Age` varchar(200) NOT NULL,
  `2019-20` varchar(200) NOT NULL,
  `2020-21` varchar(200) NOT NULL,
  `2021-22` varchar(200) NOT NULL,
  `2022-23` varchar(200) NOT NULL,
  `2023-24` varchar(200) NOT NULL,
  `Signed Using` varchar(200) NOT NULL,
  `Guaranteed` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `wizards_team_payroll`
--

INSERT INTO `wizards_team_payroll` (`2018-19`, `Player`, `Age`, `2019-20`, `2020-21`, `2021-22`, `2022-23`, `2023-24`, `Signed Using`, `Guaranteed`) VALUES
('$26,011,913', 'Otto Porter', '25', '$27,250,576', '$28,489,239', '', '', '', 'Bird Rights', '$53,262,489'),
('$25,434,263', 'Bradley Beal', '25', '$27,093,019', '$28,751,775', '', '', '', 'Cap Space', '$81,279,057'),
('$19,169,800', 'John Wall', '28', '$37,800,000', '$40,824,000', '$43,848,000', '$46,872,000', '', 'Bird Rights', '$141,641,800'),
('$15,944,154', 'Ian Mahinmi', '31', '$15,450,051', '', '', '', '', 'Cap Space', '$31,394,205'),
('$12,650,000', 'Austin Rivers', '26', '', '', '', '', '', 'Cap Space', '$12,650,000'),
('$8,600,000', 'Markieff Morris', '29', '', '', '', '', '', 'Bird Rights', '$8,600,000'),
('$5,450,000', 'Jason Smith', '32', '', '', '', '', '', 'Cap Space', '$5,450,000'),
('$5,337,000', 'Dwight Howard', '32', '$5,603,850', '', '', '', '', 'MLE', '$5,337,000'),
('$3,208,630', 'Kelly Oubre', '22', '', '', '', '', '', '1st round pick', '$3,208,630'),
('$3,129,187', 'Tomas Satoransky', '26', '', '', '', '', '', 'Cap Space', '$3,129,187'),
('$2,749,080', 'Troy Brown', '19', '$3,219,480', '$3,372,840', '$5,170,564', '', '', '1st Round Pick', '$5,968,560'),
('$2,393,887', 'Jeff Green', '32', '', '', '', '', '', 'Minimum Salary', '$2,393,887'),
('$1,378,242', 'Thomas Bryant', '21', '', '', '', '', '', 'Minimum Salary', '$1,378,242'),
('', 'Devin Robinson', '23', '', '', '', '', '', 'Two-Way Contract', ''),
('', 'Jordan McRae', '27', '', '', '', '', '', 'Two-Way Contract', ''),
('$833,333', 'Martell Webster', '31', '', '', '', '', '', '', '$833,333'),
('$132,289,489', 'Team Totals', '', '$116,416,976', '$101,437,854', '$49,018,564', '$46,872,000', '', '', '$356,526,390');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blazers_newteam_roster`
--
ALTER TABLE `blazers_newteam_roster`
  ADD PRIMARY KEY (`PLAYER`);

--
-- Indexes for table `blazers_team_data`
--
ALTER TABLE `blazers_team_data`
  ADD PRIMARY KEY (`LOCATION`);

--
-- Indexes for table `bucks_newteam_roster`
--
ALTER TABLE `bucks_newteam_roster`
  ADD PRIMARY KEY (`PLAYER`);

--
-- Indexes for table `bucks_team_data`
--
ALTER TABLE `bucks_team_data`
  ADD PRIMARY KEY (`Location`);

--
-- Indexes for table `bulls_newteam_roster`
--
ALTER TABLE `bulls_newteam_roster`
  ADD PRIMARY KEY (`PLAYER`);

--
-- Indexes for table `bulls_team_data`
--
ALTER TABLE `bulls_team_data`
  ADD PRIMARY KEY (`LOCATION`);

--
-- Indexes for table `cavs_newteam_roster`
--
ALTER TABLE `cavs_newteam_roster`
  ADD PRIMARY KEY (`PLAYER`);

--
-- Indexes for table `cavs_team_data`
--
ALTER TABLE `cavs_team_data`
  ADD PRIMARY KEY (`LOCATION`);

--
-- Indexes for table `celtics_newteam_roster`
--
ALTER TABLE `celtics_newteam_roster`
  ADD PRIMARY KEY (`PLAYER`);

--
-- Indexes for table `celtics_team_data`
--
ALTER TABLE `celtics_team_data`
  ADD PRIMARY KEY (`LOCATION`);

--
-- Indexes for table `clippers_newteam_roster`
--
ALTER TABLE `clippers_newteam_roster`
  ADD PRIMARY KEY (`PLAYER`);

--
-- Indexes for table `clippers_team_data`
--
ALTER TABLE `clippers_team_data`
  ADD PRIMARY KEY (`LOCATION`);

--
-- Indexes for table `grizzlies_newteam_roster`
--
ALTER TABLE `grizzlies_newteam_roster`
  ADD PRIMARY KEY (`PLAYER`);

--
-- Indexes for table `grizzlies_team_data`
--
ALTER TABLE `grizzlies_team_data`
  ADD PRIMARY KEY (`LOCATION`);

--
-- Indexes for table `hawks_newteam_roster`
--
ALTER TABLE `hawks_newteam_roster`
  ADD PRIMARY KEY (`PLAYER`);

--
-- Indexes for table `hawks_team_data`
--
ALTER TABLE `hawks_team_data`
  ADD PRIMARY KEY (`LOCATION`);

--
-- Indexes for table `heat_newteam_roster`
--
ALTER TABLE `heat_newteam_roster`
  ADD PRIMARY KEY (`PLAYER`);

--
-- Indexes for table `heat_team_data`
--
ALTER TABLE `heat_team_data`
  ADD PRIMARY KEY (`LOCATION`);

--
-- Indexes for table `hornets_newteam_roster`
--
ALTER TABLE `hornets_newteam_roster`
  ADD PRIMARY KEY (`PLAYER`);

--
-- Indexes for table `hornets_team_data`
--
ALTER TABLE `hornets_team_data`
  ADD PRIMARY KEY (`LOCATION`);

--
-- Indexes for table `jazz_newteam_roster`
--
ALTER TABLE `jazz_newteam_roster`
  ADD PRIMARY KEY (`PLAYER`);

--
-- Indexes for table `jazz_team_data`
--
ALTER TABLE `jazz_team_data`
  ADD PRIMARY KEY (`LOCATION`);

--
-- Indexes for table `kings_newteam_roster`
--
ALTER TABLE `kings_newteam_roster`
  ADD PRIMARY KEY (`PLAYER`);

--
-- Indexes for table `kings_team_data`
--
ALTER TABLE `kings_team_data`
  ADD PRIMARY KEY (`LOCATION`);

--
-- Indexes for table `knicks_newteam_roster`
--
ALTER TABLE `knicks_newteam_roster`
  ADD PRIMARY KEY (`PLAYER`);

--
-- Indexes for table `knicks_team_data`
--
ALTER TABLE `knicks_team_data`
  ADD PRIMARY KEY (`LOCATION`);

--
-- Indexes for table `lakers_newteam_roster`
--
ALTER TABLE `lakers_newteam_roster`
  ADD PRIMARY KEY (`PLAYER`);

--
-- Indexes for table `lakers_team_data`
--
ALTER TABLE `lakers_team_data`
  ADD PRIMARY KEY (`Location`);

--
-- Indexes for table `magic_newteam_roster`
--
ALTER TABLE `magic_newteam_roster`
  ADD PRIMARY KEY (`PLAYER`);

--
-- Indexes for table `magic_team_data`
--
ALTER TABLE `magic_team_data`
  ADD PRIMARY KEY (`LOCATION`);

--
-- Indexes for table `mavs_newteam_roster`
--
ALTER TABLE `mavs_newteam_roster`
  ADD PRIMARY KEY (`PLAYER`);

--
-- Indexes for table `mavs_team_data`
--
ALTER TABLE `mavs_team_data`
  ADD PRIMARY KEY (`LOCATION`);

--
-- Indexes for table `nets_newteam_roster`
--
ALTER TABLE `nets_newteam_roster`
  ADD PRIMARY KEY (`PLAYER`);

--
-- Indexes for table `nets_team_data`
--
ALTER TABLE `nets_team_data`
  ADD PRIMARY KEY (`LOCATION`);

--
-- Indexes for table `nuggets_newteam_roster`
--
ALTER TABLE `nuggets_newteam_roster`
  ADD PRIMARY KEY (`PLAYER`);

--
-- Indexes for table `nuggets_team_data`
--
ALTER TABLE `nuggets_team_data`
  ADD PRIMARY KEY (`Location`);

--
-- Indexes for table `pacers_newteam_roster`
--
ALTER TABLE `pacers_newteam_roster`
  ADD PRIMARY KEY (`PLAYER`);

--
-- Indexes for table `pacers_team_data`
--
ALTER TABLE `pacers_team_data`
  ADD PRIMARY KEY (`LOCATION`);

--
-- Indexes for table `pelicans_newteam_roster`
--
ALTER TABLE `pelicans_newteam_roster`
  ADD PRIMARY KEY (`PLAYER`);

--
-- Indexes for table `pelicans_team_data`
--
ALTER TABLE `pelicans_team_data`
  ADD PRIMARY KEY (`LOCATION`);

--
-- Indexes for table `pistons_newteam_roster`
--
ALTER TABLE `pistons_newteam_roster`
  ADD PRIMARY KEY (`PLAYER`);

--
-- Indexes for table `pistons_team_data`
--
ALTER TABLE `pistons_team_data`
  ADD PRIMARY KEY (`LOCATION`);

--
-- Indexes for table `raptors_newteam_roster`
--
ALTER TABLE `raptors_newteam_roster`
  ADD PRIMARY KEY (`PLAYER`);

--
-- Indexes for table `raptors_team_data`
--
ALTER TABLE `raptors_team_data`
  ADD PRIMARY KEY (`LOCATION`);

--
-- Indexes for table `rockets_newteam_roster`
--
ALTER TABLE `rockets_newteam_roster`
  ADD PRIMARY KEY (`PLAYER`);

--
-- Indexes for table `rockets_team_data`
--
ALTER TABLE `rockets_team_data`
  ADD PRIMARY KEY (`LOCATION`);

--
-- Indexes for table `sixers_newteam_roster`
--
ALTER TABLE `sixers_newteam_roster`
  ADD PRIMARY KEY (`PLAYER`);

--
-- Indexes for table `sixers_team_data`
--
ALTER TABLE `sixers_team_data`
  ADD PRIMARY KEY (`LOCATION`);

--
-- Indexes for table `sixers_team_data_two`
--
ALTER TABLE `sixers_team_data_two`
  ADD PRIMARY KEY (`LOCATION`);

--
-- Indexes for table `spurs_newteam_roster`
--
ALTER TABLE `spurs_newteam_roster`
  ADD PRIMARY KEY (`PLAYER`);

--
-- Indexes for table `spurs_team_data`
--
ALTER TABLE `spurs_team_data`
  ADD PRIMARY KEY (`LOCATION`);

--
-- Indexes for table `stephen_curry`
--
ALTER TABLE `stephen_curry`
  ADD PRIMARY KEY (`Season`);

--
-- Indexes for table `suns_newteam_roster`
--
ALTER TABLE `suns_newteam_roster`
  ADD PRIMARY KEY (`PLAYER`);

--
-- Indexes for table `suns_team_data`
--
ALTER TABLE `suns_team_data`
  ADD PRIMARY KEY (`LOCATION`);

--
-- Indexes for table `thunder_newteam_roster`
--
ALTER TABLE `thunder_newteam_roster`
  ADD PRIMARY KEY (`PLAYER`);

--
-- Indexes for table `thunder_team_data`
--
ALTER TABLE `thunder_team_data`
  ADD PRIMARY KEY (`LOCATION`);

--
-- Indexes for table `timberwolves_newteam_roster`
--
ALTER TABLE `timberwolves_newteam_roster`
  ADD PRIMARY KEY (`PLAYER`);

--
-- Indexes for table `timberwolves_team_data`
--
ALTER TABLE `timberwolves_team_data`
  ADD PRIMARY KEY (`LOCATION`);

--
-- Indexes for table `warriors_team_data`
--
ALTER TABLE `warriors_team_data`
  ADD PRIMARY KEY (`Location`);

--
-- Indexes for table `warriors_team_roster`
--
ALTER TABLE `warriors_team_roster`
  ADD PRIMARY KEY (`Player`);

--
-- Indexes for table `wizards_newteam_roster`
--
ALTER TABLE `wizards_newteam_roster`
  ADD PRIMARY KEY (`PLAYER`);

--
-- Indexes for table `wizards_team_data`
--
ALTER TABLE `wizards_team_data`
  ADD PRIMARY KEY (`LOCATION`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
