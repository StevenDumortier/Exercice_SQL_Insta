CREATE DATABASE instagramme;

USE instagramme;

CREATE TABLE utilisateurs(
    id integer auto_increment not null primary key,
    username varchar(30) not null,
    nom varchar(30) not null,
    prenom varchar(30)not null,
    adresse_email varchar(30)not null,
    avatar varchar(30)
);
CREATE TABLE photos(
    id integer auto_increment not null primary key,
    url_photo varchar(30) not null,
    nombre_like integer,
    id_utilisateur integer, 
    Foreign key (id_utilisateur) references utilisateurs(id) on delete set null,
);
CREATE TABLE likes(
    id integer auto_increment not null primary key,
    likes varchar(1), -- like = 0 pas de like   like=1 alors il y a un like
    id_utilisateur integer,
    id_photo integer, 
    Foreign key (id_utilisateur) references utilisateurs(id) on delete set null,
    Foreign key (id_photo) references photos(id) on delete set null
);
CREATE TABLE comments(
    id integer auto_increment not null primary key,
    commentaire varchar(50),
    id_utilisateur integer, 
    id_photo integer,
    Foreign key (id_utilisateur) references utilisateurs(id) on delete set null,
    Foreign key (id_photo) references photos(id) on delete set null
);

insert into utilisateurs (username, nom, prenom, adresse_email, avatar) values ('keickhoff0', 'Eickhoff', 'Kitty', 'keickhoff0@un.org', 'https://robohash.org/veritatisquasasperiores.png?size=50x50&set=set1');
insert into utilisateurs (username, nom, prenom, adresse_email, avatar) values ('epavinese1', 'Pavinese', 'Eydie', 'epavinese1@yale.edu', 'https://robohash.org/quisquamiustoquod.png?size=50x50&set=set1');
insert into utilisateurs (username, nom, prenom, adresse_email, avatar) values ('ugrimsditch2', 'Grimsditch', 'Ulrike', 'ugrimsditch2@bbc.co.uk', 'https://robohash.org/fugitquipossimus.png?size=50x50&set=set1');
insert into utilisateurs (username, nom, prenom, adresse_email, avatar) values ('ablamey3', 'Blamey', 'Amelia', 'ablamey3@posterous.com', 'https://robohash.org/corruptidignissimosexpedita.png?size=50x50&set=set1');
insert into utilisateurs (username, nom, prenom, adresse_email, avatar) values ('wlangtree4', 'Langtree', 'Winston', 'wlangtree4@1688.com', 'https://robohash.org/etducimusitaque.png?size=50x50&set=set1');
insert into utilisateurs (username, nom, prenom, adresse_email, avatar) values ('iprobin5', 'Probin', 'Ilyssa', 'iprobin5@icq.com', 'https://robohash.org/illodoloremqueharum.png?size=50x50&set=set1');
insert into utilisateurs (username, nom, prenom, adresse_email, avatar) values ('cportch6', 'Portch', 'Cozmo', 'cportch6@liveinternet.ru', 'https://robohash.org/inciduntquiaminima.png?size=50x50&set=set1');
insert into utilisateurs (username, nom, prenom, adresse_email, avatar) values ('clindeberg7', 'Lindeberg', 'Cyrillus', 'clindeberg7@sphinn.com', 'https://robohash.org/ducimusporroodit.png?size=50x50&set=set1');
insert into utilisateurs (username, nom, prenom, adresse_email, avatar) values ('sguirau8', 'Guirau', 'Silvano', 'sguirau8@alibaba.com', 'https://robohash.org/explicaboeacorporis.png?size=50x50&set=set1');
insert into utilisateurs (username, nom, prenom, adresse_email, avatar) values ('cconnerly9', 'Connerly', 'Cirilo', 'cconnerly9@intel.com', 'https://robohash.org/cupiditatecumqueunde.png?size=50x50&set=set1');

