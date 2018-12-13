---
title : Intégration de fonctions réelles
author : \textsc{Delhomme} Fabien
lang : fr
fontsize : 11pt
linestretch : 1
colorlinks : blue
papersize : a4paper
document : article
classoption : oneside, draft

pagestyle : headings
geometry :
  - margin=1in
---

# Motivation

Ce cour présente le dernier outil de l'arsenal du mathématicien, et il s'agit,
avec la dérivée, d'un des outils sans doute les plus puissants : l'intégration.
Là encore, ce procédé est utilisé _dans quasiment toutes les sciences_ comme la
physique, la chimie, mais aussi l'économie, l'ingénieurie et bien bien d'autres
encore.

Un mot sur le concept d'intégration en mathématiques. Vous apprendrez ici ce
qu'on appelle l'intégration de Riemann. Pour une multitude de raisons, cette
manière d'intégrer n'est pas très efficace (mais cela va être suffisamment
puissant pour nous !). C'est pourquoi en troisième année de licence vous serez
sensibiliser (si vous suivez un cursus universitaire) une autre intégration,
plus générale et abstraite, l'intégration de Lesbegue. Pour ceux d'entre vous
qui continue à faire des maths, sachez que le _principe_ est presque le même,
donc concentrez vous sur la démarche de la définition de l'intégrale, votre
apprentissage n'en sera que facilité.

Tout commence par une question assez simpliste au premier abord : comment
calculer l'aire sous la courbe d'une fonction positive ?


C'est-à-dire, regardez la figure \ref{figure}, comment calculer l'aire nommée
$I$ pour une fonction $f$ qui est définie entre $a$ et $b$ deux nombres réels ?

<!-- Inclure un schéma -->

Nous verrons que cette question a des liens très profond avec la notion de
dérivation, et qu'elle permet aussi (entre autre) d'approximer des fonctions
comme les fonctions trigonométriques, exponentielle, ou logarithmique.

