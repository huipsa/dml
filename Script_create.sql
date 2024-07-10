CREATE TABLE IF NOT EXISTS MusicStyle (
	id SERIAL PRIMARY KEY,
	name_style VARCHAR(60) NOT NULL
);


CREATE TABLE IF NOT EXISTS Performer (
	id SERIAL PRIMARY KEY,
	alias VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS MusicStylePerformer (
	music_style_id INTEGER REFERENCES MusicStyle(id),
	performer_id INTEGER REFERENCES Performer(id),
	CONSTRAINT style_performer PRIMARY KEY (music_style_id, performer_id)
);

CREATE TABLE IF NOT EXISTS Album (
	id SERIAL PRIMARY KEY,
	name_album VARCHAR(60) NOT NULL,
	year_of_release int2 NOT NULL
);

CREATE TABLE IF NOT EXISTS PerformerAlbum (
	performer_id INTEGER REFERENCES Performer(id),
	album_id INTEGER REFERENCES Album(id),
	CONSTRAINT album_performer PRIMARY KEY (performer_id, album_id)
);

CREATE TABLE IF NOT EXISTS Songbook (
	id SERIAL PRIMARY KEY,
	name_songbook VARCHAR(60) NOT NULL,
	year_of_release int2 NOT NULL
);

CREATE TABLE IF NOT EXISTS Track_list (
	id SERIAL PRIMARY KEY,
	album_id INTEGER NOT NULL REFERENCES Album(id),
	name_track VARCHAR(60) NOT NULL,
	duration INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS SongbookTrack_list (
	songbook_id INTEGER REFERENCES Songbook(id),
	track_list_id INTEGER REFERENCES Track_list(id),
	CONSTRAINT songbook_track PRIMARY KEY (songbook_id, track_list_id)
);