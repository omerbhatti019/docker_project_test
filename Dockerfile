FROM python:3.9-slim

#set directory
WORKDIR /app

#copy the app to container
COPY ./app /app

#Install Dependencies 
RUN pip install --no-cache-dir -r requirements.txt

#expose the port 5000
EXPOSE 5000
#run the app
CMD ["python", "app.py"]
