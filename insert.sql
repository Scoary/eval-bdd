INSERT INTO admins (login, password) VALUES 
('alvaindig','$2y$10$CdTyuy9/Au2Ln0hmBajuYOMAwxtMHtklaiUJgMS0VH/hUjBw/CMmW'),
('alersesha','$2y$10$z/EEY3wePgQIwnX./KML.eygWVCGDF9sXiC2AsNPoNf1f7zXnYryO'),
('dairistor','$2y$10$7eQQ2IRt26jPC4olS5JX/eZMXQwmssjRRvOlv7EYS/IdcScoVmt1W');

INSERT INTO users (login, password) VALUES
('grentiona','$2y$10$zfHA04VTfzQueWd3aHNn3ub/siUWrOane6fKLfH61tdrMXziLagz.'),
('mantister','$2y$10$Y5koDCTqaXlv2hluWT0usuJ0ppDm4qMZae2RA1eEPleLLkPdMASvm'),
('pandulock','$2y$10$UG4/kK3ucDbSHAwCi4EQ3OGDgkm4UP8q5lagCX9ep/DMhfhEUcbo.');

INSERT INTO customers(lastname, firstname, email, password) VALUES
('Patrice', 'Duferts', 'patrice.duferts@gmail.com', '$2y$10$dWacFWQZQwtwQeEJzosAFu3v9XG6iLok80KEbRBUvtaLK/B0FkbFe'),
('Marie', 'Petit', 'nathalie.petit@outlook.com', '$2y$10$dVO9ZS7FBfnRQv9flV3tYeB4DPCp76bYsGk9Txz4SkaPFo0XYcmFy'),
('Thibaut', 'Dupond', 'thibaut.dupont@hotmail.fr', '$2y$10$viOTc52gtNwy.0zins.D/.eOruIfWU.jLJwWD.89Vuew/ff5EAiyO');

INSERT INTO movie_theaters(name, address, city, zip, user_id) VALUES
('Pathé', '15 place de la concorde', 'Paris', 75001, 1),
('Gaumont', '25 rue de la liberté', 'Lyon', '69010', 2),
('À laffiche', '67 avenue de la résistance', 'Chaumont', 52000, 3),
('MultiplexeStDizier', '45 boulevard Diderot', 'Saint-Dizier', 52200, 3),
('UGC', '25 rue Georges Bonnac', 'Bordeaux', 33000, 2);

INSERT INTO movie_theater_admins (admin_id, movie_theater_id) VALUES
(1,1),
(1,2),
(1,3),
(1,4),
(1,5),
(2,1),
(2,2),
(2,3),
(2,4),
(2,5),
(3,1),
(3,2),
(3,3),
(3,4),
(3,5);

INSERT INTO movie_rooms (movie_room_number, number_seats, movie_theater_id) VALUES
(1, 142, 1),
(2, 78, 1),
(3, 490, 1),
(4, 276, 1),
(5, 84, 1),
(1, 222, 2),
(2, 43, 2),
(3, 412, 2),
(4, 97, 2),
(5, 143, 2),
(1, 89, 3),
(2, 192, 3),
(3, 389, 3),
(4, 407, 3),
(5, 48, 3),
(1, 95, 4),
(2, 167, 4),
(3, 71, 4),
(4, 278, 4),
(5, 138, 4),
(1, 142, 5),
(2, 231, 5),
(3, 69, 5),
(4, 106, 5),
(5, 84, 5);

