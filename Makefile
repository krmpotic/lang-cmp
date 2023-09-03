test:
	$(MAKE) -C prime/

clean:
	$(MAKE) -C prime/ clean

.PHONY: test clean
