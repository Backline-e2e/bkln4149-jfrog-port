# E2E fixture: the base image lives in a self-hosted JFrog Artifactory that serves Docker through the
# port method (this port maps to the bkln4149-docker-local repository).
FROM 192.168.65.254:5081/apps/debian:12.5-slim

LABEL org.opencontainers.image.source="https://github.com/Backline-playground/bkln4149-jfrog-port"

COPY app.sh /app.sh
RUN chmod +x /app.sh

CMD ["/app.sh"]
