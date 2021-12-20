FROM openjdk:8-jdk-alpine
COPY HoneygainBot.jar bot.jar
ENTRYPOINT ["sh", "-c", "java -jar /bot.jar ${0} ${@}"]