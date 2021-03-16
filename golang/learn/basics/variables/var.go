package main

// importing the fmt package for logging to the console
import (
	"fmt"
)

func main() {

	// an int value
	var number uint16 = 260

	number = number + 5
	//basic string with type dec
	var text string = "The number is"

	fmt.Println(text, number)
}

