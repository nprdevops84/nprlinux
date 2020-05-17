
Index
======
1) Logged user
2) Hostname details
3) to get ip address
4) date, time and calender
5) file operations




1) Logged user:-

# whoami  -->  to display username
[npr@vm22entos7 ~]$ whoami
npr

# w --> to display logged in users info and uptime, load avg etc
[npr@vm22entos7 ~]$ w
 21:15:44 up 8 min,  2 users,  load average: 0.00, 0.08, 0.07
USER     TTY      FROM             LOGIN@   IDLE   JCPU   PCPU WHAT
pradeep  tty1                      21:15    8.00s  0.02s  0.02s -bash
npr      pts/0    gateway          21:11    0.00s  0.10s  0.05s w

#---------------
2) Hostname details:-

# hostname --> to get hostname
[npr@vm22entos7 ~]$ hostname
vm22entos7.npr.com


# cat /etc/hostname --> file to view/set hostname
[npr@vm22entos7 ~]$ cat /etc/hostname
vm22entos7.npr.com


# hostnamectl status --> to view hostname details in rhel7 onwards
[npr@vm22entos7 ~]$ hostnamectl status
   Static hostname: vm22entos7.npr.com
         Icon name: computer-vm
           Chassis: vm
        Machine ID: a1cd5a92bbfa4776a1fe5abaa1578957
           Boot ID: 1f160b0191634bebba40839693a7188c
    Virtualization: vmware
  Operating System: CentOS Linux 7 (Core)
       CPE OS Name: cpe:/o:centos:centos:7
            Kernel: Linux 3.10.0-1062.18.1.el7.x86_64
      Architecture: x86-64
	  
#---------------
3) to get ip address:-

