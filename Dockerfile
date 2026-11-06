#use a slim image of python
FROM python:3.10-slim


# set the working directory inside the container
WORKDIR /app


#copy the project files in to the container

copy . .


#install dependancies
RUN pip install --no-cache-dir -r requirements.txt


#expose port 8000 to make the application accesible
EXPOSE 8000

#Define the command to run the app
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]

