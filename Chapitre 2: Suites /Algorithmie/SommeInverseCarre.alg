<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="POUR k ALLANT_DE 1 A ?" texte="Cet algorithme calcule la somme des inverse des carrés"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2para="" F2defaut="" F2etat="inactif" F2lignes=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param arrondiAuto="vrai" epaisseurPoint="2" nbDecimales="8" maxBoucle="500000" totalBoucles="5000000" epaisseurLigne="2" totalAffichages="1000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="s EST_DU_TYPE NOMBRE" code="1#NOMBRE#s"/>
        <item algoitem="k EST_DU_TYPE NOMBRE" code="1#NOMBRE#k"/>
        <item algoitem="n EST_DU_TYPE NOMBRE" code="1#NOMBRE#n"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="s PREND_LA_VALEUR ?" code="5#s#?#pasliste"/>
        <item algoitem="k PREND_LA_VALEUR ?" code="5#k#?#pasliste"/>
        <item algoitem="POUR k ALLANT_DE 1 A ?" code="12#k#1#?">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="s PREND_LA_VALEUR s + ?" code="5#s#s + ?#pasliste"/>
            <item algoitem="AFFICHER s" code="3#s#1#pasliste"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