insert into comments (id_utilisateur, id_photo, commentaire) values (8, 7, 'rutrum nulla nunc purus phasellus in felis donec');
insert into comments (id_utilisateur, id_photo, commentaire) values (5, 4, 'curabitur gravida nisi');
insert into comments (id_utilisateur, id_photo, commentaire) values (2, 16, 'ultrices enim lorem ipsum');
insert into comments (id_utilisateur, id_photo, commentaire) values (9, 4, 'blandit nam nulla integer pede justo lacinia eget');
insert into comments (id_utilisateur, id_photo, commentaire) values (1, 24, 'interdum mauris ullamcorper purus sit amet nulla');
insert into comments (id_utilisateur, id_photo, commentaire) values (7, 12, 'proin leo odio porttitor');
insert into comments (id_utilisateur, id_photo, commentaire) values (8, 26, 'dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum');
insert into comments (id_utilisateur, id_photo, commentaire) values (7, 16, 'rutrum neque aenean auctor gravida sem');
insert into comments (id_utilisateur, id_photo, commentaire) values (7, 10, 'vestibulum ac est lacinia nisi venenatis tristique fusce congue diam');
insert into comments (id_utilisateur, id_photo, commentaire) values (2, 14, 'eget');
insert into comments (id_utilisateur, id_photo, commentaire) values (4, 6, 'id lobortis convallis tortor risus dapibus augue vel accumsan');
insert into comments (id_utilisateur, id_photo, commentaire) values (8, 10, 'pretium quis lectus suspendisse potenti');
insert into comments (id_utilisateur, id_photo, commentaire) values (1, 20, 'eros');
insert into comments (id_utilisateur, id_photo, commentaire) values (7, 13, 'pellentesque volutpat dui maecenas tristique est et');
insert into comments (id_utilisateur, id_photo, commentaire) values (6, 30, 'eu mi nulla ac enim in tempor turpis');
insert into comments (id_utilisateur, id_photo, commentaire) values (10, 29, 'fusce congue diam id ornare');
insert into comments (id_utilisateur, id_photo, commentaire) values (6, 28, 'lorem ipsum dolor sit amet consectetuer adipiscing');
insert into comments (id_utilisateur, id_photo, commentaire) values (3, 2, 'amet nulla quisque arcu libero');
insert into comments (id_utilisateur, id_photo, commentaire) values (8, 21, 'nascetur ridiculus mus etiam vel augue vestibulum rutrum');
insert into comments (id_utilisateur, id_photo, commentaire) values (3, 17, 'vitae nisl aenean lectus pellentesque eget nunc donec');
insert into comments (id_utilisateur, id_photo, commentaire) values (3, 29, 'sed ante vivamus tortor');
insert into comments (id_utilisateur, id_photo, commentaire) values (5, 4, 'in magna bibendum imperdiet nullam orci pede venenatis');
insert into comments (id_utilisateur, id_photo, commentaire) values (3, 24, 'non sodales sed tincidunt eu felis');
insert into comments (id_utilisateur, id_photo, commentaire) values (9, 14, 'nunc rhoncus dui');
insert into comments (id_utilisateur, id_photo, commentaire) values (9, 20, 'vel ipsum praesent blandit lacinia erat vestibulum sed magna');
insert into comments (id_utilisateur, id_photo, commentaire) values (9, 14, 'nisl nunc nisl duis bibendum felis sed interdum venenatis turpis');
insert into comments (id_utilisateur, id_photo, commentaire) values (9, 23, 'nulla nisl nunc nisl duis bibendum felis sed interdum venenatis');
insert into comments (id_utilisateur, id_photo, commentaire) values (3, 24, 'nam nulla');
insert into comments (id_utilisateur, id_photo, commentaire) values (3, 26, 'sapien iaculis');
insert into comments (id_utilisateur, id_photo, commentaire) values (9, 11, 'ante vestibulum ante ipsum primis in');
insert into comments (id_utilisateur, id_photo, commentaire) values (2, 1, 'vitae consectetuer eget rutrum at');
insert into comments (id_utilisateur, id_photo, commentaire) values (7, 18, 'felis sed lacus morbi sem mauris laoreet ut');
insert into comments (id_utilisateur, id_photo, commentaire) values (9, 13, 'primis in');
insert into comments (id_utilisateur, id_photo, commentaire) values (5, 3, 'vestibulum ante ipsum primis in faucibus orci luctus');
insert into comments (id_utilisateur, id_photo, commentaire) values (9, 26, 'natoque penatibus et magnis dis parturient montes nascetur ridiculus mus');
insert into comments (id_utilisateur, id_photo, commentaire) values (4, 11, 'erat quisque');
insert into comments (id_utilisateur, id_photo, commentaire) values (8, 25, 'pretium iaculis justo in hac habitasse');
insert into comments (id_utilisateur, id_photo, commentaire) values (9, 12, 'cubilia curae donec pharetra magna vestibulum');
insert into comments (id_utilisateur, id_photo, commentaire) values (5, 17, 'id nulla ultrices aliquet maecenas leo odio condimentum');
insert into comments (id_utilisateur, id_photo, commentaire) values (7, 4, 'a pede posuere nonummy');
insert into comments (id_utilisateur, id_photo, commentaire) values (7, 12, 'vulputate nonummy');
insert into comments (id_utilisateur, id_photo, commentaire) values (9, 22, 'proin at');
insert into comments (id_utilisateur, id_photo, commentaire) values (10, 14, 'cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat');
insert into comments (id_utilisateur, id_photo, commentaire) values (3, 12, 'neque aenean auctor gravida sem');
insert into comments (id_utilisateur, id_photo, commentaire) values (8, 9, 'augue a suscipit nulla elit ac nulla sed');
insert into comments (id_utilisateur, id_photo, commentaire) values (6, 4, 'suscipit ligula in lacus curabitur at ipsum ac tellus');
insert into comments (id_utilisateur, id_photo, commentaire) values (1, 16, 'ac est lacinia nisi venenatis tristique fusce congue diam');
insert into comments (id_utilisateur, id_photo, commentaire) values (10, 20, 'eu est congue elementum in');
insert into comments (id_utilisateur, id_photo, commentaire) values (7, 23, 'proin risus praesent lectus vestibulum');
insert into comments (id_utilisateur, id_photo, commentaire) values (3, 17, 'justo aliquam quis turpis eget elit sodales scelerisque mauris sit');

