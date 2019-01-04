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
physique, la chimie, mais aussi l'économie, l'ingénierie et bien bien d'autres
encore.

Un mot sur le concept d'intégration en mathématiques. Vous apprendrez ici ce
qu'on appelle l'intégration de Riemann. Pour une multitude de raisons, cette
manière d'intégrer n'est pas très efficace (mais cela va être suffisamment
puissant pour nous !). C'est pourquoi en troisième année de licence vous serez
sensibilisé (si vous suivez un cursus universitaire) à une autre définition de
l'intégration, plus générale et abstraite, l'intégration de Lesbegue. Pour ceux
d'entre vous qui continue à faire des maths, sachez que le _principe_ est
presque le même, donc concentrez vous sur la démarche de la définition de
l'intégrale, votre apprentissage n'en sera que facilité.

Tout commence par une question assez simpliste au premier abord : comment
calculer l'aire sous la courbe d'une fonction positive ?


C'est-à-dire, regardez la figure \ref{fctcompliquee}, comment calculer l'aire nommée
$I$ pour une fonction $f$ qui est définie entre $a$ et $b$ deux nombres réels ?

![Aire sous la courbe d'une fonction $f$ compliquée \label{fctcompliquee}](../images/aireFonctionComplique.png)

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
regarder la figure \ref{fctcompliquee}, vous pouvez vous convaincre qu'il est très
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
courbe. Notons $\int_a^b f(t)dt$ l'aire sous la courbe d'une fonction $f$ sur
l'intervalle $[a, b]$.

On aboutit donc à la formule suivante, qui est donc valide uniquement pour des
_fonctions constantes sur l'intervalle_ $[a, b]$ :
$$ \int_a^b f(t)dt = f(a)(b-a) = f(b)(b-a)$$
En effet, $f$ est constante sur $[a, b]$, donc $f(a) = f(b)$.


## Deuxième étape : approximer toutes les fonctions positives par des fonctions constantes

Décrivons pourquoi une fonction continue sur un intervalle $[a,b]$ peut être
approximée par plusieurs fonctions constantes. 

Soit $f$ une fonction continue sur un intervalle $[a, b]$, positive. On va
supposer de plus que $f$ est croissante. Alors, on peut _découper_ l'intervalle
$[a, b]$ en plusieurs sous intervalle. Vous trouverez dans les figures suivantes
\ref{decoupage1} et \ref{decoupage2}, des schémas avec un découpage en 10 puis
100 sous intervalles.

<!-- Schéma du découpage en 2, 3 et dix parties -->
![Découpage de l'intervalle en 10 sous intervalles identiques \label{decoupage1}](../images/aire10Rectangles.png)

![Découpage de l'intervalle en 100 sous intervalles identiques \label{decoupage2}](../images/aire100Rectangles.png)

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
  \int_a^b f(t)dt &\approx \sum_{k=0}^{n} \text{aire du rectangle de l'intervalle $I_k$} \\
  \int_a^b f(t)dt &\approx \sum_{k=0}^{n} \text{valeur de f au début du sous intervalle $k$} * \text{taille du sous intervalle}
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
  $$ I_k = \left[a + k\frac{b-a}{n}, a + (k+1)\frac{b-a}{n}\right]$$

Exercice

: 	Vérifiez que $b$ appartient bien à l'intervalle $I_n$. Vérifiez que
chaque intervalle est de longueur $\frac{1}{n}$ (Indication, pour trouver la
longueur d'un intervalle $[c,d]$, il suffit de calculer $d-c$).

Ensuite, sur chaque sous intervalle $I_k$, nous approximons $f(x)$ par le nombre
$f(a + k\frac{b-a}{n})$.
<!-- Faire un zoom pour bien montrer pourquoi on prend f en cette valeur -->
Ainsi, on aboutit à l'expression suivante :
\begin{align*}
  \int_a^b f(t)dt &\approx \sum_{k=0}^{n-1} f\left(a + k\frac{b-a}{n}\right)*\frac{1}{n} \\
  \int_a^b f(t)dt &\approx \frac{1}{n} \sum_{k=0}^{n} f\left(a + k\frac{b-a}{n}\right)
\end{align*}
En effet, le terme $\frac{1}{n}$ est donc présent dans chaque terme de la somme,
et ne change pas de terme en terme. La deuxième ligne est donc une simple
factorisation par ce terme.

Il s'agit donc de montrer que $\frac{1}{n} \sum_{k=0}^{n-1} f\left(a +
k\frac{b-a}{n}\right)$ converge vers quelque chose, et nous noterons ensuite :
$$ \boxed{\int_{a}^{b} f = \lim_{n \to \infty} \frac{1}{n} \sum_{k=0}^{n} f\left(a + k\frac{b-a}{n}\right)}$$

## Troisième étape : vérification de la convergence

Pour montrer que cette convergence a bien lieu, il faut être un peu plus fin. On
va d'une part surestimer et d'autre part sous-estimer l'aire d'une fonction sous
la courbe. En effet, si on regarde bien ce que l'on a fait, avec une fonction
croissante, si on calcule la somme décrite plus haut, pour un $n$ très grand par
exemple, nous _sous-estimons_ la véritable valeur de l'aire de la courbe. En
effet, $f$ est croissante, donc, pour tout $k$ compris entre $0$ et $n-1$ $x \in
\left[a + k\frac{b-a}{n}, a + (k+1)\frac{b-a}{n}\right]$ :
  $$ f\left(a + k\frac{b-a}{n}\right) \leq f(x) \leq f\left(a +(k+1)\frac{b-a}{n}\right)$$
  <!-- Mettre une image qui explique la différence.-->

Alors, nous allons encadrer la véritable valeur de l'intégrale de $f$ par :

\begin{align}
  \frac{1}{n} \sum_{k=0}^{n-1} f\left(a + k\frac{b-a}{n}\right) \leq \int_{a}^b f
  \leq \frac{1}{n} \sum_{k=1}^{n} f\left(a + k\frac{b-a}{n}\right)
\end{align}

D'où finalement : 
\begin{align}
  0 \leq \int_a^b f - \frac{1}{n} \sum_{k=0}^{n-1} f\left(a + k\frac{b-a}{n}\right)
  \leq \frac{f(a) - f(b)}{n}
\end{align}

Donc, par le théorème des gendarmes, le membre de droite tend vers 0 quand $n$
tend vers l'infini, donc :
$$ \boxed{\int_{a}^{b} f = \lim_{n \to \infty} \frac{1}{n} \sum_{k=0}^{n-1} f\left(a + k\frac{b-a}{n}\right)}$$

## Conclusion et notation

### Les détails techniques qui ne sont pas au programme.

Nous avons donc vu dans les paragraphes précédents comment était définie la
notion d'aire sous la courbe. Il suffit de calculer une approximation avec des
rectangles, puis de rendre cette approximation de plus en plus précise en
augmentant le nombre de subdivision de l'intervalle. Il y a beaucoup de détails
techniques qui sont passés sous silence, mais qui sont très intuitif à
comprendre. Voici les détails qui ne sont pas explicités :

  - On peut montrer que la définition de l'aire sous la courbe d'une fonction
      $f$ ne _dépend pas_ de la subdivision choisie. Les détails techniques sont
      inutilement compliqués pour en gros affirmer que plus on affine les
      rectangles, meilleurs est l'approximation, et ceci quelque soit la manière
      dont on a choisi la largeur de chaque rectangle.
  - On peut montrer que la définition fonctionne aussi pour des fonctions qui ne
      sont ni croissante ni décroissante sur $[a, b]$. La démonstration, bien
      que pas foncièrement difficile, est légèrement différente, et utilise des
      techniques qui ne sont pas au programme du bac.

Nous allons donc admettre tous ces résultats. Ainsi, nous avons une définition
d'une aire sous la courbe. 

### Notation 

Il existe deux notations pour désigner l'aire sous la courbe d'une fonction
$f$ sur l'intervalle $[a,b]$. Les deux notations contiennent le symbole $\int$
qui forme un « S » pour rappeler que l'on _Somme_ sur des quantités infiniment
petite.

La première notation, est la suivante :
  $$\int_a^{b} f(t)dt$$
On note l'apparition du symbole $dt$ qui désigne en quelque sorte la largeur
infiniment petite du rectangle, et $f(t)$ représente sa hauteur.

Sachez que la « variable » $t$ est ce que appelle une _variable muette_.
C'est-à-dire que son _nom_ n'a pas d'importance, on peut remplacer le symbole
$t$ par $x$ ou encore par un smiley « :D » que cela marcherait tout autant. 

**Attention** par contre à ne pas appeler une variable muette par le même
symbole qu'une autre variable d'un énoncé.

La deuxième notation, est simplement :
    $$\int_a^{b} f$$
On ne fait donc pas apparaître le variable muette. C'est un style qui n'est pas
souvent utilisé dans les copies du bac, mais qui apparaît parfois.

Maintenant que vous avez été sensibilisé au deux principales notations de
l'intégrale, nous pouvons passer au paragraphe suivant qui a pour objectif de
déterminer comment varie l'aire sous la courbe sachant une fonction $f$ continue
sur $[a,b]$ donnée. En outre, la question que l'on se pose est la suivante :
existe-t-il un lien entre la fonction qui donne l'aire sous la courbe entre $[a,
x]$ avec $x \in [a, b]$ et $f$ ?

# Lien avec la dérivée

Maintenant, que nous avons défini proprement à quoi correspondait l'aire sous la
courbe d'une fonction $f$ continue et positive, nous essayons de comprendre la
fonction :
  $$ F : x \mapsto \int_{a}^x f(t)dt$$
Là encore, on va supposer, pour la démonstration, que la fonction $f$ est
croissante et positive.

Pour comprendre une fonction qui a des valeurs réelles, on peut essayer de la
dérivée, ou dans un premier temps, voir si la dérivée existe !

Pour cela, il nous faut calculer la limite (revoir le cours sur la dérivation
pour comprendre pourquoi) suivante, pour tout $x \in ]a, b[$[^remarque]:
  $$ \lim_{h \to 0 } \frac{ F(x +h ) - F(x)}{h}$$

Pour mener à bien ce calcul, il nous faut prendre $x \in ]a,b[$ et $h$
suffisamment petit pour que $x+h$ soit encore dans l'intervalle
$]a,b[$[^remarque].

On a :
\begin{align*}
  F\left( x+h\right) -F\left( x\right) &= \int ^{x+h}_{a}f\left( t\right) dt-\int ^{x}_{a}f\left( t\right) dt\\
  &=\int ^{x+h}_{x}f\left( t\right) dt
\end{align*}

Or, si la fonction $f$ est croissante sur l'intervalle $]a, b[$, cela signifie
que quelque soit la valeur de $h>0$, $f(x+h) \geq f(x)$. 

![Situation de la preuve](../images/imagePreuveTheoFondamentale.png)

Autrement dit l'aire sous la courbe de $f$ entre $x$ et $x+h$:

  - Peut toujours être minorée par l'aire $h*f(x)$ du petit rectangle,
  - Peut toujours être majorée par l'aire $h*f(x+h)$ du grand rectangle.

Mathématiquement, on obtient, pour tout $h >0$ suffisamment petit :
  $$hf\left( x\right) \leq \int ^{x+h}_{x}f\left( t\right) dt\leq hf\left( x+h\right)$$
En divisant chaque terme par $h$, qui est strictement positif, on obtient :
  $$f\left( x\right) \leq \dfrac {1}{h}\int ^{x+h}_{x}f\left( t\right) dt\leq f\left( x+h\right)$$
D'où, pour tout $h >0$ :
  $$f\left( x\right) \leq \dfrac {F\left( x+h\right) -F\left( x\right) }{h}\leq f\left( x+h\right)$$
Or, la fonction $f$ est continue, donc si $h$ tend vers $0$ on sait que $f(x+h)$
tend vers $f(x)$. Par théorème des gendarmes en passant à la limite lorsque $h$
tend vers $0$, on obtient ainsi que $F$ est dérivable pour tout $x \in ]a,b[$,
et que sa dérivée $F'$ vaut :
  $$\boxed{F'(x) = f(x)}$$

[^remarque]: Alors, pourquoi prendre l'intervalle ouvert ?

# Comment définir l'aire sous la courbe d'une fonction négative ?

Pour une fonction négative sur un intervalle $[a, b]$, on pose :
  $$ \int_a^b f = - \int_a^b (-f)$$
Où $-f$ est une fonction _positive_.

Ainsi, par exemple, si on doit intégrer entre $0$ et $10$ une fonction qui est :
  
  - positive entre $0$ et $2$ et $5$ et $10$
  - négative entre $2$ et $5$

Alors, on calculera :
$$\int_{0}^{10} f = \int_0^2 f - \int_2^5 (-f) + \int_{5}^{10} f$$

# Propriété de l'intégrale

## Linéarité de l'intergrale

Voici la liste des résultats (énoncés rapidement) que nous allons prouver dans ce paragraphe :

  - $\int_a^b f = -\int_b^a f$
  - $\int_a^b f + \int_b^c f = \int_a^c f$

Cette liste est l'occasion pour vous de vérifier si vous avez compris le concept
d'intégration.

Exercice :

: 	Essayez de vous convaincre de ces résultats à l'aide d'un graphique, et
d'une fonction continue quelconque tracée à la main, et des valeurs $a$, $b$,
et $c$ simples.

# Applications de l'intégration 

## En analyse

## En physique

Dans ce court paragraphe, je vais essayer de détailler les opérations effectuée
en mécanique du solide en physique.

En effet, la première principe de la mécanique classique est l'énoncé suivant :
  $$ m \vec{a} = \sum_i \vec{F_i}$$
Où, $m$ est une constante et représente la _masse_ d'un objet, $\vec{a}$ est le
vecteur accélération de cet objet, et les $\vec{F_i}$ représente les différentes
forces qui s'exercent sur cet objet.

Pour simplifier la situation, considérons la chute d'un objet (disons une pomme)
dans le _vide_ dans un repère galiléen (sinon nous ne pouvons pas appliquer la
loi de Newton).  Plaçons donc un objet à disons $30$ mètres de hauteur de mon
repère, placé sur le sol. Lachons l'objet _sans vitesse initiale_ au temps $t_0
= 0$. Puisque la seule force qui s'exerce sur cet objet (c'est là que l'on
utilise l'hypothèse de l'expérience dans le vide) est la force de
gravitation[^force] qui se calcule par $mg$, où $g$ est la constante de
gravitation de la Terre, on obtient donc :
  $$ mg = ma$$
L'accélération n'est plus un vecteur, puisque l'on regarde simplement
l'accélération verticale de l'objet en fonction du temps. D'ailleurs,
mathématiquement, il faudrait en toute rigueur noter $a(t)$ pour signifier que
$a$ est une fonction (au sens mathématique du terme !) qui dépend du temps. Ici,
notre accélération est constante et vaut $g$ pour tout temps $t$. Dit autrement,
pour tout $t$ :
  $$a(t) = g$$
IL serait intéressant sachant cette information, de connaitre la trajectoire de
l'objet. Pour cela, il faut déterminer la _position_ de l'objet dans notre
repère. Notons cette position, comme il est coutume de le faire, par $x(t)$.
Nous savons de plus que :

  - La dérivée de la position, est la vitesse de l'objet,
  - la dérivée de la vitesse de l'objet est son accélération. 

Dit autrement :
$$
\begin{cases}
  x'(t) &= v(t)\\
  v'(t) &= a(t)
\end{cases}
$$
On reconnait donc que la vitesse est _une primitive_ de l'accélération, et la
position est une _primitive_ de la vitesse. Pour connaitre la position, il faut
d'abord _intégrer_ la vitesse, et pour avoir la vitesse, il faut intégrer
l'accélération. Ainsi, pour obtenir la position de l'objet, il faut _intégrer
deux fois_ l'accélération.

Ainsi, pour un temps $t > t_0 = 0$, on a, d'après ce même cours :
\begin{align*}
  v(t) - v(t_0) &= \int_{t_0}^{t} a(u)du \\
  v(t) - v(t_0) &= \int_{0}^t g du \\
  v(t) - v(t_0) &= [gu]_{u = 0}^{u = t }
\end{align*}

D'où $v(t) = gt + v(t_0)$.

[^force]: est-ce vraiment une force ? Soyez curieux, et renseignez vous !

## En probabilité

# Bonus : l'intégration par partie (hors programme)

Dans ce paragraphe, je vous présenterai une technique qui n'est plus enseignée
au bac (mais qui l'était il n'y a pas si longtemps), et qui est très puissante
(on pourrait presque dire que des domaines entiers des mathématiques sont construits
autour de cette technique).

Tout commence avec la simple formule de la dérivée d'un produit de fonction :
  $$ (uv)' = u'v + v'u$$
Si on intègre entre $a$ et $b$, on obtient
  $$ \int_a^b (uv)' = \int_a^b u'v + \int_a^b v'u$$
Finalement :
  $$ \boxed{\int_a^b u'v = [ uv ]_{x = a}^{x=b} - \int_a^b v'u}$$
