-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 05, 2019 at 11:28 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `investo`
--

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `cid` int(10) NOT NULL,
  `company_name` varchar(39) NOT NULL,
  `sector` varchar(26) DEFAULT NULL,
  `location` varchar(26) DEFAULT NULL,
  `description` varchar(186) DEFAULT NULL,
  `stake` varchar(164) DEFAULT NULL,
  `funding_required` varchar(104) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`cid`, `company_name`, `sector`, `location`, `description`, `stake`, `funding_required`) VALUES
(1, '3 Round Stones, Inc.', 'Data/Technology', 'District of Columbia', 'Our Open Source platform is used by the Fortune2000 and US Government Agencies to collect, publish and reuse data, both public and proprietary.', '20', '100000'),
(2, '48 Factoring Inc.', 'Finance & Investment', 'Pennsylvania', '48 Factoring Inc. is one of the best financial services company using unique factoring 2.0 financial product which helps business to grow.', '20', '100000'),
(3, '5PSolutions', 'Data/Technology', 'Virginia', '5PSolutions are artisans of mobile platforms.', '20', '100000'),
(4, 'Abt Associates', 'Research & Consulting', 'Massachusetts', 'Abt Associates is a mission-driven, global leader in research and program implementation in the fields of health, social and environmental policy, and international development.', '20', '100000'),
(5, 'Accela', 'Governance', 'California', 'Accela improves citizen engagement by making it easier to do government business, driving civic innovation and improving transparency, accuracy and accountability.', '20', '100000'),
(6, 'Accenture', '', 'Illinois', 'Accenture provides management consulting, technology and outsourcing services.', '20', '100000'),
(7, 'AccuWeather', 'Environment & Weather', 'Pennsylvania', 'AccuWeather provides local forecasts for everywhere in the United States and over two million locations worldwide.', '20', '100000'),
(8, 'Acxiom', 'Data/Technology', 'Arkansas', 'Acxiom is an enterprise data, analytics and software-as-a-service company, using data to connect people, businesses and their partners.', '20', '100000'),
(9, 'Adaptive', 'Business & Legal Services', 'California', 'Adaptive helps organizations leverage what they have by providing a knowledge management asset that facilitates reuse, analytics and compliance throughout the organization.', '20', '100000'),
(10, 'Adobe Digital Government', 'Data/Technology', 'California', 'Adobe delivers solutions that help government agencies make, manage, mobilize, and measure the information and experiences needed to achieve their missions.', '20', '100000'),
(11, 'Aidin', 'Healthcare', 'New York', 'Aidin helps hospitals discharge their patients to the best available nursing homes, home health agencies, and other post-acute care providers.', '20', '100000'),
(12, 'Alarm.com', 'Lifestyle & Consumer', 'Virginia', 'Alarm.com is a technology provider of connected home services, powering well over one million residential and commercial installations.', '20', '100000'),
(13, 'Allianz', 'Finance & Investment', 'New York', 'Allianz Life Insurance Company is a provider of retirement solutions, including fixed and variable annuities and life insurance for individuals.', '20', '100000'),
(14, 'Allied Van Lines', 'Transportation', 'Illinois', 'As part of Allied\'s moving services, the company offers customized solutions for  local, interstate and international moves.', '20', '100000'),
(15, 'AllState Insurance Group', 'Insurance', 'Illinois', 'The Allstate Corporation is the largest publicly held personal, property and casualty insurer in America.', '20', '100000'),
(16, 'Alltuition', 'Education', 'Illinois', 'Alltuition is an online search engine for students to find suitable loan providers.\r\n\r\n', '20', '100000'),
(17, 'Altova', 'Data/Technology', 'Massachusetts', 'Altova is a software company specializing in tools to assist developers with data management, software and application development, and data integration.', '20', '100000'),
(18, 'Amazon Web Services', 'Data/Technology', 'Washington', 'Amazon provides cloud computing services through Amazon Web Services to a range of clients.', '20', '100000'),
(19, 'American Red Ball Movers', 'Transportation', 'Indiana', 'American Red Ball Movers is a long distance relocation moving company that serves families and businesses.', '20', '100000'),
(20, 'Amida Technology Solutions', 'Healthcare', 'District of Columbia', 'Amida develops patient-centered solutions based on the Blue Button personal health record (PHR), the most popular PHR in the country.', '20', '100000'),
(21, 'Analytica', 'Data/Technology', 'District of Columbia', 'Analytica assists public sector organizations to identify, leverage, analyze and manage information.', '20', '100000'),
(22, 'Apextech LLC', 'Data/Technology', 'Virginia', 'Apextech LLC, a commercial and government consulting firm, offers clients and partners innovative solutions to heighten business performance.', '20', '100000'),
(23, 'Appallicious', 'Data/Technology', 'California', 'The Appallicious Mobile Commerce Platform is a leading technology for government and business to go mobile.', '20', '100000'),
(24, 'Aquicore', 'Energy', 'District of Columbia', 'Aquicore is an Energy Intelligence Solution, combining software and next-generation metering technology to cost-effectively monitor and analyze real-time energy data across commercial re', '20', '100000'),
(25, 'Archimedes Inc.', 'Healthcare', 'California', 'Archimedes creates models using evidence from clinical trials, epidemiological studies, and other sources to show healthcare decision makers how different options affect outcomes and cos', '20', '100000'),
(26, 'AreaVibes Inc.', 'Data/Technology', 'New York', 'AreaVibe works to provide you with everything you need to know about every city in the United States.', '20', '100000'),
(27, 'Arpin Van Lines', 'Transportation', 'Rhode Island', 'Arpin Van Lines, headquartered in West Warwick, Rhode Island, provides household goods moving and storage services for corporate, government, military, and residential customers.', '20', '100000'),
(28, 'Arrive Labs', 'Transportation', 'California', 'Arrive Labs builds software solutions for urban transit challenges.', '20', '100000'),
(29, 'ASC Partners', 'Business & Legal Services', 'Massachusetts', 'ASC helps companies improve their productivity through technologies involving business process analyses, back office accounting systems, business applications, software integration, and ', '20', '100000'),
(30, 'Asset4', 'Finance & Investment', 'New York', 'Asset4 provides objective, comparable and auditable extra-financial information.', '20', '100000'),
(31, 'Atlas Van Lines', 'Transportation', 'Indiana', 'Atlas World Group, Inc. is a family of companies delivering transportation and related services globally through a network of quality agents and select service partners.', '20', '100000'),
(32, 'AtSite', 'Research & Consulting', 'District of Columbia', 'AtSite\'s open-source technology and building performance solutions help organizations maximize the strategic value and long-term performance of real estate assets', '20', '100000'),
(33, 'Aunt Bertha, Inc.', 'Governance', 'Texas', 'Aunt Bertha picks up where Uncle Sam leaves off by making it easy to find and apply for government and charitable social service programs.', '20', '100000'),
(34, 'Aureus Sciences (*Now part of Elsevier)', 'Scientific Research', 'Pennsylvania', 'Aureus Sciences provides databases and information tools for pharmaceutical and biotech companies.', '20', '100000'),
(35, 'AutoGrid Systems', 'Energy', 'California', 'AutoGrid Systems is organizing the world\'s energy data by bringing cloud-computing to process and analyze data produced from an increasingly networked and automated grid.', '20', '100000'),
(36, 'Avalara', 'Finance & Investment', 'Washington', 'Avalara combines technology with available statutory content to deliver fully automated sales tax compliance solutions.', '20', '100000'),
(37, 'Avvo', 'Business & Legal Services', 'Washington', 'Avvo.com is a legal marketplace for consumers and attorneys.', '20', '100000'),
(38, 'Ayasdi', 'Data/Technology', 'California', 'Ayasdi is an enterprise software platform that changes the way the organizations discover, extract and operationalize insights from complex data.', '20', '100000'),
(39, 'Azavea', 'Geospatial/Mapping', 'Pennsylvania', 'Azavea is a geospatial analysis (GIS) software development firm specializing in creating location-based web and mobile software as well as geospatial analysis services.', '20', '100000'),
(40, 'BaleFire Global', 'Data/Technology', 'North Carolina', 'BaleFire Global provides training, civic engagement and client success to NGOs and governments around the world.', '20', '100000'),
(41, 'Barchart', 'Data/Technology', 'Illinois', 'Barchart.com is a full-service provider of futures, equity and foreign exchange market data.', '20', '100000'),
(42, 'Be Informed', 'Data/Technology', 'New York', 'Be Informed’s semantic technology and solutions makes business applications completely model-driven, allowing organizations to instantly execute on new strategies and regulations.', '20', '100000'),
(43, 'Bekins', 'Transportation', 'Indiana', 'Bekins offers private and corporate domestic and international household goods relocation services as well as special commodities and logistic services.', '20', '100000'),
(44, 'Berkery Noyes MandASoft', 'Finance & Investment', 'New York', 'MandAsoft.com, created by Berkery Noyes, is a simple, powerful information service that provides mergers and acquisitions data via a hosted, graphically enhanced and searchable database.', '20', '100000'),
(45, 'Berkshire Hathaway', 'Finance & Investment', 'Nebraska', 'Berkshire Hathaway Inc. is a multinational conglomerate holding company that oversees and manages a number of subsidiary companies.', '20', '100000'),
(46, 'BetterLesson', 'Education', 'Massachusetts', 'BetterLesson was founded by a group of public schools teachers to connect educators and help them create, organize, and share their curricula.', '20', '100000'),
(47, 'BillGuard', 'Finance & Investment', 'New York', 'BillGuard is a personal finance security company harnessing the collective knowledge of millions of consumers to protect Americans from fraud and grey charges.', '20', '100000'),
(48, 'Bing', 'Data/Technology', 'Washington', 'Bing is a Microsoft decision (search) engine that attempts to understand the context behind the search, which Microsoft claims gives users better results.', '20', '100000'),
(49, 'Biovia', 'Scientific Research', 'California', 'Accelrys is a provider of scientific innovation lifecycle management software and services.', '20', '100000'),
(50, 'BizVizz', 'Governance', 'Wisconsin', 'BizVizz gives ordinary people corporate citizenship metrics by allowing them to see shareable tax data, jobs data, and other financial information hidden in regulatory documents.', '20', '100000'),
(51, 'BlackRock', 'Finance & Investment', 'Georgia', 'BlackRock is an asset management firm that works with individuals and institutions from all over the world.', '20', '100000'),
(52, 'Bloomberg', 'Finance & Investment', 'New York', 'Bloomberg is a global business and financial news information company, providing data, analytics, news and insight', '20', '100000'),
(53, 'Booz Allen Hamilton', 'Research & Consulting', 'Virginia', 'Booz Allen Hamilton provides management consulting, technology, and engineering services.', '20', '100000'),
(54, 'Boston Consulting Group', 'Research & Consulting', 'Massachusetts', 'BCG is a global management consulting firm that identifies opportunities and challenges for clients from the private, public, and nonprofit sectors.', '20', '100000'),
(55, 'Boundless', 'Geospatial/Mapping', 'New York', 'We support our customers with a variety of solutions including commercial open source maintenance, spatial IT infrastructure, and data management and analysis tools.', '20', '100000'),
(56, 'Bridgewater', 'Finance & Investment', 'Connecticut', 'Bridgewater Associates, LP is a global investment management firm, and advises certain private investment funds and institutional clients.', '20', '100000'),
(57, 'Brightscope', 'Finance & Investment', 'California', 'BrightScope is a financial information company that provides data through web-based software to drive better decision-making.', '20', '100000'),
(58, 'BuildFax', 'Business & Legal Services', 'North Carolina', 'BuildFax collects and organizes the data that helps companies solve critical property-related problems.', '20', '100000'),
(59, 'Buildingeye', 'Housing/Real Estate', 'California', 'Buildingeye takes local government data on building permits in different locations and visualizes this information on its map.', '20', '100000'),
(60, 'BuildZoom', 'Housing/Real Estate', 'California', 'BuildZoom takes the pain out of remodeling your home.', '20', '100000'),
(61, 'Business and Legal Resources', 'Business & Legal Services', 'Tennessee', 'Business & Legal Resources helps U.S. businesses simplify compliance with state and federal legal requirements.', '20', '100000'),
(62, 'Business Monitor International', 'Business & Legal Services', 'New York', 'Business Monitor provides trusted, independent analysis and forecasts on countries, industries and financial markets.', '20', '100000'),
(63, 'Calcbench, Inc.', 'Finance & Investment', 'New York', 'With collaborative and crowd-sourced components, Calcbench allows financial analysts, accountants, lawyers and investors to instantly access, work with and share SEC filing data.', '20', '100000'),
(64, 'Cambridge Information Group', 'Finance & Investment', 'New York', 'Cambridge Information Group (CIG) is a family owned management and investment firm, primarily focused on education, research and information services companies.', '20', '100000'),
(65, 'Cambridge Semantics', 'Data/Technology', 'Massachusetts', 'Cambridge Semantics provides the Anzo software suite, an open platform for building interactive Unified Information Access solutions and rapidly using data from diverse sources.', '20', '100000'),
(66, 'CAN Capital', 'Finance & Investment', 'New York', 'CAN Capital has served small businesses for more than a decade by developing and delivering working capital solutions.', '20', '100000'),
(67, 'Canon', 'Data/Technology', 'New York', 'Canon is working with Captricity to transform government data into a form whereby it can be tagged, shared, secured and mashed up. ', '20', '100000'),
(68, 'Capital Cube', 'Finance & Investment', 'New York', 'Developed over three years by finance and technology professionals, Capital Cube\'s platform converts data assets into narrative forms.', '20', '100000'),
(69, 'Cappex', 'Education', 'Illinois', 'Cappex offers solutions to colleges and universities that allow them to reach and connect with students.', '20', '100000'),
(70, 'Captricity', 'Data/Technology', 'California', 'Captricity is a tech startup that has launched a completely self-serve data entry web service which extracts structured information, including handwriting, from paper forms.', '20', '100000'),
(71, 'CareSet Systems', 'Data/Technology', 'Texas', 'Your entire healthcare system, hospital, or clinical network at a glance.', '20', '100000'),
(72, 'Careset.com', 'Data/Technology', 'Texas', 'Your entire healthcare system, hospital, or clinical network at a glance. ', '20', '100000'),
(73, 'CARFAX', 'Transportation', 'Virginia', 'CARFAX provides vehicle history information on used cars and maintains a vehicle history database available in North America.', '20', '100000'),
(74, 'Caspio', 'Data/Technology', 'California', 'Caspio offers a cloud-based platform that allows users to create forms, publish databases or create business web applications fast and without programming.', '20', '100000'),
(75, 'Castle Biosciences', 'Scientific Research', 'Texas', 'Castle Biosciences works with cancer institutions to license proprietary technologies and complete development and validation, making tests available to individuals afflicted with a rare', '20', '100000'),
(76, 'CB Insights', 'Finance & Investment', 'New York', 'CB Insights helps track the world\'s most promising private companies, their investors, their acquirers and the industries in which they compete.', '20', '100000'),
(77, 'Ceiba Solutions', 'Scientific Research', 'Massachusetts', 'Ceiba is a products and service company dedicated to unleashing the value of life science and healthcare data while reducing the cost to manage it.', '20', '100000'),
(78, 'Center for Responsive Politics', 'Research & Consulting', 'District of Columbia', 'The Center for Responsive Politics is a research institution tracking money in U.S. politics and its effect on elections and public policy.', '20', '100000'),
(79, 'Cerner', 'Healthcare', 'Missouri', 'Cerner\'s mission is to contribute to the systemic improvement of health care delivery and the health of communities.', '20', '100000'),
(80, 'Certara', 'Scientific Research', 'Missouri', 'Certara provides guidance spanning drug discovery and development – with modeling and analysis that include molecular modeling, prediction of drug-drug interactions, and clinical trial s', '20', '100000'),
(81, 'CGI', 'Business & Legal Services', 'New York', 'CGI provides end-to-end IT and business process services that facilitate the ongoing evolution of its clients\' businesses.', '20', '100000'),
(82, 'Charles River Associates', 'Research & Consulting', 'Massachusetts', 'Charles River Associates is a global consulting firm that offers economic, financial, and strategy expertise to major law firms, corporations, accounting firms, and governments.', '20', '100000'),
(83, 'Charles Schwab Corp.', 'Finance & Investment', 'California', 'Charles Schwab is an investment services firm that advocates for individual investors and the financial professionals who serve them.', '20', '100000'),
(84, 'Chemical Abstracts Service', 'Scientific Research', 'Ohio', 'Chemical Abstracts Service, a division of the American Chemical Society, finds, collects and organizes all publicly disclosed chemical substance information.', '20', '100000'),
(85, 'Child Care Desk', 'Lifestyle & Consumer', 'New York', 'Child Care Desk is a platform to help parents find child care and help government, non-profits and investors with data for investing in child care.', '20', '100000'),
(86, 'Chubb', 'Insurance', 'New Jersey', 'The Chubb Corporation, through its subsidiaries, provides property and casualty insurance to businesses and individuals.', '20', '100000'),
(87, 'Citigroup', 'Finance & Investment', 'New York', 'Citi provides consumers, corporations, governments and institutions with a broad range of financial services and products.', '20', '100000'),
(88, 'CityScan', 'Geospatial/Mapping', 'Illinois', 'CityScan provides cities and utilities a solution to manage their assets, ensure compliance with local ordinances, improve safety, and increase overall efficiency using mobile 3D-scannin', '20', '100000'),
(89, 'CitySourced', 'Governance', 'California', 'CitySourced is a real time, mobile civic engagement platform that lets residents easily interact with their government.', '20', '100000'),
(90, 'Civic Impulse LLC', 'Governance', 'District of Columbia', 'Civic Impulse builds tools that foster civic participation, civic education and government transparency, and works with governments on improving government data policy.', '20', '100000'),
(91, 'Civic Insight', 'Housing/Real Estate', 'California', 'Civic Insight makes official data about buildings easily findable and usable.', '20', '100000'),
(92, 'Civinomics', 'Governance', 'California', 'Civinomics is an online platform that provides a platform where people can civically engage on issues that matter to them.', '20', '100000'),
(93, 'Civis Analytics', 'Data/Technology', 'Illinois', 'Civis Analytics helps companies, non-profits, and campaigns leverage their data to develop smarter strategy, make better decisions, and build stronger, data-driven organizations.', '20', '100000'),
(94, 'Clean Power Finance', 'Energy', 'California', 'Clean Power Finance is an unbranded platform that connects the residential solar industry with capital markets.', '20', '100000'),
(95, 'ClearHealthCosts', 'Healthcare', 'New York', 'We\'re bringing transparency to the health-care marketplace by telling people what stuff costs.', '20', '100000'),
(96, 'ClearStory Data', 'Data/Technology', 'California', 'ClearStory Data makes it easy for business users to find, combine and interactively explore data across first-party and third-party sources.', '20', '100000'),
(97, 'Climate Corporation', 'Food & Agriculture', 'California', 'The Climate Corporation aims to help farmers around the world protect and improve their farming operations with uniquely powerful software and insurance products.', '20', '100000'),
(98, 'CliniCast', 'Healthcare', 'California', 'CliniCast builds comprehensive oncology solutions that enables providers to reduce the cost of managing cancer without compromising patient care.', '20', '100000'),
(99, 'Cloudmade', 'Geospatial/Mapping', 'California', 'CloudMade\'s platform makes geospatial data from hundreds of different sources accessible for different devices and automotive manufacturers, developers and enterprises.', '20', '100000'),
(100, 'Cloudspyre', 'Lifestyle & Consumer', 'Virginia', 'Cloudspyre is a software development company and creator of Gender Gap, an award-winning app developed with Department of Labor data on gender inequality in compensation.', '20', '100000'),
(101, 'Code for America', 'Governance', 'California', 'Code for America helps residents and governments harness technology to solve problems; a government truly by the people, for the people, in the 21st century.', '20', '100000'),
(102, 'Code-N', 'Data/Technology', 'California', 'Code-N is a cloud computing company that leverages concept-based technology to deliver software solutions to the BioPharma industry.', '20', '100000'),
(103, 'Collective IP', 'Data/Technology,', 'Colorado', 'Collective IP is a comprehensive and accurate business intelligence platform for discovering and analyzing technologies emerging from universities, companies and inventors.\r\n\r\n', '20', '100000'),
(104, 'College Abacus, an ECMC initiative', 'Finance & Investment', 'District of Columbia', 'An ECMC initiative, CollegeAbacus.org provides financial aid estimates to prospective college students.', '20', '100000'),
(105, 'College Board', 'Education', 'New York', 'The College Board seeks to ensure that every student in the US has access to a high-quality education and is prepared to succeed in college.', '20', '100000'),
(106, 'Communitech', 'Environment & Weather', 'Alaska', 'Test test test test test', '20', '100000'),
(107, 'Compared Care', 'Healthcare', 'Maryland', 'Compared Care provides a transparent healthcare marketplace, where users are able to comparison shop for their health services from the highest quality providers.\r\n\r\n', '20', '100000'),
(108, 'Compendia Bioscience Life Technologies', 'Scientific Research', 'Michigan', 'Compendia Bioscience provides data, products, and solutions to support pharma, diagnostics, and personalized medicine business applications in oncology.', '20', '100000'),
(109, 'Compliance and Risks', 'Business & Legal Services', 'California', 'Compliance & Risks provides companies with web-based solutions to get their products to market fully compliant with all applicable global and/or local legislations.', '20', '100000'),
(110, 'Computer Packages Inc', 'Data/Technology', 'Maryland', 'Computer Packages Inc. provides intellectual property management systems and patent annuity payment services.', '20', '100000'),
(111, 'CONNECT-DOT LLC.', 'Lifestyle & Consumer', 'New Jersey', 'CONNECT-DOT is a start-up established to empower governments and businesses to prepare enterprise-wide strategy and bring customer-centric or citizen-centric organizational culture.', '20', '100000'),
(112, 'ConnectEDU', 'Education', 'Massachusetts', 'ConnectEDU’s technology solutions empower students by informing their academic and career decisions.', '20', '100000'),
(113, 'Connotate', 'Data/Technology', 'New Jersey', 'Connotate provides Web data extraction and monitoring to help businesses make smarter decisions, reduce costs and grow revenue.', '20', '100000'),
(114, 'Construction Monitor LLC', 'Housing/Real Estate', 'Utah', 'Construction Monitor provides timely, detailed and accurate building permit information, using state of the art technologies to continuously improve its work processes.', '20', '100000'),
(115, 'Consumer Reports', 'Lifestyle & Consumer', 'New York', 'Consumer Reports is an independent, nonprofit organization whose mission is to work for consumer empowerment and a fair, just, and safe marketplace for all consumers.', '20', '100000'),
(116, 'CoolClimate', 'Environment & Weather', 'California', 'CoolClimate provides a complete, highest-resolution, peer-reviewed model of carbon footprints associated with transportation, foods, goods and services for households, businesses, organi', '20', '100000'),
(117, 'Copyright Clearance Center', 'Business & Legal Services', 'Massachusetts', 'Copyright Clearance Center (CCC) is a global rights broker for books, journals, blogs, movies and more.', '20', '100000'),
(118, 'CoreLogic', 'Housing/Real Estate', 'California', 'CoreLogic maintains one of the largest and most comprehensive real estate, mortgage-finance and property location databases in the country.', '20', '100000'),
(119, 'CostQuest', 'Business & Legal Services', 'Ohio', 'CostQuest provides global knowledge of costs, business functions, network modeling, telecommunications, economics, regulation, and applying the right data to make accurate business decis', '20', '100000'),
(120, 'Credit Karma', 'Finance & Investment', 'California', 'Credit Karma is a web-based credit and financial management service that helps more than 20 million consumers track their credit and finances for free. ', '20', '100000'),
(121, 'Credit Sesame', 'Finance & Investment', 'California', 'Credit Sesame is a free tool that provides a free credit score, credit monitoring, and a way to save money on loans and credit.', '20', '100000'),
(122, 'CrowdANALYTIX', 'Data/Technology', 'California', 'CrowdANALYTIX is an on-demand, crowd-sourced service providing data science expertise to analytics managers and their teams in enterprises and professional services firms. \r\n\r\n', '20', '100000'),
(123, 'Dabo Health', 'Healthcare', 'California', 'Dabo is a healthcare company dedicated to saving lives through improving quality of care through metrics.', '20', '100000'),
(124, 'DataLogix', 'Data/Technology', 'Colorado', 'Datalogix provides marketing infrastructure for the data-driven era by connecting digital advertising to offline sales.', '20', '100000'),
(125, 'DataMade', 'Governance', 'Illinois', 'Datamade deploys civic apps, builds custom visualizations, and trains people to work with open data.', '20', '100000'),
(126, 'DataMarket', 'Data/Technology', 'Massachusetts', 'DataMarket brings complex and diverse data together so you can search, compare, visualize and share it in one place and one format.', '20', '100000'),
(127, 'Datamyne', 'Data/Technology', 'Florida', 'Datamyne provides global import/export data to help take business across borders.', '20', '100000'),
(128, 'DataWeave', 'Data/Technology', 'New York', 'PriceWeave is a eCommerce Price Intelligence product that lets eCommerce portals monitor price changes to products across the Web in a easy manner.', '20', '100000'),
(129, 'Deloitte', 'Research & Consulting', 'New York', 'Deloitte works in four areas — audit, financial advisory, tax and consulting — and combines the talents of those groups to address clients’ needs.', '20', '100000'),
(131, 'Department of Better Technology', 'Governance', 'Georgia', 'We make great software for government.', '20', '100000');

