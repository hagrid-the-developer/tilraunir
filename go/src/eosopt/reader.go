package eosopt

import (
	"fmt"
	"io"
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

func ReadOneCase(r io.Reader) (c Case, err error) {
	var srcAccountsNum, dstAccountsNum uint
	if _, err = fmt.Fscanf(r, "%d,%d\n", &srcAccountsNum, &dstAccountsNum); err != nil {
		return
	}

	c.srcAccounts = make([]uint, srcAccountsNum)
	c.dstAccounts = make([]uint, dstAccountsNum)

	for _, x := range [][]uint{c.srcAccounts, c.dstAccounts} {
		for i, val := range x {
			format := func() string {
				switch i {
				case 0:
					return "%d"
				case len(x) - 1:
					return ", %d\n"
				default:
					return ", %d"
				}
			}()

			if _, err = fmt.Fscanf(r, format, &val); err != nil {
				return
			}
		}
	}
	return
}
