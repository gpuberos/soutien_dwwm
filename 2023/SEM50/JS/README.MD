# Code JavaScript pour la validation des champs et l'envoi des données du formulaire par e-mail.

Lorsqu'on soumet un fprmulaire

Dans le devtools icones réseaux

5 verbes HTTP les plus utilisées
GET POST PUT  DELETE PATCH

Depuis le frontend
GET va chercher
POST envoi

form action ="" method="get"

Lors de la soumisssion du formulaire e.preventDefault

document.querySelector('#fname').addEventListener('input', (e) => {console.log(e.target.value);});

input event change lorsqu'on change d'input (dès qu'il perd le focus) il renvoit le console log

méthode test, match, search, replace
Video 47 / 48 et 49
https://www.youtube.com/watch?v=3JQGuVOEQ-0

Video 51 formulaire

Concaténation ``

Dès du code se repète on utilise une fonction.

e fonction callback

Mémo-technique
Paramètre => Parenthèse
Accolade => Code

```
// Fonction addClass pour la gestion des classes CSS :
// Cette fonction prend un élément HTML, une expression régulière (Regex), la valeur actuelle du champ, et une variable de validation en paramètre. Elle ajoute ou supprime les classes CSS 'is-valid' et 'is-invalid' en fonction de la validation.
// Regex qui teste la valeur
function addCLass(element, regex, value, valid) {
    if (regex.test(value)) {
        element.classList.add('is-valid');
        element.classList.remove('is-invalid');
        valid = true;
    } else {
        element.classList.add('is-invalid');
        element.classList.remove('is-valid');
        valid = false;
    }
}
```

ajoute les commentaires dans ce code