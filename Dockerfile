FROM python:3.10

# Set the working directory
WORKDIR /app

# Copy requirements.txt first to take advantage of Docker caching
COPY requirements.txt .

# Install dependencies from requirements.txt
RUN pip install -r requirements.txt

# Copy the current directory contents into the container at /app
COPY . .

# Expose port 5000
EXPOSE 5000

# Command to run the application
CMD ["flask", "run", "--host", "0.0.0.0"]
