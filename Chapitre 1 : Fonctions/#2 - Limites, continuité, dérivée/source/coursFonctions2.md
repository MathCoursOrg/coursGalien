---
title: Fonctions, deuxième partie.
author: Fabien Delhomme
lang: fr

geometry:
  margin=1.2in
fontsize: 11pt
papersize: a4paper
document: article
classoption: twoside
colorlinks: blue
pagestyle: headings
...

# Limites d'une fonction

## Motivations

### En science

Souvent, on utilise le concept de limite pour **prédire** le comportement d'un
système. En physique notamment, on calcule la limite d'une fonction en plus
l'infini pour déterminer le comportement dit _asymptotique_ d'un phénomène. Par
exemple, si on regarde la température d'une tasse de thé chaude, on se rend bien
compte que si on la laisse suffisamment à l'air libre, la température de la tasse
va décroître, et se stabiliser autour de la température extérieure. On pourrait
donc voir la limite comme le comportement de la température après avoir attendu
suffisamment longtemps.

### En mathématiques

(à lire peut-être plus tard) Pour comparer la croissance de deux fonctions, on veut savoir qui le
«remportera» sur l'autre au bout d'un certain temps. Et le concept de limite
est idéal pour cela

### Pour ce cours

Ce chapitre remplit trois objectifs :

- C'est, tel quel, un chapitre qui fait partie de la liste du programme
officiel de terminal S.
- Je l'introduis avec des fonctions, mais sachez que l'on retrouvera
_exactement_ la même chose pour les _suites_, mais en plus simple. Donc si
vous l'avez compris ici, vous l'avez compris pour les suites (mais je
redonnerai quelques précisions, évidemment)
- Enfin, je veux introduire la notion de dérivée après ce chapitre. Notion qui
repose sur les limites, donc c'est dans le thème !

## Définitions

Une limite d'une fonction $f$ au point $a$ (un point au sens large, pour éviter
d'écrire plusieurs définitions pour le même concept, j'autorise
**exceptionnellement** le point $a$ d'être égal à $\pm \infty$) est la *valeur*
vers quoi tend $f(x)$ pour $x$ qui s'approche de plus en plus de $a$.

**Exemples :**

  - si on prend la fonction $f(x) = x +1$. Quelle est sa limite en
  $0$ ? Et bien, plus $x$ s'approche de $0$, plus $x+1$ s'approche de $1$, donc
  on note : $$ \lim_{x \to 0} f(x) = 1$$
  - Si maintenant, on prend $f(x) = \frac{1}{x}$, quelle est sa limite en
  $+\infty$ ? Et bien, plus $x$ est grand, plus $\frac{1}{x}$ s'approche de $0$.

**Remarques :**

  - le calcul de limite est très présent au bac.
  - certaines limites de fonctions doivent être connue, mais la plupart se retrouvent sur le graphe des fonctions. Pour les autres, je vous donnerai des interprétations pour mieux les mémoriser.

## Définition propre aux fonctions

Il faut néanmoins distinguer deux types de limite. Cette distinction n'a lieu
_que pour les fonctions_ (cela veut dire, pas pour les suites).
On a donc :

- Les limites dites à gauche, notée : $\lim_{x \to a^{+}} f(x)$, voire
$f(a^{+})$
- Les limites dites à droite, notée : $\lim_{x \to a^{-}} f(x)$, voire
$f(a^{-})$, pour aller plus vite.

Intuitivement, la limite à gauche d'un point $a$ est la valeur de $f(x)$ pour
$x$ qui s'approche de $a$ avec la condition $x <a$. On arrive vers $a$
graphiquement vers la gauche.

De même pour la limite à droite.

Il peut arriver qu'une fonction ait une limite à gauche et une limite à droite
différente en un même point. Par exemple la fonction qui à $x$ associe $1$ pour
les nombre positifs, et $-1$ pour les nombre négatifs, et n'est pas définie pour
$x=0$, admet :

- Une limite à gauche en $0$ qui est de $-1$
- Une limite à droite en $0$ qui est de $1$

