![](NUS-Fintech-lab-web.jpg)

# Covid-update API using Docker containers

### Starting requirements
* Docker and Docker Compose need to be installed:
  * macOS: [Install for Mac](https://hub.docker.com/editions/community/docker-ce-desktop-mac/)
  * Windows: [Install for Windows](https://hub.docker.com/editions/community/docker-ce-desktop-windows/)
  * Linux: [Install Docker for Linux](https://docs.docker.com/engine/install/ubuntu/) & [Install Docker Compose](https://docs.docker.com/compose/install/)

## 1: Get Source

`git clone https://github.com/sincereleeshaun/covid-update`

## 2: Change Country of interest

modify source url with desired country_name in get_update.js file

`https://api.covid19api.com/total/country/country_name/status/confirmed`

## 3: Build Container



## 3: Build Container

`docker build -t <IMAGE_ID>:<VERSION_NUMBER> .`  (replace IMAGE_ID and VERSION_NUMBER)

## 4: Push to Dockerhub

`docker login`

`docker push <YOUR_USERNAME>/singapore_status_update:<VERSION_NUMBER>`

## 5: Run Container

`docker run -d -p 8080:8080 <YOUR_USERNAME>/singapore_status_update`
