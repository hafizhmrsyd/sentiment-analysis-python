SELECT a.Title, b.name, c.name
from albums a
inner join artists b on a.ArtistId = b.ArtistId
inner join tracks c on a.AlbumId = c.AlbumId
where b.name = 'Aerosmith'
or (b.name = 'AC/DC'
and a.Title = 'Let There Be Rock')
;

--a.Title=nama album, b.name = nama artis, c.name = judul lagu.

--albums a, artists b, tracks c.

--keyname for inner join from albums a with artists b is
--ArtistId column they shared together.

--inner join again between albums a with tracks c on the keyname of
--AlbumId column.

--inner join could be applied to more than two diagram venns with a focus
--from one diagram venn aka table.

--WHERE applied to display the only artists 'Aerosmith' or 'AC/DC' only in
--the album title of 'Let there be rock' (could be applied inside the bracket).