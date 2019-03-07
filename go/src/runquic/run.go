package main

import (
	"log"
	"net"
	"os"
	"quic/qpacket"
	"quic/qnet"
)

func main() {
	l := log.New(os.Stderr, "", 1)
	qnet.Listen("", 1024, func(pkt []byte, addr *net.UDPAddr, err error) {
		if (err != nil) {
			l.Printf("Error when receiving packet: %v\n", err)
			return
		}

		l.Printf("Received packet from: %v, data: %v\n", *addr, pkt)

		h, err := qpacket.ParseHeader(pkt)
		if err != nil {
			l.Printf("Cannot parse packet :-(\n")
			return
		}

		l.Printf("Parsed header: %+v\n", h)
	})
}
