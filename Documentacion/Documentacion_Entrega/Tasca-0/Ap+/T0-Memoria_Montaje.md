# T0 - Memoria del montaje físico

## 1. Objetivo

En esta tarea hemos preparado la instalación física de la infraestructura del Grupo 4. El objetivo es conectar el router, los switches, el servidor de comunicaciones, el NAS, el clúster y los seis ordenadores portátiles para que puedan comunicarse entre ellos y con la red general del aula.

Para realizar las conexiones hemos utilizado cables Ethernet RJ45. También hemos identificado los equipos y los cables mediante una nomenclatura para facilitar su localización y mantenimiento.

## 2. Equipos utilizados

- **MKT40-G4:** router MikroTik.
- **SWITCHB40-G4:** switch del banco de trabajo.
- **SWITCHM40-G4:** switch de la mesa de los portátiles.
- **SVRCOMM40-G4:** ordenador utilizado como servidor de comunicaciones.
- **NAS40-G4:** servidor de almacenamiento NAS/TrueNAS.
- **CLSN140-G4 y CLSN240-G4:** nodos del clúster.
- **PC140-G4, PC240-G4, PC340-G4, PC440-G4, PC540-G4 y PC640-G4:** seis portátiles cliente.

El servidor de comunicaciones es el ordenador principal de la infraestructura. Por tanto, no se cuenta como un equipo cliente independiente.

## 3. Montaje y conexiones físicas

### 3.1. Router MikroTik

Hemos colocado el MikroTik como equipo encargado de gestionar las conexiones de red de nuestra infraestructura.

- Hemos conectado el **puerto 1 del MikroTik** al TP-Link general del aula mediante un cable RJ45 identificado como **45RN40**. Así conectamos nuestra instalación con la red general de clase.
- Hemos conectado el **puerto 2 del MikroTik** al **Switch del banco (SWITCHB40-G4)** mediante un cable RJ45 identificado como **45RS40**. Esta conexión permite comunicar el router con los equipos principales.
- Hemos conectado el **puerto 3 del MikroTik** al **Switch de mesa (SWITCHM40-G4)** mediante un cable RJ45 identificado como **45RSM40**. Así llevamos la conexión de red hasta los portátiles sin tener que conectar cada uno directamente al MikroTik.

### 3.2. Switch del banco (SWITCHB40-G4)

Hemos utilizado este switch para reunir las conexiones de los equipos principales.

- Hemos conectado el **Switch del banco** al puerto 2 del MikroTik mediante el cable **45RS40**.
- Hemos conectado el **servidor de comunicaciones (SVRCOMM40-G4)** al Switch del banco mediante un cable RJ45 identificado como **45AES40**. Esta conexión utiliza su adaptador de red Ethernet.
- Hemos conectado el **clúster** al Switch del banco mediante el cable RJ45 **45CLS40**.
- Hemos conectado el **NAS (NAS40-G4)** al Switch del banco mediante un cable RJ45. En la nomenclatura facilitada no aparece un identificador específico para esta conexión.

Hemos agrupado estos equipos en el mismo switch para tener centralizadas sus conexiones y dejar otros puertos disponibles para futuras ampliaciones.

### 3.3. Servidor de comunicaciones (SVRCOMM40-G4)

El ordenador principal se utiliza como servidor de comunicaciones y dispone de dos conexiones de red:

- Hemos conectado una interfaz Ethernet al Switch del banco mediante el cable **45AES40**. Esta conexión permite que el servidor se comunique con los equipos de nuestra infraestructura.
- Hemos conectado la otra interfaz Ethernet directamente al TP-Link general del aula mediante el cable **45SCN40**. De esta forma, el servidor también tiene una conexión física con la red general.

La conexión de las dos interfaces no significa que las redes se comuniquen automáticamente: será necesario configurar correctamente las tarjetas de red y los servicios para evitar problemas de red.

