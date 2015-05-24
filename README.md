#Application Todo

Ce dépôt contient la dernière version de mon application "To Do"



**Nouveauté de la v1.0**

L'application est compatibile avec le service [Heroku](https://www.heroku.com/ "Heroku")!

**Nouveauté de la v0.9**

Ajout d'un système d'alerte lors de la création d'une nouvelle tâche!


***

## Utiliser l'application sur son ordinateur

**Pré-requis**

* Ruby - 2.2.1
* Bundler [(?)](http://bundler.io/)


**Installation**

1. Cloner le dépôt à l'aide la commande `git clone https://github.com/p-guerin/Todo.git`
2. Aller dans le dossier *Todo*
3. Taper la commande `rake db:migrate` pour créer la base de donnée locale
4. Taper la commande `ruby app.rb` afin de démarrer le serveur
5. Ouvrir le navigateur et entrer l'adresse *localhost:9393*



***

## Héberger l'application sur Heroku

**Pré-requis**

* Compte sur Heroku
* Heroku Toolbelt [(?)](https://devcenter.heroku.com/articles/getting-started-with-play-on-heroku#set-up)


**Installation**

1. Cloner le dépôt à l'aide la commande `git clone https://github.com/p-guerin/Todo.git`
2. Aller dans le dossier *Todo*
3. Taper la commande `heroku create [nom_de_votre_application]` pour créer l'application
4. Taper la commande `git push heroku master` pour envoyer l'application sur Heroku
5. Taper la commande `heroku run rake db:migrate` pour générer la base de donnée
6. Ouvrir le navigateur et entrer l'adresse *[nom_de_votre_application].herokuapp.com*

