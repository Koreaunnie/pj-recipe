CREATE schema recipe;

USE recipe;

CREATE TABLE Recipes
(
    id          INT PRIMARY KEY AUTO_INCREMENT,
    title       VARCHAR(20) NOT NULL,
    description VARCHAR(50),
    created     DATETIME    NOT NULL DEFAULT NOW()
);
