# Use uma imagem base do Python
FROM python:3.12.5

# Defina o diretório de trabalho
WORKDIR /app

# Copie os arquivos do projeto para o diretório de trabalho
COPY . /app

# Instale as dependências do projeto
RUN pip install --no-cache-dir -r requirements.txt

# Exponha a porta 3000
EXPOSE 3000

# Comando para executar o aplicativo
CMD ["python", "appsite.py"]
