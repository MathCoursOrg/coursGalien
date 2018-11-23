
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

Ce document a pour but de vous faire découvrir par vous-mêmes les propriétés de
l'exponentielle. Il vous permettra d'une part de connaître et de mieux retenir
ces propriétés, essentielles pour le bac, et d'autre part de trouver par
vous-mêmes ces démonstrations qui sont _exigibles_ au bac (même s'il y a peu de
chances qu'elles soient demandées).

Pour des besoins pédagogiques, j'ai pris la liberté de faire intervenir un
personnage qui va vous accompagner le long de ces activités, le _mathématicien_.
Il est rusé, mais il n'hésite pas à tester et à explorer différentes
possibilités avant de trouver la bonne. J'espère que vous apprécierez sa
compagnie !

Je vous propose de commencer par les propriétés de la fonction exponentielle en
elle-même, c'est à dire sa positivité, puis d'étudier l'équation fonctionnelle
qu'elle satisfait.

Noter que pour [l'activité 2](#act2) j'ai besoin du résultat de [l'activité
1](#act1), mais la démonstration de l'activité 1 est inspirée de la
démonstration de l'activité 2. Le bon déroulement du document est donc de
commencer l'activité 1, puis de sauter à l'activité 2 au moment indiqué, puis de
revenir sur l'activité 1 pour conclure.

# La positivité de l'exponentielle -- Activité 1 {#act1}

## Présentation du contexte.

Dans cette activité, nous prouverons que la fonction exponentielle sur les réels
et toujours positive. Nous prouverons ce résultat en deux étapes. Nous allons
d'abord montrer qu'elle ne s'annule jamais, puis en déduire qu'elle est toujours
positive. Pour cela, nous utiliserons la définition de l'exponentielle sous
forme d'équation différentielle (voir le cours pour plus de précisions).

Le mathématicien remarque que cette équation différentielle nous donne deux
« règles du jeu » qu'il faut assembler astucieusement pour arriver à nos fins.

Question 0

: 	Quelles sont ces «règles du jeu» ?


## Premier résultat, l'exponentielle ne s'annule jamais

Commençons donc par montrer que l'exponentielle ne s'annule jamais. Un premier
réflexe dans ce cas de figure pour le mathématicien est de _réécrire_ la propriété
qu'il veut montrer dans des termes plus « mathématiques ».

Question 1

: 	Écrivez cette propriété avec des connecteurs logiques (c'est-à-dire sous
une forme plus mathématicienne).

Ensuite, notre mathématicien exploite le plus possible les données (autrement
dit, les « règles du jeu »).

Question 2

: 	Essayez de jouer avec les propriétés de l'exponentielle (uniquement
celles des règles du jeu !) pour montrer que c'est une fonction positive.

Beaucoup de calculs plus tard, il apparaît que le problème est un peu plus
difficile qu'il n'y parait.

Dans ce cas, il faut sortir une artillerie plus lourde. Si notre exponentielle
ne s'annule jamais, c'est qu'il faut trouver pour tout nombre $e^x$ un inverse,
c'est-à-dire un nombre qui, multiplié par $e^x$, donne 1. Tous les nombres
peuvent faire cela, sauf 0. Donc en trouvant un inverse pour $e^x$, cela revient
à montrer qu'effectivement $e^x \not = 0$.

Question 3

: 	Faites une pause maintenant, regardez ensuite ce qui se passe dans
	[l'activité 2](#act2), puis revenez ici. Réfléchissez à une forme
	possible pour l'inverse, en vous rappelant la deuxième « règle du jeu ».

En se souvenant que l'exponentielle se comporte un peu comme une fonction
puissance, notre mathématicien nous propose de tester si l'inverse de $e^x$ que
l'on cherche ne serait pas $e^{-x}$.

Question 4

: 	Quel est le lien entre cette proposition et le comportement de
	l'exponentielle ?

Question 5

: 	En suivant la démonstration de [l'activité 2](#act2), quelle fonction
	auriez vous envie de poser ?

Le mathématicien propose alors d'étudier la fonction qui soit le produit des
deux termes que l'on soupçonne d'être les inverses mutuels.

Question 6

: 	Dérivez cette fonction, et concluez comme dans l'activité suivante.

Nous avons maintenant prouvé notre premier résultat : l'exponentielle ne
s'annule jamais ! Fort de cette réussite, le mathématicien veut aller plus loin,
et il veut montrer que l'exponentielle est toujours positive.

Pour cela, il existe un outil logique particulièrement puissant dans ce genre de
situation, c'est la démonstration par l'absurde.

Le mathématicien commence par énoncer (sur son papier ou dans son esprit) que
ce qu'il veut montrer est faux[^absurde]. C'est-à-dire que l'on va proclamer que
l'exponentielle n'est _pas_ toujours positive. C'est donc qu'il existerait un
moment où la fonction exponentielle est négative !

Question 7

: 	Écrivez cette dernière phrase avec des connecteurs logiques, donc d'une
	manière plus mathématicienne.

En exploitant l'une des règles du jeu, le mathématicien se rend compte que
l'exponentielle est un moment strictement positive.

Question 8

: 	Quel est ce moment ?

Le mathématicien conclut par un théorème très connu dans ces conditions, il
existe un endroit pour lequel la fonction exponentielle est nulle.

Question 9

: 	Quel théorème le mathématicien a-t-il utilisé ? Vérifiez que toutes les
hypothèses sont satisfaites, et rédigez convenablement la conclusion du
théorème.

Le mathématicien se rend alors compte de l'absurdité...

Question 10

: 	Ah oui, laquelle ?

...et conclut que l'exponentielle est toujours positive.

Question 11

: 	Rédigez la conclusion qui se trouve dans le cahier de brouillon du
mathématicien.

[^absurde]: ce qui, nous sommes d'accord, est absurde, mais particulièrement
  efficace vous le verrez !

## Conclusion 

Dans cette démonstration, nous avons vu comment prouver proprement que
l'exponentielle est toujours strictement positive, donc en exploitant le fait
que la dérivée de l'exponentielle est elle même, c'est-à-dire que $\exp' =
\exp$, on peut en déduire que la fonction est toujours croissante sur
$\mathbb{R}$.

On voit donc que ces règles du jeu sont assez restrictives, puisqu'en demandant
à une fonction d'être sa propre dérivée et de valoir 1 en 0, on peut en déduire
qu'elle est strictement croissante et strictement positive sur $\mathbb{R}$.
Mais on peut aller beaucoup plus loin, et montrer que cette fonction admet une
équation dite _fonctionnelle_, comme cela est montré dans l'activité 2
ci-dessous.

# L'équation fonctionnelle -- Activité 2 {#act2}

## Présentation du contexte, et simplification {#eqf}

Dans cette deuxième activité, nous allons montrer **la** propriété centrale pour
l'exponentielle, son équation fonctionnelle :
  $$ \text{Pour tout } \ x, y \in \mathbb{R} \ e^{x + y } = e^{x}e^{y} $$

Ici et comme dans l'activité précédente, on va donc définir l'exponentielle
uniquement au moyen de son équation différentielle[^cours] (encore ces «règles
du jeu»).

[^cours]: revoyez vraiment le cours si vous ne savez pas de quoi je parle à ce
  stade.

Le premier problème pour montrer ce résultat est la présence de deux variables,
$x$ et $y$. Pour pouvoir se ramener à une étude de fonction à un seul paramètre
(c'est le seul cas étudié à notre niveau), on doit donc _fixer_ un paramètre.

On va donc partir du principe que $y$ est un nombre réel fixé quelconque. Ensuite,
on pourra dire que notre démonstration marchait quelque soit notre choix de $y$
(c'est une grosse astuce de mathématiciens !). Et donc que la proposition
est vraie pour tout $y \in \mathbb{R}$.

Mais quelle fonction doit-on étudier ?

## Choix de la fonction

Nous voulons donc prouver l'égalité donnée dans la partie [précédente](#eqf).
Pour cela, il nous faut nous ramener à une fonction qui va de $\mathbb{R}$ dans
$\mathbb{R}$, qui soit de préférence dérivable, car la dérivée est un outil
particulièrement puissant à notre disposition, il serait dommage de s'en priver.

Donc, regardons de nouveau l'égalité que l'on veut montrer :

  $$ \text{Pour tout } \ x, y \in \mathbb{R} \ e^{x + y } = e^{x}e^{y} $$

Et **garder en tête que** la seule quantité qui « bouge » est $x$. En effet dans
la section [précédente](#eqf) nous avons montré que nous pouvons fixer $y$.

Souvent en mathématiques, lorsqu'on veut montrer une égalité, on préfère montrer
que la différence des deux membres (celui de gauche, et celui de droite) qui la
composent est nulle. Cela revient exactement au même, mais on préfère alors
montrer qu'une certaine fonction (la différence des deux membres) est tout le temps
nulle.

Question 1

: 	En suivant ce principe, quelle est la fonction qu'un mathématicien
	aimerait poser ?

Malheureusement cette fonction n'a pas de bonne propriété.

Question 2

: 	Essayez de comprendre le sens de la phrase précédente, en
	dérivant la fonction que vous avez obtenue à la question précédente, et en vous
	demandant si vous avez, après dérivation, obtenu une expression plus simple.

Le mathématicien a d'autres outils à sa disposition, si la différence de deux
termes ne lui donne pas ce qu'il faut, il peut alors étudier le quotient des
deux !

Question 3

: 	En suivant les conseils du mathématicien, quelle est donc la deuxième
fonction que vous proposez d'étudier ?

Maintenant que le mathématicien a posé cette nouvelle fonction, un problème déjà
survient : est-ce que cette fonction est bien définie ? Cela le contrarie, et
vous remarquez que sa respiration s'accélère.

Question 4

: 	Quel aurait pu être le problème lorsqu'on étudie le quotient de
	deux termes ? Pourquoi ici ce problème ne se pose pas  (pensez au
	résultat de l'activité 1)? Vous remarquez que le mathématicien est alors
	rassuré.

Bien, maintenant, notre mathématicien peut utiliser de nouveau les outils mis à
sa disposition pour _montrer_ le résultat qu'il désire obtenir.

## Exploiter cette fonction

Question 5

: 	Dérivez la fonction que vous avez obtenue à la question 3.

Et là, surprise ! Ces outils (la dérivation) lui ont permis de simplifier
grandement le problème !

Question 6

: 	Que peut-on déduire du résultat de la question précédente ?

Le reste n'est qu'une formalité, puisque notre fonction est en fait constante,
notre mathématicien remplace $x$ par un nombre de son choix, et conclue en
prouvant l'égalité.

Question 7

: 	Quel choix peut-on faire pour $x$ ? Finissez la preuve.

Le mathématicien profite de sa lancée pour montrer d'autres résultats qui
découlent du même principe que ceux déjà trouvés. 

Question 8

: 	Que se passe-t-il se passe lorsqu'on regarde $e^{x - y}$ au lieu de
	$e^{x+y}$ ?

Question 9

: 	Donnez encore plus de force à ce résultat en montrant par
récurrence que $(e^x)^n = e^{x*n}$

## Conclusion

Ici nous avons montré la propriété principale de l'exponentielle, son équation
fonctionnelle. Vous pouvez maintenant utiliser cette propriété de
l'exponentielle pour aborder d'autres problèmes : considérez cette proposition
comme un outil précieux !
