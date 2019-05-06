all: build generate_headers

build:
	gprbuild -P my_lib.gpr -p

generate_headers:
	mkdir -p headers
	cd src && gcc -c -gnatceg points.ads && mv points.h ../headers/ && rm points.ali
	cd headers && gcc -E points.h > points.hprep

clean:
	gprclean -P my_lib.gpr
	rm -f headers/*
