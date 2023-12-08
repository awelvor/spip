/* spip.sql */
    select * from spip_articles
    select id_article, id_rubrique, titre, statut from spip_articles
    select statut, count(*) from spip_articles group by statut
    
    select * from spip_rubriques;
    select id_rubrique, titre, statut from spip_rubriques;