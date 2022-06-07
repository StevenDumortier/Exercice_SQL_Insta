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
    like varchar(1),
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

insert into likes (id_utilisateur, id_photo, commentaire) values (3, 24, 'interdum mauris ullamcorper purus');
insert into likes (id_utilisateur, id_photo, commentaire) values (4, 13, 'nunc vestibulum ante ipsum primis in faucibus orci luctus');
insert into likes (id_utilisateur, id_photo, commentaire) values (5, 6, 'iaculis congue vivamus metus arcu adipiscing molestie hendrerit');
insert into likes (id_utilisateur, id_photo, commentaire) values (1, 8, 'ipsum praesent blandit lacinia erat');
insert into likes (id_utilisateur, id_photo, commentaire) values (10, 3, 'duis aliquam convallis nunc proin at turpis');
insert into likes (id_utilisateur, id_photo, commentaire) values (3, 27, 'justo etiam pretium iaculis justo in hac habitasse platea dictumst');
insert into likes (id_utilisateur, id_photo, commentaire) values (6, 24, 'velit nec nisi vulputate nonummy maecenas tincidunt');
insert into likes (id_utilisateur, id_photo, commentaire) values (7, 10, 'vulputate');
insert into likes (id_utilisateur, id_photo, commentaire) values (3, 15, 'vel accumsan');
insert into likes (id_utilisateur, id_photo, commentaire) values (10, 14, 'tortor duis');
insert into likes (id_utilisateur, id_photo, commentaire) values (1, 16, 'sit amet eros suspendisse accumsan');
insert into likes (id_utilisateur, id_photo, commentaire) values (2, 4, 'eu est congue elementum in');
insert into likes (id_utilisateur, id_photo, commentaire) values (6, 25, 'et magnis dis');
insert into likes (id_utilisateur, id_photo, commentaire) values (5, 3, 'vestibulum ante ipsum');
insert into likes (id_utilisateur, id_photo, commentaire) values (10, 13, 'ipsum primis in faucibus orci luctus et ultrices posuere');
insert into likes (id_utilisateur, id_photo, commentaire) values (10, 24, 'in faucibus orci luctus et ultrices');
insert into likes (id_utilisateur, id_photo, commentaire) values (5, 21, 'tempor');
insert into likes (id_utilisateur, id_photo, commentaire) values (2, 8, 'metus sapien ut nunc vestibulum ante ipsum primis');
insert into likes (id_utilisateur, id_photo, commentaire) values (10, 8, 'quam suspendisse potenti nullam porttitor lacus');
insert into likes (id_utilisateur, id_photo, commentaire) values (10, 22, 'erat eros viverra eget congue eget semper');
insert into likes (id_utilisateur, id_photo, commentaire) values (5, 4, 'purus aliquet at feugiat non pretium quis lectus');
insert into likes (id_utilisateur, id_photo, commentaire) values (2, 10, 'ultrices aliquet maecenas');
insert into likes (id_utilisateur, id_photo, commentaire) values (6, 8, 'convallis nulla neque libero convallis eget eleifend');
insert into likes (id_utilisateur, id_photo, commentaire) values (8, 23, 'porta volutpat quam pede lobortis ligula sit amet eleifend pede');
insert into likes (id_utilisateur, id_photo, commentaire) values (9, 16, 'at nunc commodo placerat praesent blandit nam');
insert into likes (id_utilisateur, id_photo, commentaire) values (4, 23, 'eget tincidunt eget');
insert into likes (id_utilisateur, id_photo, commentaire) values (1, 20, 'eleifend quam a');
insert into likes (id_utilisateur, id_photo, commentaire) values (7, 28, 'proin leo odio porttitor');
insert into likes (id_utilisateur, id_photo, commentaire) values (3, 5, 'in purus eu magna vulputate luctus cum sociis natoque penatibus');
insert into likes (id_utilisateur, id_photo, commentaire) values (1, 9, 'faucibus orci luctus et');
insert into likes (id_utilisateur, id_photo, commentaire) values (7, 29, 'leo odio porttitor');
insert into likes (id_utilisateur, id_photo, commentaire) values (1, 26, 'justo');
insert into likes (id_utilisateur, id_photo, commentaire) values (8, 19, 'ipsum primis in faucibus orci luctus et ultrices posuere cubilia');
insert into likes (id_utilisateur, id_photo, commentaire) values (6, 13, 'turpis a pede posuere nonummy');
insert into likes (id_utilisateur, id_photo, commentaire) values (7, 8, 'at dolor quis odio consequat varius integer');
insert into likes (id_utilisateur, id_photo, commentaire) values (10, 16, 'justo eu massa donec dapibus duis at');
insert into likes (id_utilisateur, id_photo, commentaire) values (10, 10, 'faucibus cursus');
insert into likes (id_utilisateur, id_photo, commentaire) values (5, 27, 'vehicula condimentum curabitur');
insert into likes (id_utilisateur, id_photo, commentaire) values (4, 9, 'ante nulla');
insert into likes (id_utilisateur, id_photo, commentaire) values (1, 26, 'nisi at');
insert into likes (id_utilisateur, id_photo, commentaire) values (4, 28, 'in quam fringilla rhoncus mauris enim');
insert into likes (id_utilisateur, id_photo, commentaire) values (4, 18, 'quis augue luctus tincidunt nulla mollis molestie lorem quisque');
insert into likes (id_utilisateur, id_photo, commentaire) values (2, 29, 'in tempus sit amet sem fusce consequat');
insert into likes (id_utilisateur, id_photo, commentaire) values (6, 2, 'sodales scelerisque mauris');
insert into likes (id_utilisateur, id_photo, commentaire) values (8, 6, 'sit amet erat nulla tempus vivamus in felis eu');
insert into likes (id_utilisateur, id_photo, commentaire) values (10, 20, 'cubilia curae mauris viverra diam vitae quam suspendisse potenti');
insert into likes (id_utilisateur, id_photo, commentaire) values (6, 4, 'lacinia eget tincidunt eget tempus vel');
insert into likes (id_utilisateur, id_photo, commentaire) values (7, 19, 'elit proin interdum');
insert into likes (id_utilisateur, id_photo, commentaire) values (3, 20, 'donec ut dolor morbi vel lectus');
insert into likes (id_utilisateur, id_photo, commentaire) values (3, 17, 'id sapien in sapien');

