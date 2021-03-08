FROM openjdk
COPY src dockerpipeline
WORKDIR dockerpipeline
RUN mkdir -p bin
RUN "javac -d bin ./com/myapp/dockerpipeline.java"
WORKDIR bin
CMD ["java","com/myapp/dockerpipeline"]
