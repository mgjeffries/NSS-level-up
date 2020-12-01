
#!/bin/bash

rm -rf levelupapi/migrations
rm db.sqlite3
python manage.py migrate
python manage.py makemigrations levelupapi
python manage.py migrate levelupapi
python manage.py loaddata levelupapi/fixtures/*.json