SELECT a.Title, b.name, c.name
from albums a
inner join artists b on a.ArtistId = b.ArtistId
inner join tracks c on a.AlbumId = c.AlbumId
where b.name = 'Aerosmith'
or (b.name = 'AC/DC'
and a.Title = 'Let There Be Rock')
;