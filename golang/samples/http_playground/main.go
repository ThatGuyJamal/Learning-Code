package main

import (
	"log"
	"net/http"
)

func main() {

	// The first line of code creates the file server object using the FileServer function.
	// This function accepts a path in the http.Dir type.
	// Therefore, we have to convert the string path “./static” to an http.Dir path type.
	fileServer := http.FileServer(http.Dir("./static"))
	// This function acts in the same way as the HandleFunc function, with some small differences.
	http.Handle("/", fileServer)
	// handles the form data and functions

	go_utils.port()

	// The ListenAndServe method is exported by the http packet we imported during step one.
	// This method allows us to startw the web server and specify the port to listen for incoming requests.
	if server := http.ListenAndServe(":8080", nil); server != nil {
		// if an error on server start, return in.
		log.Fatal(server)
	}

}

// go run main.go
// http://localhost:8080/
