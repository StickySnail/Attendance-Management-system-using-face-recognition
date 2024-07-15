# Use an official Python runtime as a parent image
FROM python:3.6

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt ./

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of your application code into the container
COPY . .

ENV PORT=8080

EXPOSE 8080

# Command to run your application
CMD ["python", "./attendance.py"]