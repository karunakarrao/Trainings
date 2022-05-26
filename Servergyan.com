
How DNS will resolve ?
what t

difference between application and network ELB?
how do you secure your infra strucutre? 

cat /etc/services
tcp = 6
udp = 

Q. what is TCP and UDP?
TCP and UDP are used to connect two devices over the Internet or other networks. However, to give data packages an entrance to the PC or server at the other end of the connection, the “doors” have to be open. These openings into the system are called ports.

Q. List of the most important ports?
Ports have consecutive numbers – from 0 to 65536.
echo  - 7 - TCP/UDP     --> Echo service
FTP-data  - 20	- TCP--> 	FTP data transfer
FTP   - 21 - TCP/UDP	    -->	FTP connection
SSH   - 22 - TCP/UDP     --> 	Secure Shell Service
TELNET - 23 - TCP  --> telnet service
SMTP   - 25 -TCP    --> Simple Mail Transfer Protocol
nameserver - 42 - TCP/UDP -->	Name service
DNS    - 53 - TCP/UDP     -->DNS service
DHCP - 67, 68 - TCP
POP3 - 110
HTTP   - 80 - TCP    --> Hypertext transfer protocol
hostname - 101 - TCP --> NIC host name
rtelnet	- 107 - TCP --> Remote telnet
SNMP - 161 - UDP --> 	Simple network management protocol
LDAP - 389 - TCP/UDP -->	Lightweight directory access protocol
exec - 512 - TCP --> 	Remote process execution
login	- 513 - Login to remote computer
shell	- 514 - TCP --> Remote shell
HTTPS  - 443
DHCP - 67, 68
POP3 - 110

Q. difference between network vs application load balancer?
The Network Load Balancing (NLB) feature distributes traffic across several servers by using the TCP/IP networking protocol. to achive Lowlatency and TCP/UDP/TLS, Security group added at instace level, hight throghput. The network load balancer just forward requests whereas the application load balancer examines the contents of the HTTP request header to determine where to route the request. So, the application load balancer is performing content based routing. it uses https header, security group, host based/path based routing. 

Q. what is the differen types of URL routing?
there are 2 types of routings are there
 1. host based routing: while accessing the url if we use "www.example.com "
 2. path based routing: while accessing the URL if we use "www.example.com/admin" this is path based routing. 
 
Q. Different types of hosted zones?
1. public hosted zone: a website which is publically accessable on the internet. 
2. private hosted zone: a website which is private to the organization which is behind the firewall/VPC. it is accessable internally.

Q. What is the difference between public and private DNS?
A public DNS maintains a record of publicly available domain names reachable from any device with internet access. Private DNS resides behind a company firewall and maintains records of internal sites.

Q. how do you secure your application?
we use SSL's to secure the application. we can't create SSL certificates with our domain name(www.example.com). 

Q. FQDN - Fully Qualified domain name

Q. why we used different types of load balancer like application vs network load balacer?

Q. different layers of the network ? 
there are 7 layers 

7 - Application Layer - SMTP, HTTP, FTP, POP3, SNMP
6 - Presentation Layer - MPEG, ASCH, SSL, TLS
5 - Session Layer - NetBIOS, SAP
4 - Transport Layer - TCP, UDP
3 - Network Layer - IPV5, IPV6, ICMP, IPSEC, ARP, MPLS.
2 - Data Layer - RAPA, PPP, Frame Relay, ATM, Fiber Cable, etc.
1 - Physical Layer - RS232, 100BaseTX, ISDN, 11.

Q. what is CDN (contenet delivery network )?
this is the front end and used to access th static data like pdf, pictures, videos. this is used for instant access.

Q. list of http error codes ?




