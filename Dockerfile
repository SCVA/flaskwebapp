# Instalar python para flask
FROM python:3.13.9-alpine3.22

# Directorio de trabajo
WORKDIR /app

# Traer requerimientos
COPY requirements.txt requirements.txt

# Instalar requerimientos
RUN pip install -r requirements.txt

# Traer la aplicacion
COPY . .

# Configurar falsk para producción
ENV FLASK_ENV=production

# Exponer el puerto
EXPOSE 80

# Ejecutar la aplicación
CMD ["python", "app.py"]
