FROM openjdk:8
ADD target/Blog.jar  Blog.jar
EXPOSE 9090
ENTRYPOINT ["java", "-jar", "Blog.jar"]

