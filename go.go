package main

import (
	"fmt"
	"path/filepath"
)

func main() {
	var file string
	fmt.Println(" -- File Finder -- ")
	fmt.Print("File: ")
	fmt.Scan(&file)

	search(file)
}

func search(file string) {
	ruta, error := filepath.Abs(file)
	if error != nil {
		fmt.Println("Error al Encontrar el archibo", error)
	}
	fmt.Println("Path:", ruta)
}
