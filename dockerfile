# Use an official Python runtime as a base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the container
COPY . /app

# Install any dependencies if a requirements.txt file is present
RUN pip install --no-cache-dir -r requirements.txt

# Define the environment variable
ENV APP_ENV=production

# Make port 80 available to the world outside the container
EXPOSE 80

# Run the application when the container starts
CMD ["python", "app.py"]

