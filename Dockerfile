FROM adoptopenjdk/openjdk11:ubi
ARG JAR_FILE=target/*.jar
ENV BOT_NAME=test.dou_community_bot
ENV BOT_TOKEN=2037536889:AAGpEQb6x9kR417tAPniZitpQ05Bqcnicww
ENV BOT_DB_USERNAME=dtb_db_user
ENV BOT_DB_PASSWORD=dtb_db_password
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java", "-Dspring.datasource.password=${BOT_DB_PASSWORD}", "-Dbot.username=${BOT_NAME}", "-Dbot.token=${BOT_TOKEN}", "-Dspring.datasource.username=${BOT_DB_USERNAME}", "-jar", "app.jar"]