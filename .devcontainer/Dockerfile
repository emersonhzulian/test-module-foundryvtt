FROM mcr.microsoft.com/devcontainers/javascript-node:1-22-bookworm

# Install unzip utility
RUN apt-get update && apt-get install -y unzip && rm -rf /var/lib/apt/lists/*

# Install Foundry VTT CLI globally
RUN npm install -g @foundryvtt/foundryvtt-cli

# Copy Foundry VTT zip file from build context
COPY FoundryVTT-Linux-*.zip /tmp/

# Extract Foundry VTT if zip exists
RUN if ls /tmp/FoundryVTT-Linux-*.zip 1> /dev/null 2>&1; then \
        mkdir -p /opt/foundryvtt && \
        unzip /tmp/FoundryVTT-Linux-*.zip -d /opt/foundryvtt && \
        chmod +x /opt/foundryvtt/foundryvtt && \
        rm /tmp/FoundryVTT-Linux-*.zip && \
        echo "✓ Foundry VTT installed successfully"; \
    else \
        echo "⚠ FoundryVTT-Linux-*.zip not found - Foundry VTT not installed"; \
    fi
