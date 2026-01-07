#!/bin/bash

echo "🚀 Configurando ambiente de desenvolvimento..."

# Inicializar módulo Go se não existir
if [ ! -f "go.mod" ]; then
    echo "📦 Inicializando módulo Go..."
    go mod init fin-go-api
fi

# Baixar dependências
echo "📥 Baixando dependências..."
go mod tidy

# Criar estrutura de pastas
echo "📁 Criando estrutura de pastas..."
mkdir -p internal/{config,database,handlers,middleware,models,repository,services,utils}
mkdir -p pkg/{auth,validators}
mkdir -p migrations queries docs
mkdir -p cmd/api

echo "✅ Ambiente configurado com sucesso!"
echo ""
echo "Comandos disponíveis:"
echo "  make dev    - Iniciar desenvolvimento com hot reload"
echo "  make sqlc   - Gerar código SQLC"
echo "  make swag   - Gerar documentação Swagger"