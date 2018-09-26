---
title: Exercices sur les dérivées
date: 4 septembre 2018
author: Delhomme Fabien
lang: fr
document: report
...

\newpage 

# Limites de fonctions usuelles

## Limite de polynômes

Déterminez la limite en $+\infty$ de la fonction $f$ définie pour tout $x\in\mathbb R$ par $$f(x)=5 x^2+2.$$
Déterminez la limite en $-\infty$ de la fonction $f$ définie pour tout $x\in\mathbb R$ par $$f(x)=-6 x^5+8 x^4+8 x^3-7 x^2+2 x+3.$$
Déterminez la limite en $+\infty$ de la fonction $f$ définie pour tout $x\in\mathbb R$ par $$f(x)=-8 x^2-4 x-9.$$
Déterminez la limite en $-\infty$ de la fonction $f$ définie pour tout $x\in\mathbb R$ par $$f(x)=9 x^5+3 x^4+7 x^3-2 x^2-x.$$
Déterminez la limite en $-\infty$ de la fonction $f$ définie pour tout $x\in\mathbb R$ par $$f(x)=-6 x^5+8 x^4-2 x^3+6 x^2+9 x.$$

## Limite de fonctions rationnelles 

_Pour toutes les fonctions suivantes, déterminez la limite au point indiqué, et
prenez soin de déterminer l'intervalle de définition de chaque fonction._

  $$f(x)=\frac{4 x+5}{3 (x-3)^2}.$$
Déterminez la limite de $f$ en $+\infty$.

  $$f(x)=\frac{2 x^4+3 x^3+x^2+2 x+4}{4 x-3}.$$
Déterminez la limite de $f$ en $+\infty$.

  $$f(x)=\frac{2-5 x}{3 x^2}.$$
Déterminez la limite de $f$ en $-\infty$.

  $$f(x)=\frac{-2 x^4+3 x^3+x^2+4 x-1}{2 \left(x^2+10 x+27\right)}.$$
Déterminez la limite de $f$ en $-\infty$.

  $$f(x)=\frac{-5 x^3-2 x^2-5 x-2}{2 x-3}.$$
Déterminez la limite de $f$ en $+\infty$.

# Le point sur la composée, et les fonctions puissances

## Échauffements sur la composée

Décomposez les fonctions suivantes en la composée de deux fonctions (il existe
plusieurs solutions correctes !)

**Exemple** : Soit la fonction :
  $$f : x \to \frac{1}{x^2 +1}$$

On peut décomposer $f$, en disant que 

$$f : x \overset{g}{\longrightarrow} \! x^2 + 1 \! \overset{h}{\longrightarrow}
\! \frac{1}{x^2+1}$$ 

Où la fonction $g$ envoie $x$ sur $x^2+1$, la fonction $h$ (attention, piège
!) envoie $x$ sur $\frac{1}{x}$

