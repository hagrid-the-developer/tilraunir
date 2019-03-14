package eosopt_test

import (
	"bufio"
	"eosopt"
	"reflect"
	"strings"
	"testing"
)

func TestReader(t *testing.T) {
	str := `1
	3, 5
	10000, 20000, 30000
	10000, 50000, 20000, 30000, 60000
	`

	r := bufio.NewReader(strings.NewReader(str))
	if numOfTestCases, err := eosopt.ReadNumOfTestCases(r); err != nil {
		t.Errorf("Cannot read number of cases: %v\n", err)
	} else if numOfTestCases != 1 {
		t.Errorf("Unexpected number of cases: %d\n", numOfTestCases)
	}

	expectedCase := eosopt.Case{
		SrcAccounts: []int{10000, 20000, 30000},
		DstAccounts: []int{10000, 50000, 20000, 30000, 60000},
	}
	if c, err := eosopt.ReadOneCase(r); err != nil {
		t.Errorf("Cannot read test case: %v\n", err)
	} else if !reflect.DeepEqual(expectedCase, c) {
		t.Errorf("Parsed case not correct: %v", c)
	}
}
