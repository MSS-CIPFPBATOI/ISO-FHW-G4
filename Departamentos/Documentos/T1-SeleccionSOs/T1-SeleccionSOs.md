# Estudio de sistemas operativos para nuestra empresa

## 1. Comunicaciones: MikroTik RouterOS y Ubuntu Server

| Sistema | Requisitos necesarios | Funcionalidades | Tipo de licencia | Precio | Ventajas e inconvenientes |
|---|---|---|---|---|---|
| **MikroTik RouterOS** | Router compatible con RouterOS y conexiones de red adecuadas. | Firewall, VLAN, VPN, enrutamiento y control del tráfico. | Propietaria, normalmente incluida en el router compatible. | Incluida en el precio del router; depende del modelo. | **Ventajas:** centraliza la gestión de la red y ofrece funciones de seguridad. **Inconvenientes:** requiere aprender a configurar las opciones de red. |
| **pfSense CE** | Equipo compatible, tarjetas de red y almacenamiento suficiente. | Firewall, VPN, NAT, reglas de seguridad y administración web. | Código abierto, licencia Apache 2.0. | Gratuito, sin contar el hardware. | **Ventajas:** flexible y completo. **Inconvenientes:** puede necesitar un equipo dedicado y mantenimiento propio. |
| **Ubuntu Server** | Servidor compatible de 64 bits, RAM y almacenamiento suficientes para los servicios instalados. | DNS, DHCP, VPN, alojamiento web, compartición de archivos y otros servicios. | Software libre, principalmente GPL y otras licencias abiertas. | Gratuito; soporte profesional opcional. | **Ventajas:** flexible y ampliable. **Inconvenientes:** algunos servicios requieren configuración manual. |

### Elección final y justificación

Elegimos MikroTik RouterOS para gestionar la red porque nos permite configurar el cortafuegos las VLAN las VPN y el enrutamiento desde un solo equipo. Asi podemos separar la red por departamentos controlar el trafico y permitir conexiones remotas seguras. Ademas la licencia suele venir incluida en el precio del router por lo que no tenemos que pagarla aparte. Tambien hemos valorado pfSense CE porque ofrece herramientas de seguridad y gestion de red gratuitas. Aun asi preferimos MikroTik porque integra las funciones que necesitamos en un router y no tenemos que preparar y mantener un ordenador adicional para gestionar la red. Ademas utilizaremos Ubuntu Server para instalar servicios internos como DNS y otras herramientas necesarias para la empresa. Es gratuito permite instalar muchos servicios y podemos adaptarlo a medida que crezcan nuestras necesidades

---

## 2. Virtualización: Proxmox VE

| Sistema | Requisitos necesarios | Funcionalidades | Tipo de licencia | Precio | Ventajas e inconvenientes |
|---|---|---|---|---|---|
| **Proxmox VE** | Servidor de 64 bits, procesador compatible con virtualización, RAM y almacenamiento suficientes. | Máquinas virtuales, contenedores, interfaz web, instantáneas y copias de seguridad. | Software libre, licencia GNU AGPL v3. | Gratuito; suscripciones de soporte opcionales. | **Ventajas:** permite administrar diferentes sistemas desde una interfaz web y aprovechar el hardware. **Inconvenientes:** requiere conocimientos de administración y recursos suficientes. |
| **VMware vSphere** | Servidor compatible y recursos adecuados para las máquinas virtuales. | Virtualización, administración de máquinas y funciones avanzadas según el producto contratado. | Propietaria y comercial. | Depende del producto y del contrato. | **Ventajas:** herramientas profesionales de virtualización. **Inconvenientes:** condiciones comerciales y costes que deben estudiarse antes de contratar. |
| **Microsoft Hyper-V** | Hardware compatible con virtualización y una edición de Windows que permita utilizar Hyper-V. | Máquinas virtuales, redes virtuales, puntos de control y administración de recursos. | Propietaria, vinculada a productos Microsoft. | Puede estar incluido en determinadas ediciones; Windows Server requiere una licencia adecuada. | **Ventajas:** integración con Windows. **Inconvenientes:** el coste y las funciones disponibles dependen de la edición y del escenario. |

### Elección final y justificación

Elegimos Proxmox VE porque nos permite tener varios servidores virtuales sin necesitar un equipo fisico para cada servicio. Por ejemplo podemos tener una maquina virtual con Windows Server otra con Ubuntu Server y otras para hacer pruebas.Proxmox tiene una interfaz web facil de usar desde la que podemos crear y gestionar las maquinas virtuales controlar los recursos y hacer copias de seguridad. Esto nos facilita el trabajo y nos ayuda a recuperar las maquinas si ocurre algun problema.

