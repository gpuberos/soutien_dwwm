<?php
function getStar($rating)
{
    // Arrondit la note du film à l'entier le plus proche.
    $starRating = round($rating);

    // Divise la note par deux. ex: une note de 9 devient 4.5.
    $rate = $starRating / 2;

    // Convertit la note en tableau. Ex: 4.5 devient [4,5].
    // [0] renvoit => 4
    // [1] renvoit => 5
    $ratingInt = explode(".", $rate);

    // Initialise le compteur d'étoiles.
    $starNbr = 0;

    // Pour chaque point entier de la note, une étoile pleine est affichée
    for ($i = 0; $i < $ratingInt[0]; $i++) {
        // Affiche une étoile pleine.
        echo '<div class="bi-star-fill"></div>';

        // Incrémente le compteur d'étoiles.
        $starNbr++;
    }
    
   
    // Si la note contient une demi-étoile, elle est affichée
    // Le isset vérifie si la deuxième valeur (index 1) dans le tableau $ratingInt existe.
    if (isset($ratingInt[1])) {

        // Affiche une demi-étoile.    
        echo '<div class="bi-star-half"></div>';

        // Incrémente le compteur d'étoiles.
        $starNbr++;
    }

    // Affiche des étoiles vides jusqu'à atteindre un total de 5 étoiles.
    for ($i = 0; $i < 5 -  $starNbr++; $i++) {
        // Affiche une étoile vide.
        echo '<div class="bi-star"></div>';
    }
}
