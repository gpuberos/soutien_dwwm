# Exercice 2 - SQL

> [!IMPORTANT]
> On devra s'inspirer du fichier Excel [dbmovie.xlsx](/2024/SEM02/SQL/Exercice_02/ressources/dbmovie.xlsx) fourni par le client pour réaliser la base de données.

## Diagramme UML de dbmovie_utopia

![Diagramme UML dmovie_utopia](/2024/SEM02/SQL/Exercice_02/uml_diagram/dbmovie_utopia.drawio.svg)

> [!NOTE]
> L'outil [draw.io](http://draw.io) a été utilisé pour réaliser le diagramme.

## Création de la base de données dbmovie_utopia

On se connecte au serveur MySQL via la console (cmd)

```
mysql -u root -p

```

Dans la console de mysql, tapez les lignes suivantes :

```
CREATE DATABASE dbmovie_utopia;
USE dbmovie_utopia;

CREATE TABLE companies (
    id INT AUTO_INCREMENT PRIMARY KEY,
    company VARCHAR(50)
);

CREATE TABLE languages (
    id INT AUTO_INCREMENT PRIMARY KEY,
    language VARCHAR(50)
);

CREATE TABLE genres (
    id INT AUTO_INCREMENT PRIMARY KEY,
    genre VARCHAR(255)
);

CREATE TABLE directors (
    id INT AUTO_INCREMENT PRIMARY KEY,
    director VARCHAR(50)
);

CREATE TABLE movie (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255),
    rating DECIMAL(2,1),
    year_released INT(4),
    budget INT(18),
    box_office INT(18),
    companyID INT,
    genreID INT,
    directorID INT,
    duration INT(3),
    FOREIGN KEY (companyID) REFERENCES companies(id),
    FOREIGN KEY (genreID) REFERENCES genres(id),
    FOREIGN KEY (directorID) REFERENCES directors(id)
);

CREATE TABLE movie_language (
    movieID INT,
    languageID INT,
    FOREIGN KEY (movieID) REFERENCES movie(id),
    FOREIGN KEY (languageID) REFERENCES languages(id)
);
```
## Insertion des données dans les tables :

