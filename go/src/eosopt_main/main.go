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

		fmt.Printf("%d --> %v; %d --> %v\n", c.SrcAccountsNum(), c.SrcAccounts, c.DstAccountsNum(), c.DstAccounts)

		var solution eosopt.Solution
		if solution, err = c.FindSolution(); err != nil {
			return
		}

		acWA := "AC"
		if !solution.SolutionExists {
			acWA = "WA"
		}
		fmt.Printf("Case #%d: %s\n", i, acWA)

		for _, dstArr := range solution.Votes {
			for i, dstIdx := range dstArr {
				if i > 0 {
					fmt.Printf(", ")
				}
				fmt.Printf("%d", dstIdx)
			}
			fmt.Printf("\n")
		}
	}
	return
}

func main() {
	if err := run(); err != nil {
		fmt.Fprintf(os.Stderr, "Error: %s", err)
		os.Exit(1)
	}
}
