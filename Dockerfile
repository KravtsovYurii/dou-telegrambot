FROM adoptopenjdk/openjdk11:ubi
ARG JAR_FILE=target/*.jar
ENV BOT_NAME=test.dou_community_bot
ENV BOT_TOKEN=2037536889:AAGpEQb6x9kR417tAPniZitpQ05Bqcnicww
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-Dbot.username=${BOT_NAME}","-Dbot.token=${BOT_TOKEN}","-jar","/app.jar"]