-- --------------------------------------------------------

--
-- Table structure for table `completed`
--

CREATE TABLE `completed` (
  `cid` int(10) NOT NULL,
  `remaining` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `completed`
--

INSERT INTO `completed` (`cid`, `remaining`) VALUES
(1, 100000),
(2, 100000),
(3, 100000),
(4, 100000),
(5, 100000),
(6, 100000),
(7, 100000),
(8, 100000),
(9, 100000),
(10, 100000),
(11, 100000),
(12, 100000),
(13, 100000),
(14, 100000),
(15, 100000),
(16, 100000),
(17, 100000),
(18, 100000),
(19, 100000),
(20, 100000),
(21, 100000),
(22, 100000),
(23, 100000),
(24, 100000),
(25, 100000),
(26, 100000),
(27, 100000),
(28, 100000),
(29, 100000),
(30, 100000),
(31, 100000),
(32, 100000),
(33, 100000),
(34, 100000),
(35, 100000),
(36, 100000),
(37, 100000),
(38, 100000),
(39, 100000),
(40, 100000),
(41, 100000),
(42, 100000),
(43, 100000),
(44, 100000),
(45, 100000),
(46, 100000),
(47, 100000),
(48, 100000),
(49, 100000),
(50, 100000),
(51, 100000),
(52, 100000),
(53, 100000),
(54, 100000),
(55, 100000),
(56, 100000),
(57, 100000),
(58, 100000),
(59, 100000),
(60, 100000),
(61, 100000),
(62, 100000),
(63, 100000),
(64, 100000),
(65, 100000),
(66, 100000),
(67, 100000),
(68, 100000),
(69, 100000),
(70, 100000),
(71, 100000),
(72, 100000),
(73, 100000),
(74, 100000),
(75, 100000),
(76, 100000),
(77, 100000),
(78, 100000),
(79, 100000),
(80, 100000),
(81, 100000),
(82, 100000),
(83, 100000),
(84, 100000),
(85, 100000),
(86, 100000),
(87, 100000),
(88, 100000),
(89, 100000),
(90, 100000),
(91, 100000),
(92, 100000),
(93, 100000),
(94, 100000),
(95, 100000),
(96, 100000),
(97, 100000),
(98, 100000),
(99, 100000),
(100, 100000),
(101, 100000),
(102, 100000),
(103, 100000),
(104, 100000),
(105, 100000),
(106, 100000),
(107, 100000),
(108, 100000),
(109, 100000),
(110, 100000),
(111, 100000),
(112, 100000),
(113, 100000),
(114, 100000),
(115, 100000),
(116, 100000),
(117, 100000),
(118, 100000),
(119, 100000),
(120, 100000),
(121, 100000),
(122, 100000),
(123, 100000),
(124, 100000),
(125, 100000),
(126, 100000),
(127, 100000),
(128, 100000),
(129, 100000),
(130, 100000);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `cID` int(11) NOT NULL,
  `image` varchar(260) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`cID`, `image`) VALUES
