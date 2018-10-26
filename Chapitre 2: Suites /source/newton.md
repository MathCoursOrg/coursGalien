---
title : La méthode de \textsc{Newton}
author : \textsc{Delhomme} Fabien
lang : fr
document : article
fontsize : 12pt
linestretch : 1
geometry :
  - margin=1in
...

# Présentation de la méthode de Newton

Ce chapitre est consacré à une notion au programme, qui est à la croisée des
chemins entre :

  - L'algorithmie
  - La dérivation (on ne s'étonnera pas que le nom de Newton soit associé à
      cette méthode)
  - Les suites.

## Contexte

Dans ce paragraphe, il s'agit donc de déterminer numériquement la solution de
l'équation :
  $$f(x) = 0$$
Pour $x \in I$, où $I$ est un intervalle de $\mathbb{R}$. On imagine en effet que la fonction
$f$ ne s'annule qu'en un seul $x$ de $I$.

## La dichotomie

Nous connaissons déjà un algorithme pour résoudre ce problème. En effet, la
dichotomie marche très bien, et s'approche au fur et à mesure de la solution.

Le problème est que cette convergence s'effectue _lentement_ (nous y reviendrons
plus tard). Nous avons vu par exemple que pour approcher la racine carrée de 2,
il fallait environ $20$ itérations pour avoir une précision de 2 à 3 chiffres
après la virgule.

Pour récapituler, la dichotomie ne demande seulement que la fonction $f$ soit
continue mais en contrepartie cet algorithme converge lentement.

## Méthode de Newton

### Explication de la méthode

Ici, on va donc demander plus fort pour notre fonction. On va supposer que $f$
est continue, dérivable, et de dérivée continue. De plus, on va demander que
$f'$ ne soit jamais nulle. Ce ne sont **pas** des conditions suffisantes pour
que la méthode marche à coup sûr, mais au moins les formules que nous écrirons
seront correctes. 

L'idée, c'est de se rapprocher du moment ou la courbe vaut zéro, en considérant
la tangente de la fonction au lieu de la courbe elle-même.

On part d'un point $x_0$, pas très loin de la racine de $f$, et pour s'approcher
de notre zéro, on va suivre la tangente de la courbe de $f$ au point $x_0$
(regarder la figure \ref{graphe}). Lorsque cette tangente passe par $0$, alors
on a trouvé notre deuxième point de la suite, $x_1$. Et on peut alors recommencer !

On espère ainsi que l'on s'approche de notre zéro de $f$. Il peut arriver que
cela ne soit pas le cas, mais on va imaginer que ces cas n'existent pas.

![La méthode de Newton pour une fonction $f$. On voit que le point $x_1$ est
plus proche du zéro de $f$ que le point $x_0$ \label{graphe}](../image/methodeNewton.png)

### Mise en équation 

On cherche donc le moment ou la tangente au point $x_0$ s'annule. Mais quelle
est l'équation de la tangente de $f$ au point $x_0$ ? On se rappelle son
cours, et on a :
  $$ T_{x_0, f}(x) = f'(x_0)(x -x_0) + f(x_0) $$

