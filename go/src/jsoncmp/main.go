package main

import (
	"bufio"
	"encoding/json"
	"errors"
	"fmt"
	"os"
	"sort"
)

func splitNLNL(data []byte, atEOF bool) (advance int, token []byte, err error) {
	it := 0
	nl := 0

	for ; it < len(data); it++ {
		if data[it] == '\n' {
			nl++
		} else {
			nl = 0
		}

		if (nl == 2) {
			it++
			break
		}
	}

	if (nl == 2 || (it > 0 && atEOF)) {
		advance = it

		token = make([]byte, it)
		copy(token[:], data[:it])
		return
	} else {
		return 0, nil, nil
	}
}

type oneItem struct {
	parsed interface{}
	serial string
}

func readFile(fpath string) (items []oneItem, err error) {
	f, err := os.Open(fpath)
	if err != nil {
		return nil, err
	}

	scanner := bufio.NewScanner(f)
	scanner.Buffer(make([]byte, 64*1024), 10*1024*1024)
	scanner.Split(splitNLNL)

	for scanner.Scan() {
		var item oneItem
		json.Unmarshal(scanner.Bytes(), &item.parsed)

		json, err := json.Marshal(item.parsed)
		if err != nil {
			return nil, err
		}
		item.serial = string(json)

		items = append(items, item)
	}
	if err:= scanner.Err(); err != nil {
		return nil, err
	}

	return
}

func sortItems(items []oneItem) {
	sort.Slice(items, func (i, j int) bool {
		return items[i].serial < items[j].serial
	})
}

func main() {
	if len(os.Args) != 3 {
		fmt.Printf("%s <file0.json> <file1.json>\n", os.Args[0])
		os.Exit(1)
	}

	err := func() (err error) {
		items0, err := readFile(os.Args[1])
		if err != nil {
			return
		}
		sortItems(items0)

		items1, err := readFile(os.Args[2])
		if err != nil {
			return
		}
		sortItems(items1)

		i, j := 0, 0
		filesDiffer := false
		for i < len(items0) && j < len(items1) {
			if items0[i].serial < items1[j].serial {
				fmt.Printf("Unexpected item in %s: %s\n", os.Args[1], items0[i].serial)
				i++
				filesDiffer = true
			} else if (items0[i].serial > items1[j].serial) {
				fmt.Printf("Unexpected item in %s: %s\n", os.Args[2], items1[j].serial)
				j++
				filesDiffer = true
			} else {
				i++
				j++
			}
		}
		for ; i < len(items0); i++ {
			fmt.Printf("Redundant item in %s: %s\n", os.Args[1], items0[i].serial)
			filesDiffer = true
		}
		for ; j < len(items1); j++ {
			fmt.Printf("Redundant item in %s: %s\n", os.Args[2], items1[j].serial)
			filesDiffer = true
		}

		if (filesDiffer) {
			err = errors.New("Files differ")
			return
		}

		return
	}();
	if err != nil {
		fmt.Printf("Error occured: %v\n", err)
		os.Exit(2)
	}
}
