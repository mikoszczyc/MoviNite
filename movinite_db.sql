-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 03 Gru 2018, 22:56
-- Wersja serwera: 10.1.35-MariaDB
-- Wersja PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `movinite_db`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `favorites`
--

CREATE TABLE `favorites` (
  `userID` int(11) NOT NULL,
  `movieID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `favorites`
--

INSERT INTO `favorites` (`userID`, `movieID`) VALUES
(10, 1),
(10, 8),
(10, 14),
(10, 19),
(10, 20),
(10, 21),
(10, 23);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `movies`
--

CREATE TABLE `movies` (
  `movieID` int(11) NOT NULL,
  `movieTitle` varchar(255) NOT NULL,
  `movieDesc` longtext,
  `director` varchar(60) DEFAULT NULL,
  `movieReleaseDate` year(4) DEFAULT NULL,
  `datatitle` varchar(30) DEFAULT NULL,
  `movieTrailerUrl` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `movies`
--

INSERT INTO `movies` (`movieID`, `movieTitle`, `movieDesc`, `director`, `movieReleaseDate`, `datatitle`, `movieTrailerUrl`) VALUES
(1, 'The Shawshank Redemption', 'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.\r\n', 'Frank Darabont', 1994, 'tt0111161', 'NmzuHjWmXOc'),
(2, 'The Godfather', 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.', 'Francis Ford Coppola', 1972, 'tt0068646', 'zBw8vUdtH2A'),
(3, 'The Godfather: Part II', 'The early life and career of Vito Corleone in 1920s New York City is portrayed, while his son, Michael, expands and tightens his grip on the family crime syndicate.', 'Francis Ford Coppola', 1974, 'tt0071562', '9O1Iy9od7-A'),
(4, 'The Dark Knight', 'When the menace known as the Joker emerges from his mysterious past, he wreaks havoc and chaos on the people of Gotham. The Dark Knight must accept one of the greatest psychological and physical tests of his ability to fight injustice.', 'Christopher Nolan', 2008, 'tt0468569', '_PZpmTj1Q8Q'),
(5, '12 Angry Men', 'A jury holdout attempts to prevent a miscarriage of justice by forcing his colleagues to reconsider the evidence.', 'Sidney Lumet', 1957, 'tt0050083', '_13J_9B5jEk'),
(6, 'Schindler\'s List ', 'In German-occupied Poland during World War II, Oskar Schindler gradually becomes concerned for his Jewish workforce after witnessing their persecution by the Nazi Germans.', 'Steven Spielberg', 1993, 'tt0108052', 'mxphAlJID9U'),
(7, 'The Lord of the Rings: The Return of the King', 'Gandalf and Aragorn lead the World of Men against Sauron\'s army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring.', 'Peter Jackson', 2003, 'tt0167260', 'r5X-hFf6Bwo'),
(8, 'Pulp Fiction', 'The lives of two mob hitmen, a boxer, a gangster\'s wife, and a pair of diner bandits intertwine in four tales of violence and redemption.', 'Quentin Tarantino', 1994, 'tt0110912', 's7EdQ4FqbhY'),
(9, 'The Good, the Bad and the Ugly', 'A bounty hunting scam joins two men in an uneasy alliance against a third in a race to find a fortune in gold buried in a remote cemetery.', 'Sergio Leone', 1966, 'tt0060196', 'h1PfrmCGFnk'),
(10, 'Fight Club', 'An insomniac office worker and a devil-may-care soapmaker form an underground fight club that evolves into something much, much more.', 'David Fincher', 1999, 'tt0137523', 'BdJKm16Co6M'),
(11, 'The Lord of the Rings: The Fellowship of the Ring', 'A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle-earth from the Dark Lord Sauron.', 'Peter Jackson', 2001, 'tt0120737', 'z_WZxJpHzEE'),
(12, 'Forrest Gump', 'The presidencies of Kennedy and Johnson, Vietnam, Watergate, and other history unfold through the perspective of an Alabama man with an IQ of 75.', 'Robert Zemeckis', 1994, 'tt0109830', 'bLvqoHBptjg'),
(13, 'Star Wars: Episode V - The Empire Strikes Back', 'After the rebels are brutally overpowered by the Empire on the ice planet Hoth, Luke Skywalker begins Jedi training with Yoda, while his friends are pursued by Darth Vader.', 'Irvin Kershner', 1980, 'tt0080684', 'JNwNXF9Y6kY'),
(14, 'Inception', 'A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a CEO.', 'Christopher Nolan', 2010, 'tt1375666', 'Qwe6qXFTdgc'),
(15, 'The Lord of the Rings: The Two Towers', 'While Frodo and Sam edge closer to Mordor with the help of the shifty Gollum, the divided fellowship makes a stand against Sauron\'s new ally, Saruman, and his hordes of Isengard.', 'Peter Jackson', 2002, 'tt0167261', 'cvCktPUwkW0'),
(16, 'One Flew Over the Cuckoo\'s Nest', 'A criminal pleads insanity after getting into trouble again and once in the mental institution rebels against the oppressive nurse and rallies up the scared patients.', 'Milos Forman', 1975, 'tt0073486', 'NWZXL_anruA'),
(19, 'La Casa de Papel', 'A group of very peculiar robbers assault the Factory of Moneda and Timbre to carry out the most perfect robbery in the history of Spain and take home 2.4 billion euros.', 'Ãlex Pina', 2007, 'tt6468322', 'ZAXA1DV4dtI'),
(20, 'Toy Story', 'A cowboy doll is profoundly threatened and jealous when a new spaceman figure supplants him as top toy in a boy\'s room.', 'John Lasseter', 1995, 'tt0114709', 'KYz2wyBy3kc'),
(21, 'Free to Play', ' Follow three professional video game players as they overcome personal adversity, family pressures, and the realities of life to compete in a $1,000,000 tournament that could change their lives forever.', 'Valve', 2013, 'tt3203290', 'R-RKqGaNq-Y'),
(23, 'Titanic', 'A seventeen-year-old aristocrat falls in love with a kind but poor artist aboard the luxurious, ill-fated R.M.S. Titanic.', 'James Cameron', 1997, 'tt0120338', 'zCy5WQ9S4c0');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(9) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` longtext NOT NULL,
  `email` varchar(50) NOT NULL,
  `type` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `type`) VALUES
(10, 'admin', '$2y$10$NpRPGdnJ4fT7nWcun4phPOJyQavuJ1gFUcoAiV5Tyrtgv5nzjryfm', 'admin@gmail.com', 1),
(11, 'szymon', '$2y$10$n08ffkutpRcTwooSVAgU7ugfeXWfy35HOXCFCKuPUvfQAvy9CXuTS', 'szmeko@gmail.com', 0),
(14, 'Mackay', '$2y$10$S7QVq6UtpuHYVtxHgfK.EOxahq/sGIHbEIdKBCVkd8xYSkdt97oCi', 'mikoszczyc@gmail.com', 1),
(16, 'Tester', '$2y$10$RX1doQQUhJeBIb9.hYokjueLvh9UeaQqDjm2t5UatOTrZpiEc3cOC', 'test@gmail.com', 0);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `favorites`
--
ALTER TABLE `favorites`
  ADD KEY `userID` (`userID`,`movieID`),
  ADD KEY `movieID` (`movieID`);

--
-- Indeksy dla tabeli `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`movieID`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `movies`
--
ALTER TABLE `movies`
  MODIFY `movieID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `favorites_ibfk_2` FOREIGN KEY (`movieID`) REFERENCES `movies` (`movieID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
