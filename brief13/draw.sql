CREATE TABLE `clients`(
    `client_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `nom` VARCHAR(255) NOT NULL,
    `prenom` VARCHAR(255) NOT NULL,
    `adresse` TEXT NOT NULL,
    `numero Tele` INT NOT NULL,
    `email` VARCHAR(255) NOT NULL,
    `motDePasse` VARCHAR(255) NOT NULL
);
ALTER TABLE
    `clients` ADD PRIMARY KEY `clients_client_id_primary`(`client_id`);
CREATE TABLE `Produit`(
    `produit_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `libelle` VARCHAR(255) NULL,
    `description` TEXT NULL,
    `prixUnitaire` INT NOT NULL,
    `quantiteEnStock` INT NOT NULL
);
ALTER TABLE
    `Produit` ADD PRIMARY KEY `produit_produit_id_primary`(`produit_id`);
CREATE TABLE `Commande`(
    `commane_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `date` DATE NOT NULL,
    `adresse` TEXT NOT NULL,
    `client_id` INT NOT NULL,
    `produit_id` INT NOT NULL
);
ALTER TABLE
    `Commande` ADD PRIMARY KEY `commande_commane_id_primary`(`commane_id`);
CREATE TABLE `quantite`(
    `id` INT NOT NULL,
    `quantite_commande` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `produit_id` INT NOT NULL
);
ALTER TABLE
    `quantite` ADD PRIMARY KEY `quantite_id_primary`(`id`);
ALTER TABLE
    `quantite` ADD CONSTRAINT `quantite_produit_id_foreign` FOREIGN KEY(`produit_id`) REFERENCES `Produit`(`produit_id`);
ALTER TABLE
    `Commande` ADD CONSTRAINT `commande_client_id_foreign` FOREIGN KEY(`client_id`) REFERENCES `clients`(`client_id`);
ALTER TABLE
    `Commande` ADD CONSTRAINT `commande_produit_id_foreign` FOREIGN KEY(`produit_id`) REFERENCES `quantite`(`id`);