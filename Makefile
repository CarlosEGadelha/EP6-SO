############################# Makefile ##########################
all: main

run:
	./main

main: funcao.c
	gcc -fpic -shared -o libfuncao.so funcao.c
	sudo cp libfuncao.so /usr/local/lib
	sudo nano /etc/ld.so.conf.d/funcao.conf
	sudo ldconfig
	python main.py


