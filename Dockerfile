# Usar uma imagem base do Node.js
FROM node:18

# Definir o diretório de trabalho no contêiner
WORKDIR /app

# Copiar o package.json e package-lock.json para o contêiner
COPY package*.json ./

# Instalar dependências
RUN npm install

# Copiar o restante dos arquivos do projeto para o contêiner
COPY . .

# Compilar o projeto (criar a versão de produção)
RUN npm run build

# Expôr a porta que o React vai rodar (padrão 3000)
EXPOSE 3000

# Iniciar o servidor
CMD ["npm", "start"]
