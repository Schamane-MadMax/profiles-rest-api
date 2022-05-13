FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install -y python3-venv zip && \
    apt install -y python3-pip virtualenv && \
    apt-get clean && \
    touch ~/.bash_aliases && \
    if ! grep -q PYTHON_ALIAS_ADDED ~/.bash_aliases; then echo "# PYTHON_ALIAS_ADDED" >> ~/.bash_aliases && echo "alias python='python3'" >> ~/.bash_aliases; fi &&\
    if [[ ! -d "/opt/courses/django-rest-api" ]] ;then mkdir -p /opt/courses/django-rest-api;fi

RUN python3 -m venv /root/env
ENV VIRTUAL_ENV=/root/env
ENV PATH="/bin:/home/markus/.asdf/shims:/home/markus/.asdf/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/usr/lib/wsl/lib:/mnt/c/Windows/system32:/mnt/c/Windows:/mnt/c/Windows/System32/Wbem:/mnt/c/Windows/System32/WindowsPowerShell/v1.0/:/mnt/c/Windows/System32/OpenSSH/:/mnt/c/Program Files/Intel/WiFi/bin/:/mnt/c/Program Files/Common Files/Intel/WirelessCommon/:/mnt/c/Program Files/Git/cmd:/mnt/c/Program Files/Docker/Docker/resources/bin:/mnt/c/ProgramData/DockerDesktop/version-bin:/mnt/c/Users/mhent/AppData/Local/Programs/Python/Python310/Scripts/:/mnt/c/Users/mhent/AppData/Local/Programs/Python/Python310/:/mnt/c/Users/mhent/AppData/Local/Microsoft/WindowsApps:/mnt/c/Users/mhent/AppData/Local/Programs/Microsoft VS Code/bin:/mnt/c/Users/mhent/AppData/Local/atom/bin:/snap/bin"
RUN echo "source /root/env/bin/activate" >> ~/.bashrc
# RUN pip install -r requirements.txt

## Install dependencies:
#COPY requirements.txt .
#RUN pip install -r requirements.txt

EXPOSE 6379
#CMD ["python","-m","venv","/root/env"]
#CMD ["source","/root/env/bin/activate"]
#CMD ["redis-server", "--protected-mode no"]
