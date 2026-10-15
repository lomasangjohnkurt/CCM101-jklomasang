# Reflection

Performing this laboratory activity has provided me with an insight into protecting servers from any illegal access to the network.
Specifically I understood that the host-based firewall offers an extra level of security in case the physical network perimeter is
violated. The firewall being located in the server can control the inbound and outbound connections according to the firewall's rules.
It is an example of defense in depth as there are not only one but several layers of protection involved.

Controlling the open network ports is critical as every additional open port becomes another point for hackers to gain access to.
Implementing the Default Deny policy made me realize that every connection is blocked unless there is a specific rule for allowing 
the traffic. Only allowing the required connections to specific ports like SSH at 22 and the web application at 8080 can help in
reducing the attack surface of the server.

Leaving any of the database ports for example, MySQL at port 3306 open to public internet is very risky in a real enterprise environment.
Hackers might try to guess passwords, perform software exploits and access sensitive data in case the
