FROM busybox:latest

# Update and install necessary tools
RUN mkdir -p /usr/local/bin && \
    ln -s /bin/busybox /usr/local/bin/bash && \
    ln -s /bin/busybox /usr/local/bin/curl

# Set working directory
WORKDIR /app

# Copy any necessary files to the container (if required)
# COPY my-app-files /app

# Set the entrypoint or command to run
CMD ["/usr/local/bin/bash"]
