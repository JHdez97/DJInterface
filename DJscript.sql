DROP TABLES PriorityQueue, NormalQueue, KaraokeFiles, Contributed, Contributor, Song, User;

Create table Contributor ( contributor_id INT PRIMARY KEY AUTO_INCREMENT, name VARCHAR(50) NOT NULL);

Create table Song ( song_id INT PRIMARY KEY AUTO_INCREMENT, title VARCHAR(70) NOT NULL, artist VARCHAR(20) NOT NULL);

Create table User ( user_id INT PRIMARY KEY AUTO_INCREMENT, name VARCHAR(50) NOT NULL);

Create table KaraokeFiles ( filename_id INT AUTO_INCREMENT, song_id INT, version VARCHAR(50) NOT NULL, PRIMARY KEY(filename_id, song_id), FOREIGN KEY (song_id) REFERENCES Song(song_id));

Create table PriorityQueue ( user_id INT, filename_id INT NOT NULL, time DATETIME DEFAULT CURRENT_TIMESTAMP, cost INT, PRIMARY KEY(user_id, time), FOREIGN KEY (user_id) REFERENCES User(user_id), FOREIGN KEY(filename_id) REFERENCES KaraokeFiles(filename_id) );

Create table NormalQueue ( user_id INT, filename_id INT NOT NULL, time DATETIME DEFAULT CURRENT_TIMESTAMP, PRIMARY KEY(user_id, time), FOREIGN KEY (user_id) REFERENCES User(user_id), FOREIGN KEY(filename_id) REFERENCES KaraokeFiles(filename_id) );

Create table Contributed ( contributed_id INT PRIMARY KEY AUTO_INCREMENT, song_id INT, contributor_id INT, type VARCHAR(20) NOT NULL, FOREIGN KEY(song_id) REFERENCES Song(song_id), FOREIGN KEY(contributor_id) REFERENCES Contributor(contributor_id));

INSERT INTO Song
	(title, artist)
VALUES 
	('Beat It', 'Michael Jackson'), 
	('In The Air Tonight', 'Phil Collins'), 
	('Gasolina', 'Daddy Yankee'),
	('Just The Way You Are', 'Bruno Mars'), 
	('Can You Feel The Love Tonight', 'Elton John'),
	('Danza Kuduro', 'Don Omar'), 
	('The Cup of Life', 'Ricky Martin'), 
	('As it Was', 'Harry Styles'), 
	('All I Want for Christmas is You', 'Mariah Carey'), 
	('El Triste', 'Jose Jose'),
	('No One Noticed', 'The Marias'),
	('INVISIBLE', 'Duran Duran'),
        ('Dreaming of You', 'Selena'),
  	('Young and Beautiful', 'Lana Del Rey'),
 	('Slomo', 'Slowdive'),
 	('Ghosts', 'Michael Jackson'),
 	('Hole in the Earth', 'Deftones'),
  	('Nothing Else Matters' , 'Metallica'),
  	('%Don\'t Look Back in Anger%' , 'Oasis'),
  	('Creep' , 'Radiohead'),
	('Viva la Vida', 'Coldplay'),
	('Oops! I did it Again', 'Britney Spears'),
	('Crazy in Love (ft. Jay-Z)', 'Beyonce'),
	('These Boots Were Made For Walking', 'Nancy Sinatra'),
	('Candy', 'Doja Cat'),
	('Judas', 'Lady Gaga'),
	('Only Girl (in the World)', 'Rihanna'),
	('Blow', 'Kesha'),
	('Eleanor Rigby', 'Beatles'),
	('Riptide', 'Vance Joy');

INSERT INTO Contributor
	(name)