insert into likes (likes, id_utilisateur, id_photo) values (1, 5, 23);
insert into likes (likes, id_utilisateur, id_photo) values (0, 2, 28);
insert into likes (likes, id_utilisateur, id_photo) values (0, 6, 26);
insert into likes (likes, id_utilisateur, id_photo) values (1, 5, 26);
insert into likes (likes, id_utilisateur, id_photo) values (0, 7, 26);
insert into likes (likes, id_utilisateur, id_photo) values (0, 8, 25);
insert into likes (likes, id_utilisateur, id_photo) values (1, 2, 1);
insert into likes (likes, id_utilisateur, id_photo) values (1, 9, 21);
insert into likes (likes, id_utilisateur, id_photo) values (0, 5, 3);
insert into likes (likes, id_utilisateur, id_photo) values (0, 3, 29);
insert into likes (likes, id_utilisateur, id_photo) values (0, 10, 9);
insert into likes (likes, id_utilisateur, id_photo) values (1, 3, 22);
insert into likes (likes, id_utilisateur, id_photo) values (0, 4, 5);
insert into likes (likes, id_utilisateur, id_photo) values (1, 5, 14);
insert into likes (likes, id_utilisateur, id_photo) values (1, 2, 20);
insert into likes (likes, id_utilisateur, id_photo) values (1, 6, 27);
insert into likes (likes, id_utilisateur, id_photo) values (0, 10, 13);
insert into likes (likes, id_utilisateur, id_photo) values (1, 4, 11);
insert into likes (likes, id_utilisateur, id_photo) values (1, 7, 6);
insert into likes (likes, id_utilisateur, id_photo) values (1, 9, 9);
insert into likes (likes, id_utilisateur, id_photo) values (1, 10, 11);
insert into likes (likes, id_utilisateur, id_photo) values (0, 8, 12);
insert into likes (likes, id_utilisateur, id_photo) values (0, 4, 19);
insert into likes (likes, id_utilisateur, id_photo) values (1, 1, 5);
insert into likes (likes, id_utilisateur, id_photo) values (0, 5, 1);
insert into likes (likes, id_utilisateur, id_photo) values (1, 1, 16);
insert into likes (likes, id_utilisateur, id_photo) values (1, 4, 13);
insert into likes (likes, id_utilisateur, id_photo) values (1, 3, 7);
insert into likes (likes, id_utilisateur, id_photo) values (1, 10, 26);
insert into likes (likes, id_utilisateur, id_photo) values (1, 6, 25);
insert into likes (likes, id_utilisateur, id_photo) values (0, 2, 1);
insert into likes (likes, id_utilisateur, id_photo) values (0, 3, 10);
insert into likes (likes, id_utilisateur, id_photo) values (1, 6, 20);
insert into likes (likes, id_utilisateur, id_photo) values (1, 7, 30);
insert into likes (likes, id_utilisateur, id_photo) values (1, 5, 2);
insert into likes (likes, id_utilisateur, id_photo) values (1, 2, 1);
insert into likes (likes, id_utilisateur, id_photo) values (0, 8, 8);
insert into likes (likes, id_utilisateur, id_photo) values (1, 4, 26);
insert into likes (likes, id_utilisateur, id_photo) values (1, 6, 30);
insert into likes (likes, id_utilisateur, id_photo) values (1, 5, 20);
insert into likes (likes, id_utilisateur, id_photo) values (0, 5, 10);
insert into likes (likes, id_utilisateur, id_photo) values (0, 5, 26);
insert into likes (likes, id_utilisateur, id_photo) values (0, 6, 3);
insert into likes (likes, id_utilisateur, id_photo) values (0, 7, 15);
insert into likes (likes, id_utilisateur, id_photo) values (1, 4, 10);
insert into likes (likes, id_utilisateur, id_photo) values (1, 1, 28);
insert into likes (likes, id_utilisateur, id_photo) values (1, 9, 8);
insert into likes (likes, id_utilisateur, id_photo) values (1, 1, 16);
insert into likes (likes, id_utilisateur, id_photo) values (1, 2, 17);
insert into likes (likes, id_utilisateur, id_photo) values (1, 2, 4);
insert into likes (likes, id_utilisateur, id_photo) values (1, 9, 17);
insert into likes (likes, id_utilisateur, id_photo) values (1, 6, 28);
insert into likes (likes, id_utilisateur, id_photo) values (0, 3, 18);
insert into likes (likes, id_utilisateur, id_photo) values (0, 5, 21);
insert into likes (likes, id_utilisateur, id_photo) values (1, 6, 9);
insert into likes (likes, id_utilisateur, id_photo) values (1, 10, 26);
insert into likes (likes, id_utilisateur, id_photo) values (1, 8, 16);






