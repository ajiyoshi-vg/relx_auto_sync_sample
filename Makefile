.PHONY: deps dev clean

all:

start:
	./dev/myapp/bin/myapp start

stop:
	./dev/myapp/bin/myapp stop

console:
	./dev/myapp/bin/myapp console


rx: deps compile
	./relx -c dev_relx.config

deps:
	./rebar get-deps

compile:
	./rebar compile

clean:
	-./rebar clean
	-rm -rf deps dev
