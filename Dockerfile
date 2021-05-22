FROM continuumio/anaconda3:4.4.5
WORKDIR /project
ADD . /project
RUN pip install -r requirements.txt
CMD ["python","app.py"]
