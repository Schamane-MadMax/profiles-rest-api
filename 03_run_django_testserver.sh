#/bin/bash
PORT="8000"
echo "look in a browser at: localhost:8000 or 172.0.0.1:8000"
python manage.py runserver 0.0.0.0:$PORT


