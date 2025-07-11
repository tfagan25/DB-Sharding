package main

import (
	"fmt"
	"net/http"
)

func main() {
	// Serve static files from the ./static directory
	fs := http.FileServer(http.Dir("static"))
	http.Handle("/static/", http.StripPrefix("/static/", fs))

	// Serve index.html on root
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		http.ServeFile(w, r, "static/index.html")
	})

	fmt.Println("Server running at http://localhost:80/")
	err := http.ListenAndServe(":80", nil)
	if err != nil {
		fmt.Println("Server failed:", err)
	}
}
