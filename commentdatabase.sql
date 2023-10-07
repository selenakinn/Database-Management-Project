create table USERS ( 
    user_id number not null constraint user_pk primary key, 
    user_name varchar2(100) not null, 
    user_surname varchar2(100), 
    user_nickname varchar2(100) not null, 
    user_email varchar2(100) not null, 
    user_photo varchar2(50) 
)


insert into users values(1,'Ayse','Kaya','daydream','aysekaya12@gmail.com','userfoto1.jpg');
insert into users values(2,'Mehmet','Guler','mehmetguler2','mehmetguler@gmail.com','userfoto2.jpg');
insert into users values(3,'Hasan','Caymaz','caymaz36','caymaz36@gmail.com','userfoto3.jpg');
insert into users values(4,'Leyla','Solak','solakk','leylasolakk@gmail.com','userfoto4.jpg');
insert into users values(5,'Fatma','Kara','karafatma','fatmakara@gmail.com','userfoto5.jpg');
insert into users values(6,'Onur','Yılmaz','yılmazonur','onuryılmaz@gmail.com','userfoto6.jpg');
insert into users values(7,'Caner','Kosar','cankosar','cankosar@gmail.com','userfoto7.jpg');
insert into users values(8,'Guler','Arar','ararguler','gulerarar@gmail.com','userfoto8.jpg');
insert into users values(9,'Mahmut','Buldu','mahmutbuldu','mahmutbuldu@gmail.com','userfoto9.jpg');
insert into users values(10,'Gamze','Karatas','gamzekaratas','gamzekaratas@gmail.com','userfoto10.jpg');
insert into users values(11,'Boncuk','Kedi','kedis','kedim@gmail.com','userfoto11.jpg');
insert into users values(12,'Ali','Sasmaz','sasmazali','aysekaya12@gmail.com','userfoto12.jpg');
insert into users values(13,'Gizem','Kaymaz','kaymazz','gizemkaymaz@gmail.com','userfoto13.jpg');
insert into users values(14,'Necdet','Karademir','karademirr','necdetkarademir@gmail.com','userfoto14.jpg');
insert into users values(15,'Berrak','Tuzunatac','tuzunatacberrak','berraktuzunaatac@gmail.com','userfoto15.jpg');
insert into users values(16,'Numan','Gursoy','gursoynuman','numangursoy@gmail.com','userfoto16.jpg');
insert into users values(17,'Galip','Ersoz','gersoz','galipersoz@gmail.com','userfoto17.jpg');
insert into users values(18,'Suzan','Sasmaz','suzansuzi','sasmazsuzan@gmail.com','userfoto18.jpg');
insert into users values(19,'Suzinak','Saruhan','suzinaksaruhan','suzinaksaruhan@gmail.com','userfoto19.jpg');
insert into users values(20,'Nazan','Olmez','olmeznazann','nazanolmez@gmail.com','userfoto20.jpg');
insert into users values(21,'Gunes','Mert','mertguness','gunesmert@gmail.com','userfoto21.jpg');
insert into users values(22,'Niyazi','Karabacak','karabacakniyazi','niyazikarabacak@gmail.com','userfoto22.jpg');
insert into users values(23,'Zafer','Solmaz','zaferrsolmaz','solmazzafer@gmail.com','userfoto23.jpg');
insert into users values(24,'Nurittin','Cam','nurittincam','camnurittin@gmail.com','userfoto24.jpg');
insert into users values(25,'Cansel','Eroglu','canseleroglu','eroglucansel@gmail.com','userfoto25.jpg');
insert into users values(26,'Kemal','Ozgen','ozgenkemal','kemalozgen@gmail.com','userfoto26.jpg');
insert into users values(27,'Nermin','Demirbas','demirbasnermin','nermindemirbas@gmail.com','userfoto27.jpg');
insert into users values(28,'Berfin','Uyan','berfinuyan','berfinuyan@gmail.com','userfoto28.jpg');
insert into users values(29,'Baris','Ozcan','ozcanbaris','barisocan@gmail.com','userfoto29.jpg');
insert into users values(30,'Lale','Usluer','usluerlale','lalaeusluer@gmail.com','userfoto30.jpg');



