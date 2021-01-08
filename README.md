# tpweb

CV : 
- HTML 5/CSS3 Bootsrap. 
==================================================================
TP Symphony :

J'ai déterminé les entité que j'avais à crée pour gérer le blog soit :
- Un Post (Title,content,created at,autheur,updated at).
- Une url pour les images des articles stocké en BDD.
- Générer les Controllers (Un pour mon blog, un pour mes post)
- Ajouter des fakes post en DB pour commencer à travailler
- J'ai intégré ensuite Bootsrap 4 au projet pour faire la mise en Forme.

Partie 2 :

- J'ai ajouter une entité catégorie en bdd
- et un champs category dans Post relation OneToMany
- j'ai généré ensuite le CRUD pour post & Category
- Insertion de catégorie en DB
- Ajouter les catégories aux articles et mise en forme 

Partie 3 :
- j'ai déouvert le module sécurité de Symphony
- j'ai crée une entité User
- Création des pages de login et d'inscription
- Vérification que les comptes se crée bien en DB
- Problème de connexion (ajout d'un return true) pour nous connecter
- Modification du blog de manière à ce que l'utilisateur connecter
  ne puisse que lire et créer des articles.
  
  --------------------------------------------------------------
  Run
  --------------------------------------------------------------
  Importer le fichier Haiti.Sql pour avoir un jeu de données
  L'index du blog ce situe ici : http://localhost:8000/blog
  
  Prévisualtion du blog : https://i.gyazo.com/be0e1e3422818a447de97902bd87a785.png


