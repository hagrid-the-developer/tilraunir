package eosopt

import (
	"bufio"
	"errors"
	"fmt"
	"io"
	"sort"
	"strconv"
	"strings"
)

func ReadNumOfTestCases(r io.Reader) (num uint, err error) {
	_, err = fmt.Fscanln(r, &num)
	return
}

type Case struct {
	SrcAccounts []int
	DstAccounts []int
}

func (c Case) SrcAccountsNum() int {
	return len(c.SrcAccounts)
}

func (c Case) DstAccountsNum() int {
	return len(c.DstAccounts)
}

func readUInts(r *bufio.Reader) (vals []int, err error) {
	txt, err := r.ReadString('\n')
	if err != nil {
		return
	}

	for _, s := range strings.Split(txt, ",") {
		var val uint64
		val, err = strconv.ParseUint(strings.TrimSpace(s), 10, 30) // We work with values <= 10^9 ~ 2^30
		if err != nil {
			return
		}
		vals = append(vals, int(val))
	}
	return
}

func ReadOneCase(r *bufio.Reader) (c Case, err error) {
	var accountsNums []int
	accountsNums, err = readUInts(r)
	if err != nil {
		return
	}
	if len(accountsNums) != 2 {
		err = errors.New("Expected two numbers")
	}

	for n, x := range []*[]int{&c.SrcAccounts, &c.DstAccounts} {
		*x, err = readUInts(r)
		if err != nil {
			return
		}

		if len(*x) != accountsNums[n] {
			err = errors.New("Unexpected number of input items")
			return
		}
	}

	return
}

type Solution struct {
	SolutionExists bool
	Votes          [][]int // First index -- source account, second index: target account
}

func (c Case) FindSolution() (solution Solution, err error) {
	srcs := make([]struct {
		idx   int
		val   int
		count uint
	}, c.SrcAccountsNum())
	for srcIdx, val := range c.SrcAccounts {
		srcs[srcIdx].idx = srcIdx
		srcs[srcIdx].val = val
		srcs[srcIdx].count = 0
	}
	sort.Slice(srcs, func(i, j int) bool {
		return srcs[i].val < srcs[j].val
	})

	srcsForTargetsMaps := make([]map[int]bool, c.SrcAccountsNum())
	for srcIdx, _ := range srcsForTargetsMaps {
		srcsForTargetsMaps[srcIdx] = make(map[int]bool)
	}

	solutionExists := true // Let's think positively

	for dstIdx, _ := range c.DstAccounts {
		targetVal := c.DstAccounts[dstIdx]
		idx := sort.Search(len(srcs), func(i int) bool {
			return srcs[i].val > targetVal
		})
		origIdx := idx
		for targetVal > 0 {
			for idx--; idx >= 0 && srcs[idx].count >= 30; idx-- {
			}
			if idx < 0 {
				break
			}
			srcIdx := srcs[idx].idx
			srcsForTargetsMaps[srcIdx][dstIdx] = true
			targetVal -= srcs[idx].val
			srcs[idx].count++
		}
		if targetVal > 0 {
			// Try to find bigger target
			targetVal = c.DstAccounts[dstIdx]
			idx := origIdx
			for ; idx < len(srcs) && srcs[idx].count >= 30; idx++ {
			}
			if idx < len(srcs) {
				// Undo the previous changes; This could be made faster with another map
				for prevIdx, _ := range srcs {
					prevSrcIdx := srcs[prevIdx].idx
					if srcsForTargetsMaps[prevSrcIdx][dstIdx] {
						delete(srcsForTargetsMaps[prevSrcIdx], dstIdx)
						srcs[prevIdx].count--
					}
				}

				targetVal -= srcs[idx].val
				srcs[idx].count++
				srcIdx := srcs[idx].idx
				srcsForTargetsMaps[srcIdx][dstIdx] = true
			}
		}
		if targetVal > 0 {
			solutionExists = false
		}
	}

	solution.SolutionExists = solutionExists
	solution.Votes = make([][]int, c.SrcAccountsNum())
	for srcIdx, _ := range solution.Votes {
		for dstIdx, _ := range srcsForTargetsMaps[srcIdx] {
			solution.Votes[srcIdx] = append(solution.Votes[srcIdx], dstIdx)
		}
		sort.Slice(solution.Votes[srcIdx], func(a, b int) bool {
			return solution.Votes[srcIdx][a] < solution.Votes[srcIdx][b]
		})
	}

	return
}