VALUES 
	('Josh Conway'),
	('Gianicu Buccellati'),
	('Maria Real'), 
	('Jesse Perlman'),
	('Duran Duran'),
	('Erol Alkan'),
	('John Taylor'),
	('Nick Rhodes'),
	('Simon Le Bon'),
	('Graham Coxon'),
	('Guy Roche'),
	('Tom Snow'),
	('Franne Golde'),
	('Selena'),
	('Marc Anioine'),
	('Jimmy Haslip'),
	('Don Heath'),
	('Al Shux'),
	('Rick Nowels'),
	('Lana Del Rey'),
	('Devrim Karaoglu'),
	('Patrick Warren'), 
	('Neil Halstead'),
	('Chirstian Savill'),
	('Nick Chaplin'),
	('Simon Scott'), 
	('Rachel Goswell'),
	('Teddy Riley'),
	('Micheal Jackson'),
	('Alec Breuer'),
	('Matt Carpenter'),
	('Rob Hoffman'),
	('Andre Scheps'),
	('Brad Buxer'),
	('Doug Grigsby'),
	('Bob Rock'),
	('James Hetfield'), 
	('Lars Ulrich'),
	('Jason Newstead'),
	('Kirk Hammett'),
	('Deftones'),
	('Rob Ezrin'),
	('Frank Delgado'),
	('Chi Cheng'),
	('Chino Moreno'),
	('Stephen Carpenter'),
	('Abe Cunningham'),
	('Owen Morris'),
	('Noel Gallagher'),
	('Alan White'),
	('Paul McGuigan'),
	('Paul Arthurs'),
	('Chirs Hufford'),
	('Thom Yorke'),
	('%Ed O\'Brien%'),
	('Colin Greenwood'),
	('Philip Selway'),
	('Albert Hammond'),
	('Mike Hazlewood'),
	('Quincy Jones'),
	('Eddie Van Halen'),
	('Phil Collins'),
	('Hugh Padgham'),
	('Francisco Saldana'),
	('Ramon Ayala'),
	('Victor Cabrera'),
	('Daddy Yankee'),
	('Eddie Dee'), 
	('Bruno Mars'), 
	('Philip Lawrence'), 
	('Ari Levine'), 
	('Khalil Walton'), 
	('Khari Cain'), 
	('Needlz'),
	('Tim Rice'), 
	('Elton John'), 
	('Davey Johnstone'), 
	('Don Omar'), 
	('Philippe Louis De Olivera'), 
	('Faouze Barkati'), 
	('Fabrice Toigo'), 
	('Lucenzo'), 
	('Luis Gomez Escolar'), 
	('Desmond Child'), 
	('Draco Rosa'), 
	('Curt Bisquera'), 
	('Michael Landau'), 
	('Harry Styles'), 
	('Thomas Hull'), 
	('Tyler Johnson'), 
	('Kid Harpoon'),
	('Doug Showalter'),
	('Mariah Carey'),
	('Walter Afanasieff'),
	('Roberto Cantoral'),
	('Jose Jose'),
	('Chris Martin'),
	('Guy Berryman'),
	('Jonny Buckland'),
	('Will Champion'),
	('Britney Spears'),
	('Max Martin'),
	('Rami Yacoub'),
	('Beyonce'),
	('Jay-Z'),
	('Eugene Record'),
	('Rich Harrison'),
	('Shawn Carter'),
	('Lee Hazlewood'),
	('Doja Cat'),
	('Amanda Dlamini'),
	('Cameron Bartolini'),
	('Lady Gaga'),
	('RedOne'),
	('Rihanna'),
	('Crystal Johnson'),
	('Mikkel S. Eriksen'),
	('Tor Erik Hermansen'),
	('Sandy Wilhelm'),
	('Kesha'),
	('Klas Ahlund'),
	('Lukasz Gottwald'),
	('Allan Grigg'),
	('Benjamin Levin'),
	('Paul McCartney'),
	('John Lennon'),
	('George Martin'),
	('Tony Gilbert'),
	('Sidney Sax'),
	('John Sharpe'),
	('Juergen Hess'),
	('Stephen Shingles'),
	('John Underwood'),
	('Derek Simpson'),
	('Norman Jones'),
	('Vance Joy'),
	('Edwin White'),
	('James Keoug'),
	('Keiran Conrau'),
	('Ross Irwin'),
	('John Castle'),
	('Nancy Sinatra'),
	('Ricky Martin');

INSERT INTO User
	(name)
VALUES 
	('Julissa Hernandez'),
	('Betty Smith'),
	('Daniela De la Cruz'),
	('Bryan Barrientos'), 
	('Renata Zepeda'),
	('Luna Estrada'), 
	('Lucy Jones'), 
	('Levi Ackerman'), 
	('Satoru Gojo'), 
	('Brayden Skywalker'); 


INSERT INTO KaraokeFiles
	(song_id, version)
VALUES
	(1, 'Original'),
	(2, 'Original'),
	(3, 'Original'),
	(4, 'Original'),
	(5, 'Original'),
	(6, 'Original'),
	(7, 'Original'),
	(8, 'Original'),
	(9, 'Original'),
	(10, 'Original'),
	(11,  'Original'),
	(12, 'Original'),
	(13, 'Original'),
	(14, 'Original'),
	(15, 'Original'),
	(16, 'Original'),
	(17, 'Original'),
	(18, 'Original'),
	(19, 'Original'),
	(20, 'Original'),
	(21, 'Original'),
	(22, 'Original'),
	(23, 'Original'),
	(24, 'Original'),
	(25, 'Original'),
	(26, 'Original'),
	(27, 'Original'),
	(28, 'Original'),
	(29, 'Original'),
	(30, 'Original');

