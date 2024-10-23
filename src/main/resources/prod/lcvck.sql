-- Insertion de données dans la table des clubs
INSERT INTO club (mail, telephone, nom, adresse, latitude, longitude, lien, province, image, titre, type)
VALUES
    ('askarapauga@hotmail.fr', '75 73 74/ 76 05 06', 'As Kara Rame', 'Baie de Toro, Plage Toro, Païta, Province Sud, Nouvelle-Calédonie', -22.202141, 166.356593, 'https://www.facebook.com/askara.rame?locale=fr_FR', 'Sud', '../../../assets/img/logo/as-karame.jpg', 'As Kara Rame', 'Loisirs'),
    ('ptt.secretariat@gmail.com', '93 41 95', "ASPTT Nouméa - Section va'a", 'Rue des Artifice Artillerie, Nouméa, Province Sud, Nouvelle-Calédonie', -22.27935, 166.44048, 'https://pttsecretariat.wixsite.com/website', 'Sud', "../../../assets/img/logo/ASPTTVA'A.jpg", "ASPTT Nouméa - Section va'a", 'Compétition'),
    ('','', "Olympique VA'A Outrigger NC Entraînement", '1 BIS Route des Artifices', -22.28112, 166.4335, 'https://www.facebook.com/OlympiqueVaa/?locale=fr_FR', 'Sud', '../../../assets/img/logo/olympique.jpg', "Olympique VA'A Outrigger NC Entraînement", 'Toutes');

-- Insertion de données dans la table des courses
INSERT INTO course (course, date) VALUES ('Course de test !', '2022-12-05');

-- Insertion d'un utilisateur (sans spécifier l'ID)
INSERT INTO app_user (first_name, last_name, login, password)
VALUES ('LCVCK', 'LCVCK', 'LCVCK', '$2y$10$/vh5hxhDxt186O1gWvhPX.9xT6TMvH1nVk/dTWo1UrC6pG6EFa3HO');
