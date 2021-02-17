bin/startup.sh

#first request should display source IP 127.0.0.1
curl 'http://localhost:8080/examples/servlets/servlet/RequestInfoExample'

# second request should display source IP 10.10.10.10
curl 'http://localhost:8080/examples/servlets/servlet/RequestInfoExample' -H "X-Forwarded-For: 10.10.10.10"

bin/shutdown.sh