---
title : Fonctions, suite
author : Fabien Delhomme
lang: fr
date: 3 septembre 2018
document: report
...

\newpage
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

Ce chapitre remplit trois objectifs :

- C'est, tel quel, un chapitre qui fait partie de la liste du programme
officiel de terminal S.
- Je l'introduis avec des fonctions, mais sachez que l'on retrouvera
_exactement_ la même chose pour les _suites_, mais en plus simple. Donc si
vous l'avez compris ici, vous l'avez compris pour les suites (mais je
redonnerai quelques précisions, évidemment)
- Enfin, je veux introduire la notion de dérivée après ce chapitre. Notion qui
repose sur les limites, donc c'est dans le thème !

## Définitions

Une limite d'une fonction $f$ au point $a$ (un point au sens large, pour éviter
d'écrire plusieurs définitions pour le même concept, j'autorise
**exceptionnellement** le point $a$ d'être égal à $\pm \infty$) est la *valeur*
vers quoi tend $f(x)$ pour $x$ qui s'approche de plus en plus de $a$.

**Exemples:**
- si on prend la fonction $f(x) = x +1$. Quelle est sa limite en
$0$ ? Et bien, plus $x$ s'approche de $0$, plus $x+1$ s'approche de $1$, donc on
note : $$ \lim_{x \to 0} f(x) = 1$$
- Si maintenant, on prend $f(x) = \frac{1}{x}$, quelle est sa limite en
$+\infty$ ? Et bien, plus $x$ est grand, plus $\frac{1}{x}$ s'approche de
$0$.

**Remarques:**
- le calcul de limite est très présent au bac.
- certaines limites de fonctions doivent être connue, mais la plupart se retrouvent sur le graphe des fonctions. Pour les autres, je vous donnerai des interprétations pour mieux les mémoriser.

## Définition propre aux fonctions

Il faut néanmoins distinguer deux types de limite. Cette distinction n'a lieu
_que pour les fonctions_ (cela veut dire, pas pour les suites).
On a donc :

- Les limites dites à gauche, notée : $\lim_{x \to a^{+}} f(x)$, voire
$f(a^{+})$
- Les limites dites à droite, notée : $\lim_{x \to a^{-}} f(x)$, voire
$f(a^{-})$, pour aller plus vite.

Intuitivement, la limite à gauche d'un point $a$ est la valeur de $f(x)$ pour
$x$ qui s'approche de $a$ avec la condition $x <a$. On arrive vers $a$
graphiquement vers la gauche.

De même pour la limite à droite.

Il peut arriver qu'une fonction ait une limite à gauche et une limite à droite
différente en un même point. Par exemple la fonction qui à $x$ associe $1$ pour
les nombre positifs, et $-1$ pour les nombre négatifs, et n'est pas définie pour
$x=0$, admet :

- Une limite à gauche en $0$ qui est de $-1$
- Une limite à droite en $0$ qui est de $1$

Autre subtilité par exemple, soit $f = \frac{1}{x}$ :

- f admet $+\infty$ pour limite en $0$ à droite
- f admet $-\infty$ pour limite en $0$ à gauche

C'est aussi pour cela que l'on doit distinguer les deux limites

## Pour quelques fonctions classiques

### Les fonctions puissances

Pour tous les fonctions puissances, $f : x \longrightarrow x^n$, on a, suivant la
parité de $n$ :

- Si $n$ est pair, $\lim_{\pm \infty} f(x) = \pm \infty$
- Si $n$ est impair $\lim_{\pm \infty} f(x) = \mp \infty$ le signe est inversé

### La fonction inverse

Très pratique, car elle va nous permettre de calculer plus largement les
limites pour les fonctions du style $\frac{1}{f(x)}$ et par extension, quelques
limites pour $\frac{u}{v}$ grâce au tableau sur le produit.

## Règles de calcul