**Question** Justifier brièvement pourquoi cette formule est bonne (se souvenir
des caractéristiques d'une tangente à la courbe de $f$ au point $x_0$) ?

Donc, le moment $x_1$ où s'annule la fonction $T_{x_0, f}$ respecte donc
l'équation $T_{x_0, f}(x_1) = 0$. C'est à dire :
\begin{align*}
  f'(x_0)(x_1 - x_0) & + f(x_0) = 0 \\
  x_1 - x_0 &= \frac{-f(x_0)}{f'(x_0)} \\
  x_1 &= x_0 - \frac{f(x_0)}{f'(x_0)}
\end{align*}

## À faire en devoir maison

En se basant sur les calculs menés précédemment :

  - Quelle est la formule qui nous permet de trouver $x_2$ _sachant_ $x_1$ ?
  - Quelle est la formule qui nous permet de trouver $x_{n+1}$ _sachant_ $x_n$,
      pour $n \in \mathbb{N}$ ? (Cette formule ne se prouve _pas_ par récurrence
      ! Il faut juste faire comme la question d'avant).
  - Pourquoi nous demandons à la fonction $f$ d'avoir une dérivée $f'$ jamais
      nulle ? Que se passerait-il géométriquement dans ce cas ?
  - Prenez une fonction $f$ de votre choix (ni affine, ni linéaire), qui admet un
      point $\alpha \in \mathbb{R}$ tel que $f(\alpha) = 0$, puis tracer (sur
      Geogebra) les premiers points obtenus par la méthode de \textsc{Newton},
      avec comme terme initial $x_0$ un point qui ne soit pas trop loin de
      $\alpha$.

# Étude de l'exemple pour approximer $\sqrt{2}$

On reprend notre fonction qui s'annule en $\sqrt{2}$, la brave fonction[^pasunique] :
$$f : x \mapsto x^2 -2$$

[^pasunique]: notez que nous avions une infinité de choix pour la fonction $f$.
  Mais autant prendre la plus simple.

Appliquons notre formule donnée plus haut. On a $f'(x) = 2x$, donc :
  $$ u_{n+1} = u_n - \frac{u_n^2 - 2}{2u_n}$$

Finalement, on trouve :
  $$ u_{n+1} = \frac{u_n}{2} + \frac{1}{u_n}$$

## À faire en devoirs maison

**Premiers calculs** 

  - Les calculs ne sont pas très détaillés pour trouver $u_{n+1}$ en fonction de
      $u_n$. Donner les lignes de calculs intermédiaires.
  - Que devient la formule pour trouver la racine carrée de $3$ ? (Indice,
      quelle fonction dois-je appliquer ? Cette fonction est telle que
      $f(\sqrt{3}) = 0$).
  - Puis-je appliquer cette formule en commençant par $u_0 = 0$ ?

**Analyse de cette suite**

On regarde donc la suite :
  $$ u_{n+1} = \frac{u_n}{2} + \frac{1}{u_n}, \quad u_{0} = 4$$

  - Calculer à la main les termes $u_1, u_2$ et $u_3$.
  - Tracer les premiers termes de cette suite avec _Geogebra_. 
  - À votre avis (pour cette question, et cette question seulement, pas besoin de justification), la suite est :
    - Croissante ? Décroissante ? (quelle est son sens de variation ?)
    - Positive, négative ?
    - Majorée ? Minorée ? Bornée ? (Pour chaque question, donner un majorant ou
	un minorant s'ils existent)
    - Convergente ? Qu'elle semble être sa limite ? (Justifier à l'aide du point
	fixe de la fonction $x \mapsto \frac{x}{2} + \frac{1}{x}$
  - Prouver par récurrence (si besoin est) _toutes_ les conjectures donner plus haut (qui
      peuvent surement être prouvées en un seul raisonnement par récurrence,
      mais vous faites comme vous voulez).

**Algorithmie**

  - Programmer cette suite dans AlgoBox.
  - Combien vaut $u_3$, $u_4$, $u_7$ ?
  - Donner la valeur de $|u_7 - \sqrt{2}|$.

Reprenez l'algorithme de dichotomie utilisé pour approcher la racine de $2$.
On prend $a = 0$ et $b = 2$. 

  - Combien faut-il d'itérations pour l'algorithme de la dichotomie pour tomber
      sur la même précision que la méthode de Newton avec $7$ itérations ?
      (C'est-à-dire, combien faut-il d'itérations pour que la méthode de la
      dichotomie ait une précision inférieure à $|u_7 - \sqrt{2}|$ ?) La réponse
      sera donnée sous forme d'algorithme qui retournera ce nombre d'itérations.

# En pratique, quelles sont les limitations de la méthode de Newton ?

Dans un cadre très générale, il faut, pour que Newton marche bien, que les
conditions suivantes soient remplies :

  - Il faut avoir $x_0$ qui soit proche du zéro de $f$. Ce qui peut être
      embêtant, vu que parfois on a aucune idée du zéro de $f$.
  - Il faut que la fonction soit suffisamment régulière (pas trop méchante) pour
      que cela fonctionne correctement
  - Il faut pouvoir calculer la dérivée de la fonction.

En pratique, c'est parfois le dernier critère qui ne permet pas d'obtenir une
méthode efficace, à cause du nombre de calculs trop élevés. Mais, pour
résoudre une équation polynomiale, par exemple pour calculer les racines
carrées, voire cubiques, la méthode de Newton converge exceptionnellement vite !

Elle est notamment utilisée pour calculer rapidement la distance qui sépare deux
joueurs dans un jeu vidéo en trois dimensions (type _FPS_), mais elle a bien
d'autres applications théoriques, ou pratiques que ce soit pour résoudre des
équations, trouver le minimum d'une fonction, etc.

**Ultime question** : comment trouver la racine cubique de $2$, c'est-à-dire le
nombre qui élevé à la puissance $3$ donne $2$, notée $\sqrt[3]{2}$. Comment
trouver une approximation du nombre d'or ? Donner une approximation pour ces
deux nombres par la méthode de Newton, et par la méthode de la dichotomie qui
soit juste pour les $4$ premières décimales ! (Votre réponse sera écrite sous
forme d'algorithme).