INSERT INTO movies (name, synopsis, category) VALUES
('SUPER-HÉROS MALGRÉ LUI','Apprenti comédien en galère, Cédric décroche enfin son premier rôle dans un film de super-héros. Un soir, alors qu''il emprunte la voiture de tournage, il est victime d''un accident qui lui fait perdre la mémoire. A son réveil, vêtu de son costume de justicier et au milieu des accessoires du film, il est persuadé d''être devenu le personnage du film avec une mission périlleuse à accomplir. Mais n''est pas héros et encore moins super-héros qui veut... Et encore moins Cédric.', 'Comédie'),
('ARTHUR RAMBO','Qui est Karim D. ? Ce jeune écrivain engagé au succès annoncé ou son alias Arthur Rambo qui poste des messages haineux que l’on exhume un jour des réseaux sociaux…', 'Drame'),
('SPIDER-MAN: NO WAY HOME','Pour la première fois dans son histoire cinématographique, Spider-Man, le héros sympa du quartier est démasqué et ne peut désormais plus séparer sa vie normale de ses lourdes responsabilités de super-héros. Quand il demande de l''aide à Doctor Strange, les enjeux deviennent encore plus dangereux, le forçant à découvrir ce qu''être Spider-Man signifie véritablement.', 'Science-Fiction'),
('TOUS EN SCÈNE 2','Si Buster et sa troupe ont fait du Nouveau Théâtre Moon la salle de concert à la mode, il est temps de voir les choses en plus grand : monter un nouveau spectacle dans la prestigieuse salle du théâtre de la Crystal Tower à Redshore City.', 'Animation | Famille'),
('SCREAM','Vingt-cinq ans après que la paisible ville de Woodsboro a été frappée par une série de meurtres violents, un nouveau tueur revêt le masque de Ghostface et prend pour cible un groupe d''adolescents. Il est déterminé à faire ressurgir les sombres secrets du passé.', 'Horreur'),
('LES TUCHE 4','Après avoir démissionné de son poste de président de la république, Jeff et sa famille sont heureux de retrouver leur village de Bouzolles. A l’approche des fêtes de fin d’année, Cathy demande un unique cadeau : renouer les liens avec sa sœur Maguy, et son mari Jean-Yves avec qui Jeff est fâché depuis 10 ans. La réconciliation aurait pu se dérouler sans problème, sauf que lors d’un déjeuner, Jeff et Jean-Yves, vont une nouvelle fois trouver un sujet de discorde : NOËL. Cette querelle familiale qui n’aurait jamais dû sortir de Bouzolles va se transformer en bras de fer entre Jeff et un géant de la distribution sur Internet.', 'Comédie'),
('MAISON DE RETRAITE','Afin d’éviter la case prison, Milann, 30 ans, est contraint d’effectuer 300 heures de travaux d’intérêts généraux dans une maison de retraite, Les Mimosas. Ses premières semaines sont un véritable enfer ! Mais il se fait rapidement adopter par les retraités, en particulier par une bande de 7 inséparables qui lui apprennent, chacun à leur manière, leur vision de la vie. Au fil des semaines, Milann découvre que l’établissement profite de la vulnérabilité de ses pensionnaires pour les arnaquer. Il décide alors d’organiser une grande évasion, mais il n’est pas au bout de ses peines...', 'Comédie'),
('LES JEUNES AMANTS','Shauna, 70 ans, libre et indépendante, a mis sa vie amoureuse de côté. Elle est cependant troublée par la présence de Pierre, cet homme de 45 ans qu’elle avait tout juste croisé, des années plus tôt. Et contre toute attente, Pierre ne voit pas en elle “une femme d’un certain âge”, mais une femme, désirable, qu’il n’a pas peur d’aimer. A ceci près que Pierre est marié et père de famille.', 'Drame'),
('LE TEST','Annie Castillon est heureuse. Sa vie conjugale avec Laurent est un exemple d’harmonie. Ses deux grands, Maximilien et César sont des garçons brillants et sensibles. Et Poupi, sa jeune ado, l’épaule sans jamais se plaindre dans l’éducation d''Antoine, le petit dernier. Un week-end comme tous les autres, la découverte d’un test de grossesse positif dans la salle de bain va enrayer la belle harmonie.', 'Comédie'),
('MES TRÈS CHERS ENFANTS','Chantal et Christian vivent une retraite paisible. Mais depuis que leurs enfants Sandrine et Stéphane ont quitté le nid, ceux-ci ne donnent plus beaucoup de nouvelles. Les occasions de se réunir en famille se font de plus en plus rares... Quand les rejetons annoncent qu’ils ne viendront pas fêter Noël, c''en est trop pour Chantal et Christian ! Ils décident alors de leur faire croire qu''ils ont touché le jackpot. Une tentative désespérée pour tenter de les faire revenir et un mensonge qui pourrait leur coûter cher…', 'Comédie'),
('MYSTÈRE','Stéphane décide d’emménager dans les belles montagnes du Cantal afin de renouer avec sa fille de 8 ans, Victoria, mutique depuis la disparition de sa maman. Lors d’une promenade en forêt, un berger confie à Victoria un chiot nommé « Mystère » qui va petit-à-petit lui redonner goût à la vie. Mais très vite, Stéphane découvre que l’animal est en réalité un loup… Malgré les mises en garde et le danger de cette situation, il ne peut se résoudre à séparer sa fille de cette boule de poils d’apparence inoffensive.', 'Drame'),
('DRAGONS','L''histoire d''Harold, jeune Viking peu à son aise dans sa tribu où combattre les dragons est le sport national. Sa vie va être bouleversée par sa rencontre avec un dragon qui va peu à peu amener Harold et les siens à voir le monde d''un point de vue totalement différent.', 'Animation | Famille');

INSERT INTO movie_sessions (day, hour, movie_room_id, movie_id) VALUES
('2022-02-08', '14:30', 1, 1),
('2022-02-08', '16:30', 11, 1),
('2022-02-08', '20:30', 22, 3),
('2022-02-08', '20:45', 14, 6),
('2022-02-08', '21:30', 7, 5),
('2022-02-09', '13:30', 25, 4),
('2022-02-09', '15:30', 18, 2),
('2022-02-09', '18:30', 10, 11),
('2022-02-09', '19:50', 8, 1),
('2022-02-09', '20:30', 3, 3),
('2022-02-10', '11:15', 2, 12),
('2022-02-10', '14:45', 4, 4),
('2022-02-10', '17:15', 13, 8),
('2022-02-10', '19:30', 7, 9),
('2022-02-10', '21:15', 23, 5),
('2022-02-11', '13:15', 11, 12),
('2022-02-11', '16:30', 7, 4),
('2022-02-11', '20:30', 6, 3),
('2022-02-11', '20:30', 8, 3),
('2022-02-11', '20:45', 9, 1),
('2022-02-11', '20:45', 24, 11);

INSERT INTO pricings (price, category) VALUES
(9.20, 'Plein tarif'),
(7.60, 'Étudiant'),
(5.90, 'Moins de 14 ans');

INSERT INTO reservations (reservation_date, payment_type, payment_date, customer_id, movie_session_id, pricing_id) VALUES
('2022-02-11 20:45', 'Sur place', '2022-02-10 14:32', 2, 20, 1),
('2022-02-09 18:30', 'Sur place', '2022-02-07 22:11', 1, 8, 1),
('2022-02-08 20:45', 'En ligne', '2022-02-07 19:23', 3, 4, 2),
('2022-02-11 20:30', 'En ligne', '2022-02-09 20:12', 3, 21, 1),
('2022-02-11 20:30', 'Sur place', '2022-02-09 15:56', 2, 18, 2),
('2022-02-11 20:30', 'En ligne', '2022-02-09 15:56', 1, 19, 2);