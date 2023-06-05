#docker run -d -v app:/renter_supplier --name boot bootstrap
docker run -d --mount type=bind,src=/e/repos/renter_supplier,target=/app --name boot bootstrap
winpty docker exec boot bash -c "cd app && pip install -r requirements.txt"
winpty docker exec boot bash -c "cd app && django-admin startproject realestate"
winpty docker exec boot bash -c "cd app/realestate && django-admin startapp renter_supplier"
winpty docker exec -it boot bash
