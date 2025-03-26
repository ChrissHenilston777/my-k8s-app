# Use Python 3.11 as the base image
FROM python:3.11  

# Set the working directory in the container
WORKDIR /app  

# Copy the requirements file to the container
COPY requirements.txt .  

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt  

# Copy the application files to the container
COPY . .  

# Expose the port (if your app runs on a specific port, change it accordingly)
EXPOSE 5000  

# Define the command to run the application
CMD ["python", "app.py"]
