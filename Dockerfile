# Usa un'immagine base di Python leggera
FROM python:3.11-slim

# Imposta la directory di lavoro nel container
WORKDIR /app

# Copia solo requirements.txt per sfruttare la cache Docker
COPY requirements.txt .

# Installa le dipendenze
RUN pip install --no-cache-dir -r requirements.txt

# Copia il resto dei file dell'app nel container
COPY . .

# Esplicita il comando di avvio del bot
CMD ["python", "bot.py"]