(1, 'http://logo.clearbit.com/3roundstonesinc.com'),
(2, 'http://logo.clearbit.com/48factoringinc.com'),
(3, 'http://logo.clearbit.com/5psolutions.com'),
(4, 'http://logo.clearbit.com/abtassociates.com'),
(5, 'http://logo.clearbit.com/accela.com'),
(6, 'http://logo.clearbit.com/accenture.com'),
(7, 'http://logo.clearbit.com/accuweather.com'),
(8, 'http://logo.clearbit.com/acxiom.com'),
(9, 'http://logo.clearbit.com/adaptive.com'),
(10, 'http://logo.clearbit.com/adobedigitalgovernment.com'),
(11, 'http://logo.clearbit.com/aidin.com'),
(12, 'http://logo.clearbit.com/alarmcom.com'),
(13, 'http://logo.clearbit.com/allianz.com'),
(14, 'http://logo.clearbit.com/alliedvanlines.com'),
(15, 'http://logo.clearbit.com/allstateinsurancegroup.com'),
(16, 'http://logo.clearbit.com/alltuition.com'),
(17, 'http://logo.clearbit.com/altova.com'),
(18, 'http://logo.clearbit.com/amazonwebservices.com'),
(19, 'http://logo.clearbit.com/americanredballmovers.com'),
(20, 'http://logo.clearbit.com/amidatechnologysolutions.com'),
(21, 'http://logo.clearbit.com/analytica.com'),
(22, 'http://logo.clearbit.com/apextechllc.com'),
(23, 'http://logo.clearbit.com/appallicious.com'),
(24, 'http://logo.clearbit.com/aquicore.com'),
(25, 'http://logo.clearbit.com/archimedesinc.com'),
(26, 'http://logo.clearbit.com/areavibesinc.com'),
(27, 'http://logo.clearbit.com/arpinvanlines.com'),
(28, 'http://logo.clearbit.com/arrivelabs.com'),
(29, 'http://logo.clearbit.com/ascpartners.com'),
(30, 'http://logo.clearbit.com/asset4.com'),
(31, 'http://logo.clearbit.com/atlasvanlines.com'),
(32, 'http://logo.clearbit.com/atsite.com'),
(33, 'http://logo.clearbit.com/auntberthainc.com'),
(34, 'http://logo.clearbit.com/aureussciences.com'),
(35, 'http://logo.clearbit.com/autogridsystems.com'),
(36, 'http://logo.clearbit.com/avalara.com'),
(37, 'http://logo.clearbit.com/avvo.com'),
(38, 'http://logo.clearbit.com/ayasdi.com'),
(39, 'http://logo.clearbit.com/azavea.com'),
(40, 'http://logo.clearbit.com/balefireglobal.com'),
(41, 'http://logo.clearbit.com/barchart.com'),
(42, 'http://logo.clearbit.com/beinformed.com'),
(43, 'http://logo.clearbit.com/bekins.com'),
(44, 'http://logo.clearbit.com/berkerynoyesmandasoft.com'),
(45, 'http://logo.clearbit.com/berkshirehathaway.com'),
(46, 'http://logo.clearbit.com/betterlesson.com'),
(47, 'http://logo.clearbit.com/billguard.com'),
(48, 'http://logo.clearbit.com/bing.com'),
(49, 'http://logo.clearbit.com/biovia.com'),
(50, 'http://logo.clearbit.com/bizvizz.com'),
(51, 'http://logo.clearbit.com/blackrock.com'),
(52, 'http://logo.clearbit.com/bloomberg.com'),
(53, 'http://logo.clearbit.com/boozallenhamilton.com'),
(54, 'http://logo.clearbit.com/bostonconsultinggroup.com'),
(55, 'http://logo.clearbit.com/boundless.com'),
(56, 'http://logo.clearbit.com/bridgewater.com'),
(57, 'http://logo.clearbit.com/brightscope.com'),
(58, 'http://logo.clearbit.com/buildfax.com'),
(59, 'http://logo.clearbit.com/buildingeye.com'),
(60, 'http://logo.clearbit.com/buildzoom.com'),
(61, 'http://logo.clearbit.com/businessandlegalresources.com'),
(62, 'http://logo.clearbit.com/businessmonitorinternational.com'),
(63, 'http://logo.clearbit.com/calcbenchinc.com'),
(64, 'http://logo.clearbit.com/cambridgeinformationgroup.com'),
(65, 'http://logo.clearbit.com/cambridgesemantics.com'),
(66, 'http://logo.clearbit.com/cancapital.com'),
(67, 'http://logo.clearbit.com/canon.com'),
(68, 'http://logo.clearbit.com/capitalcube.com'),
(69, 'http://logo.clearbit.com/cappex.com'),
(70, 'http://logo.clearbit.com/captricity.com'),
(71, 'http://logo.clearbit.com/caresetsystems.com'),
(72, 'http://logo.clearbit.com/caresetcom.com'),
(73, 'http://logo.clearbit.com/carfax.com'),
(74, 'http://logo.clearbit.com/caspio.com'),
(75, 'http://logo.clearbit.com/castlebiosciences.com'),
(76, 'http://logo.clearbit.com/cbinsights.com'),
(77, 'http://logo.clearbit.com/ceibasolutions.com'),
(78, 'http://logo.clearbit.com/centerforresponsivepolitics.com'),
(79, 'http://logo.clearbit.com/cerner.com'),
(80, 'http://logo.clearbit.com/certara.com'),
(81, 'http://logo.clearbit.com/cgi.com'),
(82, 'http://logo.clearbit.com/charlesriverassociates.com'),
(83, 'http://logo.clearbit.com/charlesschwabcorp.com'),
(84, 'http://logo.clearbit.com/chemicalabstractsservice.com'),
(85, 'http://logo.clearbit.com/childcaredesk.com'),
(86, 'http://logo.clearbit.com/chubb.com'),
(87, 'http://logo.clearbit.com/citigroup.com'),
(88, 'http://logo.clearbit.com/cityscan.com'),
(89, 'http://logo.clearbit.com/citysourced.com'),
(90, 'http://logo.clearbit.com/civicimpulsellc.com'),
(91, 'http://logo.clearbit.com/civicinsight.com'),
(92, 'http://logo.clearbit.com/civinomics.com'),
(93, 'http://logo.clearbit.com/civisanalytics.com'),
(94, 'http://logo.clearbit.com/cleanpowerfinance.com'),
(95, 'http://logo.clearbit.com/clearhealthcosts.com'),
(96, 'http://logo.clearbit.com/clearstorydata.com'),
(97, 'http://logo.clearbit.com/climatecorporation.com'),
(98, 'http://logo.clearbit.com/clinicast.com'),
(99, 'http://logo.clearbit.com/cloudmade.com'),
(100, 'http://logo.clearbit.com/cloudspyre.com'),
(101, 'http://logo.clearbit.com/codeforamerica.com'),
(102, 'http://logo.clearbit.com/code-n.com'),
(103, 'http://logo.clearbit.com/collectiveip.com'),
(104, 'http://logo.clearbit.com/collegeabacusanecmcinitiative.com'),
(105, 'http://logo.clearbit.com/collegeboard.com'),
(106, 'http://logo.clearbit.com/communitech.com'),
(107, 'http://logo.clearbit.com/comparedcare.com'),
(108, 'http://logo.clearbit.com/compendiabiosciencelifetechnologies.com'),
(109, 'http://logo.clearbit.com/complianceandrisks.com'),
(110, 'http://logo.clearbit.com/computerpackagesinc.com'),
(111, 'http://logo.clearbit.com/connect-dotllc.com'),
(112, 'http://logo.clearbit.com/connectedu.com'),
(113, 'http://logo.clearbit.com/connotate.com'),
(114, 'http://logo.clearbit.com/constructionmonitorllc.com'),
(115, 'http://logo.clearbit.com/consumerreports.com'),
(116, 'http://logo.clearbit.com/coolclimate.com'),
(117, 'http://logo.clearbit.com/copyrightclearancecenter.com'),
(118, 'http://logo.clearbit.com/corelogic.com'),
(119, 'http://logo.clearbit.com/costquest.com'),
(120, 'http://logo.clearbit.com/creditkarma.com'),
(121, 'http://logo.clearbit.com/creditsesame.com'),
(122, 'http://logo.clearbit.com/crowdanalytix.com'),
(123, 'http://logo.clearbit.com/dabohealth.com'),
(124, 'http://logo.clearbit.com/datalogix.com'),
(125, 'http://logo.clearbit.com/datamade.com'),
(126, 'http://logo.clearbit.com/datamarket.com'),
(127, 'http://logo.clearbit.com/datamyne.com'),
(128, 'http://logo.clearbit.com/dataweave.com'),
(129, 'http://logo.clearbit.com/deloitte.com'),
(130, 'http://logo.clearbit.com/demystdata.com');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `uID` int(10) NOT NULL,
  `cid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`uID`, `cid`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `stakes`
--

CREATE TABLE `stakes` (
  `uID` int(10) NOT NULL,
  `cID` int(10) NOT NULL,
  `money` int(10) NOT NULL,
  `percentage` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stakes`
--

INSERT INTO `stakes` (`uID`, `cID`, `money`, `percentage`) VALUES
(1, 5, 10000, 2),
(1, 6, 50000, 10),
(1, 7, 10000, 2),
(1, 11, 20000, 4);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'avimadarchod', 'avi@nyu.edu', '3fca379b3f0e322b7b7967bfcfb948ad'),
(2, 'elias', 'ea1699@nyu.edu', '29a2b2e1849474d94d12051309c7b4d7');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `uID` int(10) NOT NULL,
  `cid` int(10) NOT NULL,
  `vote` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`uID`, `cid`, `vote`) VALUES
(1, 6, 2),
(1, 7, 1),
(1, 8, 1),
(1, 12, 3),
(1, 17, 9),
(1, 21, 6),
(1, 23, 8),
(2, 0, 0),
(2, 6, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `completed`
--
ALTER TABLE `completed`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`cID`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`uID`,`cid`);

--
-- Indexes for table `stakes`
--
ALTER TABLE `stakes`
  ADD PRIMARY KEY (`uID`,`cID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`uID`,`cid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
