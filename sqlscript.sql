CREATE TABLE MOVIE_TYPES ( 
	movie_type_id NUMBER NOT NULL CONSTRAINT movie_types_pk PRIMARY KEY, 
	movie_type_name VARCHAR2(100) NOT NULL 
);

CREATE TABLE MOVIES ( 
	movie_id NUMBER NOT NULL CONSTRAINT movies_pk PRIMARY KEY, 
	movie_name VARCHAR2(200) NOT NULL, 
	movie_type_id NUMBER NOT NULL CONSTRAINT movies_movie_type_fk REFERENCES MOVIE_TYPES(movie_type_id), 
	movie_likes NUMBER, 
	movie_dislikes NUMBER, 
	movie_date DATE NOT NULL 
);

CREATE TABLE USERS ( 
    user_id NUMBER NOT NULL CONSTRAINT user_pk PRIMARY KEY, 
    user_name VARCHAR2(100) NOT NULL, 
    user_surname VARCHAR2(100) 
);

CREATE TABLE UserContact ( 
    user_id NUMBER NOT NULL CONSTRAINT user_contact_pk PRIMARY KEY, 
    user_nickname VARCHAR2(100) NOT NULL, 
    user_email VARCHAR2(100) NOT NULL, 
    CONSTRAINT user_contact_fk_user_id FOREIGN KEY (user_id) REFERENCES USERS(user_id) 
);

CREATE TABLE UserPhoto ( 
    user_id NUMBER NOT NULL CONSTRAINT user_photo_pk PRIMARY KEY, 
    user_photo VARCHAR2(50), 
    CONSTRAINT user_photo_fk_user_id FOREIGN KEY (user_id) REFERENCES USERS(user_id) 
);

CREATE TABLE COMMENTS ( 
comment_id number not null constraint comments_pk primary key, 
comment_content varchar2(1000) not null, 
comment_date date not null 
);

CREATE TABLE COMMENT_REACTIONS ( 
comment_id number not null, 
comment_likes number,  
comment_dislikes number, 
user_id number not null, 
constraint comment_reactions_pk primary key (comment_id,comment_likes ,comment_dislikes, user_id), 
constraint comment_reactions_fk foreign key (comment_id) references comments(comment_id) 
);

insert into MOVIE_TYPES values (1, 'Horror');

insert into MOVIE_TYPES values (2, 'Thriller ,Horror');

insert into MOVIE_TYPES values (3, 'Thriller, Horror, Comedy');

insert into MOVIE_TYPES values (4, 'Science Fiction,Thriller, Horror');

insert into MOVIE_TYPES values (5, 'Thriller, Horror');

insert into MOVIE_TYPES values (6, 'Drama,Thriller, Horror');

insert into MOVIE_TYPES values (7, 'Action,Comedy, Crime');

insert into MOVIE_TYPES values (8, 'Comedy,Musical');

insert into MOVIE_TYPES values (9, 'Thriller, Mystery,Comedy');

insert into MOVIE_TYPES values (10, 'Thriller,');

insert into MOVIE_TYPES values (11, 'Comedy');

insert into MOVIE_TYPES values (12, 'Mystery,Comedy, Crime');

insert into MOVIE_TYPES values (13, 'Science Fiction, Action');

insert into MOVIE_TYPES values (14, 'Science Fiction,  Action, Adventure');

insert into MOVIE_TYPES values (15, 'Science Fiction, Thriller');

insert into MOVIE_TYPES values (16, 'Science Fiction,  Comedy');

insert into MOVIE_TYPES values (17, 'Science Fiction,  Comedy, Drama');

insert into MOVIE_TYPES values (18, 'Science Fiction,Horror');

insert into MOVIE_TYPES values (19, 'Science Fiction, Drama');

insert into MOVIE_TYPES values (20, 'Science Fiction, Adventure');

insert into MOVIE_TYPES values (21, 'Science Fiction,  Adventure, Drama');

insert into MOVIE_TYPES values (22, 'Drama');

insert into MOVIE_TYPES values (23, 'Drama, Romantic');

insert into MOVIE_TYPES values (24, 'Drama,Comedy');

insert into MOVIE_TYPES values (25, 'Drama, Comedy, Romantic');

insert into MOVIE_TYPES values (26, 'Drama, Thriller, Mystery');

insert into MOVIE_TYPES values (27, 'Drama, Musical');

insert into MOVIE_TYPES values (28, 'Drama, Fantastic, Adventure');

insert into MOVIE_TYPES values (29, 'Drama, History');

insert into MOVIE_TYPES values (30, 'Drama,Comedy');

