# Examen Conteneur et Messagerie de VM
Groupe : Thomas FLANDIN 
Norman NIATI
Luc Bruneau
Nicolas LEVRA 

##Etapes du projets##
Recherche de fonctionnlaités Jetty et Maven, repartition des taches, organisation du deploimenets 
clonage du depot / commencer la creation du dockerfile

##Probleme rencontrés :##
Fichier POM, Commande NVM package, variables d'environnement dans les conteneurs



This project uses Maven to package a web app.

This project is laid out like this:

- `hello-world-maven/`
  - **`pom.xml`** is a Maven [POM file](https://maven.apache.org/pom.html) that defines the project.
  - `src/main/` is a directory that contains the code.
    - `java/` is a directory that contains server-side code.
      - `io.happycoding.servlets.`**`HelloWorldServlet.java`** is a Java servlet that returns some HTML content.
    - `webapp/` is a directory that contains web files.
      - **`index.html`** is an HTML file that shows static content.

You can compile this into a directory and a `.war` file by executing this command:

```
mvn package
```

Then, you can use the `.war` file with a Tomcat or a Jetty Server.
