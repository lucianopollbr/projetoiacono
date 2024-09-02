# Use uma imagem base oficial do Python
FROM python:3.12.5-slim

# Defina o diretório de trabalho dentro do container
WORKDIR /projetoiacono

# Copie o arquivo de requisitos e instale as dependências
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copie o código da aplicação para o diretório de trabalho
COPY . .

# Exponha a porta que a aplicação irá usar
EXPOSE 3000

# Comando para rodar a aplicação
CMD ["python", "appsite.py"]
