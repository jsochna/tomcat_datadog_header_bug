This repo contains minimal example to demo RemoteIpValve. You need to enable Datadog agent using bin/setenv.sh to see how it behaves in Datadog.

Steps to recreate:
1. download vanilla tomcat
2. edit tomcat/conf/server.xml

    Add RemoteIpValve
   ```
        <Valve className="org.apache.catalina.valves.RemoteIpValve"
               protocolHeader="X-Forwarded-Proto" internalProxies="127.0.0.1" />
   ```
3. enable datadog - edit tomcat/bin/setenv.sh as recommended on Datadog
4. Run test.sh and check the results in Datadog.