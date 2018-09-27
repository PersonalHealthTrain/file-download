FROM lukaszimmermann/file-download-service:0.0.1
ARG IRIS_FILE
RUN rm -rf /opt/files && mkdir -p /opt/files
COPY $IRIS_FILE /opt/files

