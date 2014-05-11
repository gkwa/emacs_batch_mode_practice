# FIXME: i2 is failing

test: i1

all: i1 i2

i2:
	rm -rf mycleantest
	sh install.sh helm mycleantest

i1:
	rm -rf mycleantest
	sh install.sh keywiz mycleantest
clean:
	rm -rf mycleantest
	rm -f *~ .*~
	rm -f */*~ */.*~
