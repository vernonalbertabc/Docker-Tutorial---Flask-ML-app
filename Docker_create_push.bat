ECHO OFF
docker compose-up
docker login
docker images
docker tag othersoftwarefiles_prediction:latest vernondsouza/prediction
docker push vernondsouza/prediction
PAUSE