Intuitivement, on peut se convaincre des règles de calcul suivantes. On va
présenter les règles dans un tableau récapitulatif. On présente tous les cas
possibles de limites de deux fonctions $u$, et $v$. Le résultat de leur limite
est indiquée dans la cellule correspondante.

Les ?? signifient que l'on ne peut pas conclure dans le cas général, c'est donc du
cas par cas. Nous verrons des exemples à la section suivante.

Pour le produit :

|         *        | $v = \infty$ | $v =- \infty$ | $v=l \not = 0$ | $v= 0$ |
|:----------------:|:------------:|:-------------:|:--------------:|:------:|
|   $u = \infty$   |   $\infty$   |   -$\infty$   |    $\infty$    |   ??   |
|  $u = - \infty$  |   $-\infty$  |    $\infty$   |    $-\infty$   |   ??   |
| $u =l' \not = 0$ |   $\infty$   |   -$\infty$   |      $ll'$     |    0   |
|      $u = 0$     |      ??      |       ??      |        0       |    0   |

Pour la somme :

|       +      | $v =\infty$ | $v =- \infty$ |   $v=l$   |
|:------------:|:-----------:|:-------------:|:---------:|
|  $u =\infty$ |   $\infty$  |       ??      |  $\infty$ |
| $u =-\infty$ |      ??     |   $-\infty$   | $-\infty$ |
|    $u =l'$   |   $\infty$  |   -$\infty$   |   $ll'$   |

Pour le quotient, il suffit juste de connaitre les limites en tout les points
possibles de la fonction $\frac{1}{x}$, et d'appliquer ensuite le produit. Par
exemple, pour $\frac{\infty}{0^{+}} = \infty * (+\infty) = \infty$.

## Théorèmes portant sur les limites

### Théorème de comparaison

Celui-là est très intuitif, mais très utilisé. Supposons que nous avons deux
fonctions, telles que :
$$ f(x) \leq g(x) $$
Alors, si $f(x)$ tend vers $\infty$ en $a$, alors $g(x)$ aussi.

On peut alors imaginer toutes les variations possibles, avec moins l'infini, ou
une inégalité dans l'autre sens.

### Théorème des gendarmes

Aussi appelé théorème d'encadrement[^classe], celui-là est **vraiment** utilisé
massivement en mathématiques (en particulier en analyse).

Supposons que l'on ait :
$$ f(x) \leq g(x) \leq h(x) $$

Alors, si
$$\lim_{x \to a } f(x) = \lim_{x \to a } h(x) = l$$
Par conséquent :
$$\lim_{x \to a } g(x) = l$$

Très simple, mais souvent **redoutablement efficace**[^pensezy] ! Il est très utilisé en
particulier pour le calcul de limite de _suite_, notion que nous verrons plus
tard. Au bac, il apparaît souvent dans les dernières questions, pour conclure
sur la limite que l'on cherchait dans l'exercice.

[^classe]: plus classe, mais moins fun..
[^pensezy]: ça veut dire qu'il faut le garder en tête, mais avec un nom pareil,
je ne doute pas que vous allez vous en rappeler !

### Exemple typique du théorème des gendarmes

C'est pas un exemple impressionnant, certes, mais cela permet d'illustrer une
manière d'utiliser le théorème des gendarmes très connues. En effet, souvent le
terme de gauche est simplement nul, et le terme de droite tend vers 0, ce qui
force la fonction ainsi encadrée de tendre vers 0. Démonstration.

Pour $x > 1$, on a (à voir sur un graphique)
$$ 0 \leq \frac{1}{x^2} \leq \frac{1}{x} $$

Donc, puisque l'on sait que $\lim_{x \to \infty} \frac{1}{x} = 0$, on en déduit
par le théorème des gendarmes :
$$ \lim_{x \to \infty} \frac{1}{x^2} = 0 $$

# La continuité

## Définition

On dit qu'une fonction $f$ est continue au point $a$ lorsque :
$$ \lim_{x \to a^{-}} f(x) = \lim_{x \to a^{+}} f(x) = f(a) \in \mathbb{R}$$

