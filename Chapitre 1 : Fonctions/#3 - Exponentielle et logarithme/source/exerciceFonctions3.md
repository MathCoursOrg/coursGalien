---
title: Exercices sur l'exponentielle
date:
author: Delhomme Fabien
lang: fr
document: report
...


# Résolution d'équation

## Équations simples

Résoudre dans $\mathbb{R}$ :

  - $\mathrm{e}^{x} = 3$
  - $\mathrm{e}^{x} = -2$
  - $\mathrm{e}^{x} =  0$

## Équations d'ordre 2

Résoudre dans $\mathbb{R}$ :
 
  - $2 \mathrm{e}^{2 x}+12 \mathrm{e}^x+18=0$.
  - $-4 \mathrm{e}^{2 x}+4 \mathrm{e}^x+8=0$.
  - $-4 \mathrm{e}^{2 x}+60 \mathrm{e}^x-216=0$.

# Équations affines

Résoudre dans $\mathbb{R}$ :

  - $\mathrm{e}^{9 x-3}=\mathrm{e}^8$
  - $\mathrm{e}^{7 x-3}=\mathrm{e}^9$
  - $\mathrm{e}^{9 x-7}=\mathrm{e}$

# Calculs de limites, et études de fonctions

## Calculs de limites

Établir le tableau de variation de $x*\exp{x}$ sur $\mathbb{R}$, et calculer la
limite en moins l'infini.

Avec les résultats de la fonction précédente, trouvez la limite de $x\exp{(-x)}$
pour $x \to +\infty$.

## Établir la limite d'une fonction avec la formule de la dérivée

Calculer la limite suivante :
  $$\lim_{x\to 0} \frac{\mathrm{e}^{x}-1}{x} $$

**Plus difficile**

Calculer la limite suivante :
  $$\lim_{x\to 0} \frac{\mathrm{e}^{x}-1}{x + \frac{x^2}{2}}$$

Graphiquement, que pensez vous de :

  $$\lim_{x\to 0} \frac{\mathrm{e}^{x}-1}{x + \frac{x^2}{2} + \frac{x^3}{6}}$$

**Applications**

À partir des calculs précédents, donnez une approximation de $e$. À combien êtes
vous proches de la vraie valeur de $e$ ?

Essayer de la même manière de calculer $\sqrt{e}$. Cette fois ci, à combien êtes
vous de la vraie valeur de $\sqrt{e}$ ?

# Exercices 

## Fonction que l'on retrouvera en probabilité

On considère la fonction $f : x \longrightarrow \exp{(-\frac{1}{x^2})}$.

  - Démontrer que la fonction $f$ est paire
  - Déterminer les limites de $f$ en $+\infty$ et $-\infty$
  - Donner la dérivée de $f$. Quel est le sens de variation de $f$ ?
  - Dresser le tableau de variation de $f$.
  - Tracer la courbe de la fonction $f$ dans un repère orthogonal.

## Exercice en lien avec la physique 

On admet que la charge $q$ d'un condensateur est donnée en fonction du temps $t$
exprimée en secondes par :
  $$ q(t) = 6(1-\textrm{e}^{-0.2t})$$

  - Démontrer que la fonction q est strictement croissante sur $[0; +\infty[$ (le
      condensateur se charge)
  - Donner la limite de $q$ en $+\infty$.
  - Dresser le tableau de variation de $q$.
  - Déterminer une équation de la tangente $T$ à la courbe de $q$ au point
      d'abscisse $0$.
  - Tracer l'allure de la courbe de la fonction $q$.
  - Justifier qu'il existe un instant $t_0$ unique tel que $q(t_0) = 5.7$
  - Au bout de combien de secondes la charge du condensateur sera-t-elle
      supérieure à $5.7$ ?
