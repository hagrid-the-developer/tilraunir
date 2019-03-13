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
	SrcAccounts []uint
	DstAccounts []uint
}

func(c Case) SrcAccountsNum() (int) {
	return len(c.SrcAccounts)
}

func(c Case) DstAccountsNum() (int) {
	return len(c.DstAccounts)
}

func readUInts(r *bufio.Reader) (vals []uint, err error) {
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
		vals = append(vals, uint(val))
	}
	fmt.Printf("Array: %v\n", vals)
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

	for n, x := range []*[]uint{&c.SrcAccounts, &c.DstAccounts} {
		*x, err = readUInts(r)
		if err != nil {
			return
		}

		if uint(len(*x)) != accountsNums[n] {
			err = errors.New("Unexpected number of input items")
			return
		}
	}

	return
}

type Solution struct {
	SolutionExists bool
	Votes [][]uint // First index -- source account, second index: target account
}

func (c Case) findSolution()(solution Solution, err error) {
	srcs := make([]struct{idx int; val uint; count uint}, c.SrcAccountsNum())
	for srcIdx, val := range c.SrcAccounts {
		srcs[srcIdx].idx = srcIdx
		srcs[srcIdx].val = val
		srcs[srcIdx].count = 0
	}
	sort.Slice(srcs, func(i, j int) bool {
		return srcs[i].val < srcs[j].val
	})

	var srcsForTargetsMaps []map[uint]bool
	var targetsForSrcsMaps []map[uint]bool

	solutionExists := true // Let's think positively

	for dstIdx, _ := range c.DstAccounts {
		targetVal := c.DstAccounts[dstIdx]
		origSrcIdx := -1
		srcIdx := len(srcs)
		for targetVal > 0 {
			srcIdx := sort.Search(srcIdx, func(i int) bool {
				return srcs[i].val > targetVal
			})
			if origSrcIdx < 0 {
				origSrcIdx = srcIdx
			}
			for ; srcIdx >= 0 && srcs[srcIdx].count >= 30; srcIdx-- {}
			if srcIdx < 0 {
				break
			}
			srcsForTargetsMaps[srcIdx][uint(dstIdx)] = true
			targetsForSrcsMaps[dstIdx][uint(srcIdx)] = true
			targetVal -= srcs[srcIdx].val
			srcs[srcIdx].count++;
		}
		if targetVal > 0 {
			targetVal := c.DstAccounts[dstIdx]
			srcIdx := origSrcIdx
			for ; srcIdx < len(srcs) && srcs[srcIdx].count >= 30; srcIdx++ {}
			if srcIdx >= len(srcs) {
				break
			}

			for prevSrcIdx, _ := range targetsForSrcsMaps[dstIdx] {
				delete(srcsForTargetsMaps[prevSrcIdx], uint(dstIdx))
				srcs[prevSrcIdx].count--
			}
			targetsForSrcsMaps[dstIdx] = make(map[uint]bool)

			targetVal -= srcs[srcIdx].val
			srcs[srcIdx].count++
			srcsForTargetsMaps[srcIdx][uint(dstIdx)] = true
			targetsForSrcsMaps[dstIdx][uint(srcIdx)] = true
		}
		if targetVal > 0 {
			solutionExists = false
		}
	}

	solution.SolutionExists = solutionExists
	solution.Votes = make([][]uint, c.DstAccountsNum())
	for srcIdx, _ := range c.SrcAccounts {
		for dstIdx, _ := range srcsForTargetsMaps[srcIdx] {
			solution.Votes[srcIdx] = append(solution.Votes[srcIdx], dstIdx)
			sort.Slice(solution.Votes[srcIdx], func(a, b int) bool {
				return solution.Votes[srcIdx][a] < solution.Votes[srcIdx][b]
			})
		}
	}

	return
}
