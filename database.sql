CREATE TABLE `Course_Item`(
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `Text` LINESTRING NOT NULL,
    `Video` LINESTRING NOT NULL,
    `Vraag` LINESTRING NOT NULL
);
ALTER TABLE
    `Course_Item` ADD PRIMARY KEY(`id`);
CREATE TABLE `Course_Result`(
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `Score` INT NOT NULL
);
ALTER TABLE
    `Course_Result` ADD PRIMARY KEY(`id`);
CREATE TABLE `answers`(
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `course_item_id` INT NOT NULL,
    `antwoord` LINESTRING NOT NULL,
    `correct` LINESTRING NOT NULL
);
ALTER TABLE
    `answers` ADD PRIMARY KEY(`id`);
CREATE TABLE `Users`(
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `Gebruikersnaam` LINESTRING NOT NULL,
    `E-Mail` LINESTRING NOT NULL,
    `Wachtwoord` LINESTRING NOT NULL
);
ALTER TABLE
    `Users` ADD PRIMARY KEY(`id`);
CREATE TABLE `Courses`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `Titel` LINESTRING NOT NULL,
    `Duur` LINESTRING NOT NULL,
    `Beschrijving` LINESTRING NOT NULL
);
ALTER TABLE
    `Courses` ADD PRIMARY KEY(`id`);
ALTER TABLE
    `Course_Result` ADD CONSTRAINT `course_result_score_foreign` FOREIGN KEY(`Score`) REFERENCES `Users`(`id`);
ALTER TABLE
    `Courses` ADD CONSTRAINT `courses_titel_foreign` FOREIGN KEY(`Titel`) REFERENCES `Course_Item`(`id`);
ALTER TABLE
    `Course_Item` ADD CONSTRAINT `course_item_vraag_foreign` FOREIGN KEY(`Vraag`) REFERENCES `answers`(`antwoord`);
ALTER TABLE
    `Course_Result` ADD CONSTRAINT `course_result_score_foreign` FOREIGN KEY(`Score`) REFERENCES `Courses`(`id`);
ALTER TABLE
    `answers` ADD CONSTRAINT `answers_correct_foreign` FOREIGN KEY(`correct`) REFERENCES `Course_Item`(`Vraag`);
ALTER TABLE
    `answers` ADD CONSTRAINT `answers_correct_foreign` FOREIGN KEY(`correct`) REFERENCES `Course_Result`(`Score`);