# ifconfig --> to show network interfaces (in rhel7, net-tools package needed)
[npr@vm22entos7 ~]$ ifconfig
ens33: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 192.168.20.22  netmask 255.255.255.0  broadcast 192.168.20.255
        inet6 fe80::7352:a3b2:3fe9:7235  prefixlen 64  scopeid 0x20<link>
        ether 00:50:56:34:7d:f1  txqueuelen 1000  (Ethernet)
        RX packets 535  bytes 52874 (51.6 KiB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 339  bytes 47549 (46.4 KiB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

ens34: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 192.168.10.132  netmask 255.255.255.0  broadcast 192.168.10.255
        inet6 fe80::3ec4:d82e:54b4:3de0  prefixlen 64  scopeid 0x20<link>
        ether 00:0c:29:ce:b8:a6  txqueuelen 1000  (Ethernet)
        RX packets 152  bytes 17289 (16.8 KiB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 81  bytes 7012 (6.8 KiB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
        device interrupt 16  base 0x2000

lo: flags=73<UP,LOOPBACK,RUNNING>  mtu 65536
        inet 127.0.0.1  netmask 255.0.0.0
        inet6 ::1  prefixlen 128  scopeid 0x10<host>
        loop  txqueuelen 1000  (Local Loopback)
        RX packets 0  bytes 0 (0.0 B)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 0  bytes 0 (0.0 B)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0


# ip a  (or)  ip addr show --> to show network interfaces
[npr@vm22entos7 ~]$ ip addr show
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host
       valid_lft forever preferred_lft forever
2: ens34: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast state UNKNOWN group default qlen 1000
    link/ether 00:0c:29:ce:b8:a6 brd ff:ff:ff:ff:ff:ff
    inet 192.168.10.132/24 brd 192.168.10.255 scope global noprefixroute dynamic ens34
       valid_lft 1416sec preferred_lft 1416sec
    inet6 fe80::3ec4:d82e:54b4:3de0/64 scope link noprefixroute
       valid_lft forever preferred_lft forever
3: ens33: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast state UP group default qlen 1000
    link/ether 00:50:56:34:7d:f1 brd ff:ff:ff:ff:ff:ff
    inet 192.168.20.22/24 brd 192.168.20.255 scope global noprefixroute ens33
       valid_lft forever preferred_lft forever
    inet6 fe80::7352:a3b2:3fe9:7235/64 scope link noprefixroute
       valid_lft forever preferred_lft forever


# ip addr show ens33 --> to show the information of 'ens33' n/w interface
[npr@vm22entos7 ~]$ ip addr show ens33
3: ens33: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast state UP group default qlen 1000
    link/ether 00:50:56:34:7d:f1 brd ff:ff:ff:ff:ff:ff
    inet 192.168.20.22/24 brd 192.168.20.255 scope global noprefixroute ens33
       valid_lft forever preferred_lft forever
    inet6 fe80::7352:a3b2:3fe9:7235/64 scope link noprefixroute
       valid_lft forever preferred_lft forever
	   

# hostname -I  --> to show ipv4 address of n/w interfaces
[npr@vm22entos7 ~]$ hostname -I
192.168.10.132 192.168.20.22


#---------------
4) date, time and calender:- 

# date   --> to get current date and time etc
[npr@vm22entos7 ~]$ date
Sat May 16 21:50:40 IST 2020

# date +%d-%m-%Y  --> to get current date
[npr@vm22entos7 ~]$ date +%d-%m-%Y
16-05-2020

# date +%H-%M-%S --> to get current time
[npr@vm22entos7 ~]$ date +%H-%M-%S
21-57-04

# date +%d-%m-%Y_%H-%M-%S   --> to get current date and time
[npr@vm22entos7 ~]$ date +%d-%m-%Y_%H-%M-%S
16-05-2020_21-52-38

# timedatectl status  --> to get timezone details 
[npr@vm22entos7 ~]$ timedatectl status
      Local time: Sat 2020-05-16 21:59:43 IST
  Universal time: Sat 2020-05-16 16:29:43 UTC
        RTC time: Sat 2020-05-16 16:29:42
       Time zone: Asia/Kolkata (IST, +0530)
     NTP enabled: n/a
NTP synchronized: no
 RTC in local TZ: no
      DST active: n/a

# timedatectl list-timezones --> to list available timezones 
[npr@vm22entos7 ~]$ timedatectl list-timezones
Africa/Abidjan
Africa/Accra
Africa/Addis_Ababa
Africa/Algiers
Asia/Kolkata

# timedatectl set-timezone Asia/Kolkata --> to set timezone ist 
[npr@vm22entos7 ~]$ # timedatectl set-timezone Asia/Kolkata

# cal --> to display current month calender 

[npr@vm22entos7 ~]$ cal
      May 2020
Su Mo Tu We Th Fr Sa
                1  2
 3  4  5  6  7  8  9
10 11 12 13 14 15 16
17 18 19 20 21 22 23
24 25 26 27 28 29 30
31

# cal 2020 --> show 2020 year calender 
[npr@vm22entos7 ~]$ cal 2020

# cal 9 1984  --> shows september of year 1984
[npr@vm22entos7 ~]$ cal 9 1984
   September 1984
Su Mo Tu We Th Fr Sa
                   1
 2  3  4  5  6  7  8
 9 10 11 12 13 14 15
16 17 18 19 20 21 22
23 24 25 26 27 28 29
30

#---------------

5) file operations:- 

# touch file1  --> create an empty file "file1"
[npr@vm22entos7 ~]$ touch file1

# touch npr{1..10}  --> create an emty files "npr1" to "npr10"
[npr@vm22entos7 ~]$ touch npr{1..10}

# mkdir dir1  --> create a dirctory "dir1"
[npr@vm22entos7 ~]$ mkdir dir1

# mkdir d{1..3} --> create directories d1 to d3 
[npr@vm22entos7 ~]$ mkdir d{1..3}

# mkdir -p pd1/pd2/pd3/pd4 --> create parent directories using -p option
[npr@vm22entos7 ~]$ mkdir -p pd1/pd2/pd3/pd4

# pwd  --> to display 
[npr@vm22entos7 ~]$ pwd
/home/npr

# ls --> to list the files/directories in current directory
[npr@vm22entos7 ~]$ ls
d1  d3    file1  npr10  npr3  npr5  npr7  npr9
d2  dir1  npr1   npr2   npr4  npr6  npr8  pd1

# ls - a --> to list inclusing hidden files 
[npr@vm22entos7 ~]$ ls -a
.              .bash_logout   d1  dir1   npr10  npr4  npr7  pd1
..             .bash_profile  d2  file1  npr2   npr5  npr8  .ssh
.bash_history  .bashrc        d3  npr1   npr3   npr6  npr9

# ls - R --> listing files/directories recursively
[npr@vm22entos7 ~]$ ls -R
.:
d1  d3    file1  npr10  npr3  npr5  npr7  npr9
d2  dir1  npr1   npr2   npr4  npr6  npr8  pd1

./d1:

./d2:

./d3:

./dir1:

./pd1:
pd2

./pd1/pd2:
pd3

./pd1/pd2/pd3:
pd4


# ls - l  (or) ll  --> show the lon listing of files 
[npr@vm22entos7 ~]$ ls -l
total 0
drwxrwxr-x. 2 npr npr  6 May 16 22:37 d1
drwxrwxr-x. 2 npr npr  6 May 16 22:37 d2
drwxrwxr-x. 2 npr npr  6 May 16 22:37 d3
drwxrwxr-x. 2 npr npr  6 May 16 22:36 dir1
-rw-rw-r--. 1 npr npr  0 May 16 22:35 file1
-rw-rw-r--. 1 npr npr  0 May 16 22:14 npr1
-rw-rw-r--. 1 npr npr  0 May 16 22:14 npr10
-rw-rw-r--. 1 npr npr  0 May 16 22:14 npr2
-rw-rw-r--. 1 npr npr  0 May 16 22:14 npr3
-rw-rw-r--. 1 npr npr  0 May 16 22:14 npr4
-rw-rw-r--. 1 npr npr  0 May 16 22:14 npr5
-rw-rw-r--. 1 npr npr  0 May 16 22:14 npr6
-rw-rw-r--. 1 npr npr  0 May 16 22:14 npr7
-rw-rw-r--. 1 npr npr  0 May 16 22:14 npr8
-rw-rw-r--. 1 npr npr  0 May 16 22:14 npr9
drwxrwxr-x. 3 npr npr 17 May 16 22:41 pd1


