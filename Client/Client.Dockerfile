# Use an official Python runtime as a parent image 

FROM python:3-stretch 



# Set the working directory to /app 

WORKDIR /app 



# Copy the client code into the container at /app 

COPY . /app 



# Install any needed packages specified in requirements.txt 

RUN pip install --trusted-host pypi.python.org -r Client/requirements.txt 



# Run greeter_client.py when the container launches 

CMD ["python", "Client/greeter_client.py"] 