Autre subtilité par exemple, soit $f = \frac{1}{x}$ :

- f admet $+\infty$ pour limite en $0$ à droite
- f admet $-\infty$ pour limite en $0$ à gauche

C'est aussi pour cela que l'on doit distinguer les deux limites

## Pour quelques fonctions classiques

### Les fonctions puissances

Pour tous les fonctions puissances, $f : x \longrightarrow x^n$, on a, suivant la
parité de $n$ :

- Si $n$ est pair, $\lim_{\pm \infty} f(x) = \pm \infty$
- Si $n$ est impair $\lim_{\pm \infty} f(x) = \mp \infty$ le signe est inversé

### La fonction inverse

Très pratique, car elle va nous permettre de calculer plus largement les
limites pour les fonctions du style $\frac{1}{f(x)}$ et par extension, quelques
limites pour $\frac{u}{v}$ grâce au tableau sur le produit.

#### En plus et moins l'infini

On a :
  $$ \lim_{x \to \infty} \frac{1}{x} = 0$$
Ainsi que :
  $$ \lim_{x \to -\infty} \frac{1}{x} = 0$$

Vous pouvez retrouver cela, soit en calculant $1/10000000$, soit en demandant à
votre calculatrice de tracer la courbe de la fonction $x \mapsto \frac{1}{x}$

#### En 0

La fonction inverse n'est effectivement pas définie en $0$. Par contre, on peut
essayer la limite de la fonction inverse en $0$. Malheureusement, cette limite
_dépend_ comment on tend vers $0$, c'est-à-dire par la droite ou par la gauche
(dit autrement, par les positifs, ou par les négatifs).

En effet on a :
  $$ \lim_{x \to 0^{+}} = + \infty$$
Et :
  $$ \lim_{x \to 0^{-}} = - \infty$$

Ces résultats sont très importants, et nombreux sont ceux qui sont tombés dans le
piège ! Encore une fois, pour retenir ces propriétés, il vous suffit de retenir
le graphe de la fonction inverse.

## Règles de calcul

Intuitivement, on peut se convaincre des règles de calcul suivantes. On va
présenter les règles dans un tableau récapitulatif. On présente tous les cas
possibles de limites de deux fonctions $u$, et $v$. Le résultat de leur limite
est indiquée dans la cellule correspondante.

Les ?? signifient que l'on ne peut pas conclure dans le cas général, c'est donc du
cas par cas. Nous verrons des exemples à la section suivante.

Pour le produit :

|         *        |          $v = \infty$         |          $v =- \infty$         |          $v=l \not = 0$         | $v= 0$ |
|:----------------:|:-----------------------------:|:------------------------------:|:-------------------------------:|:------:|
|   $u = \infty$   |            $\infty$           |            -$\infty$           |  $(\textrm{signe de l})*\infty$ |   ??   |
|  $u = - \infty$  |           $-\infty$           |            $\infty$            | $-(\textrm{signe de l})*\infty$ |   ??   |
| $u =l' \not = 0$ | $(\textrm{signe de l})\infty$ | $-(\textrm{signe de l})\infty$ |              $ll'$              |    0   |
|      $u = 0$     |               ??              |               ??               |                0                |    0   |

Pour la somme :

|       +      | $v =\infty$ | $v =- \infty$ |   $v=l$   |
|:------------:|:-----------:|:-------------:|:---------:|
|  $u =\infty$ |   $\infty$  |       ??      |  $\infty$ |
| $u =-\infty$ |      ??     |   $-\infty$   | $-\infty$ |
|    $u =l'$   |   $\infty$  |   -$\infty$   |   $ll'$   |

Pour le quotient, il suffit juste de connaitre les limites en tout les points
possibles de la fonction $\frac{1}{x}$, et d'appliquer ensuite le produit. Par
exemple, pour $\frac{\infty}{0^{+}} = \infty * (+\infty) = \infty$.

## Théorèmes portant sur les limites

### Théorème de comparaison