insert into photos (id_utilisateur,  url_photo) values (3, 'https://robohash.org/quidemquisquamfacere.png?size=50x50&set=set1');
insert into photos (id_utilisateur,  url_photo) values (9,  'https://robohash.org/sitsequiomnis.png?size=50x50&set=set1');
insert into photos (id_utilisateur,  url_photo) values (10,  'https://robohash.org/omnisaliascupiditate.png?size=50x50&set=set1');
insert into photos (id_utilisateur,  url_photo) values (7,  'https://robohash.org/beataevoluptaset.png?size=50x50&set=set1');
insert into photos (id_utilisateur,  url_photo) values (8,  'https://robohash.org/natusporroest.png?size=50x50&set=set1');
insert into photos (id_utilisateur,  url_photo) values (5,  'https://robohash.org/autinconsectetur.png?size=50x50&set=set1');
insert into photos (id_utilisateur,  url_photo) values (7,  'https://robohash.org/dolorvelitquas.png?size=50x50&set=set1');
insert into photos (id_utilisateur,  url_photo) values (8,  'https://robohash.org/recusandaequosaut.png?size=50x50&set=set1');
insert into photos (id_utilisateur,  url_photo) values (3,  'https://robohash.org/aspernaturetet.png?size=50x50&set=set1');
insert into photos (id_utilisateur,  url_photo) values (10,  'https://robohash.org/officiaarchitectoadipisci.png?size=50x50&set=set1');
insert into photos (id_utilisateur,  url_photo) values (7,  'https://robohash.org/occaecatibeataeitaque.png?size=50x50&set=set1');
insert into photos (id_utilisateur,  url_photo) values (5,  'https://robohash.org/adoccaecatiadipisci.png?size=50x50&set=set1');
insert into photos (id_utilisateur,  url_photo) values (2, 'https://robohash.org/veniamrepellateveniet.png?size=50x50&set=set1');
insert into photos (id_utilisateur,  url_photo) values (8,  'https://robohash.org/saepeutvoluptatem.png?size=50x50&set=set1');
insert into photos (id_utilisateur,  url_photo) values (8,  'https://robohash.org/autofficiisharum.png?size=50x50&set=set1');
insert into photos (id_utilisateur,  url_photo) values (3,  'https://robohash.org/ducimusaliquidlaboriosam.png?size=50x50&set=set1');
insert into photos (id_utilisateur,  url_photo) values (2, 'https://robohash.org/perferendisquiaoptio.png?size=50x50&set=set1');
insert into photos (id_utilisateur,  url_photo) values (9,  'https://robohash.org/molestiaedelenitiassumenda.png?size=50x50&set=set1');
insert into photos (id_utilisateur,  url_photo) values (3,  'https://robohash.org/esteaqui.png?size=50x50&set=set1');
insert into photos (id_utilisateur,  url_photo) values (7,  'https://robohash.org/suntquisit.png?size=50x50&set=set1');
insert into photos (id_utilisateur,  url_photo) values (2,  'https://robohash.org/suntsitqui.png?size=50x50&set=set1');
insert into photos (id_utilisateur,  url_photo) values (7, 'https://robohash.org/odiosimiliquemaiores.png?size=50x50&set=set1');
insert into photos (id_utilisateur,  url_photo) values (5, 'https://robohash.org/minimanostrumfacilis.png?size=50x50&set=set1');
insert into photos (id_utilisateur, url_photo) values (6, 'https://robohash.org/fugiteligendiaut.png?size=50x50&set=set1');
insert into photos (id_utilisateur, url_photo) values (2, 'https://robohash.org/quiquisodit.png?size=50x50&set=set1');
insert into photos (id_utilisateur, url_photo) values (5, 'https://robohash.org/eosautemexplicabo.png?size=50x50&set=set1');
insert into photos (id_utilisateur, url_photo) values (6, 'https://robohash.org/molestiasblanditiisiusto.png?size=50x50&set=set1');
insert into photos (id_utilisateur, url_photo) values (1,  'https://robohash.org/natusadreiciendis.png?size=50x50&set=set1');
insert into photos (id_utilisateur, url_photo) values (10,  'https://robohash.org/sintfuganemo.png?size=50x50&set=set1');
insert into photos (id_utilisateur, url_photo) values (4,  'https://robohash.org/sedaspernaturpossimus.png?size=50x50&set=set1');

