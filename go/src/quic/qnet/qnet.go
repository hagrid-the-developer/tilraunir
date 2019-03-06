package qnet

import (
	"fmt"
	"net"
)

type ProcessPacket func([]byte, *net.UDPAddr, error)

func Listen(addrStr string, port int, proc ProcessPacket) error {
	addr, err := net.ResolveUDPAddr("udp", fmt.Sprintf("%s:%d", addrStr, port))
	if (err != nil) {
		return err
	}

	conn, err := net.ListenUDP("udp", addr)
	if (err != nil) {
		return err
	}

	defer conn.Close()

	for {
		buf := make([]byte, 1500)
		_, addr, err := conn.ReadFromUDP(buf)

		go func(pkt []byte, addr *net.UDPAddr, err error) {
			proc(pkt, addr, err)
		}(buf, addr, err)
	}

	return nil;
}
