#Stop current instance
docker-compose down
#start new instance
docker-compose up -d --build
#Run commands
# Populate MySQL
docker exec -i  django-backend_db_1 sh -c 'exec mysql -u"$MYSQL_USER" -p"$MYSQL_PASSWORD"' < init.sql