Celui-là est très intuitif, mais très utilisé. Supposons que nous avons deux
fonctions, telles que :
$$ f(x) \leq g(x) $$
Alors, si $f(x)$ tend vers $\infty$ en $a$, alors $g(x)$ aussi.

On peut alors imaginer toutes les variations possibles, avec moins l'infini, ou
une inégalité dans l'autre sens.

### Théorème des gendarmes

Aussi appelé théorème d'encadrement[^classe], celui-là est **vraiment** utilisé
massivement en mathématiques (en particulier en analyse).

Supposons que l'on ait :
$$ f(x) \leq g(x) \leq h(x) $$

Alors, si
$$\lim_{x \to a } f(x) = \lim_{x \to a } h(x) = l$$
Par conséquent :
$$\lim_{x \to a } g(x) = l$$

Très simple, mais souvent **redoutablement efficace**[^pensezy] ! Il est très utilisé en
particulier pour le calcul de limite de _suite_, notion que nous verrons plus
tard. Au bac, il apparaît souvent dans les dernières questions, pour conclure
sur la limite que l'on cherchait dans l'exercice.

[^classe]: plus classe, mais moins fun..
[^pensezy]: ça veut dire qu'il faut le garder en tête, mais avec un nom pareil,
je ne doute pas que vous allez vous en rappeler !

### Exemple typique du théorème des gendarmes

C'est pas un exemple impressionnant, certes, mais cela permet d'illustrer une
manière d'utiliser le théorème des gendarmes très connues. En effet, souvent le
terme de gauche est simplement nul, et le terme de droite tend vers 0, ce qui
force la fonction ainsi encadrée de tendre vers 0. Démonstration.

Pour $x > 1$, on a (à voir sur un graphique)
$$ 0 \leq \frac{1}{x^2} \leq \frac{1}{x} $$

Donc, puisque l'on sait que $\lim_{x \to \infty} \frac{1}{x} = 0$, on en déduit
par le théorème des gendarmes :
$$ \lim_{x \to \infty} \frac{1}{x^2} = 0 $$

# La continuité

## Définition

On dit qu'une fonction $f$ est continue au point $a$ lorsque :
$$ \lim_{x \to a^{-}} f(x) = \lim_{x \to a^{+}} f(x) = f(a) \in \mathbb{R}$$

On dit encore qu'une fonction est _continue sur un intervalle_ si elle est
continue en tout point de cet intervalle.
Dans la _définition même de la continuité_ il **faut** préciser où la fonction
est continue. Car cette propriété **dépend** de la fonction bien sûr, mais aussi
de l'intervalle considéré (par exemple, prenez la fonction inverse).

## Graphiquement parlant

C'est très facile de repérer une fonction continue à l'aide de sa courbe
représentative : il suffit qu'elle n'est pas de «coupure» dans son graphe.

## Exemples

Toutes les fonctions de bases présentées plus haut (fonctions puissances,
polynôme, inverse, affine et linéaire) sont continues sur leur intervalle de
définition (mais il faut précisez pour la fonction inverse, comment ?).

## Comment justifier (au bac) qu'en fonction est continue ?

Au bac, lorsqu'il faut justifier qu'une fonction est continue, souvent il suffit
de dire :

  - qu'elle est somme / produit de fonctions continues
  - (ou) que c'est un polynôme,
  - (ou) que c'est une composition de fonctions continues

Et normalement vous avez tous les cas possibles.

## Théorème des valeurs intermédiaires

Le théorème des valeurs intermédiaires fait partie des théorèmes sur lesquels
vous êtes sûr de tomber le jour du bac. Il est heureusement pour nous assez
simple et plutôt intuitif là encore.

Supposons $f$ une fonction _continue_ sur un intervalle $[a, b]$. Supposons par
ailleurs que $f(a) > 0$ et $f(b) < 0$. Alors le théorème des valeurs
intermédiaires affirme qu'il existe un nombre $c$ compris entre $a$ et $b$ tel
que :
  $$ f(c) = 0 $$

