# CONFIGURACIONES DE RED DISPOSITIVOS

## COMUNICACIONES

### MIKROTIK

**MKT40-G4**\
Interface 0/1 & 0/2\
|-IPv4: 192.168.40.1\
|-Mask: 255.255.255.0\
|-Gateway: 127.0.0.1

Interface 0/0\
|-IPv4: DHCP\
|-Mask: 255.255.255.0\
|-Gateway: 172.16.222.1

**Hostname:** MikroTikG4

**Sistema:** RouterOS

**Estado/Formato:** Fisico

**Uso:** Comunicaciones

---

---

<br>

### DEBIAN SERVER

**SVRCOMM40-G4**\
Interface Fa0\
|-IPv4: DHCP\
|-Mask: 255.255.255.0\
|-Gateway: 172.16.222.1

Interface Fa1\
|-IPv4: 192.168.40.2\
|-Mask: 255.255.255.0\
|-Gateway: 127.0.0.1

**Hostname:** SVRCOMM40-G4

**Sistema:** Debian Server

**Estado/Formato:** Virtualizado

**Uso:** Comunicaciones

---

---

<br>

### OPENSENSE

**SVRCOMM40-G4**\
Interface Fa0\
|-IPv4: DHCP\
|-Mask: 255.255.255.0\
|-Gateway: 172.16.222.1

Interface Fa1\
|-IPv4: 192.168.40.3\
|-Mask: 255.255.255.0\
|-Gateway: 127.0.0.1

**Hostname:** SVRCOMM40-G4

**Sistema:** FreeBSD

**Estado/Formato:** Virtualizado

**Uso:** Comunicaciones

---

---

<br>

## SERVIDORES

### SvrCommG4

**SvrCommG4**\
Interface Fa0\
|-IPv4: 192.168.40.199\
|-Mask: 255.255.255.0\
|-Gateway: 192.168.40.(1-3)

**Hostname:** SvrCommG4

**Sistema:** Debian 13 Trixie

**Estado/Formato:** Fisico

**Uso:** Virtualizacion de Sistemas derivados

---

---

<br>

### TrueNAS40

**TrueNAS40**\
Interface Fa0\
|-IPv4: 192.168.40.200\
|-Mask: 255.255.255.0\
|-Gateway: 192.168.40.(1-3)

**Hostname:** TrueNAS40

**Sistema:** TrueNAS 25 

**Estado/Formato:** Fisico

**Uso:** Servicio NAS

---

---

<br>

### SVRMON-G4

**SVRMON-G4**\
Interface Fa0\
|-IPv4: 192.168.40.198\
|-Mask: 255.255.255.0\
|-Gateway: 192.168.40.(1-3)

**Hostname:** SVRMON-G4

**Sistema:** ----

**Estado/Formato:** Virtualizado

**Uso:** Servicio Monitorizacion

---

---

<br>

### SVRMON-G4

**SVRMON-G4**\
Interface Fa0\
|-IPv4: 192.168.40.198\
|-Mask: 255.255.255.0\
|-Gateway: 192.168.40.(1-3)

**Hostname:** SVRMON-G4

**Sistema:** ----

**Estado/Formato:** Virtualizado

**Uso:** Servicio Monitorizacion

---

---

<br>

## CLIENTES

### PC140-G4 

**PC140-G4**\
Interface Fa0\
|-IPv4: DHCP\
|-Mask: 255.255.255.0\
|-Gateway: 192.168.40.1

**Hostname:** PC140-G4

**Sistema:** W11 Pro 

**Estado/Formato:** Virtualizado

**Uso:** Clientes

---

---

<br>

### PC240-G4 

**PC240-G4**\
Interface Fa0\
|-IPv4: DHCP\
|-Mask: 255.255.255.0\
|-Gateway: 192.168.40.1

**Hostname:** PC240-G4

**Sistema:** W11 Pro & Deb.13

**Estado/Formato:** Virtualizado

**Uso:** Clientes

---

---

<br>

### PC340-G4 

**PC340-G4**\
Interface Fa0\
|-IPv4: DHCP\
|-Mask: 255.255.255.0\
|-Gateway: 192.168.40.1

**Hostname:** PC340-G4

**Sistema:** W11 Pro & Deb.13

**Estado/Formato:** Virtualizado

**Uso:** Clientes

---

---

<br>

### PC440-G4 

**PC440-G4**\
Interface Fa0\
|-IPv4: DHCP\
|-Mask: 255.255.255.0\
|-Gateway: 192.168.40.1

**Hostname:** PC140-G4

**Sistema:** W11 Pro 

**Estado/Formato:** Virtualizado

**Uso:** Clientes

---

---

<br>

### PC540-G4 

**PC540-G4**\
Interface Fa0\
|-IPv4: DHCP\
|-Mask: 255.255.255.0\
|-Gateway: 192.168.40.1

**Hostname:** PC540-G4

**Sistema:** W11 Pro 

**Estado/Formato:** Virtualizado

**Uso:** Clientes

---

---

<br>

### PC640-G4 

**PC640-G4**\
Interface Fa0\
|-IPv4: DHCP\
|-Mask: 255.255.255.0\
|-Gateway: 192.168.40.1

**Hostname:** PC640-G4

**Sistema:** W11 Pro 

**Estado/Formato:** Virtualizado

**Uso:** Clientes

---

---

<br>