
---
title : La suite itérée de Newton
date :
author : Delhomme Fabien
lang : fr
...

\newpage 

# Présentation de la méthode de Newton

Ce chapitre est consacrée à une notion au programme, qui est à la croisée des
chemins entre :

  - L'algorithmie
  - La dérivation (on ne s'étonnera pas que le nom de Newton soit associé à
      cette méthode)
  - Les suites.

## Contexte

Dans ce paragraphe, il s'agit donc de déterminer numériquement la solution de
l'équation :
  $$f(x) = 0$$
Pour $x \in I$, où $I$ est un intervalle. On imagine en effet que la fonction
$f$ ne s'annule qu'en un seul $x$ de $I$.

## La dichotomie

Nous connaissons déjà un algorithme pour résoudre ce problème. En effet, la
dichotomie marche très bien, et s'approche au fur et à mesure de la solution.

Le problème c'est que cette convergence s'effectue lentement. Nous avons vu par
exemple que pour approcher racine de 2, il fallait environ 20 itérations pour
avoir une précision de 2 à 3 chiffres après la virgule.

Avec la dichotomie, on a seulement besoin que la fonction soit continue au
voisinage de son zéro, mais par contre l'algorithme converge lentement.

Donc on demande pas beaucoup, mais par contre on a pas un algorithme très
rapide.

## Méthode de Newton

Ici, on va donc demander plus fort pour notre fonction. On va supposer que $f$
est continue, et dérivable, et de dérivée continue. De plus, on va demander que
$f'$ ne soit jamais nulle. Ce ne sont **pas** des conditions suffisantes pour que la
méthode marche à coup sûr, mais au moins les formules que nous écrirons sont
correctes. 

L'idée, c'est de se rapprocher du moment ou la courbe vaut zéro, en considérant
la tangente au lieu de la courbe elle même.

On part d'un point $x_0$, pas très loin de la racine de $f$, et pour s'approcher
de notre zéro, on va suivre la tangente de la courbe de $f$ au point $x_0$
(regarder la figure \ref{graphe}). Lorsque cette tangente passe par $0$, alors
on a trouvé notre deuxième point de la suite, $x_1$. Et on peut recommencer !

On espère ainsi que l'on s'approche de notre zéro de $f$. Il peut arriver que
cela ne soit pas le cas, nous reviendrons sur les limitations de la méthode de
Newton dans la partie suivante.

![La méthode de Newton pour une fonction $f$. On voit que le point $x_1$ est
plus proche du zéro de $f$ que le point $x_0$ \label{graphe}](../image/methodeNewton.png)


# Exemple pour calculer $\sqrt{2}$

On reprend notre fonction qui s'annule en $\sqrt{2}$, la fonction[^pasunique] $f
x \mapsto x^2 -2$. Appliquons notre formule donnée plus haut :


[^pasunique]: notez que nous avions une infinité de choix pour la fonction $f$.
  Mais autant prendre la plus simple.

# En pratique, quelles sont les limitation de la méthode de Newton ?

Dans un cadre très générale, il faut, pour que Newton marche bien, que les
conditions suivantes soient remplies :

  - Il faut avoir $x_0$ qui soit proche du zéro de $f$. Ce qui peut être
      embêtant, vu que parfois on a aucune idée du zéro de $f$.
  - Il faut que la fonction soit suffisamment régulière (pas trop méchante) pour
      que cela fonctionne correctement
  - Il faut pouvoir calculer la dérivée de la fonction.

En pratique, c'est parfois le dernière critère qui ne permet pas d'obtenir une
méthode efficace, à cause d'un nombre de calculs trop élevé. Mais, pour résoudre
une équation polynomiale, par exemple pour calculer les racines carrées, voire
cubique, la méthode de Newton converge exceptionnellement vite !
