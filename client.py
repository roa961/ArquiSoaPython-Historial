import socket

# Define the server's address and port
server_address = ('localhost', 5000)

# Create a TCP socket
sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

try:
    # Connect to the server
    sock.connect(server_address)
    print('Conectado a {}:{}'.format(*server_address))

    while True:
        # Read message from keyboard input
        message = input("Enviar mensaje: ").split("\n")[0]

        #message = '00005getsv'
        # Send the message
        sock.sendall(message.encode())
        ##print('Sent: {}'.format(message))

        # Receive the server's response
        response = sock.recv(1024).decode()
        print('Respuesta: {}'.format(response[13:]))


finally:
    # Close the socket
    sock.close()
