---
title : L'exponentielle
author : Fabien Delhomme
lang: fr
date: 3 septembre 2018 
document: report
...

# L'exponentielle et sa copine le logarithme

## Motivations

Maintenant que vous connaissez le merveilleux outils qu'est la dérivée, nous
allons étudier deux autres fonctions dont les propriétés sont _indispensables_
en mathématique, et en science en général. 

Ces deux fonctions sont l'exponentielle et le logarithme, qui sont réciproques
l'une de l'autre. Nous reverrons l'exponentielle dans le chapitre des complexes
(en géométrie). 

## Definition

Voici la définition de la fonction exponentielle réelle. C'est une fonction,
notée $\exp$, qui va de $\mathbb{R}$ dans $\mathbb{R}$, telle que :

$$ 
\left\{ 
\begin{array}{lll}
  \forall x \in \mathbb{R} & \exp'{x} & = \exp{x} \\
   & \exp{0} & = 1
\end{array}
\right.
$$

## Propriétés de l'exponentielle

À cause de sa définition, l'exponentielle admet plusieurs propriétés. 

  - Elle n'est jamais nulle, 
  - elle est toujours strictement positive,
  - elle est toujours croissante,
  - Sa limite en plus l'infini vaut l'infini
  - Sa limite en moins l'infini vaut 0
  - Elle se comporte comme une fonction puissance (voir le paragraphe du
      dessous), à cause de sa propriété : $\exp{x+y}= \exp{x}*\exp{y}$.

De plus, on $\exp{1} = \mathrm{e}$. C'est un nombre que l'on peut calculer, et
qui donne d'après la calculatrice (ou google !) $\approx 2.71828182846$

**Lien entre l'exponentielle est les fonctions puissance**

La formule $\exp{x+y}= \exp{x}*\exp{y}$ fait écho avec la formule $a^{x+y} =
a^{x}*a^{y}$. C'est pour cela que l'on note :

  $$ \exp{x} = \mathrm{e}^x $$

Donc, calculer $\exp{x}$ revient à calculer $\mathrm{e}$ _puissance_ $x$.

**Exemple de calcul :** on sait que $\exp{\frac{1}{2}}$ est plus petit que
$\exp{1}$, mais plus grand que $\exp{0} = 1$ donc $\exp{\frac{1}{2}} > 0$
puisque la fonction exponentielle est croissante. De plus,

  $$ \left(\exp{\frac{1}{2}}\right)^2 = \exp{\frac{1}{2}}*\exp{\frac{1}{2}} = \exp{\left(\frac{1}{2} + \frac{1}{2}\right)} = \exp{1} = \mathrm{e}$$

Or, le nombre $\exp{\frac{1}{2}} > 0$, donc :

  $$\exp{\frac{1}{2}} = \sqrt{ \mathrm{e}}$$

Jetez un coup d'œil à la figure \ref{exp} la croissance extraordinaire de cette
fonction lorsque $x$ devient de plus en plus grand ! Graphiquement, on peut
retenir :

  - Les limites de l'exponentielle en plus et moins l'infini
  - Sa propriété de croissance sur tout $\mathbb{R}$
  - Sa propriété de positivité sur tout $\mathbb{R}$

![Courbe représentative de la fonction exponentielle \label{exp}](exp.png)
