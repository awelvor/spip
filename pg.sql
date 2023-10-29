

update spip_rubriques set statut='publie';
update spip_rubriques set statut_tmp='publie';

select * from spip_mots where titre= 'MenuHaut';

select 
spip_mots_liens.id_mot,
spip_mots.titre,
spip_rubriques.titre,
spip_articles.titre
from spip_mots_liens 
inner join spip_rubriques on spip_mots_liens.id_objet = spip_rubriques.id_rubrique
inner join spip_articles  on spip_articles.id_rubrique = spip_rubriques.id_rubrique
inner join spip_mots on spip_mots.id_mot = spip_mots_liens.id_mot

order by spip_mots.id_mot;

select id_article, titre 
from spip_articles
where titre like 'Le%'

select id_rubrique, titre 
from spip_rubriques
where titre like 'Le%'



#articles - mots
select 
spip_mots_liens.id_mot, spip_mots_liens.id_objet,
spip_articles.titre,
spip_mots.titre, spip_mots.type
from spip_mots_liens
inner join spip_articles on spip_articles.id_article = spip_mots_liens.id_objet
inner join spip_mots on spip_mots.id_mot = spip_mots_liens.id_mot
where spip_mots_liens.objet='article'
order by spip_articles.id_article desc;

#articles - documents
select 
spip_documents_liens.id_document,
spip_articles.id_article, spip_articles.titre,
spip_documents.titre, spip_documents.fichier
from spip_documents_liens
inner join spip_articles on spip_articles.id_article = spip_documents_liens.id_objet
inner join spip_documents on spip_documents.id_document = spip_documents_liens.id_document
where spip_documents_liens.objet='article'
order by spip_articles.id_article desc;


