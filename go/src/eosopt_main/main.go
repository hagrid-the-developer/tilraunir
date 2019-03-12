package main

import (
	"eosopt"
	"fmt"
	"os"
)

func run() (err error) {
	testCasesNum, err := eosopt.ReadNumOfTestCases(os.Stdin)
	if err != nil {
		return
	}

	for i := 0; i < int(testCasesNum); i++ {
		var c eosopt.Case
		if c, err = eosopt.ReadOneCase(os.Stdin); err != nil {
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
