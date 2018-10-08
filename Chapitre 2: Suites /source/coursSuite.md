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

Une suite réel, qui s'écrit mathématiquement $(u_n)_{n\in \mathbb{N}}$, est un
ensemble de nombre réel indexé par les entiers naturels. Voici un exemple de
suite :
\begin{align*}
	&( 1,5 , 2,5, 3,3 , 4,6 \ldots ) \\
	&( 1, 2, 3, 4, \ldots)
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

### Suite géométrique 

Maintenant, on peut faire exactement la même chose, mais en multipliant par
toujours le même terme. Partons par exemple de $u_0 = 6$. Alors, on peut définir 

\begin{center}
  \begin{tabular}{|c|c|c|c|c|c|c|c|}
    \hline
    $n$   & 6 & 12 & 24 & 48 & 96 & 192 & ... \\
    \hline
  \end{tabular}
\end{center}

C'est exactement la même chose, sauf que cette fois-ci, on a _multiplier_ à
chaque fois le terme précédent par $2$ pour obtenir le terme suivant.

## Définition d'une suite 

### Définition récursive

On peut avoir plusieurs définitions pour une même suite. Soit une définition
récursive, par exemple, comme par exemple :
  $$ u_{n+1} = 3u_{n} + 2 \quad u_0 = 2$$

### Définition explicite 

Cette définition permet de calculer le $n$-ième terme, sans calculer les autres
termes de la suite, c'est par exemple le cas des suites suivantes :

  - $u_n = n^2$
  - $u_n = (0.5)^n + 2$
  - $u_n = \frac{1}{n}$

### Un peu de hauteur : une suite définie par rapport à une fonction

#### Pour une définition récursive

Soit $f$ une fonction définie (au moins) sur $\mathbb{N}$ à valeur réelle.
Alors, on peut définir une suite $u_n$, avec $u_0$ fixé quelconque, et la
définition récursive :

  $$ u_{n+1} = f(u_n) \quad n \in \mathbb{N}$$

Par exemple :

  - Avec $f : x \mapsto 3x$, on retrouve la définition d'une suite géométrique
      de raison 3.
  - Avec $f : x \mapsto x + 2$, on retrouve la définition d'une suite
      arithmétique de raison 2.

Maintenant peut-être vous voyez mieux pourquoi ces deux suites sont les «bases»
des suites mathématiques, elles ont une correspondance avec les fonctions de
«base», les fonctions linéaire et affine, que l'on rencontre habituellement en
mathématiques.

#### Pour une définition explicite

Cette fois ci, pour une fonction $f$ définie (au moins) sur $\mathbb{N}$ à
valeur réelle, on peut définir une suite $u_n$ par :

  $$ u_n = f(n) $$

**Remarques** 

  - Regardez bien la différence entre les deux écriture !
  - Si je voulais être plus précis, j'aurai du dire que je définissais pour les
      suites récursives, uniquement les suites récursives d'ordre 1, c'est à
      dire que $u_{n+1}$ ne dépend que de $u_n$. On peut très bien imaginer des
      suites _d'ordre deux_ telle que $u_{n+2}$ dépendent de $u_{n+1}$ et
      $u_{n}$ (auquel cas, il faut préciser $u_0$ **et** $u_1$). Évidemment, tous
      les ordres existent en mathématiques.


## Premières propriétés des suites 

Ce paragraphe permet l'introduction de plusieurs mot de vocabulaire qu'il faut
maitriser.

### Convergence 

Voici la définition de la convergence d'une suite.

Convergence 

:	Une suite $(u_n)_{n \in \mathbb{N}}$ est dite **convergente**, si et
	seulement si il existe $l \in \mathbb{R}$ tel que :
	$$ \lim_{n \to \infty} u_n = l $$
	
#### Définition plus précise de la convergence

La définition donnée plus haut se mord la queue : j'ai pas voulu préciser pour plus
de facilité de compréhension en première lecture. Mais ce qu'il faut retenir
c'est que la vraie définition d'une suite convergente qui converge vers $l\in
\mathbb{R}$ est celle-ci :

Quelque soit la précision $\varepsilon > 0$ que l'on se donne, il existe un rang,
c'est-à-dire un entier $N$, tel que dès que $n > N$, alors la distance entre
$u_n$ et $l$ est plus petite que $\varepsilon$. 

Dit plus rapidement, quelque soit $\varepsilon > 0$, il existe un rang $N$ tel que
dès que $n > N$, alors $| u_n - l| < \varepsilon$.

La définition de la divergence est nettement plus simple (mais regroupe
plusieurs comportements différents !)

Divergence 

:	Une suite est dite divergente si et seulement si elle ne converge pas.

Il y a plusieurs raisons pour une suite de ne pas converger :

  - Soit, elle tend vers $+\infty$, dans ce cas, effectivement, elle ne
      s'approche d'aucun réel $l$ particulier.
  - Soit elle oscille indéfiniment sans vraiment se stabiliser, par exemple
      $u_n = (-1)^n$.

### Minorant, majorant 

On peut commencer par deux définitions

Majorant

:	$M$ est un majorant de la suite $(u_n)_{n\in\mathbb{N}}$ si et seulement si, pour tout $n \in \mathbb{N}$
	$$ u_n \leq M$$

Minorant

:	$m$ est un minorant de la suite $(u_n)_{n\in\mathbb{N}}$ si et seulement si, pour tout $n \in \mathbb{N}$
	$$ m \leq u_n $$

Bornée

:	Une suite $(u_n)_{n\in\mathbb{N}}$ est dite bornée si jamais elle admet un majorant **et** un
	minorant. Ou, cela revient au même, si et seulement si la suite
	$(|u_n|)_{n \in \mathbb{N}}$ est majorée [^reflexion].

[^reflexion]: un petit moment de réflexion est nécessaire ici.

### Théorème de la croissance monotone 

C'est un théorème difficile à montrer (en tout cas en terminale !), mais il est
essentiellement intuitif. Voilà ce qu'il affirme :

\boxed{\text{Toute suite majorée et croissante admet une limite, c'est-à-dire, est
convergente.}}

Quelle est la version pour une suite minorée ?

### Théorème des gendarmes 

C'est exactement le même énoncé que pour les fonctions ! 
