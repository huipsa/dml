INSERT INTO MusicStyle(name_style)
VALUES('Jazz');

INSERT INTO MusicStyle(name_style)
VALUES('Electronic music');

INSERT INTO MusicStyle(name_style)
VALUES('Rock');

INSERT INTO Performer(alias)
VALUES('Louis Armstrong');

INSERT INTO Performer(alias)
VALUES('Frank Sinatra');

INSERT INTO Performer(alias)
VALUES('Moby');

INSERT INTO Performer(alias)
VALUES('Modern Talking');

INSERT INTO MusicStylePerformer(music_style_id, performer_id)
VALUES(1, 1);

INSERT INTO MusicStylePerformer(music_style_id, performer_id)
VALUES(1, 2);

INSERT INTO MusicStylePerformer(music_style_id, performer_id)
VALUES(2, 3);

INSERT INTO MusicStylePerformer(music_style_id, performer_id)
VALUES(3, 4);

INSERT INTO Album(name_album, year_of_release)
VALUES('That is life', 1966);

INSERT INTO Album(name_album, year_of_release)
VALUES('Hotel Amlient', 2015);

INSERT INTO Album(name_album, year_of_release)
VALUES('Innocents', 2013);

INSERT INTO Album(name_album, year_of_release)
VALUES('Reptise', 2020);

INSERT INTO PerformerAlbum(performer_id, album_id)
VALUES(2, 1);

INSERT INTO PerformerAlbum(performer_id, album_id)
VALUES(3, 2);

INSERT INTO PerformerAlbum(performer_id, album_id)
VALUES(3, 3);

INSERT INTO PerformerAlbum(performer_id, album_id)
VALUES(4, 4);

INSERT INTO Songbook(name_songbook, year_of_release)
VALUES('My collection', 2021);

INSERT INTO Songbook(name_songbook, year_of_release)
VALUES('My jazz', 2019);

INSERT INTO Songbook(name_songbook, year_of_release)
VALUES('My electronic music', 2020);

INSERT INTO Songbook(name_songbook, year_of_release)
VALUES('My songs', 2024);

INSERT INTO Track_list(album_id, name_track, duration)
VALUES(2, 'Snowball', 265);

INSERT INTO Track_list(album_id, name_track, duration)
VALUES(2, 'Lilly', 233);

INSERT INTO Track_list(album_id, name_track, duration)
VALUES(3, 'A Long Time', 272);

INSERT INTO Track_list(album_id, name_track, duration)
VALUES(4, 'Everloving', 199);

INSERT INTO Track_list(album_id, name_track, duration)
VALUES(1, 'My life', 81);

INSERT INTO Track_list(album_id, name_track, duration)
VALUES(4, 'My favorite', 164);

INSERT INTO SongbookTrack_list(songbook_id, track_list_id)
VALUES(1, 4);

INSERT INTO SongbookTrack_list(songbook_id, track_list_id)
VALUES(2, 1);

INSERT INTO SongbookTrack_list(songbook_id, track_list_id)
VALUES(3, 3);

INSERT INTO SongbookTrack_list(songbook_id, track_list_id)
VALUES(1, 5);

INSERT INTO SongbookTrack_list(songbook_id, track_list_id)
VALUES(1, 6);
