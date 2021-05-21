ECHO OFF
docker images
docker rmi vernondsouza/prediction
docker images
docker run -p 5000:5000 vernondsouza/prediction
PAUSE