insert into movies values (1, 'Nope',1, 156, 14, '17-JUL-2002');

insert into movies values (2, 'Men',2,  256, 12, '2-Aug-1999');

insert into movies values (3, 'Fresh',3,  153, 51, '7-Dec-2017');

insert into movies values (4, 'Slash/Back',4,  280, 37, '8-Jan-2005');

insert into movies values (5, 'Barbarian',5,  286, 14, '30-Nov-2022');

insert into movies values (6, 'Gaesterne',6,   157, 4, '31-Oct-2009');

insert into movies values (7, 'The Unbearable Weight of Massive Talent',7,  105, 19, '7-Apr-2017');

insert into movies values (8, 'Weird: The Al Yankovic Story',8,  107, 15, '3-Jun-2010');

insert into movies values (9, ' See How They Run',9,  137, 41, '30-May-2000');

insert into movies values (10, ' Matrix',10,  3004, 41, '30-May-2001');

insert into movies values (11, 'Bromates',11,  191, 44, '8-Mar-2015');

insert into movies values (12, 'Confess, Fletch',12,  254, 37, '9-Feb-2009');

insert into movies values (13, 'Avatar: The Way of Water',13,  367, 39, '11-Dec-1998');

insert into movies values (14, 'Everything Everywhere All at Once',14,  234, 16, '6-Nov-2001');

insert into movies values (15, 'Spiderhead',15, 186, 9, '4-JUL-2016');

insert into movies values (16, 'Dual',16, 98, 49, '17-JUL-2002');

insert into movies values (17, 'Brian and Charles',17,  261, 23, '9-Oct-2019');

insert into movies values (18, 'Crimes of the Future',18,  257, 27, '23-Sep-2010');

insert into movies values (19, 'After Yang',19,  189, 50, '10-Aug-1990');

insert into movies values (20, 'The Adam Project',20,  251, 10, '20-Jul-2001');

insert into movies values (21, 'Vesper Seeds',21,  174, 40, '29-Jun-2001');

insert into movies values (22, 'The Fallout',22,  208, 13, '17-JUL-2002');

insert into movies values (23, 'Downton Abbey: A New Era',23,  204, 23, '8-May-2002');

insert into movies values (24, 'Hustle',24,  257, 11, '3-Apr-2004');

insert into movies values (25, 'Cha Cha Real Smooth',25,  208, 31, '2-May-2005');

insert into movies values (26, 'Where the Crawdads Sing',26,  302, 34, '1-Jun-2006');

insert into movies values (27, 'Elvis',27,  73, 59, '14-Jul-2006');

insert into movies values (28, 'Three Thousand Years of Longing',28,  280, 27, '9-Apr-2007');

insert into movies values (29, 'Till',29,  163, 40, '3-JUL-2009');

insert into movies values (30, 'The Banshees of Inisherin',30,  209, 35, '26-Mar-2010');

insert into USERS values(1,'Ayse','Kaya');

insert into USERS values(2,'Mehmet','Guler');

insert into USERS values(3,'Hasan','Caymaz');

insert into USERS values(4,'Leyla','Solak');

insert into USERS values(5,'Fatma','Kara');

insert into USERS values(6,'Onur','Yılmaz');

insert into USERS values(7,'Caner','Kosar');

insert into USERS values(8,'Guler','Arar');

insert into USERS values(9,'Mahmut','Buldu');

insert into USERS values(10,'Gamze','Karatas');

insert into USERS values(11,'Boncuk','Kedi');

insert into USERS values(12,'Ali','Sasmaz');

insert into USERS values(13,'Gizem','Kaymaz');

insert into USERS values(14,'Necdet','Karademir');

insert into USERS values(15,'Berrak','Tuzunatac');

insert into USERS values(16,'Numan','Gursoy');

insert into USERS values(17,'Galip','Ersoz');

insert into USERS values(18,'Suzan','Sasmaz');

insert into USERS values(19,'Suzinak','Saruhan');

insert into USERS values(20,'Nazan','Olmez');

insert into USERS values(21,'Gunes','Mert');

insert into USERS values(22,'Niyazi','Karabacak');

insert into USERS values(23,'Zafer','Solmaz');

insert into USERS values(24,'Nurittin','Cam');

insert into USERS values(25,'Cansel','Eroglu');

insert into USERS values(26,'Kemal','Ozgen');

insert into USERS values(27,'Nermin','Demirbas');

insert into USERS values(28,'Berfin','Uyan');

insert into USERS values(29,'Baris','Ozcan');

insert into USERS values(30,'Lale','Usluer');

