+ Config docker :
 - You should use linux container ( with window user let install wsl )
 - Sharing your drive ( important)
    - Create an account in Control Panel\System and Security\Administrative Tools\Computer Manager\System tools 
    - Add the account to docker-user group
    - Docker Destop/Setting/Shared Devices/Apply 
    - Login with the account 
+ Step 1 :Create composer container
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
+ Step 2 : 
  - continue with : https://www.digitalocean.com/community/tutorials/how-to-set-up-laravel-nginx-and-mysql-with-docker-compose
