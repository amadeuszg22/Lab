Lab
===

LAB -Vagrant

LB0 -Load balancer (192.168.10.10)

SRV1 -Apache+mysql (192.168.10.11)

SRV3 -Apache+mysql (192.168.10.12)

I make configuration according to your diagram to safe your hardware and time resources
There is no big difrence betwen this two configurations :)

webapp user: ama
pass: Zaq220991

DB name : Nagios_Inventory

DB user: root
db pass: Q

replication user: sync
pass: Q

Currently devide all queries 50/50 for this two servers. Replication is configured that SRV1 is Master and SRV2 is Slave server. I have to make chaneges in application code to make all inserts updates and drops on replication master and read by Select from Slave server

Application use session technology and user panel so i configured session folder on NAS/LB server to keep sesion consistency

