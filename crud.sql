-- Requête SQL démontrant le support de la bbd par rapport à la demande du client

-- READ

-- Afficher les différents tarifs

SELECT * FROM pricings;

-- Tableau qui affiche si les clients ont payés sur place ou en ligne

SELECT reservations.id AS 'Numéro de réservation' , CONCAT(customers.lastname , ' ' , customers.firstname) AS 'Nom et Prénom du client' , reservations.payment_type 'Choix du paiement'
FROM reservations
JOIN customers ON reservations.customer_id = customers.id
JOIN pricings ON reservations.pricing_id = pricings.id ;

-- Tableau permettant de connaitre l'utilisateur de chaque cinéma

SELECT name 'Nom du cinéma' , users.login 'login de l''utilisateur'
FROM movie_theaters 
JOIN users ON movie_theaters.user_id = users.id;

-- Tableau démontrant que chaque admin peut gérer tout les cinémas

SELECT movie_theaters.name 'Nom du cinéma' , admins.login 'login de l''administrateur'
FROM movie_theater_admins
JOIN admins ON movie_theater_admins.admin_id = admins.id
JOIN movie_theaters ON movie_theater_admins.movie_theater_id = movie_theaters.id
ORDER BY movie_theater_id;

-- Permet de calculer le nombre de place restante dans une salle pour une séance donnée

SELECT movie_theaters.name AS 'Nom du cinéma', movies.name AS 'Nom du film', movie_rooms.movie_room_number AS 'Numéro de salle' , movie_rooms.number_seats AS 'Nombre de place total' , count(reservations.movie_session_id) AS 'Nombre de réservation' , movie_rooms.number_seats - count(reservations.movie_session_id) AS 'Places restantes'
FROM reservations
JOIN movie_sessions ON reservations.movie_session_id = movie_sessions.id
JOIN movie_rooms ON movie_sessions.movie_room_id = movie_rooms.id
JOIN movie_theaters  ON movie_rooms.movie_theater_id = movie_theaters.id
JOIN movies ON movie_sessions.movie_id = movies.id
GROUP BY movie_session_id;

-- Afficher les séances de tout les cinémas par jour

SELECT movie_theaters.name AS 'Nom du cinéma', CONCAT(movie_sessions.day, ' ',movie_sessions.hour) AS 'Jour et heure de la séance', movies.name AS 'Film diffusé'
FROM movie_sessions
JOIN movies ON movie_sessions.movie_id = movies.id
JOIN movie_rooms ON movie_sessions.movie_room_id = movie_rooms.id
JOIN movie_theaters ON movie_rooms.movie_theater_id = movie_theaters.id
WHERE movie_sessions.day = '2022-02-10'
ORDER BY hour;

-- Montre des réservations avec le passage du même film dans le même cinéma, mais pas dans la même salle

SELECT reservations.id  AS 'Numero de réservation' , reservations.reservation_date AS 'Date de la séance' , movies.name AS 'Nom du film' , movie_theaters.name AS 'Nom du cinéma', movie_theaters.city AS 'Ville' , movie_rooms.movie_room_number AS 'Numéro de salle '
FROM reservations
JOIN movie_sessions ON reservations.movie_session_id = movie_sessions.id 
JOIN movies ON movie_sessions.movie_id = movies.id
JOIN movie_rooms ON movie_sessions.movie_room_id = movie_rooms.id
JOIN movie_theaters ON movie_rooms.movie_theater_id = movie_theaters.id
WHERE movies.name ='SPIDER-MAN: NO WAY HOME'
ORDER BY movie_session_id;

-- UPDATE

-- Modification du mot de passe d'un admin lié a son login 

UPDATE admins
SET password = '$2y$10$qCXUBKYnn8Ds3tEpV0jtAeLjqtqIVQHDsBQUn/l0cvh37JzjoQfA.'
WHERE login = 'alersesha';

-- Modifier la salle de cinéma pour une séance donnée
-- Séance du 08/02/2022 programmée initialement en movie_room_id 1 décalée en 2

UPDATE movie_sessions
SET movie_room_id = 2
WHERE day = '2022-02-08' AND hour = '14:30:00';

-- Modification du tarif pour une place lié à sa catégorie

UPDATE pricings
SET price = 7.50
WHERE category = 'Étudiant';

-- DELETE

-- Supprimer (en cascade) toutes les entrées correspondant à l'admin dont le login est alvaindig

DELETE FROM admins
WHERE login ='alvaindig';

-- Supprimer une séance dans un cinéma si aucune reservation n'a déjà été faite ! 

DELETE FROM movie_sessions
WHERE day = '2022-02-08' AND hour = '16:30' AND movie_room_id = '11';

-- Sauvegarde de la structure de la base de donnée

mysqldump -u root -p root > creation.sql 

-- Restauration de la structure de la base de donnée

mysql -h localhost:8889 -u root -p root reservation_movie_theaters < creation.sql

-- Supprimer la base de données pour une mise en prod

DROP DATABASE reservation_movie_theaters;

