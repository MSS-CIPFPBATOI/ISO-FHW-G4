# DOCUMENTACION INSTALACION HARDWARE TASCA-0

## Dispositivos

- **Mikrotik** : 
```text
La primera boca del Mikrotik va conectado con un RJ45 al tp link general de clase.
La segunda boca del Mikrotik va conectado con un RJ45 al swich.
La tercera boca del Mikrotik va conectado con un RJ45 al swich de mesa.
```
Esta distribución permite organizar las conexiones físicas en diferentes grupos.


- **1 Switch** : 
```text
La primera boca del swich va conectado con un RJ45 al Mikrotik.
La segunda boca del swich va conectado con un RJ45 al PC que se utilizara como servidor.
La tercera boca del swich va conectado con un RJ45 al Cluster.
La cuarta boca del swich va conectado con un RJ45 al NAS.
```
Hemos elegido esta distribución para mantener los dispositivos principales conectados a un mismo switch. De esta manera, nos facilita su organización y nos simplifica gestionnar las conexiones físicas. Además, si mas adelante se necesitase conectar más dispositivos se podrian utilizar los puertos que queden libres.

- **2 Switch** : 
```text
La primera boca del switch va conectado con un RJ45 a la tercera boca del Mikrotik.
Las demas bocas de este switch se utilizan para los dispositivos de la red.
```
Esto lo tenemos conectado así para no tener que conectar cada cliente al Microtick.

- **PC - Servidor Comunicaciones** : 
```text
El Servidor Comunicaciones va conectado con un RJ45 al 1 switch.
A su vez esta conectado con un RJ45 al tp link general de clase.
```
Esta doble conexión se a puesto así porque puede ser útil si el servidor necesita dar servicios tanto a los dispositivos de la infraestructura local como a los dispositivos de la red general.

- **NAS** : 
```text
El NAS va conectado con un RJ45 a la cuarta boca del 1 switch.
```
Al estar conectado así al switch, puede comunicarse con otros dispositivos de la red local sin necesidad de conectar un cable independiente a cada uno.

- **Clúster** : 
```text
El Clúster va conectado con un RJ45 a la tercera boca del 1 switch.
```
