
.PHONY : default
default:
	@echo To install tlslite run \"setup.py install\"

.PHONY : clean
clean:
	rm -rf tlslite/*.pyc
	rm -rf tlslite/utils/*.pyc
	rm -rf tlslite/integration/*.pyc	
	rm -rf dist
	rm -rf docs
	rm -rf build
	rm -f MANIFEST

docs:
	epydoc --html -v -o docs tlslite

dist: docs
	./setup.py sdist