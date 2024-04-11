// Priklad z jazyka Go
// go run go_example.go 

package main 
import "fmt" 

func fce(a int) (int) {
    c := a * a
    return c
}

func main() {
    fmt.Println(fce(84))
}
