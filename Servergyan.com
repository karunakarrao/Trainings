
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
there are 7 layers :
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




Q. S3: Simple storage service?
max buckets:-->  we can create 100 buckets by default.
service request:--> for more bucket we need to raise a ticket with aws team. 
max storage:-->  we can store max in 256 tb. 
website:--> a static website can be hosted on s3
security:--> bucket policy and 

Q. what is object lock in s3 bucket?

Q. what are the types of storage class do we have in S3 bucket?

Q. how to disable the s3 bucker version?
we can't disable it but we can suspend the s3 bucket versioning

Q. 
data at rest: just uploaded the data to s3 no actions done.
data in transit: s3 bucket data link is given to the users is called data in transit.

Q. 
CEO, CTO, CSO

Linux - User :
------------------------------------------------------
$ rpm -qf /etc/passwd
$grep -ril likendra /etc/
$userdel -r lokendra 

$grep -ril lokendra /etc/

$rm -rf /etc/apsswd --> deleted and restore as belwo

$ cp /etc/passwd- /etc/passwd --> restore from backup 

$ /etc/default/useradd
$ touch {1..10}.sh
$ rm -rf {1..10}.sh
$ usermod -G hr loki
$ usermod -aG sales /etc/

how many types of files are there in linux OS?
$ ll /dev
7 types of files
-regular file
D- directory
l --> link file
B --> block file
C - char file
P - pipe
S - socket

$ /etc/login.def --> user creation using a file 


Services
start boot scripts


Jenkins:
-------------

types of jobs created in jenkins


