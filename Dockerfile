# dockerfile will create an image
 FROM python:3.7
 ENV PYTHONUNBUFFERED=1
# auto mkdir /code, and all . represent /code
 WORKDIR /code
 ADD . .
 RUN pip3 install -r requirements.txt > /dev/null
 # CMD : The default command as the docker start
#       if the user use  ```docker run <command> ``` to start a container, CMD will be override
#       Note that, there can be only one CMD in dockerfile
 CMD [ "uwsgi", "--ini", "uwsgi.ini" ]

# ENTRYPOINT: The command takes the CMD after as parameter,
#             and will be execuated after container start
