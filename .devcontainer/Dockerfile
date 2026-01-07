FROM docker.io/library/golang:1.24

# Instalar ferramentas básicas
RUN apt-get update && apt-get install -y \
    git \
    curl \
    make \
    gcc \
    postgresql-client \
    && rm -rf /var/lib/apt/lists/*

# Criar diretório de trabalho
WORKDIR /workspaces/fin-go-api

# Copiar arquivos de configuração
COPY . .

# Instalar ferramentas Go
RUN go install github.com/air-verse/air@v1.61.3 && \
    go install github.com/sqlc-dev/sqlc/cmd/sqlc@latest && \
    go install github.com/swaggo/swag/cmd/swag@latest

# Expor porta da aplicação
EXPOSE 8080

# Comando padrão
CMD ["sleep", "infinity"]