# Exercice positionnement CSS

La propriété CSS position définit la façon dont un élément est positionné dans un document. Les propriétés top, right, bottom et left déterminent l'emplacement final de l'élément positionné.
Valeurs

**static**

Comportement normal (par défaut). L'élément est alors positionné dans le flux avec sa position. Les propriétés top, right, bottom, left et z-index ne s'appliquent pas.

**relative**

L'élément est positionné dans le flux normal du document puis décalé, par rapport à lui-même, selon les valeurs fournies par top, right, bottom et left. Le décalage n'a pas d'impact sur la position des éléments. Aussi, l'espace fourni à l'élément sur la page est le même que celui fourni avec static.

Cette valeur crée un nouveau contexte d'empilement lorsque z-index ne vaut pas auto. L'effet de cette valeur n'est pas défini pour les éléments table-*-group, table-row, table-column, table-cell et table-caption.

**absolute**

L'élément est retiré du flux normal et aucun espace n'est créé pour l'élément sur la page. Il est ensuite positionné par rapport à son ancêtre le plus proche qui est positionné s'il y en a un ou par rapport au bloc englobant initial sinon. La position finale de l'élément est déterminée par les valeurs de top, right, bottom et left.

**fixed**

L'élément est retiré du flux normal et aucun espace n'est laissé pour l'élément. L'élément est positionné relativement au bloc englobant initial formé par la zone d'affichage (viewport), sauf si un des ancêtres a une propriété transform, perspective ou filter qui est différente de none (voir la spécification sur les transformations CSS) ; dans ce cas, c'est l'élément ancêtre qui joue le rôle de bloc englobant. Cela empêche le défilement lorsque la page est parcourue (ou lors de l'impression, le positionne à cette position fixe pour chaque page). Cette valeur crée toujours un nouveau contexte d'empilement.

## Consigne

Ce que je dois faire quand on me donne une consigne ou de faire quelque chose :

1) Décomposer les choses
2) Faire des recherches pour essayer de comprendre par soi-même
3) Demander à un collègue comment il a procéder
4) Si je ne trouve pas, je demande au Formateur

Si le 1,2,3 ne sont pas fait, le formateur vous demandera de refaire les étapes avec lui mais il n'y a aucune réponse donnée directement.

L'objectif de ces étapes et de développer votre autonomie.
