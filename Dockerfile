FROM sonarsource/sonar-scanner-cli:latest

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

COPY cleanup.sh /cleanup.sh
RUN chmod +x /cleanup.sh

EXPOSE 8080:8080
EXPOSE 80:80
EXPOSE 3000:3000

ENTRYPOINT [ "/entrypoint.sh" ]