On dit encore qu'une fonction est _continue sur un intervalle_ si elle est
continue en tout point de cet intervalle.
Dans la _définition même de la continuitié_ il **faut** préciser où la fonction
est continue. Car cette propriété **dépend** de la fonction bien sûr, mais aussi
de l'intervalle considéré (par exemple, prenez la fonction inverse).

## Graphiquement parlant

C'est très facile de repérer une fonction continue à l'aide de sa courbe
représentative : il suffit qu'elle n'est pas de «coupure» dans son graphe.

## Exemples

Toutes les fonctions de bases présentées plus haut (fonctions puissances,
polynôme, inverse, affine et linéaire) sont continues sur leur intervalle de
définition (mais il faut précisez pour la fonction inverse, comment ?).

## Comment justifier (au bac) qu'en fonction est continue ?

Au bac, lorsqu'il faut justifier qu'une fonction est continue, souvent il suffit
de dire :

  - qu'elle est somme / produit de fonctions continues
  - (ou) que c'est un polynôme,
  - (ou) que c'est une composition de fonctions continues

Et normalement vous avez tous les cas possibles.

## Théorème des valeurs intermédiaires

Le théorème des valeurs intermédiaires fait partie des théorèmes sur lesquels
vous êtes sûr de tomber le jour du bac. Il est heuresement pour nous assez
simple et plutôt intuitif là encore. 

Supposons $f$ une fonction _continue_ sur un intervalle $[a, b]$. Supposons par
ailleurs que $f(a) > 0$ et $f(b) < 0$. Alors le théorème des valeurs
intermédiaires affirme qu'il existe un nombre $c$ compris entre $a$ et $b$ tel
que :
  $$ f(c) = 0 $$

