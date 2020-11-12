![](NUS-Fintech-lab-web.jpg)

# Covid-update API using Docker containers

### Starting requirements
* Docker and Docker Compose need to be installed:
  * macOS: [Install for Mac](https://hub.docker.com/editions/community/docker-ce-desktop-mac/)
  * Windows: [Install for Windows](https://hub.docker.com/editions/community/docker-ce-desktop-windows/)
  * Linux: [Install Docker for Linux](https://docs.docker.com/engine/install/ubuntu/) & [Install Docker Compose](https://docs.docker.com/compose/install/)

### Automated

## 1: Get Source

`git clone https://github.com/sincereleeshaun/covid-update`

## 2: Make changes to API

Alter or add changes to your API for additional functions

## 3: Push Code to GitHUB

In your local repository, push code:

`git add .`
`git commit -m "<change description>"`
`git push`

## 4: GitHub Actions will Build & Run the Docker Container

Sit back and relax! Let GitHub do the work!

## 5: Output is pushed to Dockerhub (WIP)

expected output should look something like this if the country chosen is "Singapore" and date is "2020-11-11"

`"Total Cases as of 2020-11-11: 58091"`
