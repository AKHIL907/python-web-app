             
#This line specifies the base image for the Docker container
FROM python:3.8

#Set the working directory in the container
WORKDIR /App

#Copy the current directory contents into container
COPY . .

#Install the dependences from requirements.txt file
RUN pip install -r requirements.txt
#Make the port available from outside the container
EXPOSE 5000

# Run the app.py when the container up
CMD ["python", "app.py"]

