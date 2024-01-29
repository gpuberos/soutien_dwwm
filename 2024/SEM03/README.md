## Mise en place des notes sous forme d'étoile :

### Réflexion de base :

Affichage de la note :

Convertir la note avec une 1 5 étoiles, la note est en virgule est l'arrondir
10 / 5  : 2

https://www.php.net/manual/fr/function.round.php

Afficher le nombre de div qui correspond à la note

https://www.php.net/manual/fr/function.explode.php

star (etoile vide), star-fill (etoile pleine), star-half (etoile à moitié)

```php
$starRating = round($movieRating/2);
for ($i=0; $i < $starRating ; $i++) { 
    echo '<div class="bi-star-fill"></div>';
}

// $starRating = round($movie['rating']/2);
```

### Version améliorée :

Cette fonction convertit une note sur une échelle de 1 à 10 en une représentation visuelle d’étoiles sur une échelle de 1 à 5. Chaque point entier de la note est représenté par une étoile pleine, une demi-étoile est affichée si la note contient une demi-étoile, et une étoile vide est affichée si la note est inférieure à 5. Cela permet d’avoir une représentation visuelle claire et concise de la note.

explode — Scinde une chaîne de caractères en segments

```php
// Définition de la fonction getStar qui prend une note en paramètre
function getStar($rating)
{
    // La note est divisée par 2 et arrondie à un chiffre après la virgule
    // Cela permet de convertir une note sur 10 à une note sur 5 avec des demi-étoiles
    $starRating = round($rating / 2, 1);
```
Cette ligne prend la note d’origine (qui est sur une échelle de 1 à 10) et la convertit en une échelle de 1 à 5. C’est fait en divisant la note par 2. Le résultat est arrondi à un chiffre après la virgule pour permettre des demi-étoiles.

```php
    // La note est séparée en deux parties : la partie entière et la partie décimale
    $ratingInt = explode(".", $starRating);
```
Cette ligne sépare la note en deux parties : la partie entière et la partie décimale. Par exemple, si la note est 4.5, alors `$ratingInt[0]` sera 4 et `$ratingInt[1]` sera 5.

```php
    // Pour chaque point entier de la note, une étoile pleine est affichée
    for ($i = 0; $i < $ratingInt[0]; $i++) {
        echo '<div class="bi-star-fill"></div>';
    }
```
Cette boucle affiche une étoile pleine pour chaque point entier de la note. Par exemple, si la note est 4.5, alors 4 étoiles pleines seront affichées.

```php
    // Si la note contient une demi-étoile, elle est affichée
    if ($ratingInt[1] != 0) {
        echo '<div class="bi-star-half"></div>';
    }
```
Cette condition vérifie si la note contient une demi-étoile. Si c’est le cas, une demi-étoile est affichée.

```php
    // Si la note est inférieure à 5, une étoile vide est affichée
    if (5 - $starRating >= 1) {
        echo '<div class="bi-star"></div>';
    }
}
```
Cette condition vérifie si la note est inférieure à 5. Si c’est le cas, une étoile vide est affichée pour compléter les 5 étoiles.
-------------------------------------------------------------------------------------------------


On va faire des echo d'étoiles Bootstrap

Separer une variable en 2
Comment on fait pour spliter le resultat

'

```php
// Etoile pleine
echo '<div class="bi-star"></div>';

// Etoile à moitié pleine
echo '<div class="bi-star-half"></div>';

// Etoile vide
echo '<div class="bi-star"></div>';
```

Ctrl X supprimer ligne
Alt shift pour monter


```php

function getStar($rating)
{
    // La note est divisée par 2 et arrondie à un chiffre après la virgule
    // Cela permet de convertir une note sur 10 à une note sur 5 avec des demi-étoiles
    $starRating = round($rating / 2, 1);

    // La note est séparée en deux parties : la partie entière et la partie décimale
    $ratingInt = explode(".", $starRating);

    $starNbr = 0;

    for ($i = 0; $i < $ratingInt[0]; $i++) {
        echo '<div class="bi-star-fill"></div>';
        $starNbr++
    }

    // Si entre 1 et 2 =  d'étoile vide
    // entre 3 et 7 = moitier d'étoile
    // entre 8 et 9 = étoile complete

    if ($ratingInt[1] >= 2 && $ratingInt[1] <= 7 ) {
        echo '<div class="bi-star-half"></div>';
        $starNbr++
    } 
    
    if ($ratingInt[1] > 7 ) {
        echo '<div class="bi-star-fill"></div>';
        $starNbr++
    }

    echo 5 - starNbr;
    
    for ($i=0; $i < 5 - $starNbr; $i++) {
        echo '<div class="bi-star"></div>';

    }
}
```

```php
// Grâce au round 8.8 devient 9
$starRating = round($movie['rating']);

// 9/2 devient 4.5
$rate = $starRating / 2;

// 4.5 devient un tableau [4,5]
// [0] renvoit => 4
// [1] renvoit => 5
$ratingInt = explode(".", $rate);

$starNbr = 0;

// Pour chaque point entier de la note, une étoile pleine est affichée
for ($i = 0; $i < $ratingInt[0]; $i++) {
    echo '<div class="bi-star-fill"></div>';
    $starNbr++;
}
// Si $ratingInt[1] = 5 -> demi etoile
// Si la note contient une demi-étoile, elle est affichée
if (isset($ratingInt[1])) {
    echo '<div class="bi-star-half"></div>';
    $starNbr++;
}

for ($i= 0; $i < 5 -  $starNbr++; $i++) {
    echo '<div class="bi-star"></div>';    
}


```