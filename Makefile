clean:
	rm *~
	$(MAKE) -C t1 clean
	$(MAKE) -C minimal-package-test clean
