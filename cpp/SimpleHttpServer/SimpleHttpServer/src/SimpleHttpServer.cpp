// SimpleHttpServer.cpp : Defines the entry point for the application.
//

#include "SimpleHttpServer.h"

using namespace std;

#pragma comment(lib, "ws2_32.lib")

const int PORT = 8080;

void handle_client(SOCKET client_socket) {
    char buffer[1024] = { 0 };

    cout << "Client connected" << endl;

    std::string response = "HTTP/1.1 200 OK\r\nContent-Type: text/html\r\n\r\nHello, World!\r\n";

    // Send the response to the client
    send(client_socket, response.c_str(), response.size(), 0);

    cout << "Response sent" << endl;

    // Close the client socket

    cout << "Client disconnected" << endl;

    closesocket(client_socket);
}

int main()
{

    WSADATA wsaData;
    if (WSAStartup(MAKEWORD(2, 2), &wsaData) != 0) {
        std::cerr << "Error initializing Winsock" << std::endl;
        return -1;
    }

    SOCKET server_socket, client_socket;
    struct sockaddr_in server_addr, client_addr;
    int client_addr_len = sizeof(client_addr);

    // Create socket
    server_socket = socket(AF_INET, SOCK_STREAM, 0);
    if (server_socket == INVALID_SOCKET) {
        std::cerr << "Error creating socket" << std::endl;
        return -1;
    }

    // Bind socket to port
    server_addr.sin_family = AF_INET;
    server_addr.sin_addr.s_addr = INADDR_ANY;
    server_addr.sin_port = htons(PORT);

    if (bind(server_socket, (struct sockaddr*)&server_addr, sizeof(server_addr)) == SOCKET_ERROR) {
        std::cerr << "Error binding socket" << std::endl;
        return -1;
    }

    // Listen for incoming connections
    if (listen(server_socket, 5) == SOCKET_ERROR) {
        std::cerr << "Error listening for connections" << std::endl;
        return -1;
    }

    std::cout << "Server listening on port " << PORT << "..." << std::endl;

    while (true) {
        // Accept a client connection
        client_socket = accept(server_socket, (struct sockaddr*)&client_addr, &client_addr_len);
        if (client_socket == INVALID_SOCKET) {
            std::cerr << "Error accepting client connection" << std::endl;
            continue;
        }

        // Handle the client request in a separate thread or process
        handle_client(client_socket);
    }

    // Cleanup and close sockets (never reached in this example)
    closesocket(server_socket);
    WSACleanup();


	return 0;
}
