# PageRank

## Introduction

Dans le cadre de l'UE Gestion des Données à Large Echelle, nous avons effectué un projet qui consistant comparer des performances sur pagerank, entre une implantation Pig et une implantation PySpark.

Ce projet à été réalisé par : GERARD Kylian, Izzedine Issa Ahmat, et MASSAT Islam

## Entité avec le plus grand page rank

L'entité ayant obtenue le plus grand page rank au bout de trois itérations est http://dbpedia.org/resource/Living_people avec un score de 14354.395912699198.

## Résultats

![alt text](https://github.com/Bobinho44/PROJET_GDLE_M2/tree/master/img/plot.png)

Ce diagramme nous montre que l'implantation PySpark est plus rapide à exécuter. Cependant, contrairement à l'implémentation Pig, la diminue du temps d'exécution en fonction de l'augmentation du nombre de worker est assez faible. Cela est certainement du à l'implémentation naïve de l'algorithme de page rank qui a été utilisé.
Nous pouvons aussi remarqué que, dans les deux implémentations, la diminution du temps d'exécution en fonction du nombre de worker n'est pas linéaire. Nous pouvons relier cela à la loi d'Amdahl, qui dit que, lorsque vous essayez de rendre quelque chose plus rapide en le paralélisant, il y a toujours une partie qui ne peut pas être accélérée, et cela limite à quel point le tout peut devenir plus rapide.