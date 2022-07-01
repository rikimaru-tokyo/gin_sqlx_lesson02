DROP TABLE IF EXISTS members;
DROP TABLE IF EXISTS ranks;
DROP TABLE IF EXISTS hoge_table;

CREATE TABLE IF NOT EXISTS `members` (
    `id` tinyint AUTO_INCREMENT NOT NULL,
    `name` varchar(50) NOT NULL,
    `rank_id` tinyint NOT NULL,
    `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
    `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, 
    PRIMARY KEY(`id`)
);

CREATE TABLE IF NOT EXISTS `ranks` (
    `id` tinyint AUTO_INCREMENT NOT NULL,
    `name` varchar(50) NOT NULL,
    `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
    `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, 
    PRIMARY KEY(`id`)
);


CREATE TABLE IF NOT EXISTS `hoge_table` (
    `id` tinyint AUTO_INCREMENT NOT NULL,
    `name` varchar(50) NOT NULL,
    `birthday` DATE NOT NULL,
    PRIMARY KEY(`id`)
);


SET @SAMPLE_TIMESTAMP = "2022-06-07 12:34:56";

INSERT INTO `members` VALUES (1, "Aさん", 3, @SAMPLE_TIMESTAMP, @SAMPLE_TIMESTAMP);
INSERT INTO `members` VALUES (2, "Bさん", 1, @SAMPLE_TIMESTAMP, @SAMPLE_TIMESTAMP);
INSERT INTO `members` VALUES (3, "Cさん", 2, @SAMPLE_TIMESTAMP, @SAMPLE_TIMESTAMP);

INSERT INTO `ranks` VALUES (1,"Bronze", @SAMPLE_TIMESTAMP, @SAMPLE_TIMESTAMP);
INSERT INTO `ranks` VALUES (2,"Silver", @SAMPLE_TIMESTAMP, @SAMPLE_TIMESTAMP);
INSERT INTO `ranks` VALUES (3,"Gold", @SAMPLE_TIMESTAMP, @SAMPLE_TIMESTAMP);


