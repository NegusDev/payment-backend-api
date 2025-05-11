-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 11, 2025 at 11:37 AM
-- Server version: 10.6.21-MariaDB-0ubuntu0.22.04.2
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `payment_backend_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
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

--
-- Dumping data for table `failed_jobs`
--

INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(1, '62f5c352-4b86-4e5a-b855-e3f596e0ba63', 'database', 'default', '{\"uuid\":\"62f5c352-4b86-4e5a-b855-e3f596e0ba63\",\"displayName\":\"App\\\\Jobs\\\\UpdateTransactionStatus\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\UpdateTransactionStatus\",\"command\":\"O:32:\\\"App\\\\Jobs\\\\UpdateTransactionStatus\\\":2:{s:23:\\\"\\u0000*\\u0000transactionReference\\\";s:14:\\\"TRX-1746817172\\\";s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2025-05-09 18:59:43.435095\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}\"},\"createdAt\":1746817173,\"delay\":10}', 'Illuminate\\Queue\\TimeoutExceededException: App\\Jobs\\UpdateTransactionStatus has timed out. in /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Queue/TimeoutExceededException.php:15\nStack trace:\n#0 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(804): Illuminate\\Queue\\TimeoutExceededException::forJob()\n#1 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(218): Illuminate\\Queue\\Worker->timeoutExceededException()\n#2 /var/www/html/payment-backend-api/app/Jobs/UpdateTransactionStatus.php(35): Illuminate\\Queue\\Worker->Illuminate\\Queue\\{closure}()\n#3 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): App\\Jobs\\UpdateTransactionStatus->handle()\n#4 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Container/Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#5 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure()\n#6 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#7 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Container/Container.php(754): Illuminate\\Container\\BoundMethod::call()\n#8 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(132): Illuminate\\Container\\Container->call()\n#9 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(169): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#10 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(126): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#11 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(136): Illuminate\\Pipeline\\Pipeline->then()\n#12 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(125): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#13 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(169): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#14 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(126): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#15 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(120): Illuminate\\Pipeline\\Pipeline->then()\n#16 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(68): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#17 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call()\n#18 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(441): Illuminate\\Queue\\Jobs\\Job->fire()\n#19 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(391): Illuminate\\Queue\\Worker->process()\n#20 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(177): Illuminate\\Queue\\Worker->runJob()\n#21 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(148): Illuminate\\Queue\\Worker->daemon()\n#22 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(131): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#23 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#24 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Container/Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#25 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure()\n#26 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#27 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Container/Container.php(754): Illuminate\\Container\\BoundMethod::call()\n#28 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Console/Command.php(211): Illuminate\\Container\\Container->call()\n#29 /var/www/html/payment-backend-api/vendor/symfony/console/Command/Command.php(279): Illuminate\\Console\\Command->execute()\n#30 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Console/Command.php(180): Symfony\\Component\\Console\\Command\\Command->run()\n#31 /var/www/html/payment-backend-api/vendor/symfony/console/Application.php(1094): Illuminate\\Console\\Command->run()\n#32 /var/www/html/payment-backend-api/vendor/symfony/console/Application.php(342): Symfony\\Component\\Console\\Application->doRunCommand()\n#33 /var/www/html/payment-backend-api/vendor/symfony/console/Application.php(193): Symfony\\Component\\Console\\Application->doRun()\n#34 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(197): Symfony\\Component\\Console\\Application->run()\n#35 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Foundation/Application.php(1234): Illuminate\\Foundation\\Console\\Kernel->handle()\n#36 /var/www/html/payment-backend-api/artisan(16): Illuminate\\Foundation\\Application->handleCommand()\n#37 {main}', '2025-05-09 16:00:48'),
(2, 'd502a61a-d185-41ce-a73b-7e5bfd546727', 'database', 'default', '{\"uuid\":\"d502a61a-d185-41ce-a73b-7e5bfd546727\",\"displayName\":\"App\\\\Jobs\\\\UpdateTransactionStatus\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\UpdateTransactionStatus\",\"command\":\"O:32:\\\"App\\\\Jobs\\\\UpdateTransactionStatus\\\":2:{s:23:\\\"\\u0000*\\u0000transactionReference\\\";s:14:\\\"TRX-1746820233\\\";s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2025-05-09 19:50:43.697005\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}\"},\"createdAt\":1746820233,\"delay\":10}', 'Illuminate\\Queue\\TimeoutExceededException: App\\Jobs\\UpdateTransactionStatus has timed out. in /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Queue/TimeoutExceededException.php:15\nStack trace:\n#0 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(804): Illuminate\\Queue\\TimeoutExceededException::forJob()\n#1 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(218): Illuminate\\Queue\\Worker->timeoutExceededException()\n#2 /var/www/html/payment-backend-api/app/Jobs/UpdateTransactionStatus.php(38): Illuminate\\Queue\\Worker->Illuminate\\Queue\\{closure}()\n#3 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): App\\Jobs\\UpdateTransactionStatus->handle()\n#4 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Container/Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#5 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure()\n#6 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#7 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Container/Container.php(754): Illuminate\\Container\\BoundMethod::call()\n#8 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(132): Illuminate\\Container\\Container->call()\n#9 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(169): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#10 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(126): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#11 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(136): Illuminate\\Pipeline\\Pipeline->then()\n#12 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(125): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#13 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(169): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#14 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(126): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#15 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(120): Illuminate\\Pipeline\\Pipeline->then()\n#16 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(68): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#17 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call()\n#18 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(441): Illuminate\\Queue\\Jobs\\Job->fire()\n#19 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(391): Illuminate\\Queue\\Worker->process()\n#20 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(177): Illuminate\\Queue\\Worker->runJob()\n#21 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(148): Illuminate\\Queue\\Worker->daemon()\n#22 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(131): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#23 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#24 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Container/Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#25 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure()\n#26 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#27 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Container/Container.php(754): Illuminate\\Container\\BoundMethod::call()\n#28 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Console/Command.php(211): Illuminate\\Container\\Container->call()\n#29 /var/www/html/payment-backend-api/vendor/symfony/console/Command/Command.php(279): Illuminate\\Console\\Command->execute()\n#30 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Console/Command.php(180): Symfony\\Component\\Console\\Command\\Command->run()\n#31 /var/www/html/payment-backend-api/vendor/symfony/console/Application.php(1094): Illuminate\\Console\\Command->run()\n#32 /var/www/html/payment-backend-api/vendor/symfony/console/Application.php(342): Symfony\\Component\\Console\\Application->doRunCommand()\n#33 /var/www/html/payment-backend-api/vendor/symfony/console/Application.php(193): Symfony\\Component\\Console\\Application->doRun()\n#34 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(197): Symfony\\Component\\Console\\Application->run()\n#35 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Foundation/Application.php(1234): Illuminate\\Foundation\\Console\\Kernel->handle()\n#36 /var/www/html/payment-backend-api/artisan(16): Illuminate\\Foundation\\Application->handleCommand()\n#37 {main}', '2025-05-09 16:51:45'),
(3, '22cf0d8c-7c17-4ed2-b302-2a178c4e0997', 'database', 'default', '{\"uuid\":\"22cf0d8c-7c17-4ed2-b302-2a178c4e0997\",\"displayName\":\"App\\\\Jobs\\\\UpdateTransactionStatus\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\UpdateTransactionStatus\",\"command\":\"O:32:\\\"App\\\\Jobs\\\\UpdateTransactionStatus\\\":2:{s:20:\\\"transactionReference\\\";s:14:\\\"TRX-1746823160\\\";s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2025-05-09 20:39:30.925496\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}\"},\"createdAt\":1746823160,\"delay\":10}', 'Illuminate\\Queue\\TimeoutExceededException: App\\Jobs\\UpdateTransactionStatus has timed out. in /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Queue/TimeoutExceededException.php:15\nStack trace:\n#0 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(804): Illuminate\\Queue\\TimeoutExceededException::forJob()\n#1 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(218): Illuminate\\Queue\\Worker->timeoutExceededException()\n#2 /var/www/html/payment-backend-api/app/Jobs/UpdateTransactionStatus.php(36): Illuminate\\Queue\\Worker->Illuminate\\Queue\\{closure}()\n#3 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): App\\Jobs\\UpdateTransactionStatus->handle()\n#4 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Container/Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#5 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure()\n#6 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#7 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Container/Container.php(754): Illuminate\\Container\\BoundMethod::call()\n#8 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(132): Illuminate\\Container\\Container->call()\n#9 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(169): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#10 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(126): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#11 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(136): Illuminate\\Pipeline\\Pipeline->then()\n#12 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(125): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#13 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(169): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#14 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(126): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#15 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(120): Illuminate\\Pipeline\\Pipeline->then()\n#16 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(68): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#17 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call()\n#18 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(441): Illuminate\\Queue\\Jobs\\Job->fire()\n#19 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(391): Illuminate\\Queue\\Worker->process()\n#20 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(177): Illuminate\\Queue\\Worker->runJob()\n#21 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(148): Illuminate\\Queue\\Worker->daemon()\n#22 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(131): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#23 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#24 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Container/Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#25 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure()\n#26 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#27 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Container/Container.php(754): Illuminate\\Container\\BoundMethod::call()\n#28 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Console/Command.php(211): Illuminate\\Container\\Container->call()\n#29 /var/www/html/payment-backend-api/vendor/symfony/console/Command/Command.php(279): Illuminate\\Console\\Command->execute()\n#30 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Console/Command.php(180): Symfony\\Component\\Console\\Command\\Command->run()\n#31 /var/www/html/payment-backend-api/vendor/symfony/console/Application.php(1094): Illuminate\\Console\\Command->run()\n#32 /var/www/html/payment-backend-api/vendor/symfony/console/Application.php(342): Symfony\\Component\\Console\\Application->doRunCommand()\n#33 /var/www/html/payment-backend-api/vendor/symfony/console/Application.php(193): Symfony\\Component\\Console\\Application->doRun()\n#34 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(197): Symfony\\Component\\Console\\Application->run()\n#35 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Foundation/Application.php(1234): Illuminate\\Foundation\\Console\\Kernel->handle()\n#36 /var/www/html/payment-backend-api/artisan(16): Illuminate\\Foundation\\Application->handleCommand()\n#37 {main}', '2025-05-09 17:40:31'),
(4, '626f20ae-fb8d-42f5-bd07-50614795e9fe', 'database', 'default', '{\"uuid\":\"626f20ae-fb8d-42f5-bd07-50614795e9fe\",\"displayName\":\"App\\\\Jobs\\\\UpdateTransactionStatus\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\UpdateTransactionStatus\",\"command\":\"O:32:\\\"App\\\\Jobs\\\\UpdateTransactionStatus\\\":2:{s:20:\\\"transactionReference\\\";s:14:\\\"TRX-1746823553\\\";s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2025-05-09 20:46:03.948637\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}\"},\"createdAt\":1746823554,\"delay\":9}', 'Illuminate\\Queue\\TimeoutExceededException: App\\Jobs\\UpdateTransactionStatus has timed out. in /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Queue/TimeoutExceededException.php:15\nStack trace:\n#0 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(804): Illuminate\\Queue\\TimeoutExceededException::forJob()\n#1 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(218): Illuminate\\Queue\\Worker->timeoutExceededException()\n#2 /var/www/html/payment-backend-api/app/Jobs/UpdateTransactionStatus.php(36): Illuminate\\Queue\\Worker->Illuminate\\Queue\\{closure}()\n#3 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): App\\Jobs\\UpdateTransactionStatus->handle()\n#4 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Container/Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#5 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure()\n#6 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#7 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Container/Container.php(754): Illuminate\\Container\\BoundMethod::call()\n#8 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(132): Illuminate\\Container\\Container->call()\n#9 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(169): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#10 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(126): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#11 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(136): Illuminate\\Pipeline\\Pipeline->then()\n#12 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(125): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#13 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(169): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#14 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(126): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#15 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(120): Illuminate\\Pipeline\\Pipeline->then()\n#16 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(68): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#17 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call()\n#18 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(441): Illuminate\\Queue\\Jobs\\Job->fire()\n#19 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(391): Illuminate\\Queue\\Worker->process()\n#20 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(177): Illuminate\\Queue\\Worker->runJob()\n#21 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(148): Illuminate\\Queue\\Worker->daemon()\n#22 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(131): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#23 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#24 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Container/Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#25 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure()\n#26 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#27 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Container/Container.php(754): Illuminate\\Container\\BoundMethod::call()\n#28 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Console/Command.php(211): Illuminate\\Container\\Container->call()\n#29 /var/www/html/payment-backend-api/vendor/symfony/console/Command/Command.php(279): Illuminate\\Console\\Command->execute()\n#30 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Console/Command.php(180): Symfony\\Component\\Console\\Command\\Command->run()\n#31 /var/www/html/payment-backend-api/vendor/symfony/console/Application.php(1094): Illuminate\\Console\\Command->run()\n#32 /var/www/html/payment-backend-api/vendor/symfony/console/Application.php(342): Symfony\\Component\\Console\\Application->doRunCommand()\n#33 /var/www/html/payment-backend-api/vendor/symfony/console/Application.php(193): Symfony\\Component\\Console\\Application->doRun()\n#34 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(197): Symfony\\Component\\Console\\Application->run()\n#35 /var/www/html/payment-backend-api/vendor/laravel/framework/src/Illuminate/Foundation/Application.php(1234): Illuminate\\Foundation\\Console\\Kernel->handle()\n#36 /var/www/html/payment-backend-api/artisan(16): Illuminate\\Foundation\\Application->handleCommand()\n#37 {main}', '2025-05-09 17:47:03');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_05_09_144443_create_personal_access_tokens_table', 1),
(5, '2025_05_09_151029_create_payment_transactions_table', 2),
(6, '2025_05_09_154626_add_status_column_in_payment_transactions_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_transactions`
--

