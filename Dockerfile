# Use an official Python base image
FROM python:3.10-slim

# Set environment variables to avoid buffering issues
ENV PYTHONUNBUFFERED=1

# Set working directory inside the container
WORKDIR /app

# Copy requirements file first (to leverage Docker caching)
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application files
COPY . .

# Expose the necessary port (change if your app runs on a different port)
EXPOSE 8080

# Define the default command
CMD ["python", "main.py"]
