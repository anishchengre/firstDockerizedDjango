# Use an official Python runtime as a parent image
FROM python:3.12-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set the working directory in the container
WORKDIR /user

# Copy the requirements.txt file into the working directory
COPY requirements.txt /user/

# Install dependencies
RUN pip install --upgrade pip \
    && pip install -r requirements.txt

# Copy the current directory contents into the container
COPY . /user/

# Expose the port Django runs on
EXPOSE 8000

# Run the Django development server (or you can run from docker-compose)
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
