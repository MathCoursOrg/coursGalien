<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="Pour calculer la racine de 3 par dichotomie&#xa;" courant="//Comment faire pour compter le nombre d'itération de l'algorithme ?"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2defaut="" F2etat="inactif" F2para="" F2lignes=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param maxBoucle="500000" epaisseurPoint="2" arrondiAuto="vrai" totalBoucles="5000000" epaisseurLigne="2" nbDecimales="8" totalAffichages="1000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#a" algoitem="a EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#b" algoitem="b EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#c" algoitem="c EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#k" algoitem="k EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="5#a#0#pasliste" algoitem="a PREND_LA_VALEUR 0"/>
        <item code="5#b#2#pasliste" algoitem="b PREND_LA_VALEUR 2"/>
        <item code="19#Comment faire pour compter le nombre d'itération de l'algorithme ?" algoitem="//Comment faire pour compter le nombre d'itération de l'algorithme ?"/>
        <item code="15#??" algoitem="TANT_QUE (??) FAIRE">
            <item code="16#debuttantque" algoitem="DEBUT_TANT_QUE"/>
            <item code="19#Compléter ici" algoitem="//Compléter ici"/>
            <item code="6#c*c - 3 > 0" algoitem="SI (c*c - 3 > 0) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="19#Compléter ici" algoitem="//Compléter ici"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
                <item code="9#sinon" algoitem="SINON">
                    <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                    <item code="19#Compléter ici" algoitem="//Compléter ici"/>
                    <item code="11#finsinon" algoitem="FIN_SINON"/>
                </item>
            </item>
            <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