**Commentaires :**

  - Bien sûr, le théorème marche si $f(a) < 0$ et $f(b) > 0$. En
      somme, il suffit que $f(a)f(b) < 0$ (c'est-à-dire que les deux nombres
      $f(a)$ et $f(b)$ sont de signes différents).
  - De même, vous pouvez remplacer les $0$ dans le théorème par n'importe quelle
      valeur. Mais c'est souvent en $0$ que l'on énonce le théorème.
  - L'hypothèse de la continuité de la fonction est évidemment totalement
      nécessaire. Une fonction discontinue peut totalement être positive, puis
      négative sans passer par $0$.
  - Attention, le théorème nous dit qu'il existe un tel nombre $c$, mais ne nous
      dit pas s'il est unique (il peut très bien en avoir plusieurs, par exemple
      la fonction sinus ou cosinus croise plusieurs fois l'axe des abscisses).
      Néanmoins si vous avez _besoin_ de prouver l'unicité d'un nombre $c$, vous
      le pouvez ! Il suffit de prouver que la fonction est strictement
      croissante (vous verrez un exemple dans la [section
      suivante](#algorithme)).
  - Le théorème ne nous dit pas non plus où il se trouve ! Le prochain
      paragraphe sera justement consacré à la recherche de ce fameux $c$.

## Algorithme

Et hop ! Un petit détour par l'algorithmie !! On peut difficilement passer à
côté, vu qu'il y a de très forte chance que vous tombiez sur un exercice du
style au bac.

Dans ce paragraphe, nous illustrerons un algorithme basé sur la méthode de la
_dichotomie_ (qui veut littéralement dire « couper en deux », vous comprendrez
vite pourquoi ).

### Le contexte

Le théorème des valeurs intermédiaires ne nous donnent pas la _localisation_ des
nombres $x$ qui sont solution d'une équation $f(x) = 0$. C'est bien dommage, et
on essaie donc de calculer une _approximation_ de la solution.

### Présentation de la méthode

Prenons une fonction $f$ qui est strictement croissante et continue, et $a$ et
$b$ tel que $a<b$ et $f(a)f(b) < 0$. Nous sommes bien dans les hypothèses du
théorème des valeurs intermédiaires, et puisque la fonction est strictement
croissante, nous pouvons en déduire qu'il existe un unique nombre $c \in [a, b]$
tel que $f(c) = 0$.

Disons que l'on sait que la solution $c$ est dans l'intervalle $[a, b]$. Donc on
peut diviser cet intervalle en deux. Prenons $m$ le milieu de cet intervalle.
C'est-à-dire :

  $$ m = \frac{a + b}{2} $$

Alors, deux options sont possibles :

  - Soit, le nombre $c$ se trouve dans l'intervalle $[a, m]$ Soit le nombre $c$
  - se trouve dans l'intervalle $[m, b]$

Voilà, nous avons coupé en deux notre problème. Comment décider dans quelle
option nous sommes ? Et bien, il faut voir ce que donne la fonction $f$, et
invoquer en particulier sa croissance.

  - Si $f(m) <0$, puisque $f$ est croissante, cela veut dire que $c$ est après
      $m$, et donc $c$ est dans l'intervalle $[m, b]$
  - Si $f(m)> 0$, puisque $f$ est croissante, cela veut dire que $c$ est avant
      $m$, et donc $c$ est dans l'intervalle $[a, m]$
  - Si jamais (cas très rare) $f(m) = 0$, alors on a trouvé notre nombre $c$,
      puisque $c = m$ dans ce cas.

Ensuite, une fois que l'on a réduit notre intervalle par deux, on peut continuer
exactement de la même manière mais sur un intervalle plus réduit. Cela nous
permet donc de _localiser_ le nombre $c$ en réduisant pas à pas l'intervalle qui
encadre $c$.

Sous forme d'algorithme, cela peut donner :

	SOIT a un NOMBRE
	SOIT b un NOMBRE
	SOIT f une FONCTION
	SOIT epsilon un NOMBRE # C'est la précision de notre encadrement

	TANT QUE | a - b | < epsilon
	ALORS
	  m = (a + b) / 2

	  SI f(m) > 0
	  ALORS
	    a = a #Ligne inutile
	    b = m
	  SINON, si f(m) < 0
	    a = m
	    b = b #Ligne inutile
	
	RETOURNER a,b

Je vous laisse deviner comment implémenter cette méthode pour calculer
$\sqrt{2}$...

# La dérivée

## Définition

Voilà, on y est ! Le merveilleux concept de la dérivée ! Je vous conseille de
lire en parallèle de ce cours, le super bouquin, gratuit et fait par des
talentueux mathématiciens passionnés par la vulgarisation accessible
[ici](http://catalogue-editions.ens-lyon.fr/html/WYSIWYGfiles/files/349_Borrelli_pdf%20WEB.pdf)[^clic]
! Je vous recommande tout le livre si vous avez le temps, mais vous pouvez vous
attarder en particulier sur le chapitre « La dérivation » qui est très bien fait
!

[^clic]: c'est encore un lien cliquable !

Donc, qu'est-ce que la dérivée ? C'est tout d'abord une espèce d'opération, qui
transforme une fonction en une autre fonction.

Pour mieux comprendre la dérivée, prenons un exemple concret, d'une fonction $f$
représentant la position d'une voiture par rapport à un repère quelconque. Et
bien la dérivée, serait une autre fonction, qui donnerait en tout point la
vitesse (instantanée) de votre voiture. Oui, en fait, lorsque vous
conduisez[^permis], l'aiguille qui se tient dans le cadran en face de vous
calcule en quelque sorte la dérivée de votre position !

[^permis]: si vous avez le permis bien sûr !

Comment on fait pour calculer la vitesse instantanée de notre position ?

Eh bien, il faut mesurer la distance $\Delta d$ que l'on parcourt en une
fraction de temps $\Delta t$, et calculer le rapport :
  $$ v = \frac{\Delta d}{\Delta t} $$
Bien sûr, dans la vraie vie, pas besoin de prendre une échelle de temps «
infiniment petite». Mais en mathématiques, on peut le faire, donc on ne va pas
se gêner !

Ainsi, pour calculer la dérivée d'une fonction, en un point $x$, on va poser :

  $$\boxed{ f'(x) = \lim_{ h \to 0} \frac{ f(x+ h) - f(x) }{ h } }$$

C'est exactement la même formule que plus haut, mais adaptée aux fonctions.

**Premières remarques** :

  - Cette limite n'existe pas forcément pour toutes les fonctions, ou pour tout
      les points $x$ possibles. On reconnait d'ailleurs une « forme
      indéterminée» de limite.
  - Il **ne suffit absolument pas** d'être continue pour être dérivable (dans le
      sens où il existe des fonctions continues partout, mais dérivable nulle
      part). Mais **une fonction dérivable est nécessairement continue**.
  - Heureusement pour nous, nous utiliserons _très rarement_ cette formule pour
      calculer la dérivée. Nous verrons des règles de calculs qui nous
      permettent de calculer la dérivée des fonctions usuelles. _Parfois_ la
      formule de la dérivée permet de calculer des limites comme :
	$$ \lim_{x \to 0} \frac{\sin(x)}{x}$$

Si on résume, une fonction $f$ est dérivable sur intervalle $I$ si le calcul de
limite encadré plus haut a un sens pour tout $x$ dans $I$. Certaines fonctions
ne sont pas dérivables, soit en un point particulier, soit carrément sur tout
leur ensemble de définition (ce qui est plutôt rare avec les fonctions usuels).

### Pourquoi c'est génial ?

Donnons dès maintenant une explication sur la puissance de la dérivée. Reprenons
notre voiture du début. On remarque que la vitesse de notre voiture nous donne
des informations sur la manière dont sa _position_ varie. En effet :

  - Si la vitesse de la voiture est négative, alors la voiture recule
  - Si la vitesse de la voiture est positive, alors la voiture avance
  - Si la vitesse de la voiture est nulle, alors la voiture fait du surplace
      (attention, dit comme cela c'est faux, mais nous y reviendrons plus tard)

Que donne cette interprétation pour les fonctions ?

  - Si $f'(x) > 0$, alors, localement, la fonction est croissante !
  - Si $f'(x) < 0$, alors, localement, la fonction est décroissante !
  - Si $f'(x) = 0$, alors, localement, la fonction est constante !

Ce critère est très pratique pour établir le _sens de variation_ d'une fonction,
et qui est ramené grâce aux dérivées à établir un _tableau de signe_ de la
fonction dérivée, ce qui est généralement beaucoup plus simple !

En sachant le tableau de variation d'une fonction, on peut en déduire en
particulier (si elle est en a) les extremums de cette fonction, c'est-à-dire les
points où cette fonction est maximale ou minimale. C'est extrêmement utile pour
_optimiser_ une quantité (imaginez optimiser une fonction qui représente le cout
de production, par rapport à la production, etc..)

### Équation de la tangente d'une courbe

Maintenant que vous connaissez la définition, disons calculatoire, de la notion
de dérivée, nous pouvons attaquer la définition géométrique de la dérivée. Tout
d'abord, je vous propose un détour par le _taux d'accroissement_[^nom]. La
section consacrée au taux d'accroissement est facultative, vous pourrez la lire
plus tard.

[^nom]: rien que le nom devrait vous évoquer le lien avec la dérivée !


#### Le taux d'accroissement

Comme son nom l'indique, le taux d'accroissement est un nombre qui quantifie la
croissance d'une fonction $f$ entre deux points _distincts_. Ce taux existe
toujours sur l'intervalle de définition de $f$.

**Comment le calculer ?**

Considérons deux points $x, y$ tel que $x < y$. Pour comparer de combien la
fonction est passée de $x$ à $y$ on peut calculer :
  $$ f(x) - f(y)$$
C'est la variation de $f$ entre $x$ et $y$. Maintenant, pour avoir un taux, je
veux prendre en compte la distance entre $x$ et $y$. Parce qu'il est difficile
de comparer par exemple $f(1) - f(3)$ avec $f(1) - f(25)$. Peut-être que la
fonction est croissante, mais je ne quantifie pas à quel point elle est
rapidement croissante !

Donc, on aboutit à la formule :
  $$ \tau(f)_{x, y} = \frac{f(x) - f(y)}{x - y}$$

Et donc, on voit que la dérivée est la limite du taux d'accroissement lorsque
la distance entre les deux points $x$ et $y$ sont infiniment proches !

**Graphiquement, comment tracer le taux d'accroissement ?**

Comme je le disais, le taux d'accroissement est un nombre, donc techniquement,
on ne peut pas le tracer sur un repère. Mais on peut le mettre en évidence tout
simplement en reliant les points $(x, f(x))$ et $(y, f(y)$ par une droite
(affine dans la plupart des cas) de la courbe représentative de la fonction $f$.
Vous avez un exemple dans la figure \ref{taux}.

![Exemple pour une fonction quelconque au point $A$ et $B$\label{taux}](../images/Taux\ accroissement.png "taux")

#### Calculer une telle droite

_Ce paragraphe pourra être lu plus tard !_

Il suffit de se rappeler qu'une droite affine est la courbe représentative
d'une fonction affine.

Donc, il nous faut une droite qui passe par deux points, $(x, f(x)$ et $(y,
f(y)$, avec $x$ et $y$ qui sont distincts. On cherche donc $a$ et $b$ deux réels
tel que :
$$
\left\{ \begin{array}{ll}
	a*x + b & = f(x)\\
	a*y + b & = f(y)
	\end{array}
\right.
$$

Si on résout ce système, on obtient :
$$
\left\{ \begin{array}{ll}
	a & = \frac{f(y) - f(x)}{y -x} \\
	b & = f(y) - \frac{f(y) - f(x)}{y -x}*y = \frac{ f(y)(y-x) -yf(y) + yf(x)
	}{y -x } \\
	  & = \frac{yf(x)-xf(y)}{y -x}
        \end{array}
\right.
$$

Finalement, la droite $\tau$ qui passe par $(x, f(x))$ et $(y, f(y)$ s'écrit :
$$
  \tau(t) = \frac{f(y) - f(x)}{y -x}*t + \frac{yf(x)-xf(y)}{y -x}
$$

#### Formule de la tangente d'une courbe

Si on prend $f$ une fonction dérivable au point $a$, alors la courbe
représentative de la fonction $f$ admet un tangente en ce point. Et en fait, la
réciproque est aussi vraie !

Dans la suite, on appelle $T_a$ la tangente à la courbe de $f$, qui est une
droite, donc une fonction **affine** !

Il y a alors deux moyens de trouver la formule de la tangente. Soit en passant
l'équation obtenue plus haut, et passer à la limite lorsque les deux points $x$
et $y$ sont à une distance $h \to 0$, soit, se rappeler que nécessairement la
tangente se comporte _localement_ comme la fonction, est donc que son
coefficient directeur est $f'(a)$. Puis, quelques calculs nécessaires montrent
que :
  $$\boxed{T_a (x) = f'(a)(x-a) + f(a)}$$

On peut se convaincre de cette formule par différents moyens :

  - On a bien $T_a(a) = f(a)$, c'est-à-dire que la tangente épouse la courbe en
      $a$.
  - Le coefficient directeur est bien $f'(a)$.


## Propriétés

### Dérivée d'une somme

On l'a vu, la limite d'une somme est la somme des limites, de là, on en tire
notre première propriété, avec $f$ et $g$ deux fonctions :
  $$ (f + g)' = f' + g'$$

Cela signifie que, si $f$ et $g$ sont dérivables sur un intervalle $I$, alors :
  $$ (f + g)'(x) = f'(x) + g'(x)$$

Autrement dit, _la dérivée de la somme est la somme des dérivées_

### Dérivée d'un produit

Première formule plus difficile, la dérivée du produit de deux fonctions $f$ et
$g$ se calcule comme il suit:
  $$(fg)' = f'g + g'f$$

En cours, j'ai donnée une interprétation de cette formule à l'aide d'un
rectangle de longueur $f(x)$ et de largeur $g(x)$.

### Dérivée d'un quotient

Autre formule délicate, la dérivée d'un quotient de deux fonctions :
  $$ \left(\frac{f}{g}\right)' = \frac{ f'g - g'f}{g^2}$$

### Dérivée d'une puissance

Une des formules les plus puissantes que je connaisse ! Elle récapitule bon
nombre de règle que l'on peut trouver dans d'autres cours !

  $$ (f^n)' = nf'f^{n-1}$$

### Dérivée d'une composée

Voici la dernière formule que je vous recommande de connaître, la dérivée d'une
composée. On appelle _composée_ de deux fonctions $f$ et $g$ la fonction $x
\mapsto f(g(x))$

  $$ (f(g(x)))' = g'(x) * f'(g(x)) $$

## Dérivée de fonctions usuelles

Avec toutes les règles vues plus haut, vous pouvez en déduire que :

  - $(x^2)' = 2x$
  - $(x^3)' = 3x^2$
  - $(\sqrt{x})' = \frac{1}{2\sqrt{x}}$
  - $(\frac{1}{x})' = -\frac{1}{x^2}$

Vous savez donc calculer la dérivée d'un polynôme, d'un quotient de polynôme,
d'une composée par exemple $\sqrt{x^2 -7x + 2}$, etc. Maintenant, c'est qu'une
question d'entrainement ![^exo]

[^exo]: ça tombe bien, y'a justement une feuille d'exercice qui vous attend !

### Sur les fonctions, trouver l'extremum

Pour trouver l'extremum d'une fonction, il faut donc :

  - Vérifier qu'elle est dérivable
  - Calculer sa dérivée
  - En déduire les points où elle est nulle
  - Vérifier que ces points sont des extrémaux. C'est-à-dire que la fonction est
      décroissante avant, puis croissante dans le cas d'un minimum, et
      vice et versa dans le cas d'un maximum.

