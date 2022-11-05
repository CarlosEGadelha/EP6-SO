############################# Makefile ##########################
all: main

run:
	./main

main: funcao.c
	gcc -fpic -shared -o libfuncao.so funcao.c
	sudo cp libfuncao.so /usr/local/lib
	sudo mv funcao.conf /etc/ld.so.conf.d/
	sudo ldconfig
	python main.py


