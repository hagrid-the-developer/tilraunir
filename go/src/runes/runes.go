package main

import (
	"fmt"
	"unicode/utf8"

	"golang.org/x/text/unicode/norm"
)

const (
	sample = "\xbd\xb2\x3d\xbc\x20\xe2\x8c\x98"
	nihongo = "日本語"
	incorrectUtf8 = "\xf1\xb1\x20"
	yellowHorse = "Žluťoučký kůň"
)

func printString(s string) {
	fmt.Printf("Use string:\n")

	// Print the unicode string
	fmt.Printf(s)

	// Print individual bytes of the string
	for i := 0; i < len(s); i++ {
		fmt.Printf("%x ", s[i])
	}
	fmt.Printf("\n\n")

	// Use q format inside the loop
	for i := 0; i < len(s); i++ {
		fmt.Printf("%q ", s[i])
	}
	fmt.Printf("\n\n")

	// Use +q format inside the loop
	for i := 0; i < len(s); i++ {
		fmt.Printf("%+q ", s[i])
	}
	fmt.Printf("\n\n")

	// This is shorter way to print all bytes of the string, it doesn't print space after the byte values.
	fmt.Printf("%x\n", s)
	fmt.Printf("\n")

	// This prints space between individual values
	fmt.Printf("% x\n", s)
	fmt.Printf("\n")

	// Will escape any non-printable byte sequences
	fmt.Printf("%q\n", s)
	fmt.Printf("\n")

	// Will escape any non-ASCII bytes, still interprets UTF-8
	fmt.Printf("%+q\n", s)
	fmt.Printf("\n")
}

func printBytes(b []byte) {
	fmt.Printf("Use bytes:\n")

	// Print individual bytes of the string
	for i := 0; i < len(b); i++ {
		fmt.Printf("%x ", b[i])
	}
	fmt.Printf("\n\n")

	// Use q format inside the loop
	for i := 0; i < len(b); i++ {
		fmt.Printf("%q ", b[i])
	}
	fmt.Printf("\n\n")

	// Use +q format inside the loop
	for i := 0; i < len(b); i++ {
		fmt.Printf("%+q ", b[i])
	}
	fmt.Printf("\n\n")

	// This is shorter way to print all bytes of the string, it doesn't print space after the byte values.
	fmt.Printf("%x\n", b)
	fmt.Printf("\n")

	// This prints space between individual values
	fmt.Printf("% x\n", b)
	fmt.Printf("\n")

	// Will escape any non-printable byte sequences
	fmt.Printf("%q\n", b)
	fmt.Printf("\n")

	// Will escape any non-ASCII bytes, still interprets UTF-8
	fmt.Printf("%+q\n", b)
	fmt.Printf("\n")
}

func printUtf8(s string) {
	// Shows codepoints and their positions
	fmt.Printf("Codepoints with range:\n")
	for index, runeValue := range s {
		fmt.Printf("%#U starts at byte position %d\n", runeValue, index)
	}
	fmt.Printf("\n")

	// Shows codepoints and their positions, it uses tools from utf8 package
	fmt.Printf("Codepoints with utf8 package:\n")
	for i, w := 0, 0; i < len(s); i += w {
		runeValue, width := utf8.DecodeRuneInString(s[i:])
		fmt.Printf("%#U starts at byte position %d\n", runeValue, i)
		w = width
	}
	fmt.Printf("\n")
}

func main() {
	printString(sample)

	// This allocates memory (deep copy)
	printBytes([]byte(sample))

	printUtf8(nihongo)
	// Bytes from incorrect UTF-8 sequence are reported as Unicode replacement character (U+FFFD)
	//  == "error" Rune
	printUtf8(sample)
	printUtf8(incorrectUtf8)

	fmt.Printf("YellowHorse unchanged\n")
	printUtf8(yellowHorse)
	fmt.Printf("YellowHorse -> NFC\n")
	printUtf8(norm.NFC.String(yellowHorse))
	fmt.Printf("YellowHorse -> NFD\n")
	printUtf8(norm.NFD.String(yellowHorse))
	fmt.Printf("YellowHorse -> NFKC\n")
	printUtf8(norm.NFKC.String(yellowHorse))
	fmt.Printf("YellowHorse -> NFKD\n")
	printUtf8(norm.NFKD.String(yellowHorse))
}
