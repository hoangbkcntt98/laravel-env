Step 1 :Create composer container
  - Create a localcomposer for creating a laravel app with composer
  - run in cmd :
    docker build -t localcomposer -f ./composer/composer.dockerfile ./composer
  - run image which are just created
    Linux :docker run -it -d -v $(pwd):/var/www/html localcomposer:latest
    Windows :docker run -it -d -v ${pwd}:/var/www/html localcomposer:latest
  - then, use composer for creating laravel app ( with name is "app")
    - exec to app and use composer for creating app 
      docker-compose exec localcomposer:latest bash
      cd /var/www/html
      composer create-project --prefer-dist laravel/laravel app
  - Now, our structure directory are
    --app
    --composer
    -----composer.dockerfile
Step 2 : 
  - continue with instruction : https://www.digitalocean.com/community/tutorials/how-to-set-up-laravel-nginx-and-mysql-with-docker-compose
