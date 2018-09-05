--- 
title: Les fonctions, propriétés de base et exemples
author: Fabien Delhomme 
lang: fr
date: 3 septembre 2018 
document: report
...

\newpage 

**\huge{Disclaimer}**

Bonjour à tous !

Vous avez sous les yeux le premier document d'une longue série qui représente le
cours que je vais vous dispenser pendant cette année de 2018--2019, avec pour
objectif d'avoir le bac S.

Il est **très important** de retenir que ce document est encore en construction,
c'est-à-dire qu'il subsiste des fautes de typo, ou mathématiques. Si vous en
voyez, **il faut le signaler** pour que je puisse le corriger au plus vite.

Voici mon adresse mail pour signaler les erreurs, ou si vous avez des questions :

<fdelhomme@gmail.com>

Trêve de paroles, commençons !

\newpage


# Qu'est-ce qu'une fonction ?

## Motivations
Les fonctions permettent de modéliser au mieux des phénomènes physiques. C'est
un formalisme très utilisé en physique, biologie, et en mathématiques.

Les fonctions sont aussi présentes au bac: il y a forcément au moins un exercice
qui porte sur les variations d'une fonction.

## Définition 

Une fonction associe quelque chose avec quelque chose. Ici, on s'intéresse
uniquement aux _fonctions numériques_. C'est-à-dire à des fonctions qui
associent des nombres réels à des nombres réels. On verra dans un second temps
quelques fonctions définies sur les _complexes_ (notion que l'on verra plus
tard).

# Représentation d'une fonction numériques

On peut donc représenter une fonctions dans un repère orthonormé. Cela permet de
visualiser les fonctions, et surtout :

  - De retenir certaines de leurs propriétés 
  - D'avoir un sens intuitif de leur croissance 

On reparlera de cela prochainement, mais retenez qu'il est _essentiel_ d'avoir
en tête les principales fonctions qui sont au programme pour avoir une intuition
correcte.

## Comment représenter une fonction ?

Il suffit de représenter tous les couples de points de la forme $$ (x, f(x))$$
avec $x \in \mathbb{R}$.

# Les fonctions de base

## Motivations

Pour mieux appréhender le concept de fonction, il faut avoir en tête ces
exemples.

## Les fonctions linéaires et affines

Ce sont les deux types de fonctions les plus simples qui existent ! Ces
fonctions sont très importantes, comme on le verra par la suite.

Ce sont les fonctions du type : 
  $$f(x) = a *x$$
Où $a$ est une constante, comme par exemple $$f(x) = 3*x$$ où ici $a$ vaut
$3$.

Ce genre de fonctions permet de modéliser des phénomènes dits linéaires. Un
exemple très concret peut être donné par les soldes, ou par la modélisation du
prix d'un abonnement :

Imaginons qu'une entreprise propose un abonnement de ce type :

  * Tout nouvel abonnement coûte 10 euros
  * Puis, le client paye 3 euros par mois

Comment modéliser le prix en fonction du mois que coute cet abonnement ? Et
bien, la réponse est donnée par la fonction $f(x) = 3x + 10$.

**Remarques :** Attention à la notation, normalement (c'est-à-dire techniquement parlant),
$f(x)$ représente un nombre. De façon abusive je noterai parfois dans ce cours $f(x)$
pour parler d'une fonction. Je vous dirai les endroits où il est important de
faire la distinction (surtout lors de la rédaction des copies).

La représentation graphique de cette fonction (c'est-à-dire sa _courbe
représentative_) est une _droite_! (cf exercices).

## Fonction carré

Un pas vers une fonction plus compliquée ! C'est la fonction suivante : 
  $$f : x \longrightarrow x *x = x^2$$

Par exemple:

  * $f(1) = 1$ 
  * $f(2) = 2*2 = 4$

## Interlude : fonction réciproque 

On parle de réciproque $g$, d'une fonction $f$, une fonction telle que, si :
  $$ y = f(x) $$

Alors :
  $$ x = g(y) $$.

Les prochaines sections montrent des exemples de fonctions réciproques.

## Fonction racine carrée 

C'est la fonction réciproque de la fonction racine carré. Attention, ici, j'ai
omis par soucis de rapidité une tonne de détails techniques, mais en gros, et nous
y reviendrons plus tard de toutes façons, la fonction racine marche comme il suit
:

  - $3^2 = 9$, donc $\sqrt{9} = 3$
  - $4^2 = 16$, donc $\sqrt{16} = 4$
  - $\sqrt{x}$ pour $x$ négatif n'a pas vraiment de sens (pour l'instant !) 
  - $\sqrt{2}$ est un nombre bien mystérieux.. (Que nous essaierons de
      calculer, et voir quelques propriétés).

