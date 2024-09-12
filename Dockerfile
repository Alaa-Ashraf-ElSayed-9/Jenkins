# Base image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy requirements and app files to the container
COPY . /app

# Install dependencies
RUN pip install flask

# Expose the port Flask will run on
EXPOSE 5000

# Command to run the app
CMD ["python", "app.py"]
