clean:
	rm -f *~
	rm -f .*~
	$(MAKE) -C automated-testing-packages clean
	$(MAKE) -C t1 clean
	$(MAKE) -C minimal-package-test clean
	$(MAKE) -C elpa_marmelade_auto_install clean