Hemos valorado otras opciones como VMware vSphere que es una solucion profesional pero puede tener un coste mayor dependiendo de las licencias y el soporte. Hyper-V tambien es una buena alternativa sobre todo si trabajamos con sistemas de Microsoft pero tenemos que tener en cuenta sus requisitos y licencias

Finalmente elegimos Proxmox VE porque sus funciones principales son gratuitas permite utilizar diferentes sistemas operativos y nos ayuda a aprovechar mejor el servidor sin gastar tanto dinero en licencias.w

---

## 3. Gestión centralizada: Windows Server con Active Directory

| Sistema | Requisitos necesarios | Funcionalidades | Tipo de licencia | Precio | Ventajas e inconvenientes |
|---|---|---|---|---|---|
| **Windows Server con Active Directory** | Servidor compatible, licencia adecuada, red configurada y clientes Windows compatibles con la unión al dominio. | Dominios, gestión de usuarios y grupos, permisos, autenticación y políticas de grupo (GPO). | Propietaria y comercial. Puede requerir licencias CAL. | De pago; depende de la edición, las licencias y los usuarios o dispositivos. | **Ventajas:** integración con Windows y administración centralizada. **Inconvenientes:** coste de licencias y mantenimiento. |
| **Samba AD DC** | Servidor Linux compatible, recursos suficientes y configuración de red y DNS. | Controlador de dominio compatible con numerosos clientes Windows, autenticación y gestión de usuarios y grupos. | Software libre, principalmente GPL. | Gratuito, sin contar el hardware. | **Ventajas:** permite reducir los costes de licencias. **Inconvenientes:** existen diferencias de funciones y compatibilidad respecto a Active Directory de Microsoft. |
| **FreeIPA** | Servidor Linux compatible y DNS correctamente configurado. | Gestión de identidades, autenticación, políticas y certificados, principalmente en entornos Linux. | Software libre, con componentes bajo distintas licencias abiertas. | Gratuito, sin contar el hardware. | **Ventajas:** buena integración con Linux. **Inconvenientes:** no sustituye directamente todas las funciones de Active Directory para clientes Windows. |

### Elección final y justificación

Elegimos Windows Server con Active Directory porque en nuestra empresa tenemos seis equipos con Windows y queremos gestionar todos los usuarios permisos y configuraciones desde un mismo sitio. Con Active Directory podemos organizar los usuarios en grupos controlar quien accede a los recursos compartidos y aplicar las mismas normas de seguridad a todos los equipos.

Tambien hemos valorado Samba AD DC porque es gratuito y permite gestionar dominios compatibles con Windows aunque puede haber algunas diferencias de compatibilidad y funcionalidades. FreeIPA tambien es una opcion pero esta mas pensado para entornos Linux y no encaja tanto con los equipos que tenemos. Aunque Windows Server tiene un coste de licencia y puede necesitar licencias CAL adicionales creemos que merece la pena porque nos facilita el trabajo y nos permite tener todos los equipos mejor organizados y protegidos.

---

## 4. Sistemas operativos cliente: Windows 11 Pro y Linux Mint

| Sistema | Requisitos necesarios | Funcionalidades | Tipo de licencia | Precio | Ventajas e inconvenientes |
|---|---|---|---|---|---|
| **Windows 11 Pro** | Procesador compatible de 64 bits, mínimo 4 GB de RAM, 64 GB de almacenamiento, TPM 2.0 y arranque seguro, además de otros requisitos. | Aplicaciones empresariales, unión a dominios, políticas corporativas y Escritorio remoto como anfitrión. | Propietaria y comercial. | De pago; puede venir incluida en el equipo o comprarse por separado. | **Ventajas:** compatibilidad con aplicaciones empresariales e integración con Active Directory. **Inconvenientes:** requiere licencia válida. |
| **Linux Mint** | Ordenador compatible de 64 bits, al menos 2 GB de RAM y 20 GB de almacenamiento; se recomiendan más recursos. | Ofimática, navegación, programación, terminal y administración de sistemas. | Software libre, con componentes bajo distintas licencias abiertas. | Gratuito. | **Ventajas:** no tiene coste de licencia y ofrece herramientas de desarrollo. **Inconvenientes:** algunas aplicaciones empresariales solo están disponibles para Windows. |
| **Ubuntu Desktop** | Ordenador compatible de 64 bits, memoria RAM y almacenamiento suficientes; se recomiendan al menos 4 GB de RAM. | Ofimática, programación, terminal y administración de sistemas. | Software libre, con componentes bajo distintas licencias abiertas. | Gratuito; soporte profesional opcional. | **Ventajas:** amplia documentación y herramientas de desarrollo. **Inconvenientes:** puede requerir alternativas a programas exclusivos de Windows. |

