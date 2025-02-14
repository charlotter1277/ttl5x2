# Use Rocker RStudio image version 4.2.2
FROM rocker/rstudio:4.2.2

# Set working directory inside the container
WORKDIR /app

# Copy list.sh into the container
COPY list.sh /app/list.sh

# Give execution permission to list.sh
RUN chmod +x /app/list.sh

# Run the script when the container starts
CMD ["/bin/bash", "/app/list.sh"]
