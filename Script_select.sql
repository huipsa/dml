SELECT name_track, duration from Track_list
WHERE duration = (SELECT MAX(duration) from Track_list);

SELECT name_track from Track_list
WHERE duration >= 210;

SELECT name_songbook from Songbook
WHERE year_of_release BETWEEN 2018 AND 2020;

SELECT alias from Performer
WHERE alias NOT LIKE '% %';

SELECT name_track from Track_list
WHERE name_track LIKE '%my%' or name_track LIKE '%My%';

SELECT name_style, COUNT(*) from MusicStylePerformer mp
JOIN MusicStyle ms ON mp.music_style_id = ms.id
GROUP BY name_style;

SELECT COUNT(*) from Track_list t
JOIN Album a ON a.id = t.album_id
WHERE year_of_release BETWEEN 2019 AND 2020;

SELECT a.name_album, AVG(duration) from Track_list t 
JOIN Album a ON a.id = t.album_id
GROUP BY a.name_album;

SELECT DISTINCT alias from Album a
JOIN PerformerAlbum pa ON a.id = pa.album_id
JOIN Performer p ON p.id = pa.performer_id
WHERE year_of_release != 2020;

SELECT name_songbook from Performer p
JOIN PerformerAlbum pa ON p.id = pa.performer_id
JOIN Album a ON a.id = pa.album_id
JOIN Track_list tl ON a.id = tl.album_id
JOIN SongbookTrack_list st ON tl.id = st.track_list_id
JOIN Songbook s ON s.id = st.songbook_id
WHERE alias = 'Moby';