### 3.4. Switch de mesa (SWITCHM40-G4)

Hemos colocado este switch junto a los portátiles para facilitar su conexión.

- Hemos conectado el **puerto 1 del Switch de mesa** al **puerto 3 del MikroTik** mediante el cable **45RSM40**.
- Hemos conectado los seis portátiles a este switch, cada uno con su propio cable RJ45.

Esta distribución permite conectar todos los clientes desde un único punto y evita llevar seis cables directamente hasta el router.

### 3.5. Ordenadores cliente

Hemos conectado los portátiles al Switch de mesa mediante cables Ethernet RJ45 independientes:

- **PC140-G4:** conectado al Switch de mesa mediante el cable **45MPC140**.
- **PC240-G4:** conectado al Switch de mesa mediante el cable **45MPC240**.
- **PC340-G4:** conectado al Switch de mesa mediante el cable **45MPC340**.
- **PC440-G4:** conectado al Switch de mesa mediante el cable **45MPC440**.
- **PC540-G4:** conectado al Switch de mesa mediante el cable **45MPC540**.
- **PC640-G4:** conectado al Switch de mesa mediante el cable **45MPC640**.

Hemos utilizado una conexión individual para cada portátil para que todos puedan acceder a la red mediante el switch.

### 3.6. NAS y clúster

Hemos conectado el **NAS40-G4** al Switch del banco mediante un cable RJ45. Su función es proporcionar almacenamiento compartido para la infraestructura.

También hemos conectado el clúster al Switch del banco mediante el cable **45CLS40**. El clúster está formado por los nodos **CLSN140-G4** y **CLSN240-G4**.

## 4. Resumen del cableado

| Equipo de origen | Equipo de destino | Identificador del cable |
|---|---|---|
| MikroTik, puerto 1 | TP-Link general del aula | 45RN40 |
| MikroTik, puerto 2 | Switch del banco | 45RS40 |
| MikroTik, puerto 3 | Switch de mesa | 45RSM40 |
| Servidor de comunicaciones, interfaz Ethernet | Switch del banco | 45AES40 |
| Servidor de comunicaciones, segunda interfaz Ethernet | TP-Link general del aula | 45SCN40 |
| Clúster | Switch del banco | 45CLS40 |
| NAS / TrueNAS | Switch del banco | RJ45 sin identificador indicado |
| PC140-G4 | Switch de mesa | 45MPC140 |
| PC240-G4 | Switch de mesa | 45MPC240 |
| PC340-G4 | Switch de mesa | 45MPC340 |
| PC440-G4 | Switch de mesa | 45MPC440 |
| PC540-G4 | Switch de mesa | 45MPC540 |
| PC640-G4 | Switch de mesa | 45MPC640 |

## 5. Justificación del montaje

Hemos separado las conexiones en dos switches para organizar mejor los equipos:

- El **Switch del banco** reúne el servidor de comunicaciones, el NAS y el clúster.
- El **Switch de mesa** reúne los seis portátiles cliente.
- El **MikroTik** conecta ambos switches y dispone de una conexión hacia el TP-Link general del aula.
- El **servidor de comunicaciones** tiene dos conexiones físicas de red: una hacia el Switch del banco y otra hacia la red general del aula.
- El **NAS** queda conectado al switch para que los equipos de la infraestructura puedan acceder al almacenamiento compartido.

Esta organización facilita identificar los cables, localizar posibles fallos y añadir nuevos equipos si fuera necesario.

## 6. Comprobaciones finales

Una vez terminado el montaje físico, es conveniente comprobar que:

1. Todos los cables RJ45 están bien conectados en ambos extremos.
2. Los indicadores luminosos de los puertos Ethernet muestran enlace cuando corresponde.
3. Los equipos están encendidos y sus tarjetas de red detectan la conexión.
4. Cada cable está identificado con su nomenclatura.
5. La configuración de red del MikroTik y de los servidores permite la comunicación entre los equipos.