ECHO OFF
docker image build -t prediction .
docker run -p 5001:5000 -d prediction
ECHO Go to http://localhost:5001 in a browser to see the results
PAUSE