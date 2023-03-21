-- ####################CREATE TABLE COMMANDS

-- MOVIE TABLE
create table tblMovie
(
MovieID bigint primary key identity(1, 1),
ReleaseYear date not null,
Title nvarchar(100) not null unique,
MovieDescription nvarchar(500) not null,
Runtime bigint not null,
DirectorID bigint foreign key,
);

-- MEDIA TABLE
create table tblMedia
(
MediaID bigint primary key identity(1, 1),
MovieID bigint foreign key,
Title nvarchar(100) not null,
MediaType nvarchar(20) not null,
MediaURL navchar(200) not null,
);

-- GENRE TABLE
create table tblGenre
(
GenreID bigint primary key identity(1, 1),
GenreName nvarchar(100) not null
);

-- MOVIE GENRE TABLE
create table tblMovieGenre
(
MovGenreID bigint primary key identity(1, 1),
MovieID bigint foreign key,
GenreID bigint foreign key,
);

-- REVIEWS TABLE
create table tblReviews
(
ReviewID bigint primary key identity(1, 1),
MovieID bigint foreign key,
UserID bigint foreign key,
rating bigint not null,
Comment nvarchar(100) not null,
);

-- USER TABLE
create table tblUser
(
UserID bigint primary key identity(1, 1),
UserName nvarchar(100) not null,
UserEmail nvarchar(100) not null,
UserPassword nvarchar(100) not null,
);

-- ARTIST TABLE
create table tblArtist
(
ArtistID bigint primary key identity(1, 1),
ArtistName nvarchar(100) not null,
ArtistGender nvarchar(20) not null,
);

-- SKILL TABLE
create table tblSkill
(
SkillID bigint primary key identity(1, 1),
Skill nvarchar(100) not null,
);

-- ARTIST SKILL TABLE
create table tblArtistSkill
(
ID bigint primary key identity(1, 1),
ArtistID bigint foreign key,
SkillID bigint foreign key,
);

-- ROLES TABLE
create table tblRoles
(
RoleID bigint primary key identity(1, 1),
RoleName nvarchar(100) not null,
);

-- MOVIES ARTIST ROLES TABLE
create table tblMovieArtistRole
(
ID bigint primary key identity(1, 1),
MovieID bigint foreign key,
ArtistID bigint foreign key,
RoleID bigint foreign key,
);


-- #################################INSERT COMMANDS  

-- INSERTING INTO MOVIE TABLE
insert into tblMovie
(
  Title,
  ReleaseYear,
  MovieDescription,
  Runtime,
  DirectorID
)
values
	('Pulp Fiction', '1994', "In the realm of underworld, a series of incidents intertwines the lives of two Los Angeles mobsters, a gangster's wife, a boxer and two small-time criminals.", 184, "Quentin Tarantino"),
    ('Ant Man', '2023', "Ant-Man and the Wasp find themselves exploring the Quantum Realm, interacting with strange new creatures and embarking on an adventure that pushes them beyond the limits of what they thought was possible.", 192, 'Peyton Reed'),
    ('Avengers', '2012', "Nick Fury is compelled to launch the Avengers Initiative when Loki poses a threat to planet Earth. His squad of superheroes put their minds together to accomplish the task.",193,  'Joss Whedon'),
    ('Inglourious Basterds', '2009', "A few Jewish soldiers are on an undercover mission to bring down the Nazi government and put an end to the war. Meanwhile, a woman wants to avenge the death of her family from a German officer.",204,  'Quentin Tarantino'),
    ('Django Unchained', '2013', "When Django, a slave, is freed, he joins forces with a bounty hunter to rescue his wife, who has been enslaved by Calvin, a hard-hearted plantation owner.", 190,  'Quentin Tarantino')


-- INSERTING INTO MEDIA TABLE
insert into tblMedia
(
    MovieID,
    Title,
    MediaType,
    MediaURL,
)
values
	(1, "Image", "/img"),
    (1, "Video", "/vid"),
    (2, "Image", "/img"),
    (2, "Video", "/vid"),
    (3, "Image", "/img"),
    (3, "Video", "/vid"),
    (4, "Image", "/img"),
    (4, "Video", "/vid"),
    (5, "Image", "/img"),
    (5, "Video", "/vid"),


-- INSERTING INTO GENRE TABLE
insert into tblGenre
(
GenreName
)
values
	("Action"),
    ("Drama"),
    ("Crime"),
    ("Thriller"),
    ("History"),
    ("SciFi")


-- INSERTING INTO MOVIE GENRE TABLE
insert into tblMovieGenre
(
    MovieID,
    GenreID 
)
values
	(1, 2),
    (1, 3),
    (2, 1),
    (2, 6),
    (3, 1),
    (3, 6),
    (4, 2),
    (4, 3),
    (4, 5),
    (5, 5),
    (5, 4)


-- INSERTING INTO REVIEWS TABLE
insert into tblReviews
(
    MovieID,
    UserID ,
    rating ,
    Comment
)
values
	(1, 1, 8, "Good"),
    (1, 2, 7, "Very Good"),
    (2, 3, 9, "Interesting"),
    (2, 1, 8.8, "Entertaining"),
    (3, 4, 6, "Good"),
    (4, 5, 7, "Very Good"),
    (5, 4, 7.5, "Excellent")


-- INSERTING INTO USERS TABLE
insert into tblUser
(
    UserName,
    UserEmail ,
    UserPassword
)
values
	("Tom", "tom@gmail.com", "123456"),
    ("jon", "jon@gmail.com", "123456"),
    ("Jane", "jane@gmail.com", "123456"),
    ("Tony", "tony@gmail.com", "123456"),
    ("Derek", "Derek@gmail.com", "123456")


-- INSERTING INTO ARTIST TABLE
insert into tblArtist
(
    ArtistName,
    ArtistGender,
)
values
	("Jamie Foxx", "Male"),
    ("Samuel L. Jackson", "Male"),
    ("Paul Rudd", "Male"),
    ("Evangeline Lilly", "Female"),
    ("Kerry Washington", "Female"),
    ("Robert Downey Jr.", "Male"),
    ("Scarlett Johansson", "Female"),
    ("Chris Evans", "Male"),
    ("Brad Pitt", "Male"),
    ("Michael Fassbender", "Male"),


-- INSERTING INTO SKILLS TABLE
insert into tblSkill
(
    Skill
)
values
	(1, "Acting"),
    (2, "Directing"),
    (3, "Producing"),
    (4, "Writing")
    

-- INSERTING INTO ARTIST SKILLS TABLE
insert into tblArtistSkill
(
    ArtistID,
    SkillID 
)
values
	(1, 1),
    (1, 2),
    (2, 1),
    (2, 3),
    (3, 1),
    (3, 4),
    (4, 1),
    (5, 1),
    (5, 5)


-- INSERTING INTO ROLES TABLE
insert into tblRoles
(
    RoleName
)
values
	(1, "Actor"),
    (2, "Actress"),
    (3, "Director"),
    (4, "Producer"),
    (5, "Side Actor"),
    (6, "Side Actress"),
    (7, "Writer")


-- INSERTING INTO MOVIES ARTIST ROLE TABLE
insert into tblMovieArtistRole
(
    MovieID,
    ArtistID,
    RoleID
)
values
    (1,2,1),
    (1,2,3),
    (2,3,1),
    (2,5,2),
    (3,6,1),
    (3,7,2),
    (3,8,1),
    (3,6,4),
    (4,9,1),
    (4,1,1),
    (4,9,5),
    (5,1,1),
    (5,4,2)    