create table Movies ( 
    movie_id number not null constraint movies_pk primary key, 
    movie_name varchar2(200) not null, 
    movie_type varchar2(100) not null, 
    movie_likes number, 
    movie_dislikes number, 
    movie_date date not null 
)


INSERT INTO Movies VALUES (1, 'Nope', 'Horror', 156, 14, '17-JUL-2002');
INSERT INTO Movies VALUES (2, 'Men', 'Thriller ,Horror', 256, 12, '2-Aug-1999');
INSERT INTO Movies VALUES (3, 'Fresh', 'Thriller, Horror, Comedy', 153, 51, '7-Dec-2017');
INSERT INTO Movies VALUES (4, 'Slash/Back', 'Science Fiction,Thriller, Horror', 280, 37, '8-Jan-2005');
INSERT INTO Movies VALUES (5, 'Barbarian', 'Thriller, Horror', 286, 14, '30-Nov-2022');
INSERT INTO Movies VALUES (6, 'Gaesterne', 'Drama,Thriller, Horror', 157, 4, '31-Oct-2009');
INSERT INTO Movies VALUES (7, 'The Unbearable Weight of Massive Talent', 'Action,Comedy, Crime', 105, 19, '7-Apr-2017');
INSERT INTO Movies VALUES (8, 'Weird: The Al Yankovic Story', 'Comedy,Musical', 107, 15, '3-Jun-2010');
INSERT INTO Movies VALUES (9, ' See How They Run', 'Thriller, Mystery,Comedy', 137, 41, '30-May-2000');
INSERT INTO Movies VALUES (11, 'Bromates', 'Comedy', 191, 44, '8-Mar-2015');
INSERT INTO Movies VALUES (12, 'Confess, Fletch', 'Mystery,Comedy, Crime', 254, 37, '9-Feb-2009');
INSERT INTO Movies VALUES (13, 'Avatar: The Way of Water', 'Science Fiction, Action', 367, 39, '11-Dec-1998');
INSERT INTO Movies VALUES (14, 'Everything Everywhere All at Once', 'Science Fiction,  Action, Adventure', 234, 16, '6-Nov-2001');
INSERT INTO Movies VALUES (15, 'Spiderhead', 'Science Fiction, Thriller', 186, 9, '4-JUL-2016');
INSERT INTO Movies VALUES (16, 'Dual', 'Science Fiction,  Comedy', 98, 49, '17-JUL-2002');
INSERT INTO Movies VALUES (17, 'Brian and Charles', 'Science Fiction,  Comedy, Drama', 261, 23, '9-Oct-2019');
INSERT INTO Movies VALUES (18, 'Crimes of the Future', 'Science Fiction,Horror', 257, 27, '23-Sep-2010');
INSERT INTO Movies VALUES (19, 'After Yang', 'Science Fiction, Drama', 189, 50, '10-Aug-1990');
INSERT INTO Movies VALUES (20, 'The Adam Project', 'Science Fiction, Adventure', 251, 10, '20-Jul-2001');
INSERT INTO Movies VALUES (21, 'Vesper Seeds', 'Science Fiction,  Adventure, Drama', 174, 40, '29-Jun-2001');
INSERT INTO Movies VALUES (22, 'The Fallout', 'Drama', 208, 13, '17-JUL-2002');
INSERT INTO Movies VALUES (23, 'Downton Abbey: A New Era', 'Drama, Romantic', 204, 23, '8-May-2002');
INSERT INTO Movies VALUES (24, 'Hustle', 'Drama,Comedy', '257', '11', '3-Apr-2004');
INSERT INTO Movies VALUES (25, 'Cha Cha Real Smooth', 'Drama, Comedy, Romantic', 208, 31, '2-May-2005');
INSERT INTO Movies VALUES (26, 'Where the Crawdads Sing', 'Drama, Thriller, Mystery', 302, 34, '1-Jun-2006');
INSERT INTO Movies VALUES (27, 'Elvis', 'Drama, Musical', '73', '59', '14-Jul-2006');
INSERT INTO Movies VALUES (28, 'Three Thousand Years of Longing', 'Drama, Fantastic, Adventure', 280, 27, '9-Apr-2007');
INSERT INTO Movies VALUES (29, 'Till', 'Drama, History', 163, 40, '3-JUL-2009');
INSERT INTO Movies VALUES (30, 'The Banshees of Inisherin', 'Drama,Comedy', 209, 35, '26-Mar-2010');