On a bien ainsi (attention à l'ordre !) :

  $$ h(g(x)) = h( x^2+1) = \frac{1}{x^2 +1} = f(x)$$

Donc on peut écrire $f = h\circ g$

À vous de jouer !

  - $x \to \frac{1}{x^3 + 2}$
  - $x \to \sqrt{x^2 +1}$
  - $x \to \frac{1}{\sqrt{x+1}}$
  - $x \to \sqrt{\frac{x}{x+1}}$

Plusieurs solutions sont possibles !

## Échauffements sur les puissances

Pour utiliser la dérivée des fonctions puissances, il y a quelques formules
qu'il faut connaître. Vous travaillerez dans un même temps les propriétés de
l'exponentielle ! 

Attention, les paragraphes qui suivent sont à prendre au sens formel,
c'est-à-dire que les formules ne marchent pas pour tout $x \in \mathbb{R}$. Je
détaille pas, mais par exemple il faudrait faire attention au domaine de
définition des fonctions ci-dessous. Ici, on se concentre juste sur la forme du
calcul (qui seront justes dans tous les cas au bac), mais il faudrait préciser
les conditions de validité de telles formules.

### Puissances entières

Premierèment, simplifier les exepressions suivantes :

  - $\frac{x^2}{x^3}$
  - $x^2*x^9$
  - $(x^3)^4$ 

Ces deux exemple faciles montrent que les formules sont du types :

\begin{align*}
  \frac{x^p}{x^q} &= x^{p -q} \quad &&\text{Quotient}\\
  x^p*x^q &= x^{p+q} \quad &&\text{Produit}\\
  (x^p)^q &= x^{p*q} \quad && \text{Composée de puissances}
\end{align*}

Les même formules vont s'appliquer pour les puissances qui ne sont pas
entières ! Notons la formule qui ressemble presque plus à une convention
qu'autre chose : 
  $$x^0 = 1$$

### Puissances non entières

Elles doivent être connues comme le loup blanc ! Nous avons déjà rencontrée
$\sqrt{x} = x^{\frac{1}{2}}$. En effet, en appliquant la formule de composée de
puissances, on obtient, $(x^{frac{1}{2}})^2 = x $, ce qui permet de conclure
(Même si ceci n'est pas vraiment une preuve, c'est plus pour vous convaincre).

De même, si on regarde $\frac{1}{x}$, on peut la réécrire comme
$\frac{x^0}{x^1} = x^{0-1} = x^{-1}$

On peut maintenant, par exemple, calculer :

  $$ \frac{1}{\sqrt{x}} = \frac{x^{0}}{x^{\frac{1}{2}}} = x^{-\frac{1}{2}}$$

Vous devez savoir passer de l'une à l'autre de ce types d'égalités.

## Exercices 

Simplifiez :

\begin{align*}
  \frac{x}{x^2} \quad & , \quad \frac{\sqrt{x}}{x^2}\\
  x\sqrt{x} \quad & , \quad \sqrt[3]{x} \\
  \frac{x}{\sqrt{x}} \quad &
\end{align*}

Où $\sqrt[3]{x}$ désigne la racine cubique de $x$, c'est à dire le nombre $y$
tel que $y^3 = x$.

# Dérivée 

## Dérivée de fonctions usuelles.

Avec les formules du cours (en particulier pour les deux premières la formule
sur les fonctions puissances) , dérivez les fonctions suivantes :

  - $f(x) = \sqrt{x} = x^{\frac{1}{2}}$
  - $f(x) = \frac{1}{x} = x^{-1}$
  - $f(x) = 3x+ 7$

## Dérivée de polynôme de second degré

Dérivez les fonctions suivantes :

  - $f:x\longmapsto - 10 x^2- 8 x- 10$.
  - $f:x\longmapsto - 4 x^2- 5 x+1$.
  - $f:x\longmapsto 10 x^2- 3 x+10$.
  - $f:x\longmapsto 8 x^2- 6$.

## Dérivée de fonctions 

En utilisant les formules du cours (formule du produit, du quotient, de la
somme), dérivez les fonctions suivantes :

\begin{align*}
  f(x) &= x^3 - 2x^2 - 4 \\
  f(x) &= \frac{x}{4} - 2*\sqrt{2} \\
  f(x) &= (5x^2 + 1)(4x-x^2) \\
  f(x) &= \frac{4}{2x-1} - \frac{1}{x} \\
  f(x) &= \frac{2x-3}{3x+4} \\
  f(x) &= \frac{-x^2 + 3x - 2}{4x} 
\end{align*}

On ne se préoccupera pas de l'ensemble de définition et de dérivabilité des
fonctions.

## Dérivée de fractions rationnelles

Dérivez les fonctions suivantes :
 
  - $f(x)=\frac{8 x+5}{7 x+1}.$
  - $f(x)=\frac{- 2 x- 7}{2 x- 1}.$
  - $f(x)=\frac{5- 7 x}{8 x- 2}.$
  - $f(x)=\frac{3 x- 1}{x- 4}.$
  - $f(x)=\frac{9 x+3}{10 x- 8}.$

Plus difficile :)

  - $f(x)=\frac{- 8 x^2- 144 x- 136}{x- 9}.$
  - $f(x)=\frac{- 9 x^2- 162 x- 648}{x+4}.$
  - $f(x)=\frac{2 x^2- 28 x+130}{x- 1}.$
  - $f(x)=\frac{- 7 x^2+140 x- 252}{4 x- 7}.$
  - $f(x)=\frac{5 x^2+10 x- 15}{x+10}.$