-- 4. Pour tous les commentaires, montrer le contenu et le username de l'auteur
SELECT comments.commentaire, utilisateurs.username from comments join utilisateurs on comments.id_utilisateur = utilisateurs.id;

--5. Pour chaque commentaire, afficher son contenu et l'url de la photo à laquel le commentaire a été ajouté
SELECT comments.commentaire, photos.url_photo from comments join utilisateurs on comments.id_utilisateur = utilisateurs.id join photos on photos.id_utilisateur = utilisateurs.id;

--6. Afficher l'url de chaque photo et le nom d'utilisateur de l'auteur
SELECT utilisateurs.username, photos.url_photo from photos join utilisateurs on photos.id_utilisateur = utilisateurs.id;

--7. Trouver tous les commentaires pour la photo d'id 3, avec le username de l'utilisateur qui a commenté
SELECT comments.commentaire, utilisateurs.username, photos.url_photo from comments join utilisateurs on comments.id_utilisateur = utilisateurs.id join photos on photos.id_utilisateur = utilisateurs.id where photos.id = 3;

-- 8 Trouver tous les url des photos ainsi que tous les commentaires qui ont été posté par l'auteur de la photo

SELECT photos.url_photo, comments.commentaire from comments join photos on photos.id_utilisateur = utilisateurs.id where photos.id_utilisateur = comments.id_utilisateur;

--9. A l'exercice précedent afficher aussi le nom de l'utilisateur qui a commenté ses propres photos
SELECT utilisateurs.username,photos.url_photo, comments.commentaire from comments join utilisateurs on comments.id_utilisateur = utilisateurs.id join photos on photos.id_utilisateur = utilisateurs.id where photos.id_utilisateur = comments.id_utilisateur;

--10 10. Le nombre de likes pour la photo d’ID 4
SELECT count(*) as "Nombre de like" from likes join photos on likes.id_photo = photos.id where photos.id = 4 and likes=1;
