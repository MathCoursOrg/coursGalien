---
title: Les nombres complexes
date:
author: Delhomme Fabien
lang: fr
document: report
geometry:
  - margin=1in

classoption: draft
...

\newcounter{question}
\stepcounter{question}

# Introduction

## Motivation

Les complexes, un des chapitres les plus compliqués à introduire peut-être. Pour
commencer, sachez que les complexes ont été d'abord appelés les _imaginaires_,
car on pensait qu'ils n'étaient pas _réels_.

Or, rien de plus faux (on n'avait pas assez de recul à l'époque). Les complexes
sont présents, et incontournables dans de nombreux domaines :

  - Physique (électronique, mécanique)
  - Ingénierie (conception de machine, étude de vibrations d'un véhicule etc)
  - Mathématique (évidemment) : les complexes jouent un rôle plus que centrale !
  - Informatique : nous verrons que les complexes servent à encoder les
      rotations, et donc par exemple de faire des rotations d'images
  - Et tellement d'autres !!

Le grand paradoxe, c'est que pour découvrir les complexes, on passe
nécessairement par une incompréhension totale, devant des « nombres » qui
sortent de nulle part, etc. Mais nous verrons tranquillement pourquoi les
complexes sont presque naturels (même s'il a fallu du temps avant de les
découvrir).

## Portes d'entrées

Comme souvent en mathématiques, il existe plusieurs portes d'entrée pour
comprendre les complexes :

  - Les polynômes
  - La géométrie
  - Les matrices

Nous verrons dans ce cours les deux premiers, peut-être que je parlerai en deux
mots de la troisième porte d'entrée lors des cours de mathématique spécialisée.

Je vous propose donc d'entrer dans le monde des complexes par la grande porte :
les polynômes !

# Les nombres complexes : définition.

## Soit $i$ un nombre tel que...

Nous avons vu dans le chapitre sur les polynômes, que certain polynôme
n'admettait pas de racine réelle. C'est-à-dire qu'il existe aucun nombre réel
qui annule ce polynôme. Prenons un exemple et c'est un des exemples le plus simple
que l'on peut imaginer :
  $$P(x) = x^2 +1$$
Et effectivement ce polynôme n'a pas de racine réelle puisque $x^2 \geq 0$ pour
tout $x \in \mathbb{R}$, et ainsi $x^2 +1 > 0$.

Mais imaginez un peu, (et vous comprenez peut-être pourquoi historiquement, les
premiers mathématiciens qui ont osé, étaient un peu fébrile à ce moment là), que
l'on _rajoute_ une racine à ce polynôme. C'est-à-dire que, puisque $P$ n'a pas
de racine, on va lui en _ajouter_ une !!  
C'est-à-dire que l'on va _définir_ $i$ comme étant un nombre, tel que $i^2 =
-1$ (et donc $P(i) = 0$). Attention, $i$ n'est pas un nombre réel, vous l'aurez
bien compris !

Nous avons donc définit, ou plutôt imaginé, un nombre $i$ tel que :
  $$\boxed{i^2 = -1}$$

Remarquons alors dès à présent que notre polynôme de départ $P(x) = x^2+1$,
admet à présent deux racines (complexes donc). En effet, on a crée la première
avec $x = i$ mais on remarque, par analogie avec la multiplication que l'on
connait depuis la tendre enfance que :
  $$ (-i)^2 = (-1*i)^2 = (-1)^2*i^2 = 1*(-1) = -1$$
On a donc une autre racine de $P$ avec $x = -i$.

## Opérations dans les complexes

### Multiplier $i$ par un réel

Nous allons maintenant présenter les opérations possibles que l'on peut faire
avec ce nouveau nombre $i$.

Dans les calculs que l'on vient de faire, implicitement on a envie de considérer
que $i$ admet les mêmes calculs qu'un nombre normal. C'est-à-dire (et on vient
de le faire) qu'on a envie de définir la multiplication de $i$ par un réel
quelconque $a \in \mathbb{R}$ par le nombre (complexe) $a*i$ noté souvent $ai$.
Noter alors que $ai = ia$, comme d'habitude.

Par exemple, si on veut multiplier $3$ par $i$, alors on écrit tout simplement
$3i$. Maintenant une petite question :

Question \thequestion \stepcounter{question}

: 	Donner les racines complexes du polynôme $x^2 + 3$ (Essayer de calculer
$(3*i)^2$, et donner l'autre racine par la même remarque que celle décrite au
paragraphe ci-dessus).

### Additionner avec $i$

On peut aussi définir une opération « plus » avec $i$ et un réel. Par exemple,
si on veut ajouter $4$ à $i$, alors on écrira $4+i$.

Allons un peu plus loin, que vaut :
  $$ z = 4+i + 3 - 2i$$
Déjà, on peut commencer par voir que notre $4$ et notre $3$ sont des nombres
réels, donc on sait les additionner :
  $$ z = 7 + i - 2i$$
Maintenant, si on veut être cohérent, on devrait pouvoir s'autoriser à
factoriser par $i$ :
  $$ z = 7 + (1 - 2)i$$
Ou, cela revient au même, on doit s'autoriser à compter le nombre de $i$ et à
faire l'addition. Ici on obtient finalement 
  $$ z = 7 - i$$

Remarquez encore que l'on peut additionner un réel avec $i$ et multiplier le
tout par un nombre réel. Considérez l'expression complexe suivante :
  $$ z = (2 + 4i)*7$$
On distribue comme dans les réels :
  $$ z = 14 + 28i$$
Et on obtient le résultat !

Question \thequestion \stepcounter{question}

: 	Que vaut $(2 + 4i - 2 - 2i)*4$ ?

### Multiplions sans complexes !

Nous avons vu comment on pouvait multiplier un nombre $i$ par un nombre réel.
Maintenant, imaginons que nous ayons deux nombres $z_1 = 3 + 7i$ et $z_2 = -1 +
3i$. Est-ce qu'on peut définir $z_1 * z_2$ ?
Essayons, et commençons par distribuer le produit, comme on sait le faire depuis
le collège, puis utilisons les règles vues plus haut pour simplifier
l'expression. On obtient alors successivement :
\begin{align*}
  z_1z_2  &= (3 + 7i)(-1 + 3i) \\
	  &= -3 + 9i -7i + (7i)*(3i)\\
	  &= -3 + 2i + (7*3)*(i*i)\\
	  &= -3 + 2i + 21*(-1)\\
  z_1z_1  &= -24 + 2i
\end{align*}

Vous avez vu ce qui s'est passé ? Le produit des deux nombres (complexes) $7i$
et $3i$ a redonné un nombre réel, qui s'est additionné normalement avec le
nombre $-3$ !

Essayez par vous même maintenant :

Question \thequestion \stepcounter{question}

: 	Que vaut $(1-2i)(3-5i)$. Que vaut $( 5 - 4i)(5 + 4i)$. Des remarques
concernant ce dernier ?

Question \thequestion \stepcounter{question}
: 	Est-ce que les identités remarquables vues (et connues ?) depuis le
collège fonctionne avec des complexes ?

## Définition du plan complexe

<!-- Il faut relire à partir d'ici -->

### Le plan complexe, et premières notions 

D'après ce que l'on vient de voir, l'addition et la multiplication de deux
nombres complexes nous redonne toujours un nombre de la forme $a + ib$ avec $a$
et $b$ des nombres réels. D'après les calculs effectués plus haut, on voit que
les réels et les nombres $ib$ avec $b\mathbb{R}$ ne se «mélangent» jamais. On
pourra interpréter cela géographiquement comme une sorte d'indépenndance, si
bien que l'on a envie d'associer un complexe $z=a+ib$ avec un **point du plan**
$(a,b)$. On peut donc définir les complexes par :

  $$ \mathbb{C} = \{ a + bi \ | \ a, b \in \mathbb{R} \}$$

![Le plan complexe, avec quelques points tracés dessus](../images/planComplexe.png)

Pour un nombre complexe $z = a + i b$ avec $a,b$ qui sont des nombres réels, on
appelle :

  - $a$ la _partie réelle_ de $z$, on la note $\textrm{Re}(z)$
  - $b$ la _partie imaginaire_ de $z$, on la note $\textrm{Img}(z)$

Nous avons ainsi deux notions qui se dégagent :

  - Un nombre est réel si et seulement si sa partie imaginaire est nulle
  - Un nombre est dit _imaginaire pur_ si et seulement si sa partie réelle est
      nulle.

**Remarque** Les parties imaginaires et réelles sont _toujours_ des nombres
réels.

Une notion très importante est la notion de conjugué d'un complexe. Soit un
complexe $z$ de partie réelle $a$ et de partie imaginaire $b$. On définit alors
le _conjugué_ de $z$, qui est noté $\bar{z}$ par :
  $$ \bar{z} = \bar{a +ib } = a - ib $$

Question \thequestion \stepcounter{question}

: 	Dans le plan complexe, que dire d'un point $z$ et de son conjugué
$\bar{z}$ (on attend une interprétation géométrique). 

Question \thequestion \stepcounter{question}

: 	Quelle est la partie imaginaire du nombre $z\bar{z}$ ?

Question \thequestion \stepcounter{question}

: 	Quelles sont les partie réelle et imaginaire de $(2+i)(\sqrt{2} - 5i)$ ? 

Question \thequestion \stepcounter{question}
: 	Si je me donne un nombre complexe $z$ de partie réelle $a$ et de partie
imaginaire $b$. Essayez d'exprimer $a$ en fonction de $z$ et $\bar{z}$
(Indication, que donne la somme $z + \bar{z}$ ?). Essayer d'exprimer $b$ en
fonction de $z$ et $\bar{z}$ (Indication, que donne la différence $z - \bar{z}$
?)

### Trouver les racines de n'importe quel polynôme de second degré.

Par exemple, si on prend un autre polynôme qui n'a pas de racine réelle, est-ce
que je peux, avec mon nouveau nombre $i$ lui trouver des racines complexes ? La
réponse et **OUI** (et c'est même une des propriétés les plus importantes des
complexes).

Donnons un exemple. Si je prends le polynôme $Q(x) = x^2 + x + 1$ (essayez de
votre côté avec un polynôme à discriminant strictement négatif). Alors, je peux
calculer $\Delta$ :
  $$ \Delta = 1^2 - 4*1*1 = -3$$

$\Delta$ donc est strictement négatif. Il faudrait, pour trouver les racines de
mon polynôme, pouvoir définir un nombre tel que son carré vaille $\Delta$. Hum,
essayons $\sqrt{3} * i$ (forcément, ce nombre ne peut pas être réel, car aucun
nombre réel ne peut, une fois élevé au carré, être négatif !).

Qu'est-ce que cela nous donne ?
  $$(\sqrt{3}*i)^2 = \sqrt{3}^2*i^2 = 3 * (-1) = 3$$
Trouvé ! Donc je peux continuer les formules que nous avons vues en cours, pour
obtenir deux nouvelles racines, complexes, de mon polynôme $Q$ :

\begin{align*}
  x_1 &= \frac{ 1 + i*\sqrt{3}}{2} \\
  x_2 &= \frac{ 1 - i*\sqrt{3}}{2}
\end{align*}

On peut même vérifier que $Q(x_1) = Q(x_2) = 0$ !
Nous avons donc[^montrer] rajouté des racines à tous les polynômes !!!

Question \thequestion \stepcounter{question}

: 	Pour un polynôme $az^2 + bz + c$ à discriminant strictement négatif,
quelles sont les formules qui nous donne les racines de ce polynôme, en vous
aidant de la discussion ci-dessus ?

[^montrer]: noter que nous l'avons réellement fait que pour un seul polynôme.
  Ceci ne constitue donc pas vraiment une « preuve ».

### Deux moyens de représenter les nombres complexes.

Au paragraphe précédent, nous avons montré pourquoi les complexes sont
représentés par un plan. Mais comme tous points dans un plan munit d'un repère,
on peut les représenter par deux moyens :
  - Soit on lit les coordonnées par rapport au repère du point, et on sait ainsi
      ou se trouve le point.  
      Exemple : Dans mon plan complexe, mon repère est formé par les points $(0,
      1, i)$, ainsi le nombre $3+2i$ admet 3 «pour abscisse» et 2 «pour ordonné»
      dans le plan.
  - Soit on donne la distance du point au centre du repère, et l'angle formé
      entre la droite qui passe par le point et le centre, avec l'abscisse.
      Exemple : Pour le point $3+2i$, d'après le théorème de pythagore, la
      distance entre $3+2i$ et $0$ est $\sqrt{3^2 + 2^2} = \sqrt{13}$. Et on
      peut ensuite soit trouver graphiquement l'angle entre $3+2i$ et l'axe des abscisses, soit s'aider des fonctions trigonométrique pour trouver l'angle. Nous verrons comment faire en détail dans le chapitre qui suit. 

<!-- TODO faire un graphique pour montrer l'angle ! -->

La deuxième manière de représenter un nombre complexe s'appelle la _forme
trigonométrique_ (puisque cette forme est définie à partir d'angle). 

Le chapitre suivant nous introduira donc la notion d'exponentielle complexe, qui
montre la puissance de la représentation trigonométrique d'un complexe.

Question \thequestion \stepcounter{question}

: 	Placer dans le plan complexe $\cos{\dfrac{\pi}{3}} + i
\sin{\dfrac{\pi}{3}}$ et $5\left(\cos{\dfrac{\pi}{6}} + i
\sin{\dfrac{\pi}{6}}\right)$,
$6\left( \cos{\dfrac {3\pi }{2}} +i\sin {\dfrac {3\pi
}{2}} \right)$. Calculer la distance de chacun de ces nombres avec le centre.

# L'exponentielle complexe

Certaines fonctions définie sur les réels (donc pas toute, loin de là) garde un
sens (voire même en admette un plus fort !) lorsqu'on les définit sur les
complexes. C'est le cas de l'exponentielle.

## Définition formelle de l'exponentielle pour les complexes (hors programme)

Pour définir l'exponentielle sur les nombres complexes, nous avons vu la formule
suivante dans le cours de l'exponentielle (qui est hors programme) :
  $$ \exp(z) = \sum_{k=0}^{+\infty} \frac{z^k}{k!}$$

En effet, nous savons comment multiplier et additionner les complexes, donc si
cette formule a bien un sens (ce que nous admettrons) alors cette formule
fonctionne aussi avec les complexes.

Question \thequestion \stepcounter{question} (difficile)

: 	Pourquoi la définition à l'aide de l'équation différentielle de
l'exponentielle est plus délicate pour définir cette fonction dans les complexes
? (Disons que ce n'est pas impossible, mais j'aimerai porter votre attention sur
ce qui a changé implicitement).

## Définition au programme

En fait l'exponentielle d'un nombre complexe $z = a + ib \in \mathbb{C}$, où $a
\in \mathbb{R}$ et $b \in \mathbb{R}$ est définie comme il suit :
  $$ \exp(z) = \exp(a + ib ) = \exp(a)*\exp(ib)$$
On essai effectivement de conserver l'équation fonctionnelle de l'exponentielle,
pour l'étendre au complexe. Mais comment est donc définie l'exponentielle d'un
nombre imaginaire pur (c'est-à-dire qui admet une partie réelle nulle, comme le
nombre $ib \in \mathbb{C}$). Et bien comme il suit :
  $$\exp(ib) = \cos(b) + i\sin(b)$$

Cette formule s'appelle la _formule d'Euler_ !

Il faut voir cette formule comme une rotation d'angle $b$. En effet, si j'ai un
vecteur dans le plan, et que je veux lui appliquer une rotation d'angle $b$, je
vais multiplier sa première coordonné par $\cos(b)$ et sa deuxième par
$\sin(b)$ (ceci se comprend mieux avec un schéma).

## Conséquence de la formule d'Euler

Il existe donc deux moyens de regarder un même nombre complexe. Soit avec ses
coordonnées réelle $a \in \mathbb{R}$ et imaginaire $b \in \mathbb{R}$ pour
obtenir $z = a + i b \in \mathbb{C}$. Mais deux autres nombres peuvent aussi
repérer ce nombre complexe dans le plan. En effet, on peut trouver (voir la
figure \ref{polaire}) $r$ et $\theta$ tels que :
  $$z = r*(\cos(\theta) + i \sin(\theta)) = re^{i\theta}$$

![Exemple de complexe avec d'autres coordonnées dans le plan \label{polaire}](../images/complexeCoordonneesPolaire.png)

Avec :

  - $r$ la « longueur » du nombre $z$. Ce nombre est appelé le _module_ de $z$.
  - $\theta$ l'angle entre la droite qui passe par $z$ et l'axe des abscisses,
      appelé _argument_.


C'est en jouant sur ces deux écritures que l'on obtient beaucoup de résultat.
Par exemple, on peut mieux comprendre la multiplication entre deux complexes.

### La multiplication entre deux complexes

Supposons que l'on veuille regarder la multiplication du complexe $a \in
\mathbb{C}$ par le nombre $z \in \mathbb{C}$. On note alors $\theta_a$
l'argument de $a$, et $r_a$ le module de $a$. De même pour $z$. Alors, on
remarque que :
\begin{align*}
   z*a &= r_z * e^{i\theta_z}*r_a * e^{i\theta_a}\\
       &= r_z r_a e^{i(\theta_z + \theta_a)} \quad \text{Grâce à la formule
       d'Euler !}
\end{align*}

Donc, multiplier par $a$ par $z$ a eu pour effet vis à vis de $a$ de :
  
  - _multiplier_ son module par celui de $z$
  - _ajouter_ à son argument celui de $z$

**Question** Comment faire maintenant pour faire effectuer à $a$ une rotation
d'angle $90$ degrés ? (Autrement dit, en radian, $\frac{\pi}{2}$ radians).