insert into UserContact values(1,'daydream','aysekaya12@gmail.com');

insert into UserContact values(2,'mehmetguler2','mehmetguler@gmail.com');

insert into UserContact values(3,'caymaz36','caymaz36@gmail.com');

insert into UserContact values(4,'solakk','leylasolakk@gmail.com');

insert into UserContact values(5,'karafatma','fatmakara@gmail.com');

insert into UserContact values(6,'yılmazonur','onuryılmaz@gmail.com');

insert into UserContact values(7,'cankosar','cankosar@gmail.com');

insert into UserContact values(8,'ararguler','gulerarar@gmail.com');

insert into UserContact values(9,'mahmutbuldu','mahmutbuldu@gmail.com');

insert into UserContact values(10,'gamzekaratas','gamzekaratas@gmail.com');

insert into UserContact values(11,'kedis','kedim@gmail.com');

insert into UserContact values(12,'sasmazali','aysekaya12@gmail.com');

insert into UserContact values(13,'kaymazz','gizemkaymaz@gmail.com');

insert into UserContact values(14,'karademirr','necdetkarademir@gmail.com');

insert into UserContact values(15,'tuzunatacberrak','berraktuzunaatac@gmail.com');

insert into UserContact values(16,'gursoynuman','numangursoy@gmail.com');

insert into UserContact values(17,'gersoz','galipersoz@gmail.com');

insert into UserContact values(18,'suzansuzi','sasmazsuzan@gmail.com');

insert into UserContact values(19,'suzinaksaruhan','suzinaksaruhan@gmail.com');

insert into UserContact values(20,'olmeznazann','nazanolmez@gmail.com');

insert into UserContact values(21,'mertguness','gunesmert@gmail.com');

insert into UserContact values(22,'karabacakniyazi','niyazikarabacak@gmail.com');

insert into UserContact values(23,'zaferrsolmaz','solmazzafer@gmail.com');

insert into UserContact values(24,'nurittincam','camnurittin@gmail.com');

insert into UserContact values(25,'canseleroglu','eroglucansel@gmail.com');

insert into UserContact values(26,'ozgenkemal','kemalozgen@gmail.com');

insert into UserContact values(27,'demirbasnermin','nermindemirbas@gmail.com');

insert into UserContact values(28,'berfinuyan','berfinuyan@gmail.com');

insert into UserContact values(29,'ozcanbaris','barisocan@gmail.com');

insert into UserContact values(30,'usluerlale','lalaeusluer@gmail.com');

insert into UserPhoto values(1,'userfoto1.jpg');

insert into UserPhoto values(2,'userfoto2.jpg');

insert into UserPhoto values(3,'userfoto3.jpg');

insert into UserPhoto values(4,'userfoto4.jpg');

insert into UserPhoto values(5,'userfoto5.jpg');

insert into UserPhoto values(6,'userfoto6.jpg');

insert into UserPhoto values(7,'userfoto7.jpg');

insert into UserPhoto values(8,'userfoto8.jpg');

insert into UserPhoto values(9,'userfoto9.jpg');

insert into UserPhoto values(10,'userfoto10.jpg');

insert into UserPhoto values(11,'userfoto11.jpg');

insert into UserPhoto values(12,'userfoto12.jpg');

insert into UserPhoto values(13,'userfoto13.jpg');

insert into UserPhoto values(14,'userfoto14.jpg');

insert into UserPhoto values(15,'userfoto15.jpg');

insert into UserPhoto values(16,'userfoto16.jpg');

insert into UserPhoto values(17,'userfoto17.jpg');

insert into UserPhoto values(18,'userfoto18.jpg');

insert into UserPhoto values(19,'userfoto19.jpg');

insert into UserPhoto values(20,'userfoto20.jpg');

insert into UserPhoto values(21,'userfoto21.jpg');

insert into UserPhoto values(22,'userfoto22.jpg');

insert into UserPhoto values(23,'userfoto23.jpg');

insert into UserPhoto values(24,'userfoto24.jpg');

insert into UserPhoto values(25,'userfoto25.jpg');

insert into UserPhoto values(26,'userfoto26.jpg');

insert into UserPhoto values(27,'userfoto27.jpg');

insert into UserPhoto values(28,'userfoto28.jpg');

insert into UserPhoto values(29,'userfoto29.jpg');

insert into UserPhoto values(30,'userfoto30.jpg');

insert into comments values(1,'Thats very nice movie!','17-JUL-2002');

insert into comments values(2,'It was a bit long and boring.','2-Aug-1999');

insert into comments values(3,'I dont understand why the imdb is so high.','7-Dec-2017');

