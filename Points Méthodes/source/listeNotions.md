---
title: Liste des notions au bac
author: \textsc{Delhomme} Fabien
lang: fr
fontsize: 11pt
linestretch: 1
papersize: a4paper
document: article
classoption: oneside
colorlinks: red

geometry:
  - margin=1in

...

# But de ce document

Ce document essaye de répertorier toutes les notions au bac pour lesquelles il
est pertinent de faire des _flashcards_.

Ce document sera construit tout le long de l'année, donc n'hésitez pas à
commencer dès maintenant !


Voici la documentation autour des _flashcards_ :

  - <https://ncase.me/remember/> une mine d'or, comics détaillant comment faire
      ses propres _flashcards_ et pourquoi cela fonctionne-t-il.
  - <https://www.supermemo.com/en/articles/20rules> lien qui détaille les bonnes
      pratiques à avoir pour faire ses _flashcards_.

Cette liste de notions ne constitue pas exactement une liste telle quelle de
_flashcards_. Il faut toujours scinder au maximum les informations pour que
dans une _flashcards_ on ne trouve qu'une seule information, ou deux, grand
maximum, et surtout, restez simple ! (Re-liser la deuxième référence que je vous
ai donnée).

Agrémenter _toujours_ vos _flashcards_ de dessins, de graphes, ou d'exemples !!!

Si une notion vous pose problème, alors envoyer moi un mail, à l'adresse
<fdelhomme@gmail.com> ! Il est impossible d'apprendre avant d'avoir parfaitement
compris.

# Liste des notions

## En calculs

  - Identités remarquables (avec l'interprétation géométrique)
  - Expression conjuguée (pour une somme de quotient de racines carrée)
  - Quelles sont les formes indéterminées pour calculer une limite d'une suite
      ou d'une fonction ?
  - Comment lever une indétermination d'une limite en plus ou moins l'infini pour une
    fonction de type $x \mapsto \frac{P(x)}{Q(x)}$ avec $P$ et $Q$ deux
    polynômes ?


## En analyse

### Les fonctions numériques

#### Graphes

Les graphes des fonctions suivantes sont à avoir en tête :

  - La fonction carrée, et racine carrée.
  - La fonction inverse.
  - La fonction exponentielle, et logarithme.
  - La fonction cubique.
  - Les fonctions affines et linéaires.
  - Une fonction dite homographique, de type $x \mapsto \frac{3x +2}{2x - 1}$.

#### Polynôme

  - Courbe représentative d'un polynôme du second degré.
  - Comment trouver la forme canonique d'un polynôme ?
  - Quelles sont les formules pour avoir les racines d'un polynôme de second
      degré ?
  - Quelle est l'abscisse du point de l'extremum d'un polynôme ?
  - Quelles sont les limites d'un polynôme en plus et moins l'infini ?
  - Comme se situe le point de l'extremum par rapport aux deux racines ?
      (Réponse : c'est le milieux des deux racines, tracer une courbe pour le
      comprendre géométriquement).
  - Comment prouver qu'une fonction de type $x \mapsto \frac{P(x)}{Q(x)}$ avec
      $P$ et $Q$ des polynômes est bien définie, et comment trouver son
      intervalle de définition ? (Réponse : il suffit de regarder les racines de
      $Q$).

#### Théorèmes portant sur les limites et la continuité, raisonnements.

  - Théorème des gendarmes.
  - Théorème de comparaison.
  - Théorème des valeurs intermédiaires.
  - Raisonnement par récurrence.
  - Raisonnement par l'absurde (pour l'enseignement spécialisé).
  - Théorème de la limite monotone (Si une suite et minorée et décroissante,
      alors ?)

#### Suites

##### Définition, et premiers outils 

  - Définition des suites géométriques et arithmétiques (par récursivité).
  - Formules explicites des suites géométriques et arithmétiques.
  - Formules des sommes d'une suite géométrique ou d'une suite arithmétique.
      Ainsi que leur preuves.
  - Qu'est-ce que donne le point fixe d'une fonction $f$ pour une suite
      récurrente d'ordre 1 (c'est-à-dire une suite définie par $u_{n+1} =
      f(u_n)$ (Réponse : sa limite, si elle converge). Pourquoi ?
  - Définition d'une fonction croissante, décroissante. 
  - Définition d'une fonction croissante, décroissante, mais à partir d'un
      certain rang.
  - Exemples de suites croissantes, décroissantes, ni l'une ni l'autre ?
  - 

##### Limites 

  - Qu'est-ce qu'une suite convergente ? Exemples.
  - Qu'est-ce qu'une suite qui diverge ? (Réponse : c'est une suite qui _ne
      converge pas_). Donner deux exemples de suites qui divergent différemment
      (réponse : la suite $n \mapsto (-1)^n$, et la suite $n \mapsto 2^n$).
  - Définition d'une suite majorée. Exemples.
  - Définition d'une suite minorée. Exemples.
  - Définition d'une suite bornée. Exemples.
  - Une suite bornée est-elle toujours convergente ? (Réponse : non !!)
  - Une suite minorée par $0$ et décroissante admet elle pour limite $0$ ?
      (Réponse : non, par exemple $n \mapsto 1 + \frac{1}{n}$).

#### Continuité

  - Définition d'une fonction continue, par les limites.
  - Définition d'une fonction continue, par la courbe représentative.
  - Exemples de fonctions discontinues.
  - Comment justifier qu'une fonction est continue ? (C'est un polynôme, ou alors
      c'est une somme/produit de fonctions continues, ou alors c'est un quotient
      bien _défini_ de fonction et continue.).
  - Que demande-t-on à la dichotomie pour fonctionner ? (Réponse: les même
      hypothèse que le théorème des valeurs intermédiaires, et l'unicité du zéro
      de la fonction.).
  - Comment fonctionne l'algorithme de la dichotomie ? (Ici, aussi, il _faut_
      scinder le fonctionnement en plusieurs _flashcards_ !)

#### Dérivation

  - Définition de la dérivée (avec la notion de limite).
  - Définition de la dérivée (avec la notion de tangente à la courbe).
  - Définition de la dérivée (géométriquement parlant).
  - Quels sont les liens entre le tableau de variation d'une fonction $f$ et le
      tableau de signe de $f'$ ?
  - Quels sont les fonctions continues sur leur domaine de définition, mais pas
      partout dérivable sur ce domaine de définition ? (La fonction valeur
      absolue, la racine carrée).
  - Quels sont les fonctions qui admettent en un point $x$ une dérivée nulle,
      mais pour lesquelles ce point n'est pas un extremum ? (la fonction cubique,
      typiquement, il faut voir son graphe).
  - Formules usuelles de dérivation (produit, somme, quotient, composée,
      puissance) (typiquement ici, il faut faire plusieurs _flashcards_ !)
  - Formules usuelles de dérivation des fonctions élémentaires (exponentielle,
      logarithme, sinus, cosinus, polynôme).
  - Quelle hypothèse sur ma fonction $f'$ je dois chercher au bac pour être sûr
      que ma fonction $f$, si elle admet un $\alpha \in I$ qui l'annule, alors
      ce $\alpha$ est unique ? (Réponse: il suffit de vérifier que le signe de
      $f'$ est constant, autrement dit, que la fonction est strictement monotone.)


