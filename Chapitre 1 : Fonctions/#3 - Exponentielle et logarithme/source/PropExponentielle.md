
---
title : Découvrir les propriétés de l'exponentielle
author : \textsc{Delhomme} Fabien
lang : fr
fontsize : 11pt
linestretch : 1
colorlinks : red
papersize : a4paper
document : article
classoption : oneside

pagestyle : headings
geometry :
  - margin=1in

...

# But de ce document

Ce document a pour but de vous faire découvrir par vous-même les propriétés de
l'exponentielle. Il vous permettra d'une part de connaître et de mieux retenir
ces propriétés, essentielles évidement pour le bac, et d'autre part de trouver
par vous même ces démonstrations, exigibles au bac (même s'il y a peu de chances
qu'elles soient demandées).

Pour des besoins pédagogiques, j'ai pris la liberté de faire intervenir un
personnage qui va vous accompagner le long de ces activités, le _mathématicien_.
Il est rusé, mais il n'hésite pas à tester et à explorer différentes
possibilités avant de trouver la bonne. J'espère que vous apprécierez sa
compagnie !


# Les propriétés algébriques.

Je vous propose de commencer par les propriétés de la fonction exponentielle en
elle même, c'est à dire sa positivité, et l'équation fonctionnelle qu'elle
satisfait. 

Noter que pour [l'activité 2](#act2) j'ai besoin du résultat de [l'activité
1](#act1), mais la démonstration de l'activité 1 est inspirée de la
démonstration de l'activité 2. Le bon déroulement du document est donc de
commencer l'activité 1, puis de sauter sur l'activité 2 au moment indiqué, puis
de revenir sur l'activité 1 pour conclure.

## La positivité de l'exponentielle -- Activité 1 {#act1}

### Présentation du contexte.

Dans cette activité, nous prouverons que la fonction exponentielle sur les réels
et toujours positive. Nous prouverons ce résultat en deux étapes. Nous allons
d'abord montrer qu'elle ne s'annule jamais, puis en déduire qu'elle est toujours
positive. Pour cela, nous utiliserons la définition de l'exponentielle sous
forme d'équation différentielle (voir le cours pour plus de précisions). Cette
forme nous donne deux « règles du jeu » qu'il faut assembler astucieusement pour
arriver à nos fins.

Question 0

: 	Quelles sont ces «règles du jeu» ?


### Premier résultat, l'exponentielle ne s'annule jamais

Commençons donc par montrer que l'exponentielle ne s'annule jamais. Un premier
réflexe dans ce cas de figure pour le mathématicien est de réécrire la propriété
qu'il veut montrer dans des termes plus « mathématiques ».

Question 1

: 	Écrivez cette propriété avec des connecteurs logiques (c'est-à-dire sous
une forme plus mathématicienne).

Ensuite, notre mathématicien exploite le plus possible les données.

Question 2

: 	Essayer de jouer avec les propriétés de l'exponentielle (uniquement
celle des règles du jeu !) pour montrer que c'est une fonction positive.

Beaucoup de calculs plus tard, il apparaît que le problème est un peu plus
difficile qu'il n'y parait.

Dans ce cas, il faut sortir une artillerie plus lourde. Si notre exponentielle
ne s'annule jamais, c'est qu'il faut trouver, pour tout nombre $e^x$ un inverse,
c'est-à-dire un nombre qui, multiplié par $e^x$, donne 1. Tout les nombres
peuvent faire cela, sauf 0.

Question 3

: 	Faites une pause maintenant, regardez après ce qui se passe dans
	[l'activité 2](#act2), puis revenez ici.

En se souvenant que l'exponentielle se comporte un peu comme une fonction
puissance, notre mathématicien nous propose de tester si l'inverse de $e^x$ que
l'on cherche ne serait pas $e^{-x}$.

Question 4

: 	Quel est le lien entre cette proposition est le comportement de
	l'exponentielle ?

Question 5

: 	En suivant la démonstration de [l'activité 2](#act2), quelle fonction
	avait vous envie de poser ?

Le mathématicien propose alors d'étudier la fonction qui soit le produit des
deux termes que l'on soupçonne d'être les inverses mutuels.

Question 6

: 	Dérivez cette fonction, et concluez comme dans l'activité précédente. 

Nous avons maintenant prouver notre premier résultat, que l'exponentielle ne
s'annule jamais ! Fort de cette réussite, le mathématicien veut aller plus
loin, et montrer que l'exponentielle ne s'annule jamais. 

Pour cela, il existe un outil logique particulièrement puissant dans ce genre de
situation, c'est la démonstration par l'absurde. 

Le mathématicien commence par énoncer (dans son papier ou dans son esprit) que
ce qu'il veut montrer est faux[^absurde]. C'est-à-dire que l'on va proclamer
quel l'exponentielle n'est _pas_ toujours positive. C'est donc qu'il existerait un
moment où la fonction exponentielle est négative !

Question 7

: 	Écrivez cette dernière phrase avec des connecteurs logiques, et d'une
	manière plus mathématicienne.

En exploitant l'une des règles du jeu, le mathématicien se rend compte que
l'exponentielle est un moment strictement positive. 

Question 8

: 	Quel est ce moment ?

Le mathématicien conclut par un théorème très connu que dans ces conditions, il
existe un endroit pour lequel la fonction exponentielle est nulle.

Question 9

: 	Quel théorème le mathématicien a utilisé ? Vérifier que toutes les
hypothèses sont satisfaites, et rédiger convenablement la conclusion du
théorème.

Le mathématicien se rend alors compte de l'absurdité...

Question 10

: 	Ah oui, mais laquelle ?

...et conclut que l'exponentielle est toujours positive.

Question 11

: 	Rédigez la conclusion qui se trouve dans le cahier de brouillon du
mathématicien.


[^absurde]: ce qui, nous sommes d'accord, est absurde, mais particulièrement
  efficace vous le verrez !

## L'équation fonctionnelle -- Activité 2 {#act2}

### Présentation du contexte, et simplification {#eqf}

Dans cette deuxième activité, nous allons montrer **la** propriété centrale pour
l'exponentielle, son l'équation fonctionnelle :
  $$ \text{Pour tout } \ x, y \in \mathbb{R} \ e^{x + y } = e^{x}e^{y} $$

Ici, on va donc définir l'exponentielle uniquement au moyen de son équation
différentielle[^cours] (encore ces «règles du jeu»).

[^cours]: revoyez vraiment le cours si vous ne savez pas de quoi je parle.

Le premier problème pour montrer ce résultat, c'est qu'à priori, il existe deux
variables, $x$ et $y$. Pour pouvoir se ramener à une étude de fonction à un
paramètre (c'est le seul cas étudier à notre niveau), on doit donc _fixer_ un
paramètre.

On va donc partir du principe que $y$ est fixé. Ensuite, on pourra dire que
notre démonstration marchait quelque soit notre choix de $y$ (c'est une grosse
astuce de mathématiciens !).

Mais quelle fonction on va donc étudier ?

### Choix de la fonction 

L'idée est de prouver l'égalité donnée dans la partie [précédente](#eqf). Pour
cela, il nous faut nous ramener à une fonction qui va de $\mathbb{R}$ dans
$\mathbb{R}$, et qui soit dérivable, c'est le seul moyen à notre disposition
pour utiliser nous outils.

Donc, regardons de nouveau l'égalité que l'on veut montrer :

  $$ \text{Pour tout } \ x, y \in \mathbb{R} \ e^{x + y } = e^{x}e^{y} $$

Et **garder en tête que** seulement $x$ est une variable, dans la section
[précédente](#eqf) nous avons montré que nous pouvons fixer $y$. Souvent en
mathématiques, lorsqu'on veut prouver une égalité, on préfère montrer que la
différence des deux membres (celui de gauche, et celui de droite) qui la
composent est nulle. Cela revient exactement au même, mais on préfère alors
montrer qu'une certaine fonction (la différence des deux) est tout le temps
nulle.

Question 1

: 	Quelle est la fonction qu'un mathématicien aimerait poser ?

Malheureusement cette fonction n'a pas de bonne propriété. 

Question 2

: 	Essayer de comprendre le sens de la phrase précédente, en
	dérivant la fonction que vous avez obtenu à la question précédente, et en vous
	demandant si vous avez, après dérivation, obtenue une expression plus simple.

Le mathématicien a d'autres outils à sa disposition, si la différence de deux
termes ne lui donne pas ce qu'il faut, il peut alors étudier le quotient des
deux !

Question 3

: 	Qu'elle est donc cette fonction ?

Maintenant que le mathématicien a posé cette nouvelle fonction, un problème déjà
survient : est-ce que cette fonction est bien définie ?

Question 4

: 	Quel aurait pu être le problème lorsqu'on étudie le quotient de
	deux termes ? Pourquoi ici ce problème ne se pose pas ?

Bien, maintenant, notre mathématicien peut utiliser de nouveau les outils mise à
sa disposition pour _montrer_ le résultat qu'il désire obtenir.

#### Exploiter cette fonction 

Question 5

: 	Dériver la fonction que vous avez obtenu à la question 3.

Et la surprise ! Ces outils lui ont permis de simplifier grandement le problème
! 

Question 6

: 	Du résultat de la question 5, que peut-on en déduire ? 

Le reste n'est qu'une formalité, puisque notre fonction est en fait constante,
notre mathématicien remplace $x$ par un nombre de son choix, et conclue en
prouvant l'égalité.

Question 7

: 	Quel choix peut-on faire pour $x$ ? Finissez la preuve.

Mais le mathématicien veut montrer un peu plus fort !

Question 8

: 	Qu'est-ce qu'il se passe lorsqu'on regarde $e^{x - y}$ au lieu de
	$e^{x+y}$ ?

# Les propriétés sur les limites.

## La « croissance comparée ».

## L'approximation de l'exponentielle.
