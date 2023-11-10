// Afficher prompt dans le navigateur pour saisir un nombre
let nombre1 = Number(prompt("Saisissez un nombre entier :"));

/*
    Vérification si le nombre saisi est pair ou impair
    ---------------------------------------------------
    SI le reste de la division par 2 du nombre est égal à 0 afficher le nombre est pair
    SINON afficher le nombre est impair
*/

if (nombre1 % 2 == 0) {
    alert(nombre1 + " est pair");
} else {
    alert(nombre1 + " est impair");
}

// Afficher un deuxième prompt dans le navigateur pour saisir un second nombre
let nombre2 = Number(prompt("Saisissez un autre nombre entier :"));

/*
    Vérification si le nombre saisi est pair ou impair
    --------------------------------------------------
    SI le reste de la division par 2 du nombre est égal à 0, afficher le nombre est pair
    SINON afficher le nombre est impair
*/
if (nombre2 % 2 == 0) {
    alert(nombre2 + " est pair");
} else {
    alert(nombre1 + " est impair");
}

/* 
    Vérification si le premier nombre et le second nombre sont divisible entre eux
    ------------------------------------------------------------------------------
    SI le reste de la division du premier nombre par le deuxième OU du deuxième par le premier est égal à 0, afficher les nombres sont divisibles
    SINON afficher les nombres ne sont pas divisibles
*/
if (nombre1 % nombre2 == 0 || nombre2 % nombre1 == 0) {
    alert(nombre1 + " et " + nombre2 + " sont divisibles");
} else {
    alert(nombre1 + " et " + nombre2 + " ne sont pas divisibles");
}