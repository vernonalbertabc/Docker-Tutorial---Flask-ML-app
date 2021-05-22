FROM continuumio/anaconda3:4.4.0
WORKDIR /project
ADD . /project
RUN pip install -r requirements.txt
CMD ["python","app.py"]