## Fonction inverse 

Fonction qui associe un nombre à son inverse, tout simplement. Par exemple,
$f(3) = \frac{1}{3}$. On peut remarquer que $f$ est sa propre réciproque. 

## Les polynômes

Les polynômes sont les premières constructions à partir des briques de fonctions
élémentaires. On parle de polynôme dès que l'on a une fonction du type 
$$ f(x) = a_n * x^n + \dots + a_1 *x + a_0 $$
Autrement dit, dès que l'on a une somme de puissances de $x$ multipliées par
des nombres $a_n, \dots, a_0$, c'est que l'on a affaire à des polynômes. 

Les polynômes sont **très** importants pour le mathématicien, car en un certain
sens, ils permettent de tester des théorèmes (et même d'en prouver) facilement,
puis d'étendre la véracité de ces théorèmes à toutes les fonctions possibles !

Faisons le point dès maintenant sur quelque chose qu'il faut à tout prix
maîtriser : la recherche de racines d'un polynôme. 

**Vocabulaire:** une _racine_ d'un polynôme $P$ est un nombre $x$ tel que $P(x)
= 0$.

Au lycée, vous ne verrez jamais de polynôme de degré supérieur à 3.
C'est-à-dire que vous serez confrontés, au pire, à des $x^3$ dans vos calculs
(et heureusement !)

On peut remarquer au passage que les fonctions affines, les fonctions
linéaires, et les fonctions constantes, sont des polynômes !

### Trouver les racines d'un polynôme de second degré

Voici un paragraphe du type « formulaire », que je déteste faire car il ne donne
pas d'explication sur ce qui se passe, mais uniquement des formules à retenir.
La section suivante vous indiquera comment ces formules ont été trouvées.

On se donne un polynôme de second degré : $$ f(x) = ax^2 + bx + c$$

Où $a,b$ et $c$ sont des nombres quelconques.

**Premier réflexe pour trouver les racines:** (tous en chœur !) _trouver le
discriminant !_ Pour un polynôme de second degré, on a la formule 
  $$ \boxed{ \Delta = b^2 - 4ac }$$

Et les racines sont données par les formules (magiques !) 
  $$ x_1 = \frac{ - b + \sqrt{\Delta}}{2a}$$
  $$ x_2 = \frac{ - b - \sqrt{\Delta}}{2a}$$

**Conclusion:**

  - Si $\Delta$ est négatif, il *n'y a pas de racines réelles* (ceux qui ont vu
      les complexes comprennent pourquoi j'insiste sur le mot « réel » )
  - Si $\Delta$ est nul, alors "vous vous êtes fait avoir", car il n'y a qu'une
      seule racine, et c'était une simple identité remarquable qui permettait de
      conclure. Ne vous inquiétez pas, cela arrive aux meilleurs.
  - Si $\Delta$ est positif, on obtient deux racines distinctes.

**Astuce de pro:**

  - Parfois, lorsque $a =1$, on a un critère qui permet de trouver les
      racines d'un polynôme de second degré (voir exercice).  En effet, il se
      trouve que si on note $x_1$ et $x_2$ les deux racines d'un polynôme, et
      que $a=1$, alors : $$ x_1 x_2 = c$$ $$ x_1 + x_2 = b$$ 
      Donc, à votre avis, quelles sont les racines du polynôme $x^2 + 3x +2$ ?

### Le sens de variation d'un polynôme de second degré

Dans ce paragraphe, j'empiète un peu sur les notions présentées au suivant. Mais
je pense qu'il est important de tout mettre au même endroit. Si vous ne savez
plus ce que représente un tableau de variations, alors regardez
**[la section consacrée](#croissance-duxe9croissance)**[^clic]. 

[^clic]: c'est un lien cliquable !

On peut donc en déduire le sens de variation facilement. Il y a deux cas.

  - Soit $a$ est positif, et alors $f$ décroît de $-\infty$ à $\frac{b}{2a}$ et
      croît de $\frac{b}{2a}$ à $+ \infty$.
  - Soit $a$ est négatif, et c'est l'inverse..

Ce qui donne pour $a$ positif :

  |   x  | $]-\infty \quad \frac{b}{2a}]$ | $[\frac{b}{2a} \quad  \infty[$ |
  |:----:|:------------------------------:|:------------------------------:|
  | P(x) |           $\searrow$           |           $\nearrow$           |


**Astuce de mémorisation:** On retrouvera ces résultats rapidement grâce à la
dérivée, ou en ayant en tête la représentation graphique d'un polynôme.

### Tableau de signe d'un polynôme de second degré.

Plus important, le tableau de signe d'un polynôme de second degré peut
_toujours_ être trouvé rapidement, avec un peu d'entrainement. Il ne doit donc
pas vous poser de grandes difficultés.

Même remarque que pour la section précédente, j'empiète sur le chapitre suivant,
donc veuillez vous rapporter à la section [un peu plus
loin](#signe-dune-fonction) pour plus de détails.

Là encore, il y a deux cas, selon le signe de $a$.

Dans le cas où $a$ est positif :

+------+-----------------+--------------+------------------+
|   x  | $]-\infty,x_2]$ | $[x_2 ,x_1]$ | $[x_1, +\infty[$ |
+======+=================+==============+==================+
| P(x) | $+$             | $-$           | $+$             |
+------+-----------------+--------------+------------------+

Et c'est l'inverse quand $a$ est négatif.

**Astuce de mémorisation :** Là encore, n'essayez pas de retenir ce tableau par
cœur, mais à la place, ayez en tête la courbe représentative d'une fonction
polynômiale simple comme $x^2 -1$, qui a pour racine $x_1 = -1$ et $x_2
=1$[^identite], qui vous permet de retrouver tous les résultats ci-dessus !

[^identite]: c'est une identité remarquable !

## Mais d'où viennent ces formules ?

Reprenons notre polynôme :

  $$P(x) = ax^2 + bx + c$$

En utilisant quelques tours de passe passe, voici ce que l'on peut obtenir :

\begin{align*}
  P(x) &= a \left( x^2 + \frac{b}{a}x + \frac{c}{a}\right)\\
	&= a \left( \left( x + \frac{b}{2a}\right)^2 - \frac{b^2}{4a^2} + \frac{c}{a}\right)\\
	&= a \left( \left( x + \frac{b}{2a}\right)^2 - \frac{b^2 - 4ac}{4a^2}\right)\\
	&= a \left( x + \frac{b}{2a}\right)^2 - \frac{b^2 - 4ac}{4a}\\
  P(x)	&= a \left( x + \frac{b}{2a}\right)^2 - \frac{\Delta}{4a}\\
\end{align*} 

La dernière ligne est une forme particulièrement utile pour trouver les racines
du polynôme, mais aussi son minimun. Elle s'appelle la _forme canonique_.  Donc
cette forme est
  $$ \textrm{bidule}*(x + \textrm{truc})^2 + \textrm{machin} $$

En fait, les calculs fait plus haut vous donnent les formules pour calculer
bidule, truc et machin. En particulier, bidule est toujours égale à $a$. Mais,
retenir ces formules par coeur ne sert _à rien_ au bac, et ce, pour plusieurs
raisons :

  - Le correcteur préfère voir comment vous avez fait les calculs
  - Ces formules sont vraiment très rarement utiles avec les outils comme la
      dérivée, que l'on utilisera intensivement dans les prochains chapitres
  - On préfère vous demander de déterminer les racines. Et ce sont d'autres
      formules, qu'il est beaucoup plus rentable d'apprendre par rapport à celle
      de la forme canonique !


On peut aller plus loin, uniquement avec la condition $\Delta > 0$, si on
reprend nos calculs :
\begin{align*}
  P(x) &= a \left( \left( x + \frac{b}{2a}\right)^2 - \frac{b^2 - 4ac}{4a^2}\right)\\
       &= a \left( \left( x + \frac{b}{2a}\right)^2 - \left(\frac{\sqrt{\Delta}}{2a}\right)^2\right)\\
        &= a \left(x + \frac{b}{2a} - \frac{\sqrt{\Delta}}{2a}\right)\left(x + \frac{b}{2a} + \frac{\sqrt{\Delta}}{2a}\right)\\
       &= a  \left(x + \frac{b-\sqrt{\Delta}}{2a}\right)\left(x + \frac{b + \sqrt{\Delta}}{2a}\right)
\end{align*} 

Et nous pouvons conclure sur la ou les racines, et le sens de variation etc. En
particulier, si $\Delta <0$, alors le polynôme n'a pas de racine réelle. 

# Propriétés des fonctions

Maintenant que l'on a toutes ces fonctions en tête, regardons les principales
propriétés de ces fonctions

## Croissance, décroissance

Une fonction est dite _croissante_ (resp. _décroissante_) sur un intervalle $I$
si et seulement si :
  $$ \forall x, y \in I \quad x \geq y \iff f(x) \geq f(y) $$
resp:
  $$ \forall x, y \in I \quad x \leq y \iff f(x) \geq f(y) $$

On parle de _stricte_ croissante (resp. _stricte_ décroissance) lorsque les
propriétés énoncées plus haut sont vraies en remplaçant une inégalité large par
une inégalité stricte..

Pour résumer :

  - Une fonction croissante conserve l'ordre des antécédents. C'est-à-dire que
      l'ordre des images et des antécédents est le même. 
  - Au contraire, une fonction décroissante renverse cet ordre.

**Concrètement** si j'ai par exemple envie de démontrer que $\frac{1}{3} <
\frac{1}{2}$, alors je pars de :
  $$ 2 < 3 $$
Puis, en invoquant la décroissance de la fonction inverse sur l'intervalle $]0;
+\infty]$, j'obtiens :
  $$ \frac{1}{2} > \frac{1}{3} $$
J'inverse le sens des inégalités, car la fonction est _décroissante_.

**Points de vocabulaire** : 

  - Le symbole $\forall$ signifie "pour tout". Ce n'est pas dans le programme,
      mais c'est sacrément pratique ! (Ça veut dire qu'il ne faut pas l'utiliser
      dans les copies).
  - L'image d'un point $x$ par la fonction $f$ est simplement $f(x)$.
  - L'antécédent d'un point $y$ par la fonction $f$ est **un** (il est possible
      qu'il y en ait plusieurs) nombre $x$ tel que $f(x) = y$

Souvent (au bac, dans la vie d'un mathématicien, d'un physicien, d'un ingénieur
etc..) ou veut connaître le **sens de variation** d'une fonction. Cela revient à
construire un tableau qui résume les endroits (ensembles de nombres) où la
fonction croît, notée avec une flèche vers le haut, ou lorsque la fonction
décroît, notée avec une flèche vers le bas. Nous verrons la construction de
tableaux de variations en exercice.

## Signe d'une fonction 

Un _tableau de signe_  d'une fonction désigne un tableau où sont notées par des
plus les endroits (les ensembles de nombres, réunions d'intervalles) où la
fonction est positive, et par des moins les endroits où la fonction est
négative.

Souvent, le tableau de signe est plus simple à établir que le tableau de
variation.  (Cela explique la puissance de la dérivée, qui comme nous allons
bientôt le voir, permet de ramener l'étude d'un tableau de variation à un
tableau de signe !!).

## Domaine de définition

Un domaine de définition d'une fonction $f$ est l'ensemble des nombres sur
lequel la fonction $f$ est définie.

**Exemple:** la fonction inverse admet pour domaine de définition $] -\infty; 0[
\cup ]0; \infty[$, car il n'existe pas d'inverse pour 0 ( la division par 0 n'a
pas de sens !!).

**Notes:** il faut **toujours** commencer par se demander, même si cela n'est pas
écrit explicitement dans l'énoncé, quel est le domaine de définition d'une
fonction que l'on a sous les yeux. Cela permet d'éviter bien des problèmes !

**Remarques: (à relire plus tard)** Vous pouvez maintenant comprendre ce que
j'ai passé sous silence avec les fonctions réciproques. En effet, pour calculer
la réciproque d'une fonction, il faut toujours considérer son domaine de
définition, et surtout son domaine image. La réciproque de $f$ aura comme
ensemble de départ le domaine image de $f$. C'est pourquoi par exemple la
fonction racine carrée n'est pas définie pour des nombres réels négatifs (et pour
les petits malins du fond qui connaissent les complexes, notion au programme de
terminal S, sachez qu'on y reviendra !)

