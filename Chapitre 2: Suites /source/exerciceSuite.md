
---
title: Exercice sur les suites
date:
author: Delhomme Fabien
lang: fr
document: report

...


# Définitions

## Minorant, majorant

Déterminer un majorant et un minorant pour les suites suivantes :

  - $u_n = \frac{-1}{n+1}$
  - $u_n = \frac{n}{n+1}$
  - $u_n = -\left(\frac{-1}{2}\right)^{n}$
  - $u_n = \sin{(n)}$, vous pouvez vous aider en regardant à la calculatrice
      quelques valeurs de la suite 
 
# Calculs de limites

Déterminer les limites de :

  - $u_n = \frac{(-1)^n}{n}$ 
  - $u_n = \sqrt{n^4 + 3}$
  - $u_n = 2*n + (-1)^n$ 
  - $u_n = n - \sqrt{4n^2 + 1}$
  - $u_n = \frac{\cos{n}}{n^2}$ 
  - $u_n = \frac{n^5}{n^2 - 7}$ 


Soit $u$ la suite $n \mapsto \sqrt{n+1} - \sqrt{n}$.

  1. Démontrer que pour tout $n \in \mathbb{N}$:
      $$ u_n = \frac{1}{\sqrt{n+1} + \sqrt{n}}$$
  2. En déduire que pour tout $n \in \mathbb{N}$ :
      $$ 0 < u_n < \frac{1}{2\sqrt{n}}$$
  3. Quelle est la limite de la suite $u$ ? Donner de tête un rang à partir
     duquel :
     $$ 0 < u_n < 5*10^{-5}$$

# Problèmes

## Suites imbriquées

On définit les suite $(u_n)$ et $(v_n)$ par :

\begin{align*}
  u_0 = 1 &\quad v_0 = 2 \\
  u_{n+1} = \frac{u_n + 2v_n}{3} &\quad v_{n+1} = \frac{u_n + 4v_n}{5}\\
\end{align*}

  1. Écrire un algorithme qui prend en entrée un entier naturel $n$ non nul et
     donne en sortie les valeurs $u_1$, $v_1$, ..., $u_n, v_n$.  Programmer cet
     algorithme sur la calculatrice. Quelle conjecture est on amené à formuler sur
     le comportement de $(u_n)$ et de $(v_n)$ quand $n$ tend vers $+\infty$ ?
  2. On pose pour tout entier naturel $n$, $w_n = v_n - u_n$. Démontrer que la
     suite $(w_n)$ est géométrique. Préciser la limite de $(w_n)$ et exprimer
     $w_n$ en fonction de l'entier naturel $n$.
  3. On pose pour tout entier naturel $n$, $t_n = 3u_n + 10 v_n$. Démontrer que
     la suite $t_n$ est constante.
  4. Exprimer $u_n$ et $v_n$ en fonction de l'entier naturel $n$, puis préciser
     la limite de chacune des suites $(u_n)$ et $(v_n)$.




## La série harmonique

On considère la suite $(u_n)$ définie sur $\mathbb{N}^*$ par :
    $$ u_n = 1 + \frac{1}{2} + \frac{1}{3} + \ldots + \frac{1}{n} =
    \sum_{k=1}^{n} \frac{1}{k}$$

  1. Quel est le sens de variation de la suite $(u_n)$ ?
  2. Démontrer que pour tout $n \in \mathbb{N}^*$, on a :
	$$ u_{2n} - u_n \leq \frac{1}{2}$$
  En déduire que la suite $(u_n)$ est divergente. 
  3. Quelle est la limite de la suite $(u_n)$ ?
  4. Écrire un programme qui détermine le plus petit entier naturel $n$ tel que
     $u_n \geq 10$.

