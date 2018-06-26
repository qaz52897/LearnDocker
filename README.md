nodejs container 
docker build  -t local:mynodejs .
---
docker run -v <volume>:/app -d -p <local_port>:<nodejs_port> -e PORT=<nodejs_port> mynodejs <nodejs start command>

example:
  docker run -v /server:/app -d -p 80:3000 -e PORT=3000  mynodejs node server.js
