
/* Query all of the entries in the genre table */

--SELECT Id, Name
--FROM Genre;

--Sarah's way
--Select * from genre;

/* Query all the entries in the Artist table and order by the artist's name. HINT: use the ORDER BY keywords */

--SELECT Id, ArtistName, YearEstablished
--FROM Artist
--ORDER BY ArtistName DESC;

--Sarah's way
-- Select * from Artist Order By ArtistName;

/* Write a SELECT query that lists all the songs in the Song table and include the Artist name */

--SELECT s.Title, a.ArtistName
--FROM Song s
--LEFT JOIN Artist a on s.ArtistId = a.id;

--Sarah's way
--Select * from Song
--Join Artist on Song.ArtistId = Artist.Id;

/* Write a SELECT query that lists all the Artists that have a Pop Album */

--Select * from Artist a
--join Album al on a.id = al.ArtistId
--join Genre g on al.GenreId = g.Id
--Where al.GenreId = 7

--Write a SELECT query that lists all the Artists that have a Jazz or Rock Album
--Select * from Artist a
--Join Album al on al.ArtistId = a.Id
--Join Genre g on al.GenreId = g.Id
--Where g.Name = 'Rock' OR g.Name = 'Jazz'

--Write a SELECT statement that lists the Albums with no songs
--Select * from Album al
--Join Song s on al.Id = s.AlbumId
--Where s.AlbumId is Null

--Using the INSERT statement, add one of your favorite artists to the Artist table.
--Insert Into Artist (ArtistName, YearEstablished) VALUES ('Doja Cat', 2012)

--Using the INSERT statement, add one, or more, albums by your artist to the Album table.
--Select * from Album
--Insert Into Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId)
--Values ('Planet Her', '06/25/2021', 2646, 'RCA', 28, 7)

--Using the INSERT statement, add some songs that are on that album to the Song table.

--Select * From Album
--Insert into Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId)
--Values('Woman', 172, '06/25/2021', 7, 28, 26)

--Write a SELECT query that provides the song titles, album title, and artist name for all of the data you just entered in. Use the LEFT JOIN keyword sequence to connect the tables, and the WHERE keyword to filter the results to the album and artist you added.
--SELECT s.Title, al.Title, a.ArtistName
--FROM Album al
--LEFT JOIN Song s ON s.AlbumId = al.Id
--LEFT JOIN Artist a ON al.ArtistId = a.Id
--WHERE a.ArtistName = 'Doja Cat'


--Write a SELECT statement to display how many songs exist for each album. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
--SELECT a.Title, Count(s.Id) AS '# of songs'
--FROM Album a
--LEFT JOIN Song s ON a.Id = s.AlbumId
--GROUP BY a.Title

--Write a SELECT statement to display how many songs exist for each artist. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
--SELECT a.ArtistName, Count(s.Id) AS	 '# of songs'
--FROM Artist a
--LEFT JOIN Song s ON s.ArtistId = a.Id
--GROUP BY a.ArtistName

--Write a SELECT statement to display how many songs exist for each genre. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
--SELECT g.Name, COUNT(s.Id) AS '# of songs'
--FROM Genre g
--LEFT JOIN Song s ON s.GenreId = g.Id
--GROUP BY g.Name

--Write a SELECT query that lists the Artists that have put out records on more than one record label. Hint: When using GROUP BY instead of using a WHERE clause, use the HAVING keyword
--SELECT a.ArtistName, COUNT(al.Label) AS '# of labels'
--FROM Artist a
--LEFT JOIN Album al ON al.ArtistId = a.Id
--GROUP BY a.ArtistName
--HAVING COUNT(DISTINCT al.Label) > 1

--Using MAX() function, write a select statement to find the album with the longest duration. The result should display the album title and the duration.
--SELECT al.Title, al.AlbumLength
--FROM Album al
--WHERE AlbumLength = (SELECT MAX(AlbumLength) FROM Album)


--Using MAX() function, write a select statement to find the song with the longest duration. The result should display the song title and the duration.
--SELECT s.Title, s.SongLength
--FROM Song s
--WHERE s.SongLength = (Select MAX(s.SongLength) from Song s)

--Modify the previous query to also display the title of the album.
--Select s.Title, s.SongLength, a.Title
--from Song s
--Join Album a on s.AlbumId = a.Id
--Where s.SongLength = (Select MAX(s.SongLength) from Song s)

--Select * from Song Order By SongLength