FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install -y python3-venv zip && \
    apt-get clean && \
    mkdir -p /mnt/c/Users/mhent/Courses/django-rest-api && \
    touch ~/.bash_aliases && \
    if ! grep -q PYTHON_ALIAS_ADDED ~/.bash_aliases; then echo "# PYTHON_ALIAS_ADDED" >> ~/.bash_aliases && echo "alias python='python3'" >> ~/.bash_aliases; fi

EXPOSE 6379

#CMD ["redis-server", "--protected-mode no"]
