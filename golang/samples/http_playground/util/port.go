package go_utils

import (
	"fmt"
)

var PORT = 8080

func port() {
	fmt.Printf("Starting server at port %v!", PORT)
}