insert into photos (id_utilisateur, nombre_like, url_photo) values (3, 50, 'https://robohash.org/quidemquisquamfacere.png?size=50x50&set=set1');
insert into photos (id_utilisateur, nombre_like, url_photo) values (9, 140, 'https://robohash.org/sitsequiomnis.png?size=50x50&set=set1');
insert into photos (id_utilisateur, nombre_like, url_photo) values (10, 919, 'https://robohash.org/omnisaliascupiditate.png?size=50x50&set=set1');
insert into photos (id_utilisateur, nombre_like, url_photo) values (7, 457, 'https://robohash.org/beataevoluptaset.png?size=50x50&set=set1');
insert into photos (id_utilisateur, nombre_like, url_photo) values (8, 113, 'https://robohash.org/natusporroest.png?size=50x50&set=set1');
insert into photos (id_utilisateur, nombre_like, url_photo) values (5, 637, 'https://robohash.org/autinconsectetur.png?size=50x50&set=set1');
insert into photos (id_utilisateur, nombre_like, url_photo) values (7, 943, 'https://robohash.org/dolorvelitquas.png?size=50x50&set=set1');
insert into photos (id_utilisateur, nombre_like, url_photo) values (8, 971, 'https://robohash.org/recusandaequosaut.png?size=50x50&set=set1');
insert into photos (id_utilisateur, nombre_like, url_photo) values (3, 765, 'https://robohash.org/aspernaturetet.png?size=50x50&set=set1');
insert into photos (id_utilisateur, nombre_like, url_photo) values (10, 895, 'https://robohash.org/officiaarchitectoadipisci.png?size=50x50&set=set1');
insert into photos (id_utilisateur, nombre_like, url_photo) values (7, 885, 'https://robohash.org/occaecatibeataeitaque.png?size=50x50&set=set1');
insert into photos (id_utilisateur, nombre_like, url_photo) values (5, 301, 'https://robohash.org/adoccaecatiadipisci.png?size=50x50&set=set1');
insert into photos (id_utilisateur, nombre_like, url_photo) values (2, 10, 'https://robohash.org/veniamrepellateveniet.png?size=50x50&set=set1');
insert into photos (id_utilisateur, nombre_like, url_photo) values (8, 708, 'https://robohash.org/saepeutvoluptatem.png?size=50x50&set=set1');
insert into photos (id_utilisateur, nombre_like, url_photo) values (8, 327, 'https://robohash.org/autofficiisharum.png?size=50x50&set=set1');
insert into photos (id_utilisateur, nombre_like, url_photo) values (3, 482, 'https://robohash.org/ducimusaliquidlaboriosam.png?size=50x50&set=set1');
insert into photos (id_utilisateur, nombre_like, url_photo) values (2, 16, 'https://robohash.org/perferendisquiaoptio.png?size=50x50&set=set1');
insert into photos (id_utilisateur, nombre_like, url_photo) values (9, 106, 'https://robohash.org/molestiaedelenitiassumenda.png?size=50x50&set=set1');
insert into photos (id_utilisateur, nombre_like, url_photo) values (3, 369, 'https://robohash.org/esteaqui.png?size=50x50&set=set1');
insert into photos (id_utilisateur, nombre_like, url_photo) values (7, 173, 'https://robohash.org/suntquisit.png?size=50x50&set=set1');
insert into photos (id_utilisateur, nombre_like, url_photo) values (2, 166, 'https://robohash.org/suntsitqui.png?size=50x50&set=set1');
insert into photos (id_utilisateur, nombre_like, url_photo) values (7, 87, 'https://robohash.org/odiosimiliquemaiores.png?size=50x50&set=set1');
insert into photos (id_utilisateur, nombre_like, url_photo) values (5, 704, 'https://robohash.org/minimanostrumfacilis.png?size=50x50&set=set1');
insert into photos (id_utilisateur, nombre_like, url_photo) values (6, 193, 'https://robohash.org/fugiteligendiaut.png?size=50x50&set=set1');
insert into photos (id_utilisateur, nombre_like, url_photo) values (2, 284, 'https://robohash.org/quiquisodit.png?size=50x50&set=set1');
insert into photos (id_utilisateur, nombre_like, url_photo) values (5, 414, 'https://robohash.org/eosautemexplicabo.png?size=50x50&set=set1');
insert into photos (id_utilisateur, nombre_like, url_photo) values (6, 530, 'https://robohash.org/molestiasblanditiisiusto.png?size=50x50&set=set1');
insert into photos (id_utilisateur, nombre_like, url_photo) values (1, 777, 'https://robohash.org/natusadreiciendis.png?size=50x50&set=set1');
insert into photos (id_utilisateur, nombre_like, url_photo) values (10, 157, 'https://robohash.org/sintfuganemo.png?size=50x50&set=set1');
insert into photos (id_utilisateur, nombre_like, url_photo) values (4, 817, 'https://robohash.org/sedaspernaturpossimus.png?size=50x50&set=set1');

