package qpacket

import (
	"encoding/binary"
	"errors"
)

type Packet = []byte

type LongHeader struct {
	pktType uint8
	version [4]byte
	srcCidLen uint
	dstCidLen uint
	dstCid uint64
	srcCid uint64
}

type ShortHeader struct {
	keyPhase bool
	googleQuicDemultiplexingBit bool
}

type HeaderInterface interface {
	GetLongHeader() *LongHeader;
	GetShortHeader() *ShortHeader;
}

func (h LongHeader) GetLongHeader() *LongHeader {
	return &h
}

func (h LongHeader) GetShortHeader() *ShortHeader {
	return nil
}

func (h ShortHeader) GetLongHeader() *LongHeader {
	return nil
}

func (h ShortHeader) GetShortHeader() *ShortHeader {
	return &h
}

func cidLen(val uint8) uint {
	if (val > 0) {
		return uint(val) + 3
	} else {
		return 0
	}
}

func parseCid(pkt Packet, cidLen uint) (cid uint64, err error) {
	if cidLen > uint(len(pkt)) {
		return cid, errors.New("Packet too short for CID")
	}

	switch cidLen {
	case 0:
		return cid, nil;
	case 8:
		return binary.BigEndian.Uint64(pkt), nil
	default:
		return cid, errors.New("Unsupported CID length")
	}

}

func parseLongHeader(pkt Packet) (h LongHeader, err error) {
	h.pktType = pkt[0] & 0x7F

	copy(h.version[:], pkt[1:])

	cidLenByte := pkt[5]

	h.srcCidLen = cidLen(cidLenByte >> 4)
	h.dstCidLen = cidLen(cidLenByte & 0x0F)

	h.srcCid, err = parseCid(pkt[6:], h.srcCidLen)
	if err != nil {
		return h, err
	}

	h.dstCid, err = parseCid(pkt[6 + h.srcCidLen:], h.dstCidLen)
	if err != nil {
		return h, err
	}

	return h, nil
}

func parseShortHeader(pkt Packet) (h ShortHeader, err error) {
	if len(pkt) < 1 {
		return h, errors.New("Packet with short header too short")
	}

	h.keyPhase = pkt[0] & 0x30 != 0;
	h.googleQuicDemultiplexingBit = pkt[0] & 0x20 != 0;
	return h, nil
}

func ParseHeader(pkt Packet) (h HeaderInterface, err error) {
	if len(pkt) < 1 {
		return nil, errors.New("Packet too short")
	}

	if pkt[0] & 0x80 != 0 {
		return parseLongHeader(pkt)
	} else {
		return parseShortHeader(pkt)
	}
}
