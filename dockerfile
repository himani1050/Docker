# use an official python runtime as a parent image
FROM python: 3.12-slim

# set the working in the container
WORKDIR /app

# copy the current directory contents into the container at /app
COPY . /app

#install needed packages specified in req.txt
RUN pip install --no-cache-dir -r requirements.txt

#make port 5000 available to the world outside this container
EXPOSE 5000

#define env variable
ENV FLASK_APP=app.py

# run the flask app
CMD ["flask", "run", "--host=0.0.0.0"]
