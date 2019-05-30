package main

import (
	"log"
	"net/http"
	"strconv"
)

const PORT = 3214

func main() {
	fs := http.FileServer(http.Dir("static"))
	http.Handle("/", fs)
	log.Printf("Listening on http://localhost:%d \n", PORT)
	http.ListenAndServe(":"+strconv.Itoa(PORT), nil)
}
