FROM ubuntu
RUN apt-get update
RUN apt-get install -y python
RUN apt-get install -y python-pip
RUN pip install flask
RUN apt-get install -y git
WORKDIR opt
RUN git clone https://github.com/santoshjoseph99/simple-webapp-flask.git
ENTRYPOINT cd simple-webapp-flask && FLASK_APP=app.py flask run --host=0.0.0.0