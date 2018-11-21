---
title: Exercices sur l'exponentielle
date:
author: Delhomme Fabien
lang: fr
document: report
geometry :
  margin=1.2in
fontsize : 11pt
papersize : a4paper
document : report
classoption : twoside
colorlinks : blue
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

## Calcul de dérivées de fonctions

Calculer les dérivées des fonctions suivantes

  - $f(x) = (4 - 3x)^3$ 
  - $f(x) = (7x^2 + x - 3)^5$
  - $f(x) = x^2 + \frac{1}{x^2 +1}$
  - $f(x) = \frac{1}{\sqrt{2x}}$
  - $f(x) = x\sqrt{2x}$
  - $f(x) = \sqrt{x^3 - 2x}$
  - $f(x) = \sqrt{3x^2 -1}$
  - $f(x) = \sqrt{\frac{3x-2}{2x-3}}$
  - $f(x) = \frac{1}{(x-3)^3}$
  - $f(x) = \frac{5}{(3 - 2x)^2}$
  - $f(x) = e^{2x} + e^{x^2 -1}$
  - $f(x) = 2xe^{x+1}$

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

# Problèmes

## Approximation de banquier

Les banquiers calculent rapidement le temps approximatif du doublement d'un
capital, placé à intérêts composés, de la façon suivante :

>   Pour un taux d'intérêt de $t\%$, le capital double au bout de $\frac{70}{t}$ années

On essaie de comprendre d'où vient cette astuce.

  1. Au bout de $n$ années, par quel nombre est multiplié la valeur d'un capital
     placé à $t\%$ ?
  2. On sait que la courbe représentative de $\ln$ est située sous sa tangente
     au point d'abscisse 1. Par quelle inégalité vérifiée par $\ln(x)$ pour tout
     $x$ de $]0, +\infty[$ cela se traduit-il ? En déduire une inégalité
     vérifiée par $\ln(1+x)$ pour tout $x$ de $]-1, +\infty[$.
  3. Étudier le sens de variation de la fonction $g : x \mapsto \ln(1+x) -x +
     \frac{x^2}{2}$
  4. En déduire des deux questions précédentes, que pour tout $x$ de $]0, +\infty[$, on ait
    $$ x - \frac{x^2}{2} \leq \ln(1+x) \leq x$$
    Puis, donner un majorant de l'erreur commise quand on remplace $\ln(1+x)$
    par $x$.
  5. Expliciter les approximations qui conduisent à l'astuce du banquier pour
     des valeurs raisonnables de $t$ (c'est-à-dire pour $0 < t < 14$).

