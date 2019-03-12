package eosopt

import (
	"bufio"
	"errors"
	"fmt"
	"io"
	"strconv"
	"strings"
)

func ReadNumOfTestCases(r io.Reader) (num uint, err error) {
	_, err = fmt.Fscanln(r, &num)
	return
}

type Case struct {
	srcAccounts []uint
	dstAccounts []uint
}

func(c Case) SrcAccountsNum() (int) {
	return len(c.srcAccounts)
}

func(c Case) DstAccountsNum() (int) {
	return len(c.dstAccounts)
}

func readUInts(r *bufio.Reader) (vals []uint, err error) {
	txt, err := r.ReadString('\n')
	if err != nil {
		return
	}

	for _, s := range strings.Split(txt, ",") {
		var val uint64
		val, err = strconv.ParseUint(strings.TrimSpace(s), 10, 32)
		if err != nil {
			return
		}
		vals = append(vals, uint(val))
	}
	return
}

func ReadOneCase(r *bufio.Reader) (c Case, err error) {
	var accountsNums []uint
	accountsNums, err = readUInts(r)
	if err != nil {
		return
	}
	if len(accountsNums) != 2 {
		err = errors.New("Expected two numbers")
	}

	for n, x := range [][]uint{c.srcAccounts, c.dstAccounts} {
		x, err = readUInts(r)
		if uint(len(x)) != accountsNums[n] {
			err = errors.New("Unexpected number of input items")
			return
		}
	}

	return
}
