
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
 
# Étude des variations d'une suite

Étudier les variations de la suite $u_n = n^3 - 9n^2$, et de la suite $u_n = n^2
- 10n + 1$.

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

# Raisonnements par récurrence

## Exercice 1

Soit $(u_n)$ la suite définie par $u_0 = 1$, et $u_{n+1} = \sqrt{2 + u_n}$ pour
tout $n \in \mathbb{N}$.

Démontrer que, pour tout $n \in \mathbb{N}$, $0 < u_n < 2$

## Exercice 2

Soit $(u_n)$ la suite définie par $u_0 = 1$, et 
  $$u_{n+1} = \frac{1 + 2u_n}{2 + u_n}$$ 
pour tout $n \in \mathbb{N}$. 

Démontrer que, pour tout $n \in \mathbb{N}$, $0 < u_n < 1$.

## Exercice 3

Soit $(u_n)$ la suite définie par $u_0 = 2$, et 
  $$u_{n+1} = \frac{u_n}{1 + u_n}$$
pour tout $n \in \mathbb{N}$.

Démontrer que pour tout $n \in \mathbb{N}$
  $$ u_n = \frac{2}{2u_n +1}$$

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

## Bibliothèque municipale 

La  bibliothèque  municipale  étant  devenue  trop  petite,  une  commune  a
décidé  d’ouvrir  une médiathèque qui pourra contenir $100 000$ ouvrages au
total.  Pour l'ouverture prévue le 1er janvier 2013, la médiathèque dispose du
stock de $35 000$ ouvrages de  l'ancienne  bibliothèque  augmenté  de  $7 000$
ouvrages supplémentaires  neufs  offerts  par  la commune. 

Chaque année, la bibliothécaire est chargée de supprimer $5\%$ des ouvrages,
trop vieux ou abîmés, et d’acheter $6 000$ ouvrages neufs.  On appelle $u_n$ le
nombre, en milliers, d’ouvrages disponibles le 1er janvier de l'année $(2013 +
n)$ On donne $u_0 = 42$.

  1. Justifier que, pour tout entier naturel $n$, on a :
    $$ u_{n+1} = u_n*(0.95) + 6$$
  2. On propose ci-dessus un algorithme en langage naturel. Expliquer ce que
     permet de calculer cet algorithme :

	Variables :
	  U, N
	Initialisation :
	  Mettre 42 dans U
	  Mettre 0 dans N
	Traitement :
	  Tant que U < 100
	    U prend la valeur 
	    U * 0,95 + 6
	    N prend la valeur N + 1
	  Fin du Tant que
	Sortie
	Afficher N.
  3. À l'aide de sa calculatrice, déterminer le résultat obtenu grâce à cet
     algorithme.

La commune doit finalement revoir ses dépenses à la baisse, elle ne pourra
financer que $4000$ nouveaux ouvrages par an au lieu des $6000$ prévus.

On appelle $v_n$ le nombre, en milliers, d'ouvrages disponibles le 1er janvier
de l'année $(2013 + n)$.

  1. Identifier et écrire la ligne qu'il faut modifier dans l'algorithme pour
     prendre en compte ce changement.
  2. On admet que $v_{n+1} = v_n*0.95 + 4$ avec $v_0 = 42$.
  On considère la suite $(w_n)$ définie, pour tout entier $n$, par $w_n = v_n -
  80$. Montrer que $(w_n)$ est une suite géométrique de raison $q = 0.95$, et
  préciser son premier terme $w_0$.
  3. On admet que, pour tout entier naturel $n$, $w_n = -38*(0.95)^n$
     - Déterminer la limite $W$ de $(w_n)$. On en déduit que la limite de $(v_n)$
	est égale à $80 + W$.
     - Interpréter ce résultat.
