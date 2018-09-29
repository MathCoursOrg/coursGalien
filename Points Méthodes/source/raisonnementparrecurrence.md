---
title: Point méthode : le raisonnement par récurrence
date:
author: Delhomme Fabien
lang: fr
document: report

...

# Comment reconnaitre ?

On a besoin d'un raisonnement par récurrence dès que l'on a une propriété que
l'on doit prouver pour tout $n \in \mathbb{N}$. Par exemple, ce genre de
raisonnement ne marche pas du tout pour une propriété portant sur $x \in
\mathbb{R}$.

# Comment le rédiger ?

Il faut bien proprement montrer la propriété que l'on veut démontrer. Imaginons
que l'on veuille montrer que pour tout $n \in \mathbb{N}\\ \{0\}$, on a l'égalité
suivante :

$$ \sum_{1}^{n} k = \frac{n(n+1)}{2}$$

Alors, on identifie la propriété _au premier rang_ qu'il faut démontrer. Ici la
propriété porte sur $n$, donc le premier rang, et le rang $n=1$ (puisque pour
$n= 0$, la somme n'est pas définie). Donc, pour le rang $n=1$, il faut montrer
que $$ \sum{1}^{n} k = \frac{1*2}{2}$$. Ce qui est bien le cas !

Donc on écrit 

\newpage

- - -

Montrons par récurrence sur $n$, un entier naturel non nul la propriété
  $$P(n) = « \sum_{1}^{n} k = \frac{n(n+1)}{2} »$$

_Initialisation :_

La propriété est vraie au rang $n=1$. Donc l'initialisation est vérifiée.

- - - 

Ensuite, il faut vérifier que $P(n) \implies P(n+1)$ pour tout $n$ non nul ici.
C'est la propriété d'hérédité. Attention, la rédaction est très importante et
délicate pour ce point particulier ! Toute la magie de la récurrence a lieu ici
!
Le plus souvent, il faut partir de la propriété au rang $n+1$, puis développer,
et tomber sur la propriété $P(n)$ qui est donc vraie, et conclure !

- - -

_Hérédité :_

Soit $n$ un entier naturel non nul. Supposons alors que $P(n)$ est vérifiée, et
montrons alors que $P(n+1)$ est vraie. 

On calcule : 
  $$ \sum_{k = 1}^{n+1} k = \sum_{k = 1}^{n} k + (n+1) $$

Or, puisque $P(n)$ est vérifiée : 
  $$\sum_{k = 1}^{n} k = \frac{n(n+1)}{2}$$

Donc 
\begin{align*}
      \sum_{k = 1}^{n+1} k  &= \frac{n(n+1)}{2} + (n+1) \\
			    &= (n+1)\left(\frac{n}{2} + 1\right)\\
      \sum_{k = 1}^{n+1} k  &= \frac{(n+1)(n+2)}{2}\\
\end{align*}

Donc, $P(n+1)$ est vraie.

- - -

On peut maintenant conclure :

- - - 

_Conclusion :_ 

La propriété $P(n)$ est donc démontrée, pour tout entier naturel
$n$ non nul

- - - 

Et pouf, plein de points au bac !





