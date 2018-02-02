# docker-compose-nginx-letsencrypt-proxy-nextcloud-onlyoffice
Docker compose configuration for running dockerized nextcloud and onlyoffice behind the jwilder/nginx-proxy with letsencrypt

## setup
1. Set or change all MySQL-passwords in:
  - /nextcloud/.db.env
  - /nextcloud/docker-compose.yml
  - /onlyoffice/initialize.sh
  - /onlyoffice/docker-compose.yml
2. Set your IP at /nginx-proxy-letsencrypt/docker-compose.yml
3. Set your hostname and E-Mail (VRTUAL_HOST, LETSENCRYPT_HOST, LETSENCRYPT_EMAIL) in:
  - /nextcloud/docker-compose
  - /onlyoffice/docker-compose.yml
4. Run following commands for initializing:
  - `cd nginx-proxy-letsencrypt`
  - `./initialize.sh`
  - `cd ../onlyoffice`
  - `./initialize.sh`
5. Run following commands for starting the servers:
  - `cd ../nginx-proxy-letsencrypt`
  - `docker-compose up -d`
  - `cd ../nextcloud`
  - `docker-compose up -d`
  - `cd ../onlyoffice`
  - `docker-compose up -d`
6. Enjoy
