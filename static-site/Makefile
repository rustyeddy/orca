name = rustyeddy/static-nginx
files = Dockerfile default.conf index.html
cleanup = *~ .BUILT

build: .BUILT

.BUILT: $(files)
	docker build -t $(name) . && touch .BUILT

run: .BUILT
	docker run -p 4000:80 $(name)

# kill:
#	docker kill $(container)

clean:
	rm -rf *~
