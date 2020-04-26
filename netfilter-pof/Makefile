.PHONY: new
new:
	gcc -std=c11 -c nf-queue.c
	gcc -o nf-queue -lnetfilter_queue -lnfnetlink -lmnl nf-queue.o 

.PHONY: obsolete
obsolete:
	gcc -std=c11 -c nfqnl_test.c
	gcc -o nfqnl_test -lnetfilter_queue -lnfnetlink -lmnl nfqnl_test.o 