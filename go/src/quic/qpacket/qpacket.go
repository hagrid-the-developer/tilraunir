package qpacket

type LongHeader struct {
	version [4]int8
	srcCidLen uint
	dstCidLen uint
	dstCid uint64
	srcCid uint64
}

type ShortHeader struct {
	keyPhase bool
	googleBitDemultiplexingBit bool
}

type headerUnion interface {
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

type Header struct {
	h headerUnion
}
