## Exercice 1

Importer le dump de la BDD **vehicule_base_export.sql** qui se trouve dans le répertoire **dump_sql** via le terminal (cmd) en saisissant la ligne suivante : 

```
mysql -u root -p"" vehicule_base < vehicule_base_export.sql

```
### Réponse :

On utilisera la table de jointure (conducteur_vehicule) pour compter les véhicules.

conducteur.name est le nom du conducteur et conducteur_vehicule.vehiculeID est l’ID du véhicule dans la table de jointure. Cette requête retournera le nombre de véhicules que chaque conducteur possède.

```
SELECT conducteur.name, COUNT(conducteur_vehicule.vehiculeID) AS nombre_de_vehicules
FROM conducteur
JOIN conducteur_vehicule ON conducteur.id = conducteur_vehicule.conducteurID
GROUP BY conducteur.name;
```
Sources : 
- https://www.w3schools.com/sql/sql_groupby.asp
- https://www.w3schools.com/sql/sql_count.asp

### Résultat :
```
mysql> SELECT conducteur.name, COUNT(conducteur_vehicule.vehiculeID) AS nombre_de_vehicules
    -> FROM conducteur
    -> JOIN conducteur_vehicule ON conducteur.id = conducteur_vehicule.conducteurID
    -> GROUP BY conducteur.name;
+---------+---------------------+
| name    | nombre_de_vehicules |
+---------+---------------------+
| Nabil   |                   2 |
| Jacques |                   1 |
+---------+---------------------+
2 rows in set (0.00 sec)
```

### Explication :

1. `SELECT conducteur.name, COUNT(conducteur_vehicule.vehiculeID) AS nombre_de_vehicules` : 
   On sélectionne les données que nous voulons afficher.
   - `conducteur.name` : affiche le nom du conducteur. 
   - `COUNT(counter_vehicule.vehiculeID)` : on compte le nombre de vehicules par conducteur et on lui attribue l'alias nombre_de_vehicules.

2. `FROM conducteur` : nous travaillons avec la table conducteur

3. `JOIN conducteur_vehicule ON conducteur.id` : 
   On joint la table conducteur_vehicule avec la table conducteur sur la condition que l’id dans la table conducteur correspond à l'id conducteurID dans la table conducteur_vehicule. 
   Cela signifie que pour chaque ligne dans conducteur, nous cherchons toutes les lignes correspondantes dans conducteur_vehicule.

5. `GROUP BY conducteur.name` : 
   On regroupe les résultats par le nom du conducteur. Pour chaque conducteur unique, nous aurons une ligne de résultats.