insert into comments values(4,'It was a bit scary i couldnt sleep at night.','8-Jan-2005');

insert into comments values(5,'Excellent movie 10/10 one of the best in history.','30-Nov-2022');

insert into comments values(6,'Subtitles dont work in this movie.','31-Oct-2009');

insert into comments values(7,'Great movie deserves 10 stars.','7-Apr-2017');

insert into comments values(8,'Its a super movie. We recommend.','3-Jun-2010');

insert into comments values(9,'Finally over. Was very good.','30-May-2000');

insert into comments values(10,'<3','8-Mar-2015');

insert into comments values(11,'Thank you very much, by far the best movie site.','9-Feb-2009');

insert into comments values(12,'You are doing a great job admin. I wish you continued success.','11-Dec-1998');

insert into comments values(13,'It was very stagnant, those who want to waste time can watch it.','6-Nov-2001');

insert into comments values(14,'Its a boring movie with little to no unnecessary action.','4-JUL-2016');

insert into comments values(15,'The production is very good but the movie flows. The editing is poor. Really good quality but everything wasted.','9-Oct-2019');

insert into comments values(16,'Awesome movie','23-Sep-2010');

insert into comments values(17,'I have never seen such a stupid movie.','10-Aug-1990');

insert into comments values(18,'I dont understand what the friends who say it is very beautiful are saying it.','20-Jul-2001');

insert into comments values(19,'Go read the book then comment.','29-Jun-2001');

insert into comments values(20,'In short, the secret of the Universe Energy, Frequency and Vibration A movie that allows you to solve it, wake up and become aware, even awareness.','17-JUL-2002');

insert into comments values(21,'I guess children who dont know what a movie are walking around here.','8-May-2002');

insert into comments values(22,'Its a good movie to start with.','3-Apr-2004');

insert into comments values(23,'I had low expectations because the book was so good, but they managed to give that atmosphere.','2-May-2005');

insert into comments values(24,'The second movie will be much better.','1-Jun-2006');

insert into comments values(25,'One of the best sci-fi movies of all time, even the first.','14-Jul-2006');

insert into comments values(26,'Those who like this kind of movies will like it.','9-Apr-2007');

insert into comments values(27,'Friends who read the book will make better comments, but frankly, I do not even give 6 points.','3-JUL-2009');

insert into comments values(28,'Enjoy watching.','26-Mar-2010');

insert into comments values(29,'For this film, they used musical instruments that are not used today, just to create an atmosphere of mystery.','15-Jan-2015');

insert into comments values(30,'I wish we had a download option.','28-Feb-2015');

insert into COMMENT_REACTIONS values(1,4,0,1);

insert into COMMENT_REACTIONS values(2,2,13,2);

insert into COMMENT_REACTIONS values(3,32,20,3);

insert into COMMENT_REACTIONS values(4,10,0,4);

insert into COMMENT_REACTIONS values(5,8,7,5);

insert into COMMENT_REACTIONS values(6,1,0,6);

insert into COMMENT_REACTIONS values(7,8,0,7);

insert into COMMENT_REACTIONS values(8,13,0,8);

insert into COMMENT_REACTIONS values(9,9,0,9);

insert into COMMENT_REACTIONS values(10,5,0,10);

insert into COMMENT_REACTIONS values(11,19,0,11);

insert into COMMENT_REACTIONS values(12,22,0,12);

insert into COMMENT_REACTIONS values(13,3,122,13);

insert into COMMENT_REACTIONS values(14,4,2,14);

insert into COMMENT_REACTIONS values(15,9,0,15);

insert into COMMENT_REACTIONS values(16,45,5,16);

insert into COMMENT_REACTIONS values(17,70,40,17);

insert into COMMENT_REACTIONS values(18,34,8,18);

insert into COMMENT_REACTIONS values(19,0,0,19);

insert into COMMENT_REACTIONS values(20,4,0,20);

insert into COMMENT_REACTIONS values(21,9,17,21);

insert into COMMENT_REACTIONS values(22,3,0,22);

insert into COMMENT_REACTIONS values(23,59,0,23);

insert into COMMENT_REACTIONS values(24,3,0,24);

insert into COMMENT_REACTIONS values(25,8,6,25);

insert into COMMENT_REACTIONS values(26,6,0,26);

insert into COMMENT_REACTIONS values(27,7,12,27);

insert into COMMENT_REACTIONS values(28,90,0,28);

insert into COMMENT_REACTIONS values(29,7,0,29);

insert into COMMENT_REACTIONS values(30,43,3,30);

