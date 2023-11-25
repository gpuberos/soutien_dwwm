// Génère un nombre aléatoire compris entre 1 et 100 (le +1 sert à indiquer que 1 est le minimum car sinon ce serait de 0 à 100)
const randomNumber = Math.floor(Math.random() * 100 + 1);
let index;

// Décommenter pour vérifier dans la console le nombre aléatoire généré dans randomNumber
// console.log(`randomNumber = ${randomNumber}`);

// Limiter le nombre d'essai à 10
for (let index = 1; index <= 10; index++) {
    
    // Invite l'utilisateur à saisir un nombre
    let userNumber = prompt("Saisissez un nombre compris entre 1 et 100 :");
    
    // Si le nombre est correct féliciter l'utilisateur et sortir de la boucle
    if (userNumber == randomNumber) {
        alert("Félicitations vous avez deviné le nombre !");
        break;
    
    // Si le nombre saisi est plus grand indiquer que le nombre est trop grand
    } else if (userNumber > randomNumber) {
        alert("Votre nombre est trop grand ! Veuillez réessayer !");
    
    // Si le nombre saisi est plus petit indiquer que le nombre est trop grand
    } else if (userNumber < randomNumber) {
        alert("Votre nombre est trop petit ! Veuillez réessayer !");
    }
}

// Si le nombre aléatoire n'a pas été trouvé au bout de 10 essais afficher vous avez perdu !
if (index == 9) {
    alert("Désolé, vous avez perdu !");
}