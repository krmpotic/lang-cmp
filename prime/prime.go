package main

import (
	"fmt"
	"math"
)

const N = 100

func isPrime(n int) bool {
	r := math.Sqrt(float64(n))
	for i := 2; i <= int(r); i++ {
		if n%i == 0 {
			return false
		}
	}
	return true

}

func main() {
	for i := 2; i < N; i++ {
		if isPrime(i) {
			fmt.Printf("%d ", i)
		}
	}
	fmt.Println()
}
