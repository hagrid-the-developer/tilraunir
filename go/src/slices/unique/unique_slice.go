package main

import (
	"fmt"
	"os"
)

func unique_inplace(a *[]string) {
	m := make(map[string]int)
	i := 0
	for _, v := range *a {
		if m[v] == 0 {
			(*a)[i] = v
			i++
		}
		m[v]++
	}
	*a = (*a)[:i]
}

func unique_xyz(a []string) []string {
	var r []string
	m := make(map[string]int)
	for _, v := range a {
		if m[v] == 0 {
			r = append(r, v)
		}
		m[v]++
	}
	return r
}

func unique(a []string) []string {
	var r []string
	m := make(map[string]bool)
	for _, v := range a {
		if !m[v] {
			r = append(r, v)
			m[v] = true
		}
	}
	return r
}

func main() {
	s := os.Args[1:]
	s = unique(s)
	fmt.Println(s)
}
