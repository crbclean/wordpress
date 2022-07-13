# Restore CRBCLEAN WORDPRESS SITE

0. make sure docker-compose images use versions of php and wordpress EQUAL OR HIGHER
   than the live system.

1. mariadb/mysql user/password needs to be the same as on production site
   docker-compose.yml is configured like this.

2. run updraft backup on live server

3. on new server create /home/florian/repo/crb/docker-data/
   sudo chmod a+rw /home/florian/repo/crb/docker-data/ -R
   /home/florian/repo/crb
   must have permission for user id 1001
   create wordpress and mariadb folder inside /home/florian/repo/crb
   change permission for this 2 folders
   This is needed so wordpress can upload content of plugins.
   also without this mariadb and wordpress cannot make any changes.

4. run this to make sure docker has iptables working
   sudo iptables -t filter -N DOCKER
   sudo systemctl restart docker
   alternatively: sudo herd restart dockerd 
   
5. sudo docker-compose up
   alternatively (daemon mode) sudo docker-compose up -d

6. http://localhost:8080/wp-admin
   login to admin panel user: user password: bitnami

7. install updraftplus plugin

8. Download 6 files from crb clean google drive + Upload this 6 files to the new wordpress.
   OR
   Connect google drive in updraft/settings and then click rescan remote.
   run restore

9. new login: user: admin	password: CRBhustler2022!

10. if on virtualhost Set port redirection 8080 -> 80 on virtual host 8443 -> 443

This is needed so wordpress can upload content of plugins.







