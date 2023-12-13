/* spip.sql */
    select * from spip_articles
    select id_article, id_rubrique, titre, statut from spip_articles
    select statut, count(*) from spip_articles group by statut
    
    select * from spip_rubriques;
    select id_rubrique, titre, statut from spip_rubriques;
    
    select id_auteur from spip_auteurs;
    select id_definition from spip_definitions;
    select id_job from spip_jobs;
    select id_mot, titre from spip_mots order by id_mot;
    select id_paquet from spip_paquets;
    select id_plugin, prefixe from spip_plugins;
    select id_syndic from spip_syndic;
    select id_version from spip_versions;
    select id_visite from spip_visites;
    select id_auteur from spip_auteurs;
    select id_auteur from spip_auteurs;
    select id_syndic, id_rubrique, nom_site, syndication, statut  from spip_syndic;
    select objet, count(*) from spip_mots_liens group by objet;
    select objet, count(*) from spip_documents_liens group by objet;
    select extension, count(*) from spip_documents group by extension;
    select id_groupe, titre from spip_groupes_mots;
    
    /* articles rubriques */
    select 
    spip_rubriques.id_rubrique, spip_rubriques.titre,
    spip_articles.id_article, spip_articles.titre
    from spip_rubriques
    inner join spip_articles on spip_articles.id_rubrique = spip_rubriques.id_rubrique;
    
/* mots articles */
select 
spip_mots.id_mot, spip_mots.titre,
spip_articles.id_article, spip_articles.titre
from spip_mots_liens
inner join spip_mots on spip_mots.id_mot = spip_mots_liens.id_mot
inner join spip_articles on spip_articles.id_article = spip_mots_liens.id_objet
where spip_mots_liens.objet = 'article' and spip_articles.id_article=1220;
    
   /* mots rubriques */
select 
spip_mots.id_mot, spip_mots.titre,
spip_rubriques.id_rubrique, spip_rubriques.titre
from spip_mots_liens
inner join spip_mots on spip_mots.id_mot = spip_mots_liens.id_mot
inner join spip_rubriques on spip_rubriques.id_rubrique = spip_mots_liens.id_objet
where spip_mots_liens.objet = 'rubrique';

/* syndic articles */
select
spip_syndic_articles.titre, spip_syndic_articles.date,
spip_syndic.nom_site, spip_syndic.syndication, spip_syndic.statut
from spip_syndic_articles 
inner join spip_syndic on spip_syndic_articles.id_syndic = spip_syndic.id_syndic;

/* mots groupes_mots */
select
spip_mots.id_mot, spip_mots.titre,
spip_groupes_mots.titre
from spip_mots
inner join spip_groupes_mots on spip_groupes_mots.id_groupe = spip_mots.id_groupe
order by spip_groupes_mots.titre;
     
    
    /* end of file */

    