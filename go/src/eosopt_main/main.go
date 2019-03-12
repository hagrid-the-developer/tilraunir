package main

import (
	"bufio"
	"eosopt"
	"fmt"
	"os"
)

func run() (err error) {
	r := bufio.NewReader(os.Stdin)

	testCasesNum, err := eosopt.ReadNumOfTestCases(r)
	if err != nil {
		return
	}

	for i := 0; i < int(testCasesNum); i++ {
		var c eosopt.Case
		if c, err = eosopt.ReadOneCase(r); err != nil {
			return
		}

		fmt.Printf("%d %d\n", c.SrcAccountsNum(), c.DstAccountsNum())
	}
	return
}

func main() {
	if err := run(); err != nil {
		fmt.Fprintf(os.Stderr, "Error: %s", err)
		os.Exit(1)
	}
}
