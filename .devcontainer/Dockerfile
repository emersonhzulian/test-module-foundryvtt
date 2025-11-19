FROM mcr.microsoft.com/devcontainers/javascript-node:1-22-bookworm

# Install unzip utility
RUN apt-get update && apt-get install -y unzip && rm -rf /var/lib/apt/lists/*

# Copy Foundry VTT zip file if it exists and extract
RUN if [ -f /workspace/.devcontainer/FoundryVTT-Linux-*.zip ]; then \
        cp /workspace/.devcontainer/FoundryVTT-Linux-*.zip /tmp/ && \
        mkdir -p /opt/foundryvtt && \
        unzip /tmp/FoundryVTT-Linux-*.zip -d /opt/foundryvtt && \
        chmod +x /opt/foundryvtt/foundryvtt && \
        rm /tmp/FoundryVTT-Linux-*.zip && \
        echo "✓ Foundry VTT installed successfully"; \
    else \
        echo "⚠ FoundryVTT-Linux-*.zip not found in .devcontainer directory - Foundry VTT not installed"; \
    fi

# Install Foundry VTT CLI globally
RUN npm install -g @foundryvtt/foundryvtt-cli
