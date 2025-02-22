# Use an official lightweight Python image.
FROM python:3.9-slim

# Set the working directory in the container.
WORKDIR /app

# Copy the current directory contents into the container at /app.
COPY . /app

# Upgrade pip and install required packages.
RUN pip install --upgrade pip
# If you have a requirements.txt file, use:
# RUN pip install -r requirements.txt
RUN pip install flask

# Make port 5000 available to the world outside this container.
EXPOSE 5000

# Define environment variable for Flask (optional).
ENV FLASK_APP=pythonfile

# Run the command to start your app.
CMD ["python", "pythonfile"]
