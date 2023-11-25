// Déclaration des variables
let randomWord = "World";
let userWord = prompt("Saisissez un mot :")

/* 
    Tant que randomWorld est différent de userWord
    Donner la première lettre du mot à trouver puis redemander à l'utilisateur de saisir un nouveau mot.
    
    .toLowerCase sert à retourner la chaine de caractères du string en minuscules : 
    - si l'utilisateur saisit un mot en majuscule
    - si le mot aléatoire à deviner est écrit avec des majuscules
*/

while (randomWord.toLowerCase() != userWord.toLowerCase()) {
    alert(`Votre mot n'est pas correct ! Indice : le mot commence par ${randomWord[0]}`);
    userWord = prompt("Saisissez un nouveau mot :");
}    

// Si randomWord est égal à userWord afficher le message de félicitation
if (randomWord.toLowerCase() == userWord.toLowerCase()) {
    alert("Félicitations, vous avez trouvé le bon mot !");
}