Enfin, beaucoup (si ce n'est tous) d'énoncé au bac portent sur ces fameuses
_intégrales_.

# Définition

## Contexte 

On souhaite donc définir l'aire sous la courbe d'une fonction. Pour plus de
simplicité, nous allons supposer que la fonction est _positive_ et _continue_
sur un intervalle $[a,b]$ où $a,b \in \mathbb{R}$. Nous verrons comment étendre
ce cas à d'autres fonctions (par exemple des fonctions négatives).

Le problème, c'est qu'il n'existe pas vraiment de formule toute faite pour
donner exactement l'aire sous la courbe d'une fonction. La preuve, si vous
regarder la figure \ref{figure}, vous pouvez vous convaincre qu'il est très
difficile, si on imagine une fonction qui varie beaucoup, de définir la notion
d'aire sous la courbe. 

C'est pourquoi, l'idée de ce cours est de vous montrer une démarche fondamentale
en mathématiques, qui est :

  - En premier, définir la notion que l'on souhaite sur une classe de fonction
      restreinte, où l'on peut définir facilement cette fonction
  - Deuxièmement, étendre cette définition à toutes les autres fonctions que
      l'on peut _approximer_ au moyen de la définition suivante. 

## Première étape : calculer l'aire sous la courbe de fonctions constantes

Pour la première étape, considérons l'ensemble des fonctions constantes définie
sur un intervalle $[a, b]$, avec $a$ et $b$ des nombres réels. Il est très
facile de calculer l'aire sous la courbe de telle fonction.

<!-- Inclure schéma de l'aire sous la courbe d'une fonction constante-->

Vous pouvez vous convaincre que c'est exactement l'aire d'un _rectangle_, et il
suffit de multiplier la largeur par la longueur pour obtenir l'aire sous la
courbe. Notons $I(f)$ l'aire sous la courbe d'une fonction $f$[^spoiler]

[^spoiler]: Spoiler alert, plus tard dans le cours, nous noterons $\int_{a}^{b}
f$ l'aire sous la courbe de $f$ entre $a$ et $b$.

On aboutit donc à la formule suivante :
  $$ I(f) = f(a)(b-a) = f(b)(b-a)$$.
La fonction $f$ est constante sur $[a, b]$, donc $f(a) = f(b)$.


## Deuxième étape : approximer toutes les fonctions positives par des fonctions constantes

Décrivons pourquoi une fonction continue sur un intervalle $[a,b]$ peut être
approximée par plusieurs fonctions constantes. 

Soit $f$ une fonction continue sur un intervalle $[a, b]$, positive. On va
supposer de plus que $f$ est croissante. Alors, on peut _découper_ l'intervalle
$[a, b]$ en plusieurs sous intervalle. Vous trouverez dans les figures suivantes
\ref{découpage}, des schémas avec un découpage en deux, trois et dix parties.

<!-- Schéma du découpage en 2, 3 et dix parties -->

Ensuite, sur chaque sous intervalle, on approxime l'expression de $f$ par sa
valeur au début du sous intervalle. Certes, on fait une erreur, mais on peut dire
que cette erreur n'est pas trop grande si on prend des sous intervalles très
petits, puisque pour $x$ compris entre $a$ et $a+h$ (avec $h$ un nombre
strictement positif mais petit), alors $f(x)$ est proche de $f(a)$. Si vous
réfléchissez, vous trouverez que c'est exactement l'idée de la définition d'une
fonction continue.

Ainsi, on peut approximer l'aire sous la courbe de $f$ par la somme des
rectangles qui sont en dessous de la courbe $f$. L'idée est donc d'obtenir une
équation du style :
\begin{align*}
  I(f) &\approx \sum_{k=0}^{n} \text{aire du rectangle de l'intervalle $k$} \\
  I(f) &\approx \sum_{k=0}^{n} \text{valeur de f au début du sous intervalle $k$} * \text{taille du sous intervalle}
\end{align*}
Avec $n$ le nombre de sous intervalles qui découpent notre intervalle $[a, b]$.

Maintenant, précisons une manière de découper notre intervalle. On souhaite donc
découper en $n$ morceaux notre intervalle $[a,b]$. Cela nous donne des morceaux
d'intervalle de taille $\frac{b-a}{n}$. Ensuite, il nous faut un moyen de sauter
de début de sous intervalle à début de sous intervalle suivant. 

Pour cela, imaginons que nous sommes au 4eme sous intervalle en partant de la
gauche. Cela veut dire que nous sommes séparée de 4 sous intervalles du point de
départ, $a$. Donc, nous sommes au point  $a + 4*\frac{b-a}{n}$. Finalement, le
$k$-ième intervalle $I_k$ peut donc se définir comme :
  $$ I_k = [a + k\frac{b-a}{n}, a + (k+1)\frac{b-a}{n}]$$


Exercice

: 	Vérifiez que $b$ appartient bien à l'intervalle $I_n$. Vérifiez que
chaque intervalle est de longueur $\frac{1}{n}$ (Indication, pour trouver la
longueur d'un intervalle $[c,d]$, il suffit de calculer $d-c$).

Ensuite, sur chaque sous intervalle $I_k$, nous approximons $f(x)$ par le nombre
$f(a + k\frac{b-a}{n})$.

<!-- Faire un zoom pour bien montrer pourquoi on prend f en cette valeur -->

Ainsi, on aboutit à l'expression suivante :
\begin{align*}
  I(f) &\approx \sum_{k=0}^{n} f\left(a + k\frac{b-a}{n}\right)*\frac{1}{n} \\
  I(f) &\approx \frac{1}{n} \sum_{k=0}^{n} f\left(a + k\frac{b-a}{n}\right)
\end{align*}
En effet, le terme $\frac{1}{n}$ est donc présent dans chaque terme de la somme,
et ne change pas de terme en terme. La deuxième ligne est donc une simple
factorisation par ce terme.

Il s'agit donc de montrer que $\frac{1}{n} \sum_{k=0}^{n} f\left(a +
k\frac{b-a}{n}\right)$ converge vers quelque chose, et nous noterons ensuite :
$$ \boxed{\int_{a}^{b} f = \lim_{n \to \infty} \frac{1}{n} \sum_{k=0}^{n} f\left(a + k\frac{b-a}{n}\right)}$$

## Troisième étape : vérification de la convergence



