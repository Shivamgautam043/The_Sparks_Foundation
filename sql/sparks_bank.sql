

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


-- Database: `sparks_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE transaction (
  sno int primary key AUTO_INCREMENT,
  sender text NOT NULL,
  receiver text NOT NULL,
  balance int(8) NOT NULL,
  datetime datetime NOT NULL DEFAULT current_timestamp()
);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE users (
  id int(3) NOT NULL,
  name text NOT NULL,
  email varchar(30) NOT NULL,
  balance int(8) NOT NULL
);

--;ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO users (id, name, email, balance) VALUES
(1, 'Shivam', 'Shivam@gmail.com', 50000),
(2, 'Umang', 'Umang@gmail.com', 30000),
(3, 'Mohit', 'Mohit@gmail.com', 40000),
(4, 'Sanskar', 'Sanskar@gmail.com', 50000),
(5, 'Ankit', 'Ankit@gmail.com', 40000),
(6, 'Ayush', 'Ayush@gmail.com', 30000),
(7, 'Nikhil', 'Nikhil@gmail.com', 50000),
(8, 'Piyush', 'Piyush@gmail.com', 40000),
(9, 'Prashant', 'Prashant@gmail.com', 30000),
(10, 'Rajendra', 'Rajendra@gmail.com', 50000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE "transaction"
  ADD PRIMARY KEY ("sno");

--
-- Indexes for table `users`
--
ALTER TABLE "users"
  ADD PRIMARY KEY ("id");

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE "transaction"
  MODIFY "sno" int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE "users"
  MODIFY "id" int(3) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
