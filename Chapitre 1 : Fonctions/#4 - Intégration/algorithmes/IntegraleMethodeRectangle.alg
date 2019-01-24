<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="POUR k ALLANT_DE 1 A n" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2para="" F2etat="inactif" F2defaut="" F2lignes=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param maxBoucle="500000" epaisseurLigne="2" epaisseurPoint="2" nbDecimales="8" totalBoucles="5000000" totalAffichages="1000" arrondiAuto="vrai"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#k" algoitem="k EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#n" algoitem="n EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#somme" algoitem="somme EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#sommesup" algoitem="sommesup EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#C'est un essai#0" algoitem="AFFICHER &quot;C'est un essai&quot;"/>
        <item code="5#somme#0#pasliste" algoitem="somme PREND_LA_VALEUR 0"/>
        <item code="5#sommesup#0#pasliste" algoitem="sommesup PREND_LA_VALEUR 0"/>
        <item code="2#n#pasliste" algoitem="LIRE n"/>
        <item code="12#k#1#n" algoitem="POUR k ALLANT_DE 1 A n">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="5#somme#somme + (1/n)*1/( 1 + pow(k/n,2))#pasliste" algoitem="somme PREND_LA_VALEUR somme + (1/n)*1/( 1 + pow(k/n,2))"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="3#somme#1#pasliste" algoitem="AFFICHER somme"/>
        <item code="12#k#0#n-1" algoitem="POUR k ALLANT_DE 0 A n-1">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="5#sommesup#sommesup + (1/n)*1/( 1 + pow(k/n,2))#pasliste" algoitem="sommesup PREND_LA_VALEUR sommesup + (1/n)*1/( 1 + pow(k/n,2))"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="3#sommesup#1#pasliste" algoitem="AFFICHER sommesup"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
