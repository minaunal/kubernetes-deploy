# Use the official Python image from the Docker Hub
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install any dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the current directory contents into the container
COPY . .

# Define environment variable
ENV FLASK_APP=app.py

# Expose port 8080
EXPOSE 8080

# Run the application
CMD ["flask", "run", "--host=0.0.0.0"]