### Elección final y justificación

Utilizaremos Windows 11 Pro en cuatro equipos porque es compatible con los programas de empresa y permite conectarlos a Active Directory para gestionar los usuarios y aplicar politicas de seguridad. En los otros dos equipos instalaremos Windows 11 Pro y Linux Mint en arranque dual para poder usar Windows cuando sea necesario y Linux para programar administrar sistemas y hacer pruebas tecnicas. Hemos elegido Linux Mint porque es gratuito facil de usar y tiene las herramientas necesarias para trabajar sin pagar licencias adicionales. Otra opcion seria Ubuntu Desktop pero preferimos Linux Mint porque tiene un escritorio mas tradicional y sencillo pra usuarios nuevos.

---

## 5. Almacenamiento y datos: TrueNAS Community Edition

| Sistema | Requisitos necesarios | Funcionalidades | Tipo de licencia | Precio | Ventajas e inconvenientes |
|---|---|---|---|---|---|
| **TrueNAS Community Edition** | Servidor compatible de 64 bits, memoria RAM suficiente, discos de almacenamiento y controladoras compatibles. Se recomienda hardware adecuado para ZFS. | Almacenamiento centralizado, ZFS, carpetas compartidas SMB, permisos, instantáneas y replicación. | Software libre, principalmente bajo BSD de dos cláusulas y otras licencias abiertas. | Gratuito, sin contar el hardware. | **Ventajas:** especializado en almacenamiento y ofrece funciones avanzadas de protección de datos. **Inconvenientes:** requiere hardware adecuado y conocimientos de almacenamiento. |
| **OpenMediaVault** | Equipo compatible de 64 bits, memoria RAM y discos para almacenar los datos. | Administración web, carpetas compartidas, SMB, servicios de almacenamiento y extensiones. | Software libre, principalmente GPL. | Gratuito, sin contar el hardware. | **Ventajas:** gestión relativamente sencilla. **Inconvenientes:** algunas funciones adicionales dependen de complementos. |
| **Windows Server como servidor de archivos** | Servidor compatible, licencia de Windows Server y almacenamiento suficiente. | Carpetas compartidas, permisos NTFS, auditoría e integración con Active Directory. | Propietaria y comercial. | De pago; pueden ser necesarias licencias CAL. | **Ventajas:** integración con el dominio y administración de permisos. **Inconvenientes:** coste de licencias y consumo de recursos. |

### Elección final y justificación

Elegimos TrueNAS Community Edition porque necesitamos tener todos los archivos de la empresa en un mismo servidor en vez de guardarlos en cada ordenador.TrueNAS permite crear carpetas compartidas gestionar los permisos y hacer que cada trabajador acceda solo a los archivos que necesita. Tambien utiliza ZFS que ayuda a proteger los datos y permite guardar versiones anteriores de los archivos.

Hemos valorado OpenMediaVault porque tambien es gratuito y sirve para compartir archivos pero preferimos TrueNAS por sus funciones de almacenamiento y seguridad. Windows Server tambien podria servir para esto pero preferimos separar el almacenamiento de la gestion de usuarios y del dominio para que cada sistema tenga una funcion concreta.

Ademas TrueNAS es gratuito y nos permite ampliar el almacenamiento en el futuro añadiendo mas discos o mejorando el servidor segun las necesidades de la empresa. 

---

## Webgrafía

- [MikroTik RouterOS](https://mikrotik.com/software)
- [Licencias de MikroTik RouterOS](https://manual.mikrotik.com/docs/getting-started/routeros-licensing/)
- [pfSense CE](https://www.pfsense.org/)
- [Ubuntu Server](https://ubuntu.com/server)
- [Proxmox VE](https://www.proxmox.com/en/proxmox-virtual-environment/overview)
- [Precios de Proxmox VE](https://www.proxmox.com/en/proxmox-ve/pricing)
- [Microsoft Windows Server](https://www.microsoft.com/windows-server)
- [Precios de Windows Server](https://www.microsoft.com/en-us/windows-server/pricing)
- [Samba](https://www.samba.org/)
- [FreeIPA](https://www.freeipa.org/)
- [Windows 11 para empresas](https://www.microsoft.com/windows/business)
- [Linux Mint](https://linuxmint.com/)
- [Ubuntu Desktop](https://ubuntu.com/desktop)
- [TrueNAS](https://www.truenas.com/)
- [OpenMediaVault](https://www.openmediavault.org/)