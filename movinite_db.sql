-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 15 Paź 2018, 19:46
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
-- Struktura tabeli dla tabeli `actors`
--

CREATE TABLE `actors` (
  `actorsID` int(11) NOT NULL,
  `firstName` varchar(20) NOT NULL,
  `lastName` varchar(20) NOT NULL,
  `birthDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `directors`
--

CREATE TABLE `directors` (
  `directorID` int(11) NOT NULL,
  `directorFirstName` varchar(255) DEFAULT NULL,
  `directorLastName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `directors`
--

INSERT INTO `directors` (`directorID`, `directorFirstName`, `directorLastName`) VALUES
(1, 'Frank', 'Darabont'),
(2, 'Steven', 'Spielberg'),
(3, 'Peter', 'Jackson'),
(4, 'Quentin', 'Tarantino'),
(5, 'Christipher', 'Nolan');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `favorites`
--

CREATE TABLE `favorites` (
  `userID` int(11) NOT NULL,
  `movieID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `genres`
--

CREATE TABLE `genres` (
  `genreID` int(11) NOT NULL,
  `genreName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `genres`
--

INSERT INTO `genres` (`genreID`, `genreName`) VALUES
(3, 'Drama'),
(4, 'Comedy'),
(5, 'Crime'),
(6, 'Thriller'),
(7, 'Action'),
(8, 'Adventure'),
(9, 'Animation'),
(10, 'Horror'),
(11, 'Music'),
(12, 'Sport'),
(13, 'Romance'),
(14, 'Short'),
(15, 'Family'),
(16, 'Fantasy'),
(17, 'Sci-Fi'),
(18, 'History'),
(19, 'War'),
(20, 'Documentary'),
(21, 'Western'),
(22, 'Film-Noir');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `movies`
--

CREATE TABLE `movies` (
  `movieID` int(11) NOT NULL,
  `movieTitle` varchar(255) NOT NULL,
  `movieDesc` text,
  `directorID` int(11) DEFAULT NULL,
  `movieReleaseDate` year(4) DEFAULT NULL,
  `genre` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `movies`
--

INSERT INTO `movies` (`movieID`, `movieTitle`, `movieDesc`, `directorID`, `movieReleaseDate`, `genre`) VALUES
(1, 'The Shawshank Redemption', 'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.\r\n', 1, 1994, 0),
(2, 'The Godfather', 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.', NULL, 1972, 0),
(3, 'The Godfather: Part II', 'The early life and career of Vito Corleone in 1920s New York City is portrayed, while his son, Michael, expands and tightens his grip on the family crime syndicate.', NULL, 1974, 0),
(4, 'The Dark Knight', 'When the menace known as the Joker emerges from his mysterious past, he wreaks havoc and chaos on the people of Gotham. The Dark Knight must accept one of the greatest psychological and physical tests of his ability to fight injustice.', NULL, 2008, 0),
(5, '12 Angry Men', 'A jury holdout attempts to prevent a miscarriage of justice by forcing his colleagues to reconsider the evidence.', NULL, 1957, 0),
(6, 'Schindler\'s List ', 'In German-occupied Poland during World War II, Oskar Schindler gradually becomes concerned for his Jewish workforce after witnessing their persecution by the Nazi Germans.', 2, 1993, 0),
(7, 'The Lord of the Rings: The Return of the King', 'Gandalf and Aragorn lead the World of Men against Sauron\'s army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring.', 3, 2003, 0),
(8, 'Pulp Fiction', 'The lives of two mob hitmen, a boxer, a gangster\'s wife, and a pair of diner bandits intertwine in four tales of violence and redemption.', 4, 1994, 0),
(9, 'The Good, the Bad and the Ugly', 'A bounty hunting scam joins two men in an uneasy alliance against a third in a race to find a fortune in gold buried in a remote cemetery.', NULL, 1966, 0),
(10, 'Fight Club', 'An insomniac office worker and a devil-may-care soapmaker form an underground fight club that evolves into something much, much more.', NULL, 1999, 0),
(11, 'The Lord of the Rings: The Fellowship of the Ring', 'A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle-earth from the Dark Lord Sauron.', 3, 2001, 0),
(12, 'Forrest Gump', 'The presidencies of Kennedy and Johnson, Vietnam, Watergate, and other history unfold through the perspective of an Alabama man with an IQ of 75.', NULL, 1994, 0),
(13, 'Star Wars: Episode V - The Empire Strikes Back', 'After the rebels are brutally overpowered by the Empire on the ice planet Hoth, Luke Skywalker begins Jedi training with Yoda, while his friends are pursued by Darth Vader.', NULL, 1980, 0),
(14, 'Inception', 'A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a CEO.', 5, 2010, 0),
(15, 'The Lord of the Rings: The Two Towers', 'While Frodo and Sam edge closer to Mordor with the help of the shifty Gollum, the divided fellowship makes a stand against Sauron\'s new ally, Saruman, and his hordes of Isengard.', 3, 2002, 0),
(16, 'One Flew Over the Cuckoo\'s Nest', 'A criminal pleads insanity after getting into trouble again and once in the mental institution rebels against the oppressive nurse and rallies up the scared patients.', NULL, 1975, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `movies_actors`
--

CREATE TABLE `movies_actors` (
  `movieID` int(11) NOT NULL,
  `actorID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `movies_genre`
--

CREATE TABLE `movies_genre` (
  `movieID` int(11) NOT NULL,
  `genreID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(9) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`) VALUES
(1, 'Mackay', 'qwerty123', 'mikoszczyc@gmail.com'),
(2, 'Wonderful', 'asdfg567', 'przemek@gmail.com'),
(3, 'Kajko', 'test', 'kokosz@gmail.com'),
(4, 'testhash', '$2y$10$qH2InIStv1bcMcRDIBIHcOGVGIo1bbeb33N0bwGiK7x', 'testhash@gmail.com');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`actorsID`);

--
-- Indeksy dla tabeli `directors`
--
ALTER TABLE `directors`
  ADD PRIMARY KEY (`directorID`);

--
-- Indeksy dla tabeli `favorites`
--
ALTER TABLE `favorites`
  ADD KEY `userID` (`userID`,`movieID`),
  ADD KEY `movieID` (`movieID`);

--
-- Indeksy dla tabeli `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`genreID`);

--
-- Indeksy dla tabeli `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`movieID`),
  ADD KEY `directorID` (`directorID`),
  ADD KEY `genre` (`genre`);

--
-- Indeksy dla tabeli `movies_actors`
--
ALTER TABLE `movies_actors`
  ADD KEY `movieID` (`movieID`,`actorID`),
  ADD KEY `actorID` (`actorID`);

--
-- Indeksy dla tabeli `movies_genre`
--
ALTER TABLE `movies_genre`
  ADD KEY `movieID` (`movieID`,`genreID`),
  ADD KEY `genreID` (`genreID`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `actors`
--
ALTER TABLE `actors`
  MODIFY `actorsID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `directors`
--
ALTER TABLE `directors`
  MODIFY `directorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `genres`
--
ALTER TABLE `genres`
  MODIFY `genreID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT dla tabeli `movies`
--
ALTER TABLE `movies`
  MODIFY `movieID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `favorites_ibfk_2` FOREIGN KEY (`movieID`) REFERENCES `movies` (`movieID`);

--
-- Ograniczenia dla tabeli `movies`
--
ALTER TABLE `movies`
  ADD CONSTRAINT `movies_ibfk_1` FOREIGN KEY (`directorID`) REFERENCES `directors` (`directorID`);

--
-- Ograniczenia dla tabeli `movies_actors`
--
ALTER TABLE `movies_actors`
  ADD CONSTRAINT `movies_actors_ibfk_1` FOREIGN KEY (`movieID`) REFERENCES `movies` (`movieID`),
  ADD CONSTRAINT `movies_actors_ibfk_2` FOREIGN KEY (`actorID`) REFERENCES `actors` (`actorsID`);

--
-- Ograniczenia dla tabeli `movies_genre`
--
ALTER TABLE `movies_genre`
  ADD CONSTRAINT `movies_genre_ibfk_1` FOREIGN KEY (`genreID`) REFERENCES `genres` (`genreID`),
  ADD CONSTRAINT `movies_genre_ibfk_2` FOREIGN KEY (`movieID`) REFERENCES `movies` (`movieID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
