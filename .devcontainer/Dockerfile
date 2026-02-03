# Start from the official Julia VS Code devcontainer
FROM ghcr.io/julia-vscode/julia-devcontainer:latest


# Remove Julia pré-instalada e instalar a 1.6.4 como padrão
RUN apt-get update && \
    apt-get install -y wget && \
    rm -rf /opt/julia* /usr/local/julia* /usr/local/bin/julia* && \
    wget -q https://julialang-s3.julialang.org/bin/linux/x64/1.6/julia-1.6.4-linux-x86_64.tar.gz && \
    tar -xzf julia-1.6.4-linux-x86_64.tar.gz -C /opt/ && \
    ln -sf /opt/julia-1.6.4/bin/julia /usr/local/bin/julia && \
    rm -rf julia-1.6.4-linux-x86_64.tar.gz && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Verify Julia version (optional)
RUN julia --version
