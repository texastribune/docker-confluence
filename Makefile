app=confluence

build:
	docker build --tag=texastribune/${app} .
debug:
	docker run --volumes-from=${app} --interactive=true --tty=true x110dc/dev-base bash
run:
	docker run --name=${app} --detach=true --publish=80:8090 texastribune/${app}
clean:
	docker stop ${app} && docker rm ${app}
