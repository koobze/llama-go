# Use the existing image as a base
FROM llama-go-build:latest

# Install your project's specific dependencies
RUN apt-get update && apt-get install -y \
    libayatana-appindicator3-dev \
    libayatana-ido3-dev \
    libdbusmenu-glib-dev \
    libgtk-3-dev \
    && rm -rf /var/lib/apt/lists/*

# (Optional) Set your working directory
WORKDIR /workspace
