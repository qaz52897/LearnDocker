nodejs container 
===
build:

	docker build  -t local:mynodejs .
run:

	docker run -v <NODEJS_PROJECT>:/app -d -p <LOCAL_PORT>:<NODEJS_PORT> -e PORT=<NODEJS_PORT> mynodejs <NODEJS_START_COMMAND>

example:

	docker run -v /server:/app -d -p 80:3000 -e PORT=3000  mynodejs node server.js


