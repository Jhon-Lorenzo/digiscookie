import os
import socket

# Configuración del socket
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
host = '0.0.0.0'
port = 8154

# Asocia el socket a la dirección del host y al puerto especificado mediante la función "bind()"
s.bind((host, port))

# Espera una sola conexión entrante
s.listen(1)

print('Servidor escuchando...')

while True:
    conn, addr = s.accept()     # Establece la conexión con el cliente
    print('Conexión establecida desde', addr)

    while True:
        # Recibe el nombre del archivo
        filename = conn.recv(1024).decode('utf-8')

        if not filename:
            break

        # Crea el archivo con el nombre recibido
        filepath = os.path.join(os.getcwd(), filename)
        with open(filepath, 'wb') as f:
            print('Archivo abierto:', filepath)
            while True:
                print('Recibiendo datos...')
                data = conn.recv(1024)
                if not data:
                    break
                # Escribe los datos recibidos en el archivo
                f.write(data)

        print('Archivo recibido satisfactoriamente:', filepath)
        f.close()

    conn.close()                # Cierra la conexión con el cliente
    print('Conexión cerrada')
