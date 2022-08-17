package main

import (
	"fmt"
	gosql "gosql/src"
)

func main() {
	fmt.Println("debug 2")

	mb := gosql.NewMemoryBackend()

	gosql.RunRepl(mb)
}