**Commentaires :** 

  - Bien sûr, le théorème marche si $f(a) < 0$ et $f(b) > 0$. En
      somme, il suffit que $f(a)f(b) < 0$ (c'est à dire que les deux nombres
      $f(a)$ et $f(b)$ sont de signes différents).
  - De même, vous pouvez remplacer les $0$ dans le théorème par n'importe quel
      valeur. Mais c'est souvent en $0$ que l'on énonce le théorème.
  - L'hypothèse de la continuité de la fonction est évidemment totalement
      nécessaire. Une fonction discontinue peut totalement être positive, puis
      négative sans passer par $0$.
  - Attention, le théorème nous dit qu'il existe un tel nombre $c$, mais ne nous
      dit pas s'il est unique (il peut très bien en avoir plusieurs, par exemple
      la fonction sinus ou cosinus croise plusieurs fois l'axe des absicces).
      Néanmoins si vous avez _besoin_ de prouver l'unicité d'un nombre $c$, vous
      le pouvez ! Il suffit de prouver que la fonction est strictement
      croissante (vous verrez un exemple dans la [section
      suivante](#algorithme)).
  - Le théorème ne nous dit pas non plus où où il se trouve ! Le prochain
      paragraphe sera justement consacré à la recherche de ce fameux $c$.

## Algorithme

Et hop ! Un petit détour par l'algorithmie !! On peut difficilement passer à
coté, vu que il y a de très forte chance que vous tombiez sur un exercice du
style au bac.

Dans ce paragraphe, nous illustrerons un algorithme basé sur la méthode de la
_dichotomie_ (qui veut littéralement dire « couper en deux », vous comprendrez
vite pourquoi ).

### Le contexte

Le théorème des valeurs intermédiaires ne nous donnent pas la _localisation_ des
nombres $x$ qui sont solution d'une equation $f(x) = 0$. C'est bien dommage, et
on essaie donc de calculer une _approximation_ de la solution.

### Présentation de la méthode 

Prenons une fonction $f$ qui est strictement croissante et continue, et $a$ et
$b$ tel que $a<b$ et $f(a)f(b) < 0$. Nous sommes bien dans les hypothèses du
théorèmes des valeurs intermédiaires, et puisque la fonction est strictement
croissante, nous pouvons en déduire qu'il existe un unique nombre $c \in [a, b]$
tel que $f(c) = 0$.

Disons que l'on sait que la solution $c$ est dans l'intervalle $[a, b]$. Donc on
peut diviser cet intervalle en deux. Prenons $m$ le milieux de cet intervalle.
C'est-à-dire :

  $$ m = \frac{a + b}{2} $$

Alors, deux options sont possibles :

  - Soit, le nombre $c$ se trouve dans l'intervalle $[a, m]$ Soit le nombre $c$
  - se trouve dans l'intervalle $[m, b]$

Voilà, nous avons coupé en deux notre problème. Comment décider dans quelle
option nous sommes ? Et bien, il faut voir ce que donne la fonction $f$, et
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

Sous forme d'algorithme, cela peut donner :

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

Voilà, on y est ! Le merveilleux concept de la dérivée ! 
Je vous conseille de lire en parallèle de ce cours, le super bouquin, gratuit et
fait par des talentueux mathématiciens passionnés par la vulgarisation
accessible [ici](http://catalogue-editions.ens-lyon.fr/html/WYSIWYGfiles/files/349_Borrelli_pdf%20WEB.pdf)[^clic] ! Je vous recommande tout
le livre si vous avez le temps, mais vous pouvez vous attarder en particulier
sur le chapitre « La dérivation » qui est très bien fait !

[^clic]: c'est encore un lien cliquable !

Donc, qu'est-ce que la dérivée ? C'est tout d'abord une espèce d'opération, qui
transformée une fonction en une autre fonction. 

Pour mieux comprendre la dérivée, prenons un exemple concret, d'une fonction $f$
représentant la position d'une voiture par rapport à un repère quelconque. Et
bien la dérivée, serait une autre fonction, qui donnerait en tout point la
vitesse (instantanée) de votre voiture. Oui, en fait, lorsque vous
conduisez[^permis], l'aiguille qui se tient dans le cadran en face de vous
calcule en quelque sorte la dérivée de votre position !

[^permis]: si vous avez le permis bien sûr !

Comment on fait pour calculer la vitesse instantannée de notre position ?

Eh bien, il faut mesurer la distance $\Delta d$ que l'on parcourt en une
fraction de temps $\Delta t$, et calculer le rapport :

  $$ v = \frac{\Delta d}{\Delta t} $$

Bien sûr, dans la vraie vie, pas besoin de prendre une échelle de temps «
infiniment petite». Mais en mathématiques, on peut le faire, donc on va pas se
gêner !

Ainsi, pour calculer la dérivée d'une fonction, en un point $x$, on va poser :

$$ \boxed{ f'(x) = \lim_{ h \to 0} \frac{ f(x+ h) - f(x) }{ h } }$$

C'est exactement la même formule que plus haut, mais adaptée aux fonctions.

**Premières remarques** : 

  - Cette limite n'existe pas forcément pour toutes les fonctions, ou pour tout
      les points $x$ possibles. On reconnait d'ailleurs une « forme
      indéterminée» de limite.
  - Il _ne suffit absolument pas_ d'être continue pour être dérivable (dans le
      sens où il existe des fonctions continues partout, mais dérivable nulle
      part). Mais une fonction dérivable est nécessairement continue
  - Heuresement pour nous, nous utiliserons _très rarement_ cette formule pour
      calculer la dérivée. Nous verrons des règles de calculs qui nous
      permettent de calculer la dérivée des fonctions usuelles. _Parfois_ la
      formule de la dérivée permet de calculer des limites comme par exemple :
	$$ \lim_{x \to 0} \frac{sin(x)}{x}$$

## Propriétés

### Sur les fonctions, trouver l'extremum

### Implique la continuité

### Toutes fonctions n'est pas forcément dérivables

## Règles de calculs

### Linéarité

### La formule de la triche

### Autres règles

## Exemples


