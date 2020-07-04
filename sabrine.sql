-- # EXO1
-- # select NomEditeur, Ville, Region
-- # from editeur ;
-- # 8 lignes
--
-- # EXO2
-- # select NomEmploye, PnEmploye, DateEmbauche, PositionEmploye
-- # from employe
-- # where NomEmploye like'L%' AND PositionEmploye between '10' AND '100' AND DateEmbauche BETWEEN '1990-01-01' AND '1990-12-31';
-- # 1 ligne
--
-- # EXO3
-- # select NomEmploye, DateEmbauche
-- # from employe
-- # order by IdEditeur, NomEmploye;
-- # 43 lignes
--
-- # EXO4
-- # select NomAuteur, Pays, Adresse
-- # from auteur
-- # WHERE Pays IN ('FR', 'BE', 'CH')
-- # order by Pays;
-- # 20 lignes
--
-- # EXO5
-- # select PositionEmploye as 'Position Employe'
-- #        count(PositionEmploye), AS 'NbEmploye',
-- #        MAX(DATE(DateEmbauche)) AS 'recent',
-- #        MIN(DATE(DateEmbauche)) AS 'Ancien'
-- # from    employe
-- # group by PositionEmploye
-- # order by Ancien ;
-- # 14 lignes
--
-- # EXO6
-- # select IdTitre,
-- #        MAX(Droit) Droit
-- # from droitprevu
-- # group by IdTitre ;
-- # 12 lignes
--
-- # EXO7
-- # select NomEditeur, Pays
-- # from editeur
-- # group by Pays like '%s%' and '%r%'
-- # having Pays IN ('fr', 'be', 'ch', 'usa', 'ger');
-- # 1 ligne

-- # EXO9
-- # select NomAuteur, Titre, Prix
-- # from auteur,
-- #      titreauteur,
-- #      titre
-- # where auteur.IdAuteur = titreauteur.IdAuteur
-- # and titre.IdTitre = titreauteur.IdTitre  ;
-- #
-- # select *
-- # from titreauteur;
-- #
-- # select *
-- # from auteur;
-- #
#  select NomAuteur, titreauteur.IdTitre, titre, Prix
#  from auteur,
#       titreauteur,
#       titre
#  where auteur.IdAuteur = titreauteur.IdAuteur
#    and titre.IdTitre = titreauteur.IdTitre  ;
# 20 lignes

-- # EXO10
-- # select NomEditeur, Titre, NomMag, Qt
-- # from editeur,
-- #      titre,
-- #      magasin,
-- #      vente
-- # where editeur.IdEditeur = titre.IdEditeur
-- #   AND titre.IdTitre = vente.IdTitre
-- #   AND magasin.IdMag = vente.IdMag ;
-- # 18 lignes
--
-- # EXO11
# select NomAuteur
# from auteur,
#       titreauteur,
#       vente,
#       titre
# where auteur.IdAuteur = titreauteur.IdAuteur
#    AND titre.IdTitre = vente.IdTitre
#    AND titre.IdTitre = titreauteur.IdTitre
#  group by auteur.IdAuteur
# having SUM(Qt)>20;
-- 10 lignes

-- # EXO12
# select PnAuteur, NomAuteur
# from auteur
# where 100 = ALL (
#     select DroitPourCent
#     from titreauteur, titre
#     where titreauteur.IdTitre = titre.IdTitre
#       AND auteur.IdAuteur = titreauteur.IdAuteur
# )
# order by NomAuteur, PnAuteur ;
# 13 lignes

# # EXO 13
# select Titre, MAX(Prix)
# from titre;
# 1 ligne

# Exercice 14 : 1 sous-requête utilisée dans la clause SELECT, SUM
# Afficher la liste des titres dans l’ordre alphabétique
# et le cumul de leurs ventes, tous magasins confondus
#  (tables titres et ventes)
# select Titre, CumulAnnuelVente


# Exercice 15 : 1 sous-requête, MAX
# select Titre, MAX(IdMag)
# from titre,vente;
# 1 ligne

# Exercice 15 bis:
# Afficher le nom et l’identificateur des éditeurs
# qui éditent de la gestion et pas d’informatique.

