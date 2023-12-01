#Media Queries

```<meta name="viewport" content="width=device-width,initial-scale=1" />```

Cette balise meta dit aux navigateurs mobiles qu'ils doivent ajuster la largeur de la fenêtre à la largeur de l'écran de l'appareil, et mettre l'échelle du document à 100% de sa taille prévue, affichant le document à la taille optimisée pour les mobiles que vous vouliez. 

Vous devriez donc toujours inclure la ligne HTML ci-dessus dans la tête de vos documents. 

Il existe d'autres paramètres que vous pouvez utiliser avec la balise **meta** **viewport**, **mais en général, la ligne ci-dessus est celle que vous utiliserez**.

- **initial-scale** : Définit le zoom initial de la page, que nous définissons à 1. 
- **height** : Definit une hauteur spécifique pour la fenêtre. 
- **minimum-scale** : Définit le niveau minimal de zoom 
- **maximum-scale** : Définit le niveau maximal de zoom. 
- **user-scalable** : Empêche le zoom si défini à no. 

Vous devriez éviter d'utiliser minimum-scale, maximum-scale, et en particulier la définition de user-scalable sur no. Les utilisateurs devraient être autorisés à zoomer autant ou aussi peu que nécessaire; éviter cela entraîne des problèmes d'accessibilité.

- **all** : Valeur par défaut. Nos règles vont s’appliquer à tous les appareils; 
- **screen** : Nos règles ne vont s’appliquer qu’aux appareils dotés d’un écran;
- **printer** : Nos règles ne s’appliqueront que pour les imprimantes;
- **speech** : Nos règles ne s’appliqueront qu’aux liseurs d’écran qui sont capable de rendre le contenu d’une page de manière sonore.