ECHO OFF
docker image build -t prediction .
docker run -p 5001:5000 -d prediction
docker login
docker tag prediction:latest vernondsouza/prediction
docker push vernondsouza/prediction
ECHO Go to http://localhost:5001 in a browser to see the results
PAUSE