all:
	$(MAKE) -C arcface -f Makefile $@
	cp ./arcface/main ./example

clean:
	rm -vrf ./example
	$(MAKE) -C arcface -f Makefile $@
