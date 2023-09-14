// SimpleHttpServer.h : Include file for standard system include files,
// or project specific include files.

#pragma once

#include <iostream>
#include <string>
#include <winsock2.h>

void handle_client(SOCKET client_socket);