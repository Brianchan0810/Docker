From python:3.10
COPY requirements.txt requirement.txt
RUN pip install -r requirements.txt
COPY app.py app.py
ENV Flask_APP app
EXPOSE 5000
CMD ["flask","run","--host=0.0.0.0"]