CREATE TABLE `payment_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reference_number` char(36) NOT NULL,
  `payer` bigint(20) UNSIGNED NOT NULL,
  `payee` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(8,2) UNSIGNED NOT NULL,
  `currency` varchar(3) NOT NULL DEFAULT 'UGX',
  `status` enum('PENDING','SUCCESSFUL','FAILED') NOT NULL DEFAULT 'PENDING',
  `notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_transactions`
--

INSERT INTO `payment_transactions` (`id`, `reference_number`, `payer`, `payee`, `amount`, `currency`, `status`, `notes`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'TRX-1746817172', 1234567891, 1234567890, '32.00', 'UGX', 'PENDING', NULL, '2025-05-09 15:59:32', '2025-05-09 15:59:32', NULL),
(2, 'TRX-1746817187', 1234567891, 1234567890, '32.00', 'UGX', 'SUCCESSFUL', NULL, '2025-05-09 15:59:47', '2025-05-09 16:04:28', NULL),
(3, 'TRX-1746817442', 1234567891, 1234567890, '32.00', 'UGX', 'SUCCESSFUL', NULL, '2025-05-09 16:04:02', '2025-05-09 16:04:38', NULL),
(4, 'TRX-1746819103', 1234567891, 1234567890, '32.00', 'UGX', 'SUCCESSFUL', NULL, '2025-05-09 16:31:44', '2025-05-09 16:32:07', NULL),
(5, 'TRX-1746819253', 1234567891, 1234567890, '32.00', 'UGX', 'SUCCESSFUL', NULL, '2025-05-09 16:34:13', '2025-05-09 16:34:33', NULL),
(6, 'TRX-1746819559', 1234567891, 1234567890, '32.00', 'UGX', 'SUCCESSFUL', NULL, '2025-05-09 16:39:19', '2025-05-09 16:39:40', NULL),
(7, 'TRX-1746819692', 1234567891, 1234567890, '32.00', 'UGX', 'SUCCESSFUL', NULL, '2025-05-09 16:41:32', '2025-05-09 16:41:54', NULL),
(8, 'TRX-1746819782', 1234567891, 1234567890, '32.00', 'UGX', 'SUCCESSFUL', NULL, '2025-05-09 16:43:02', '2025-05-09 16:43:23', NULL),
(9, 'TRX-1746819834', 1234567891, 1234567890, '32.00', 'UGX', 'SUCCESSFUL', NULL, '2025-05-09 16:43:54', '2025-05-09 16:44:15', NULL),
(10, 'TRX-1746819922', 1234567891, 1234567890, '32.00', 'UGX', 'PENDING', NULL, '2025-05-09 16:45:22', '2025-05-09 16:45:22', NULL),
(11, 'TRX-1746820233', 1234567891, 1234567890, '32.00', 'UGX', 'PENDING', NULL, '2025-05-09 16:50:33', '2025-05-09 16:50:33', NULL),
(12, 'TRX-1746821085', 1234567891, 1234567890, '32.00', 'UGX', 'PENDING', NULL, '2025-05-09 17:04:45', '2025-05-09 17:04:45', NULL),
(13, 'TRX-1746822004', 1234567891, 1234567890, '32.00', 'UGX', 'PENDING', NULL, '2025-05-09 17:20:04', '2025-05-09 17:20:04', NULL),
(14, 'TRX-1746822446', 1234567891, 1234567890, '32.00', 'UGX', 'PENDING', NULL, '2025-05-09 17:27:26', '2025-05-09 17:27:26', NULL),
(15, 'TRX-1746822577', 1234567891, 1234567890, '32.00', 'UGX', 'PENDING', NULL, '2025-05-09 17:29:37', '2025-05-09 17:29:37', NULL),
(16, 'TRX-1746822741', 1234567891, 1234567890, '32.00', 'UGX', 'PENDING', NULL, '2025-05-09 17:32:21', '2025-05-09 17:32:21', NULL),
(17, 'TRX-1746823017', 1234567891, 1234567890, '32.00', 'UGX', 'PENDING', NULL, '2025-05-09 17:36:57', '2025-05-09 17:36:57', NULL),
(18, 'TRX-1746823160', 1234567891, 1234567890, '32.00', 'UGX', 'FAILED', NULL, '2025-05-09 17:39:20', '2025-05-09 17:40:31', NULL),
(19, 'TRX-1746823553', 1234567891, 1234567890, '32.00', 'UGX', 'FAILED', NULL, '2025-05-09 17:45:53', '2025-05-09 17:47:03', NULL),
(20, 'TRX-1746876278', 1234567890, 1234567891, '200.00', 'UGX', 'SUCCESSFUL', NULL, '2025-05-10 08:24:39', '2025-05-10 12:37:35', NULL),
(21, 'TRX-1746876344', 1234567890, 1234567891, '200.00', 'UGX', 'SUCCESSFUL', NULL, '2025-05-10 08:25:44', '2025-05-10 12:38:05', NULL),
(22, 'TRX-1746876685', 1234567890, 1234567891, '200.00', 'UGX', 'SUCCESSFUL', NULL, '2025-05-10 08:31:25', '2025-05-10 12:38:32', NULL),
(23, 'TRX-1746876715', 1234567890, 1234567891, '200.00', 'UGX', 'SUCCESSFUL', NULL, '2025-05-10 08:31:55', '2025-05-10 12:38:35', NULL),
(24, 'TRX-1746876731', 1234567890, 1234567891, '200.00', 'UGX', 'SUCCESSFUL', NULL, '2025-05-10 08:32:11', '2025-05-10 12:39:02', NULL),
(25, 'TRX-1746876747', 1234567890, 1234567891, '200.00', 'UGX', 'SUCCESSFUL', NULL, '2025-05-10 08:32:27', '2025-05-10 12:39:05', NULL),
(26, 'TRX-1746876764', 1234567890, 1234567892, '200.00', 'UGX', 'SUCCESSFUL', NULL, '2025-05-10 08:32:44', '2025-05-10 12:39:32', NULL),
(27, 'TRX-1746884196', 1234567891, 1234567896, '100.00', 'USD', 'SUCCESSFUL', 'Daily allowance', '2025-05-10 10:36:36', '2025-05-10 12:39:32', NULL),
(28, 'TRX-1746889167', 1234567891, 1234567890, '100.00', 'GBP', 'SUCCESSFUL', 'Weekly allowance', '2025-05-10 11:59:27', '2025-05-10 12:39:35', NULL),
(29, 'TRX-1746889882', 1754503654, 1234567890, '230.00', 'EUR', 'SUCCESSFUL', 'Weekend allowance', '2025-05-10 12:11:22', '2025-05-10 12:40:02', NULL),
(30, 'TRX-1746893990', 1234567891, 1234567890, '32.00', 'UGX', 'SUCCESSFUL', NULL, '2025-05-10 13:19:50', '2025-05-10 13:20:31', NULL);

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

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payment_transactions`
--
ALTER TABLE `payment_transactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payment_transactions_reference_number_unique` (`reference_number`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payment_transactions`
--
ALTER TABLE `payment_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
