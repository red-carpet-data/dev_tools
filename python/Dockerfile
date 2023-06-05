# base image  
FROM python:3.8   
# setup environment variable  

# set work directory  
RUN mkdir /app

# set environment variables  
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1  

# install dependencies  
RUN pip install --upgrade pip  
# we are not running pip because we are want to use the host requirements file
# note we have to mount the bind container when running not building
# like: docker run -d --mount type=bind,src=/e/repos/renter_supplier,target=/app --name boot bootstrap

# port where the Django app runs  
EXPOSE 8000  
# start server will be done via shell script as a) we dont want to auto run the server, we want to bind mount the volume with our code 
#CMD python manage.py runserver
CMD tail -f /dev/null