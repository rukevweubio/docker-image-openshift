# Use an official lightweight Python image
FROM python:3.8-slim

# Set working directory in the container
WORKDIR /app

# Copy the requirements file first to leverage Docker layer caching
COPY requirements.txt .

# Install required packages
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Expose port 5000 to allow external access
EXPOSE 5000

# Command to run the app
CMD ["python", "app.py"]