/*
    PSEUDO-CODE
    un prix à deviner
        demander le prix à l'utilisateur
        Tant que le prix à deviner et différent du prix de l'utilisateur
            si le prix est plus grand que le prix à deviner 
                je dis à l'utilisateur le prix à deviner est plus petit
            sinon
                je dis à l'utilisateur que le prix à deviner est plus grand
        FIN TANT QUE 
    SI LE PRIX EST EGALE AU PRIX A DEVINER 
    JE DIS A L'UTILISATEUR QU'IL A GAGNE
*/

let justePrix = 26;
let prix = prompt("Entrez un prix : ");

// Tant que mon prix est différent de justePrix
while (prix != justePrix) {

    /* 
        SI prix est inférieur à justePrix afficher le message le chiffre à deviner est plus grand 
        SINON afficher le message le chiffre à deviner est plus petit
    */

    if (prix < justePrix) {
        alert("Raté ! Le prix à deviner est plus GRAND Réessaye");
    } else {
        alert("Raté ! Le prix à deviner est plus PETIT Réessaye");
    }

    // Réinviter l'utilisateur à saissir un chiffre
    prix = prompt("Entrez un nouveau prix");
}

// Le prix de l'utilisateur étant égal, afficher qu'il a trouvé le Juste Prix
alert("Juste Prix !");