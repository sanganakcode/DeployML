# Use an official Python runtime as a parent image
FROM python:3.9-slim-buster

# Set the working directory in the docker image
WORKDIR /usr/src/app

# Copy the content of the local src directory to the working directory
COPY . .

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org flask tensorflow pandas scikit-learn joblib

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Run app.py when the container launches
CMD ["python", "./app.py"]