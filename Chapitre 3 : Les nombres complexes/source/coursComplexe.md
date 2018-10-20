---
title: Les nombres complexes
date:
author: Delhomme Fabien
lang: fr
document: report
...

\newpage 

# Introduction

## Motivation 

Les complexes, un des chapitres les plus compliqués à introduire peut-être. Pour
commencer, sachez que les complexes ont été d'abord appelés les _imaginaires_,
car on pensait qu'ils n'étaient pas _réels_.

Or, rien de plus faux (on n'avais pas assez de recul à l'époque). Les complexes
sont présent, et incontournables dans de nombreux domaines :

  - Physique (éléctronique, mécanique)
  - Ingénieurie (conception de machine, étude de vibrations d'un véhicule etc)
  - Mathématique (évidemment) : les complexes jouent un rôle plus que centrale !
      Et contrairement au nom, ils sont plus _simples_ d'une certaine manière,
      que les réels par exemple.
  - Informatique : nous verrons que les complexes servent à encoder les
      rotations, et donc par exemple de faire des rotations d'images
  - Et tellement d'autres !!

Le grand paradoxe, c'est que pour découvrir les complexes, on passe
nécessairement par un mode d'incompréhension total, devant des «nombres» qui
sortent de nul part, etc. Mais nous verrons tranquillement pourquoi les
complexes sont presques naturels (même s'il a fallu du temps avant de les
découvrir).

## Porte d'entrée 

Comme souvent en mathématiques, il existe plusieurs porte d'entrée pour
comprendre les complexes : 

  - Les polynômes
  - La géométrie 
  - Les matrices 

Nous verrons dans ce cours les deux premiers, peut-être que je toucherai deux
mots sur la troisième porte d'entrée lors des cours de mathématique spécialisée.

# Définition

Bon, allez, c'est partit, on y va !

## Soit $i$ un nombre tel que 

Nous avons vu dans le chapitre sur les polynômes, que certain polynôme
n'admettait pas de racine. Par, exemple, et c'est un des exemples le plus simple
que l'on peut imaginer :
  $$P(x) = x^2 +1$$

Je rappelle que ce polynôme n'a pas de racine réelle puisque $x^2 \geq 0$ pour
tout $x \in \mathbb{R}$. Donc $x^2 +1 > 0$.

Mais imaginez un peu, (et vous comprenez peut être pourquoi historiquement, les
premiers mathématiciens qui ont osé, étaient un peu fébrile à ce moment là), que
l'on _rajoute_ une racine à ce polynôme. C'est-à-dire que, puisque $P$ n'a pas
de racine, on va lui en _ajouter_ une !!

C'est-à-dire que l'on va _définir_ $i$ comme étant un nombre, tel que $i^2 =
-1$ (et donc $P(i) = 0$) 

Alors, évidemment, $i$ n'est **pas** réel. Donc, il «habite» dans une autre
ensemble. Mais quel ensemble ? L'ensemble des _complexes_.

Qu'est-ce qu'on peut faire avec $i$ ? Le multiplier par un réel ? C'est à dire
que je peux définir $3i = i + i + i$. L'ajouter à un réel (Soyons fou !),
d'accord, alors cela donnera $2 + 2i$. 

On peut donc définir les complexes par :

  $$ \mathbb{C} = \{ a + bi \ | \ a, b \in \mathbb{R} \}$$

Pour l'instant, tout cela peut paraître mystique, et c'est bien normal. Mais
maintenant que nous avons découvert un nouveau nombre, autant découvrir de
nouvelles propriétés qui le caractérise !

Par exemple, si on prend un autre polynôme qui n'a pas de racine réelle, est-ce
que je peux, avec mon nouveau nombre $i$ lui trouver des racines complexes ? La
réponse et **OUI** (et c'est même une des propriétés les plus importantes des
complexes).

Donnons un exemple. Si je prend le polynôme $Q(x) = x^2 + x + 1$ (essayez de
votre coté avec un polynôme à discriminant strictement négatif). Alors, je peux
calculer $\Delta$ :
  $$ \Delta = 1^2 - 4*1*1 = -3$$

Ok, $\Delta$ est strictement négatif. Il faudrait, pour trouver les racines de
mon polynôme, pouvoir définir un nombre tel que son carré vaille $\Delta$. Hum,
essayons $\sqrt{3} * i$ (forcément, ce nombre ne peut pas être réel, car aucun
nombre réel ne peut, une fois élevé au carré, être négatif !).

Qu'est -ce que cela nous donne ?
  $$(\sqrt{3}*i)^2 = \sqrt{3}^2*i^2 = 3 * (-1) = 3$$
Trouvé ! Donc je peux continuer les formules que nous avons vues en cours, pour
obtenir deux nouvelles racines, complexes, de mon polynôme $Q$ :

\begin{align*}
  x_1 &= \frac{ 1 + i*\sqrt{3}}{2} \\
  x_2 &= \frac{ 1 - i*\sqrt{3}}{2}
\end{align*}

On peut même vérifier que $Q(x_1) = Q(x_2) = 0$ !
Nous avons donc rajouté des racines à tous les polynômes !!!


