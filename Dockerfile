ARG IMAGE_JAVA_VERSION
FROM openjdk:${IMAGE_JAVA_VERSION}

ARG HTTP_PROXY
ARG HTTP_PROXY_USER
ARG HTTP_PROXY_PASSWORD

COPY ./entrypoint-ci /entrypoint-ci

RUN chmod +x /entrypoint-ci/wait-for-it.sh

ENV COVERAGE_PATH="/TestResults/codecoverage"
ENV RESULT_PATH="/TestResults/result"