Quel est l'ensemble de définition de chacune de ces fonctions ?

## Dérivée avec des racines

_Pour chacune de ces fonctions, donner l'ensemble de définition, justifier
pourquoi elles sont dérivables, et calculer leur dérivée_

  - $f(x)=\frac{\sqrt{x}}{4 x^2-8 x+104}.$
  - $f(x)=\frac{4 x-4}{\sqrt{x}}.$
  - $f(x)=\frac{\sqrt{x}}{-8 x^2+80 x-200}.$
  - $f(x)=\frac{-5 x-3}{\sqrt{x}}.$
  - $f(x)=\frac{\sqrt{x}}{-8 x^2+80 x+312}.$

## Dérivée de composée de fonctions

Calculez le domaine de définition, puis dériver les fonctions suivantes :

  - $f:x\longmapsto - (15 x- 25)^4$
  - $f:x\longmapsto - 5 (16 x- 12)^3$ 
  - $f:x\longmapsto 2 \left(\frac{4 x^2}{5}- 8 x+20\right)^4$ 

  - $f:x\longmapsto 4 \sqrt{2-x}$ 
  - $f:x\longmapsto 5 \sqrt{-8 x-4}$ 
  - $f:x\longmapsto 5 \sqrt{5 x^2+3}$ 
  - $f:x\longmapsto -4 \sqrt{12-3 x}$ 
  - $f:x\longmapsto \sqrt{3} \sqrt{x^2+10 x+24}$ 

## Problèmes

### Exercice qui mêle tout 
Soit $f$ la fonction définie sur l'intervalle $[\frac{1}{2}; +\infty[$ par :
  $$ f(x) = \frac{x^3 + x^2 +4}{x^2}$$
Et soit $\mathcal{C}_f$ sa courbe représentative dans un repère.

Trouver trois réels $a$,$b$ et $c$ tels que $f(x) = ax + b + \frac{c}{x^2}$

Montrer que $f'(x) = \frac{x^3-8}{x^3}$, puis étudier le signe de l'expression
$x^3 -8$. En déduire le signe de $f'(x)$ selon les valeurs de $x$. Puis donner
le tableau de variation de la fonction $f$.

Montrer que la fonction $f$ admet un minimum.

  - Déterminer l'équation de la tangente au point $A$ d'abscisse 2 de la courbe
      $\mathcal{C}_f$
  - Déterminer l'équation réduite de la tangente à la courbe $\mathcal{C}_f$
      au point $B$ d'abscisse 1

On se donne la courbe $\mathcal{C}_f$ dans un repère (1cm pour une unité pour
les deux axes).

  - Tracer les deux tangentes obtenues à la question précédente.
  - Tracer dans le même repère la droite $\mathcal{D}$ d'équation $y = x +1$.

Étudier le signe de la différence $f(x) - (x+1)$, puis interpréter graphiquement
le résultat. Peut-on dire que la droite $\mathcal{D}$ est une tangente à la
courbe $\mathcal{C}_f$ ?

### Étude de la croissance d'une population

La population d'un village est donnée par $f(t) = \frac{8t + 12}{t^2 +4}$ où $t$
est le nombre d'années écoulée depuis $2018$ et $f(t)$ le nombre d'habitants en
milliers. On admet que le rythme de croissance de la population est donné par
$f'(t)$, la dérivée de la fonction population. Il est exprimé en milliers
d'habitants par an.

Calculer la population en $t = 4$ puis en $t = 5$. En déduire la variation
absolue de la population entre ces deux années.

Calculer $f'(t)$, étudier son signe et en déduire le sens de variation de la
population.

Dresser le tableau de variation de la fonction $f$ sur l'intervalle $[0, 20]$.
En quelle année la population a-t-elle atteint son maximum depuis 2018 ?

Calculer $f'(4)$ et $f'(5)$, et donner une valeur approchée à $0.001$ millier
près. Comparer à la variation absolue calculée précédemment.

Résoudre par calcul l'inéquation $f(t) < 0.8$. En déduire en quelle année la
population du village passera sous le seuil de 800 habitants. Préciser alors le
rythme de croissance de la population.