-- 4. Pour tous les commentaires, montrer le contenu et le username de l'auteur
SELECT comments.commentaire, utilisateurs.username from comments join utilisateurs on comments.id_utilisateur = utilisateurs.id;

--5. Pour chaque commentaire, afficher son contenu et l'url de la photo à laquel le commentaire a été ajouté
SELECT comments.commentaire, photos.url_photo from comments join utilisateurs on comments.id_utilisateur = utilisateurs.id join photos on photos.id_utilisateur = utilisateurs.id;

--6. Afficher l'url de chaque photo et le nom d'utilisateur de l'auteur
SELECT utilisateurs.username, photos.url_photo from photos join utilisateurs on photos.id_utilisateur = utilisateurs.id;

--7. Trouver tous les commentaires pour la photo d'id 3, avec le username de l'utilisateur qui a commenté
SELECT comments.commentaire, utilisateurs.username, photos.url_photo from comments join utilisateurs on comments.id_utilisateur = utilisateurs.id join photos on photos.id_utilisateur = utilisateurs.id where photos.id = 3;

-- SELECT manufacturer, SUM(units_sold*price)as chiffre_affaire from telephones group by manufacturer HAVING chiffre_affaire > 200000;
-- 8 Trouver tous les url des photos ainsi que tous les commentaires qui ont été posté par l'auteur de la photo

SELECT photos.url_photo, comments.commentaire from comments join photos on photos.id_utilisateur = utilisateurs.id where photos.id_utilisateur = comments.id_utilisateur;

--9. A l'exercice précedent afficher aussi le nom de l'utilisateur qui a commenté ses propres photos
SELECT utilisateurs.username,photos.url_photo, comments.commentaire from comments join utilisateurs on comments.id_utilisateur = utilisateurs.id join photos on photos.id_utilisateur = utilisateurs.id where photos.id_utilisateur = comments.id_utilisateur;

--10 10. Le nombre de likes pour la photo d’ID 4
SELECT count(*) as "Nombre de like" from likes join photos on likes.id_photo = photos.id where photos.id = 4 and likes=1;
