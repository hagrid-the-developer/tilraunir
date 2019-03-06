package main

import (
	"log"
	"net"
	"os"
	_ "quic/qpacket"
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
	})
}
