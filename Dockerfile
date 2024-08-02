# Use a lightweight base image with Python installed
FROM python:3.9-slim

# Set environment variables
ENV PRE_COMMIT_HOME=/pre-commit

# Install pre-commit
RUN pip install pre-commit

# Define the working directory
WORKDIR /repo

# Entry point for running pre-commit
ENTRYPOINT ["pre-commit"]
