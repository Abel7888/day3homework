SELECT *
FROM artist
INNER JOIN favorite_song
on artist.artist_id=favorite_song.artist_id;