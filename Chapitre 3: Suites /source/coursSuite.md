---
title: Les suites
date: 13 septembre 2018
author: Delhomme Fabien
lang: fr
...

\newpage 
# Introduction 

Dans ce cours, je vais vous montrer toutes les méthodes relatives aux suites.
Vous pourrez ainsi résoudre tous les exos du bac. Il arrive _très fréquemment_
qu'un exercice au bac porte sur les suites.

## Définition

### Définition basique 

Par basique, j'entends une définition que l'on peut donner à n'importe qui peut
importe son parcourt. 

Une suite réel, qui s'écrit mathématiquement $(u_n)_{n\in \mathbb{n}}$, est un
ensemble de nombre réel indexé par les entiers naturels. Voici un exemple de
suite :

\begin{align*}
	( 1,5 , 2,5, 3,3 , 4,6 \ldots ) \\
	( 1, 2, 3, 4, \ldots)
\end{align*}

C'est donc un ensemble contenant une _infinité de valeurs_.

### À quoi servent les suites ?

Les suites servent typiquement à modéliser des phénomènes qui évoluent de
manière _discrète_ (dans le sens, opposé du continu) dans le temps. Par exemple,
l'argent qui se trouve dans votre banque en fonction du nombre de mois passés.
La quantité de pétales sur une fleur en fonction de son rang, le nombre de
personnes en fonction du temps dans une ville données, ou encore l'approximation
successive de $e$ en fonction du nombre de terme que l'on a rajouté pour
améliorer l'approximation etc.

## Premiers types de suite

Il existe deux types de suites, qui sont les suites _géométriques_ et les suites
_arithmétiques_ qu'il faut connaître.

### Suites arithmétiques

C'est l'exemple de suite le plus simple, mais illustrons différentes suites
arithmétiques à l'aide d'un exemple.

Voici donc plusieurs suites, et la valeurs qu'elle prennent pour les premiers
termes.
\begin{center}
  \begin{tabular}{|c|c|c|c|c|c|c|c|}
    \hline
    $n$   & 0 & 1 & 2 & 3 & 4 & 5 & ... \\
    \hline
    $u_n$ & 1  & 3 & 5 & 7 & 9 & 11& ... \\
    \hline
    $v_n$ & -3 & 0 & 3 & 6 & 9 & 12 & ...\\
    \hline
  \end{tabular}
\end{center}
À votre avis, quel est la règle qui a défini chacune de ces suites ?

En fait, pour ces suites, pour calculer un terme, on a pris le terme précédent,
et on lui a ajouté un nombre $r$ unique pour obtenir le terme suivant. Par
exemple, pour calculer $u_1$, on a fait $u_0 + 2 = 1 +2 = 3$. Pour calculer
$u_3$, on a calculé $u_3 = u_2 + 2 = 5+2 = 7$. 

Donc, pour $u_n$ le nombre $r$ vaut 2 !

Que vaut $r$ pour $v_n$ ?
