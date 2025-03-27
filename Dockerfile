FROM openjdk
WORKDIR /app
COPY . /app
RUN javac Add.java
CMD ["java","Add"]

FROM python
WORKDIR /app
COPY . /app
CMD ["python","Add.py"]

docker build -t img1 .
docker run img1
