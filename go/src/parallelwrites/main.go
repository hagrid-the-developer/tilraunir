package main

import (
	"fmt"
	"math/rand"
	"sync"
	"time"
)

func main() {
	r := rand.New(rand.NewSource(99))

	var wg sync.WaitGroup

	for i := 0; i < 256; i++ {
		wg.Add(1)
		go func() {
			defer wg.Done()
			for j := 0; j < 256; j++ {
				time.Sleep(time.Duration(r.Int63n(100)) * time.Nanosecond)
				// Output is not mixed !!!
				fmt.Println("Hello World")
			}
		}()
	}

	wg.Wait()
}