> [!IMPORTANT]
> Les guillemets simples `'` sont utilisés pour délimiter les chaînes de caractères. Si vous voulez inclure un guillemet simple dans la chaîne elle-même, vous devez l’échapper en utilisant deux guillemets simples `''`.
> Par exemple, pour insérer le titre du film Schindler’s List dans une base de données SQL, vous devez écrire `'Schindler''s List'`.  
> Merci à [@BenyOblomov](https://github.com/BenyOblomov) pour l'information.

```
INSERT INTO companies (company) VALUES
('Columbia Pictures'),
('Gaumont Film Company'),
('Miramax Films'),
('New Line Cinema'),
('Orion Pictures'),
('Paramount Pictures'),
('The Weinstein Company'),
('United Artists'),
('Universal Pictures'),
('Warner Bros'),
('Wild Bunch');

INSERT INTO languages (language) VALUES
('English'),
('French'),
('German'),
('Italian'),
('Sicilian'),
('Spanish'),
('Yiddish');

INSERT INTO genres (genre) VALUES
('Action'),
('Comedy'),
('Crime'),
('Drama'),
('Fantasy'),
('Romance'),
('Thriller'),
('War'),
('Western');

INSERT INTO directors (director) VALUES
('Abdellatif Kechiche'),
('Christopher Nolan'),
('Francis Ford Coppola'),
('Frank Darabont'),
('Jonathan Demme'),
('Olivier Nakache'),
('Peter Jackson'),
('Quentin Tarantino'),
('Robert Zemeckis'),
('Sergio Leone'),
('Sidney Lumet'),
('Steven Spielberg');

INSERT INTO movie (title, rating, year_released, budget, box_office, companyID, genreID, directorID, duration) VALUES
('The Shawshank Redemption', 9.2, 1994, 25000000, 73300000, 1, 4, 4, 142),
('The Godfather', 9.2, 1972, 7200000, 291000000, 6, 3, 3, 175),
('The Dark Knight', 9.0, 2008, 185000000, 1006000000 , 10, 1, 2, 152),
('The Godfather Part II', 9.0, 1974, 13000000, 93000000, 6, 3, 3, 202),
('12 Angry Men', '9.0', 1957, 340000, 2000000, 5, 4, 11, 96),
('Schindler''s List', 8.9, 1993, 22000000, 322200000, 9, 4, 12, 195),
('The Lord of the Rings: The Return of the King', 8.9, 2003, 94000000, 1146000000, 4, 5, 7, 201),
('Pulp Fiction', 8.8, 1994, 8500000, 213900000, 3, 3, 8, 154),
('The Lord of the Rings: The Fellowship of the Ring', 8.8, 2001, 93000000, 898200000, 4, 5, 7, 178),
('The Good, the Bad and the Ugly', 8.8, 1966, 1200000, 38900000, 8, 9, 10, 161),
('Forrest Gump', 8.7, 1994, 55000000, 677400000, 9, 4, 9, 142),
('Intouchables', 8.5, 2011, 10800000, 426600000, 2, 2, 6, 112),
('The Silence of the Lambs', 8.6, 1991, 19000000, 272700000, 5, 7, 5, 118),
('Inglourious Bastards', 8.4, 2009, 70000000, 321500000, 7, 8, 8, 153),
('La Vie d''Adèle', 7.7, 2013, 4000000, 19000000, 11, 6, 1, 180);

INSERT INTO movie_language (movieID, languageID) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(4, 5),
(5, 1),
(6, 1),
(6, 3),
(6, 7),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(10, 4),
(10, 6),
(11, 1),
(12, 2),
(13, 1),
(14, 1),
(14, 2),
(14, 3),
(14, 4),
(15, 2);
```
### Affichage des valeurs présentes dans les tables :

```
mysql> SELECT * FROM companies;
+----+-----------------------+
| id | company               |
+----+-----------------------+
|  1 | Columbia Pictures     |
|  2 | Gaumont Film Company  |
|  3 | Miramax Films         |
|  4 | New Line Cinema       |
|  5 | Orion Pictures        |
|  6 | Paramount Pictures    |
|  7 | The Weinstein Company |
|  8 | United Artists        |
|  9 | Universal Pictures    |
| 10 | Warner Bros           |
| 11 | Wild Bunch            |
+----+-----------------------+

mysql> SELECT * FROM genres;
+----+----------+
| id | genre    |
+----+----------+
|  1 | Action   |
|  2 | Comedy   |
|  3 | Crime    |
|  4 | Drama    |
|  5 | Fantasy  |
|  6 | Romance  |
|  7 | Thriller |
|  8 | War      |
|  9 | Western  |
+----+----------+

mysql> SELECT * FROM directors;
+----+----------------------+
| id | director             |
+----+----------------------+
|  1 | Abdellatif Kechiche  |
|  2 | Christopher Nolan    |
|  3 | Francis Ford Coppola |
|  4 | Frank Darabont       |
|  5 | Jonathan Demme       |
|  6 | Olivier Nakache      |
|  7 | Peter Jackson        |
|  8 | Quentin Tarantino    |
|  9 | Robert Zemeckis      |
| 10 | Sergio Leone         |
| 11 | Sidney Lumet         |
| 12 | Steven Spielberg     |
+----+----------------------+

mysql> SELECT * FROM languages;
+----+----------+
| id | language |
+----+----------+
|  1 | English  |
|  2 | French   |
|  3 | German   |
|  4 | Italian  |
|  5 | Sicilian |
|  6 | Spanish  |
|  7 | Yiddish  |
+----+----------+
```

## Résultats :

Requête pour afficher le tableau avec les données :

`SELECT` : Sélectionner les colonnes

On utilisera `AS` pour créer des alias

La fonction `GROUP_CONCAT()` de MySQL est utilisée pour concaténer les données de plusieurs lignes dans un seul champ.
Dans notre cas elle est utiliséd pour regrouper les langues et éviter d'avoir le même titre de film plusieurs fois avec une langue différente à chaque fois.

`FROM` : spécifie la table source en utilisant.

`JOIN` : créer les jointures avec la table en utilisant la Foreign Key (Clé étrangère).

`GROUP BY` : on groupe les résultats par l'identifiant unique `movie.id` de chaque film. 

Sources :
- https://www.geeksforgeeks.org/mysql-group_concat-function/
- https://database.academy/database-tutorials/sql-group_concat-command/
- https://sql.sh/fonctions/group_concat
- https://www.w3schools.com/sql/sql_groupby.asp

```
SELECT
    m.id AS movie_id,
    m.title,
    m.year_released,
    m.budget,
    m.box_office,
    c.company,
    GROUP_CONCAT(l.language) AS languages,
    g.genre,
    d.director,
    m.duration
FROM movie AS m
JOIN movie_language AS ml ON m.id = ml.movieID -- Jointure avec la table movie_language par la clé étrangère movieID
JOIN languages AS l ON ml.languageID = l.id -- Jointure avec la table languages par la clé étrangère languageID
JOIN genres AS g ON m.genreID = g.id -- Jointure avec la table genres par la clé étrangère genreID
JOIN directors AS d ON m.directorID = d.id -- Jointure avec la table directors par la clé étrangère directorID
JOIN companies AS c ON m.companyID = c.id -- Jointure avec la table companies par la clé étrangère companyID
GROUP BY m.id;

```

```
+----------+---------------------------------------------------+---------------+-----------+------------+-----------------------+-------------------------------+----------+----------------------+----------+
| movie_id | title                                             | year_released | budget    | box_office | company               | languages                     | genre    | director             | duration |
+----------+---------------------------------------------------+---------------+-----------+------------+-----------------------+-------------------------------+----------+----------------------+----------+
|        1 | The Shawshank Redemption                          |          1994 |  25000000 |   73300000 | Columbia Pictures     | English                       | Drama    | Frank Darabont       |      142 |
|        2 | The Godfather                                     |          1972 |   7200000 |  291000000 | Paramount Pictures    | English                       | Crime    | Francis Ford Coppola |      175 |
|        3 | The Dark Knight                                   |          2008 | 185000000 | 1006000000 | Warner Bros           | English                       | Action   | Christopher Nolan    |      152 |
|        4 | The Godfather Part II                             |          1974 |  13000000 |   93000000 | Paramount Pictures    | English,Sicilian              | Crime    | Francis Ford Coppola |      202 |
|        5 | 12 Angry Men                                      |          1957 |    340000 |    2000000 | Orion Pictures        | English                       | Drama    | Sidney Lumet         |       96 |
|        6 | Schindler's List                                  |          1993 |  22000000 |  322200000 | Universal Pictures    | English,German,Yiddish        | Drama    | Steven Spielberg     |      195 |
|        7 | The Lord of the Rings: The Return of the King     |          2003 |  94000000 | 1146000000 | New Line Cinema       | English                       | Fantasy  | Peter Jackson        |      201 |
|        8 | Pulp Fiction                                      |          1994 |   8500000 |  213900000 | Miramax Films         | English                       | Crime    | Quentin Tarantino    |      154 |
|        9 | The Lord of the Rings: The Fellowship of the Ring |          2001 |  93000000 |  898200000 | New Line Cinema       | English                       | Fantasy  | Peter Jackson        |      178 |
|       10 | The Good, the Bad and the Ugly                    |          1966 |   1200000 |   38900000 | United Artists        | English,Italian,Spanish       | Western  | Sergio Leone         |      161 |
|       11 | Forrest Gump                                      |          1994 |  55000000 |  677400000 | Universal Pictures    | English                       | Drama    | Robert Zemeckis      |      142 |
|       12 | Intouchables                                      |          2011 |  10800000 |  426600000 | Gaumont Film Company  | French                        | Comedy   | Olivier Nakache      |      112 |
|       13 | The Silence of the Lambs                          |          1991 |  19000000 |  272700000 | Orion Pictures        | English                       | Thriller | Jonathan Demme       |      118 |
|       14 | Inglourious Bastards                              |          2009 |  70000000 |  321500000 | The Weinstein Company | English,French,German,Italian | War      | Quentin Tarantino    |      153 |
|       15 | La Vie d'Adèle                                    |          2013 |   4000000 |   19000000 | Wild Bunch            | French                        | Romance  | Abdellatif Kechiche  |      180 |
+----------+---------------------------------------------------+---------------+-----------+------------+-----------------------+-------------------------------+----------+----------------------+----------+
15 rows in set (0.00 sec)
```
## Conception et réflexion sur base de données avancées

Lors de la conception de la base de données, j'avais conçu une version plus évoluée de la base de données en effectuant une veille sur la particularité des films avant de revenir à un modèle plus basique correspondant à l'exercice.

Sources :
- https://www.topito.com/top-films-meme-titre-mais-rien-a-voir
- https://fr.wikipedia.org/wiki/Cat%C3%A9gorie:Film_r%C3%A9alis%C3%A9_par_un_collectif_de_r%C3%A9alisateurs

Il en est ressorti de nombreuses relations (MANY to MANY) possibles entre les tables nécessitant de nombreuses tables intermédiaires. 

Exemple :
- Un film peut avoir le même nom et avoir de multiples réalisateurs
- Un film peut avoir plusieurs langues et une langue peut être lié plusieurs film
- Un film peut avoir plusieurs genres et un genre peut être lié à plusieurs films

![Diagramme UML dmovie_utopia](/2024/SEM02/SQL/Exercice_02/uml_diagram/dbmovie_utopia-advanced.drawio.svg)

### Adaptation du type de données en fonction des valeurs

Exemple :
- `year_realed` est de type **YEAR**
- `duration` est de type **TIME**

Source : 
- https://developpement-informatique.com/article/282/types-de-donnees-sql

J'ai également adapté le nombre de caractères stockés en fonction des limites existantes.

Par exemple :
- `budget` et `box_office` sont limités sont de type **INT(18)** soit un trillion.
- `company`, `language`, `genre` et `director` sont de type **VARCHAR(50)** limité à 50 caractères.

## Astuces

> [!TIP]
> Exporter la base de données (faire un dump) via le terminal :
```
mysqldump -u root -p"" dbmovie_utopia > dbmovie_utopia_export.sql
```
> [!TIP]
> Importer la  base de données :
```
mysql -u root -p"" dbmovie_utopia < dbmovie_utopia_export.sql
```
> [!NOTE]
> Vous pouvez récupérer le fichier dump sql de la bdd **dbmovie_utopia** dans le dossier **dump_sql**.