create table COMMENTS ( 
    comment_id number not null constraint comments_pk primary key, 
    comment_content varchar2(1000) not null, 
    comment_date date not null, 
    comment_likes number, 
    comment_dislikes number 
)


insert into comments values(1,'Thats very nice movie!','17-JUL-2002',4,0);
insert into comments values(2,'It was a bit long and boring.','2-Aug-1999',2,13);
insert into comments values(3,'I dont understand why the imdb is so high.','7-Dec-2017',32,20);
insert into comments values(4,'It was a bit scary i couldnt sleep at night.','8-Jan-2005',10,0);
insert into comments values(5,'Excellent movie 10/10 one of the best in history.','30-Nov-2022',8,7);
insert into comments values(6,'Subtitles dont work in this movie.','31-Oct-2009',1,0);
insert into comments values(7,'Great movie deserves 10 stars.','7-Apr-2017',8,0);
insert into comments values(8,'Its a super movie. We recommend.','3-Jun-2010',13,0);
insert into comments values(9,'Finally over. Was very good.','30-May-2000',9,0);
insert into comments values(10,'<3','8-Mar-2015',5,0);
insert into comments values(11,'Thank you very much, by far the best movie site.','9-Feb-2009',19,0);
insert into comments values(12,'You are doing a great job admin. I wish you continued success.','11-Dec-1998',22,0);
insert into comments values(13,'It was very stagnant, those who want to waste time can watch it.','6-Nov-2001',3,122);
insert into comments values(14,'Its a boring movie with little to no unnecessary action.','4-JUL-2016',4,2);
insert into comments values(15,'The production is very good but the movie flows. The editing is poor. Really good quality but everything wasted.','9-Oct-2019',9,0);
insert into comments values(16,'Awesome movie','23-Sep-2010',45,5);
insert into comments values(17,'I have never seen such a stupid movie.','10-Aug-1990',70,40);
insert into comments values(18,'I dont understand what the friends who say it is very beautiful are saying it.','20-Jul-2001',34,8);
insert into comments values(19,'Go read the book then comment.','29-Jun-2001',0,0);
insert into comments values(20,'In short, the secret of the Universe Energy, Frequency and Vibration A movie that allows you to solve it, wake up and become aware, even awareness.','17-JUL-2002',4,0);
insert into comments values(21,'I guess children who dont know what a movie are walking around here.','8-May-2002',9,17);
insert into comments values(22,'Its a good movie to start with.','3-Apr-2004',3,0);
insert into comments values(23,'I had low expectations because the book was so good, but they managed to give that atmosphere.','2-May-2005',59,0);
insert into comments values(24,'The second movie will be much better.','1-Jun-2006',3,0);
insert into comments values(25,'One of the best sci-fi movies of all time, even the first.','14-Jul-2006',8,6);
insert into comments values(26,'Those who like this kind of movies will like it.','9-Apr-2007',6,0);
insert into comments values(27,'Friends who read the book will make better comments, but frankly, I do not even give 6 points.','3-JUL-2009',7,12);
insert into comments values(28,'Enjoy watching.','26-Mar-2010',90,0);
insert into comments values(29,'For this film, they used musical instruments that are not used today, just to create an atmosphere of mystery.','15-Jan-2015',7,0);
insert into comments values(30,'I wish we had a download option.','28-Feb-2015',43,3);