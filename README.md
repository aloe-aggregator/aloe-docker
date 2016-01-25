English
-------
ALOE Dockerfile
===============

Docker details for ALOE project

Deployment
-----------
Build simple image 

```
git clone https://github.com/aloe-aggregator/aloe-docker.git aloe_srv
cd aloe_srv
docker build aloe
```

Port
----
Default port is 8080. To edit it while creating an image

```
docker build -e PORT=8080 aloe
```

Mail
----
ALOE can send mail.

```
docker build -e MAIL_URL='smtp://user:password@mailhost:port/' aloe
```

Launch
---------

Quick launch :

```
docker run --name srv-aloe aloe
```

Recommended stack :

```
aloe:
  build: .
  links:
   - mongo
  expose:
   - "3000:3000"
mongo:
  image: mongo
  volumes:
   - /var/mongo:/data/db
```

Full stack launch : 

```
docker-compose up
```
===========================================================================
Français
--------

ALOE Dockerfile
===============

Explication de l'image docker du projet Aloe

déploiement
-----------
Pour construire une image simple 

```
git clone https://github.com/aloe-aggregator/aloe-docker.git aloe_srv
cd aloe_srv
docker build aloe
```

Port
----
le port par défaud est le 8080. Pour le modifier, lors de la création d'image

```
docker build -e PORT=8080 aloe
```

mail
----
Aloe est prévu pour envoyer des mails

```
docker build -e MAIL_URL='smtp://user:password@mailhost:port/' aloe
```

Lancement
---------

Pour lancer Aloe rapidement :

```
docker run --name srv-aloe aloe
```

Mais nous recommendons l'utilisation de cette composition :

```
aloe:
  build: .
  links:
   - mongo
  expose:
   - "3000:3000"
mongo:
  image: mongo
  volumes:
   - /var/mongo:/data/db
```

Enfin, pour lancer la suite de services : 

```
docker-compose up
```

Dans le cadre de la 3eme année de cycle ingénieur en apprentissage à [3IL](http://www.3il-ingenieurs.fr), il est demandé de réaliser un projet de groupe sur une période de quatre mois.
 ![logo 3IL](https://upload.wikimedia.org/wikipedia/fr/thumb/d/dc/3il_ingenieurs_logo.jpg/800px-3il_ingenieurs_logo.jpg)

