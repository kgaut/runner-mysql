# runner-mysql

### Mysql 5.6
`docker pull kgaut/runner-mysql:5.6`
  
### Mysql 5.7
`docker pull kgaut/runner-mysql:5.7`

##Usage 
###Docker Compose

You can use this image with docker-compose

```
version: "2"
  mysql:
    image: kgaut/runner-mysql:5.6
    environment:
      MYSQL_ROOT_PASSWORD: mysql
      MYSQL_USER: drupal
      MYSQL_PASSWORD: test
      MYSQL_DATABASE: database_name
    volumes:
      - ./db:/var/db
```

### DUMP Import / Export

As you can see I set a volume in /var/db that use the folder 'db' at the same level of the docker-composer.yml file.

Once connected to your container you can use the command ``` mysql-import DUMP-NAME.gz``` in order to import into mysql any dump file present within the **./db** folder.

The command ``` mysql-export``` will create a dump file for every single database hosted in the same folder.