INSERT INTO Contributed
	(song_id, contributor_id, type)
VALUES
	(1, 29, 'Singer'),
	(1, 29, 'Writer'),
	(1, 29, 'Composer'),
	(1, 60, 'Producer'),
	(1, 61, 'Guitar'),
	(2, 62, 'Singer'),
	(2, 62, 'Writer'),
	(2, 62, 'Producer'),
	(2, 63, 'Producer'),
	(2, 62, 'Drummer'),
	(3, 67, 'Singer'),
	(3, 64, 'Writer'),
	(3, 65, 'Writer'),
	(3, 66, 'Writer'),
	(3, 67, 'Composer'),
	(3, 68, 'Composer'),
	(3, 64, 'Producer'),
	(3, 66, 'Producer'),
	(4, 69, 'Singer'),
	(4, 69, 'Writer'),
	(4, 70, 'Writer'), 
	(4, 71, 'Writer'), 
	(4, 72, 'Writer'), 
	(4, 73, 'Writer' ),
	(4, 69, 'Producer'),
	(4, 70, 'Producer'),
	(4, 71, 'Producer'),
	(4, 74, 'Producer'),
	(5, 76, 'Singer'),
	(5, 75, 'Writer'),
	(5, 76, 'Writer'), 
	(5, 76, 'Pianist'),
	(5, 77, 'Guitarist'),
	(6, 78, 'Singer'), 
	(6, 78, 'Writer'), 
	(6, 79, 'Writer'), 
	(6, 80, 'Writer'), 
	(6, 81, 'Writer'), 
	(6, 82, 'Producer'), 
	(7, 83, 'Writer'), 
	(7, 84, 'Writer'), 
	(7, 85, 'Writer'), 
	(7, 84, 'Producer'),
	(7, 85, 'Producer'), 
	(7, 86, 'Drumist'), 
	(7, 143, 'Singer'), 
	(7, 87, 'Guitar'), 
	(8, 88, 'Singer'),
	(8, 88, 'Writer'), 
	(8, 89, 'Writer'), 
	(8, 90, 'Writer'), 
	(8, 90, 'Producer'), 
	(8, 91, 'Producer'), 
	(8, 92, 'Guitar'),
	(8, 92, 'Percussionist'),
	(9, 93, 'Singer'),
	(9, 93, 'Writer'), 
	(9, 94, 'Writer'), 
	(9, 93, 'Producer'), 
	(9, 94, 'Producer'),
	(10, 96, 'Singer'),
	(10, 95, 'Writer'),
	(11, 1, 'Producer'),
	(11, 1, 'Drummer'),
	(11, 1, 'Guitarist'),
	(11, 2, 'Producer'),
 	(11, 2, 'Guitarist'),
	(11, 2, 'Writer'),
	(11, 3, 'Singer'),
	(11, 3, 'Producer'),
	(11, 4, 'Guitarist'),
	(12, 5, 'Producer'),
	(12, 5, 'Writer'),
	(12, 5, 'Drummer'),
	(12, 5, 'Singer'),
	(12, 6, 'Producer'),
	(12, 6, 'Writer'),
	(12, 7, 'Writer'),
	(12, 7, 'Bassist'),
	(12, 8, 'Writer'), 
	(12, 9, 'Writer'),
	(12, 9 , 'Singer'),
	(12, 10, 'Guitarist'),
	(13, 11, 'Producer'),
	(13, 11, 'Drummer'),
	(13, 12, 'Writer'),
	(13, 13, 'Writer'),
	(13, 14, 'Singer'),
	(13, 15, 'Guitarist'),
	(13, 16, 'Bassist'),
	(14, 17, 'Producer'),
	(14, 18, 'Producer'),
	(14, 19, 'Producer'),
	(14, 19, 'Writer'),
	(14, 19, 'Pianist'),
	(14, 20, 'Writer'),
	(14, 20, 'Singer'),
	(14, 21, 'Drummer'),
	(14, 22, 'Guitarist'),
	(14, 22, 'Pianist'),
	(15, 23, 'Producer'),
	(15, 23, 'Writer'),
	(15, 23, 'Singer'),
	(15, 23, 'Guitarist'),
	(15, 24, 'Writer'),
	(15, 24, 'Guitarist'),
	(15, 25, 'Writer'),
	(15, 26, 'Writer'),
	(15, 26, 'Drummer'),
	(15, 27, 'Writer'),
	(15, 27, 'Singer'),
	(15, 27, 'Guitarist'),
	(16, 28, 'Producer'),
	(16, 28, 'Writer'),
	(16, 28, 'Pianist'),
	(16, 29, 'Producer'),
	(16, 29, 'Singer'),
	(16, 30, 'Drummer'),
	(16, 31, 'Drummer'),
	(16, 32, 'Drummer'),
	(16, 33, 'Drummer'),
	(16, 34, 'Pianist'),
	(16, 35, 'Drummer'),
	(16, 35, 'Pianist'), 
	(17, 36, 'Producer'),
	(17, 37, 'Producer'),
	(17, 37, 'Writer'),
	(17, 37, 'Singer'),
	(17, 37, 'Guitarist'),
	(17, 38, 'Producer'),
	(17, 38, 'Writer'),
	(17, 38, 'Drummer'),
	(17, 39, 'Singer'),
	(17, 39, 'Bassist'),
	(17, 40, 'Guitarist'),
	(18, 41, 'Producer'),
	(18, 42, 'Producer'),
	(18, 43, 'Writer'),
	(18, 44, 'Writer'),
	(18, 45, 'Writer'),
	(18, 45, 'Singer'),
	(18, 45, 'Guitarist'),
	(18, 46, 'Writer'),
	(18, 46, 'Guitarist'),
	(18, 47, 'Drummer'),
	(18, 47, 'Bassist'),
	(19, 48, 'Producer'),
	(19, 49, 'Producer'),
	(19, 49, 'Writer'),
	(19, 49, 'Singer'),
	(19, 50, 'Drummer'),
	(19, 51, 'Bassist'),
	(19, 52, 'Pianist'),
	(20, 53, 'Producer'),
	(20, 54, 'Writer'),
	(20, 54, 'Singer'),
	(20, 55, 'Writer'),
	(20, 55, 'Singer'),
	(20, 56, 'Writer'),
	(20, 56	, 'Bassist'),
	(20, 57, 'Writer'),
	(20, 57, 'Drummer'),
	(20, 57, 'Guitarist'),
	(20, 58, 'Writer'),
	(20, 59 , 'Writer'),
	(21, 97, 'Singer'),
	(21, 97, 'Pianist'),
	(21, 97, 'Writer'),
	(21, 98, 'Bassist'),
	(21, 98, 'Writer'),
	(21, 99, 'Guitarist'),
	(21, 99, 'Writer'),
	(21, 100, 'Drummer'),
	(21, 100, 'Writer'),
	(22, 101, 'Singer'),
	(22, 102, 'Writer'),
	(22, 103, 'Writer'),
	(23, 104, 'Singer'),
	(23, 104, 'Writer'),
	(23, 105, 'Rapper'),
	(23, 106, 'Writer'),
	(23, 107, 'Writer'),
	(23, 108, 'Writer'),
	(24, 142, 'Singer'),
	(24, 109, 'Writer'),
	(25, 110, 'Singer'),
	(25, 111, 'Writer'),
	(25, 112, 'Writer'),
	(26, 113, 'Writer'),
	(26, 113, 'Singer'),
	(26, 114, 'Writer'),
	(27, 115, 'Singer'),
	(27, 116, 'Writer'),
	(27, 117, 'Writer'),
	(27, 118, 'Writer'),
	(27, 119, 'Writer'),
	(28, 120, 'Singer'),
	(28, 120, 'Writer'),
	(28, 121, 'Writer'),
	(28, 122, 'Writer'),
	(28, 123, 'Writer'),
	(28, 124, 'Writer'),
	(28, 102, 'Writer'),
	(29, 125, 'Singer'),
	(29, 125, 'Vocals'),
	(29, 125, 'Writer'),
	(29, 126, 'Writer'),
	(29, 127, 'Writer'),
	(29, 128, 'Violinist'),
	(29, 129, 'Violinist'),
	(29, 130, 'Violinist'),
	(29, 131, 'Violinist'),
	(29, 132, 'Violist'),
	(29, 133, 'Violist'),
	(29, 134, 'Cello'),
	(29, 135, 'Cello'),
	(30, 136, 'Writer'),
	(30, 136, 'Singer'),
	(30, 137, 'Drummer'),
	(30, 138, 'Writer'),
	(30, 138, 'Singer'),
	(30, 139, 'Bassist'),
	(30, 140, 'Pianist'),
	(30, 141, 'Guitarist');

