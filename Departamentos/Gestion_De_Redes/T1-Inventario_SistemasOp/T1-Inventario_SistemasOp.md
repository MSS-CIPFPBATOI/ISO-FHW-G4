# INVENTARIO SISTEMAS OPERATIVOS

### WINDOWNS

---

|  SISTEMAS OPERATIVOS   | CANTIDAD |
|------------------------|----------|
|    WINDOWS SERVER 25   |     1    |
| WINDOWS 11 CLIENT PRO  |     6    |

<br>

#### WINDOWS SERVER 25

| Componente | Requisito Mínimo Oficial | Recomendado para Producción |
| :--- | :--- | :--- |
| **Procesador (CPU)** | 1.4 GHz de 64 bits (x64), compatible con instrucciones NX, DEP, CMPXCHG16b, LAHF/SAHF, PrefetchW y SLAT | Procesador multi-núcleo moderno de 64 bits con soporte de virtualización (VT-x / AMD-V) |
| **Memoria (RAM)** | • **Server Core:** 512 MB<br>• **Experiencia de escritorio:** 2 GB | 8 GB a 32 GB (o más, según el volumen de carga de trabajo y número de usuarios) |
| **Almacenamiento** | 32 GB de espacio libre en la partición del sistema | SSD/NVMe con 64 GB o más espacio disponible para actualizaciones, *logs* y aplicaciones |
| **Red** | Adaptador Ethernet compatible de al menos 1 Gbps (Gigabit Ethernet) | 10 GbE o superior para entornos con almacenamiento compartido o virtualización masiva (Hyper-V) |
| **Firmware del sistema** | Sistema basado en UEFI 2.3.1c compatible con Secure Boot (Arranque seguro) | UEFI con Secure Boot activado |
| **Seguridad (TPM)** | Módulo de plataforma segura (TPM 2.0) | TPM 2.0 (necesario para funciones de *Secured-core Server* y BitLocker) |

<br>
<br>

#### WINDOWS 11 CLIENT PRO

| Componente | Requisito Mínimo Oficial | Recomendado para Uso Fluido / Trabajo |
| :--- | :--- | :--- |
| **Procesador (CPU)** | 1 GHz o más rápido con 2 o más núcleos en un [procesador de 64 bits compatible](https://learn.microsoft.com/es-es/windows-hardware/design/minimum/windows-processor-requirements) o SoC | Procesador de 4 núcleos o superior (Intel Core 11.ª gen / AMD Ryzen 3000 o más reciente) |
| **Memoria (RAM)** | 4 GB | 16 GB o más (especialmente para multitarea, máquinas virtuales o diseño) |
| **Almacenamiento** | 64 GB de espacio libre disponible | SSD NVMe con 256 GB o más de espacio disponible |
| **Firmware del sistema** | UEFI, compatible con Secure Boot (Arranque seguro) | UEFI con Secure Boot activado |
| **Seguridad (TPM)** | Módulo de plataforma segura (TPM) versión 2.0 | TPM 2.0 activado |
| **Tarjeta gráfica** | Compatible con DirectX 12 o posterior con controlador WDDM 2.0 | Gráficos integrados modernos (Intel Iris Xe / AMD Radeon) o GPU dedicada |
| **Pantalla** | Pantalla de alta definición (720p) de más de 9" en diagonal, 8 bits por canal de color | Pantalla Full HD (1080p) o superior |
| **Conexión a internet** | Requerida para la configuración inicial (OOBE) y actualizaciones | Conexión de alta velocidad por Ethernet o Wi-Fi 6 |

---

---

### LINUX

---

|  SISTEMAS OPERATIVOS   | CANTIDAD |
|------------------------|----------|
|    DEBIAN DESKTOP 13   |     3    |
|    DEBIAN SERVER       |     1    |
|    TRUE-NAS            |     1    |

<br>

#### DEBIAN 13

| Componente | Requisito Mínimo (Sin Entorno Gráfico / Servidor) | Recomendado (Entorno Gráfico / Escritorio) |
| :--- | :--- | :--- |
| **Arquitectura** | 64 bits (amd64) o 32 bits (i386, arm64, armhf, ppc64el, s390x, RISC-V) | 64 bits (amd64 / arm64) |
| **Procesador (CPU)** | 1 GHz (1 núcleo) | 2 GHz o superior (2 o más núcleos) |
| **Memoria (RAM)** | 256 MB (512 MB recomendados para instalación fluida) | 2 GB a 4 GB (según el entorno: XFCE/LXDE vs. GNOME/KDE) |
| **Almacenamiento** | 2 GB de espacio libre (instalación base / servidor) | 10 GB a 20 GB de espacio libre en disco (SSD recomendado) |
| **Tarjeta gráfica** | No requerida (para uso CLI) | Resolución de 1024x768 compatible con drivers de código abierto |
| **Firmware / Arranque** | BIOS tradicional o UEFI (soporta Secure Boot) | UEFI con Secure Boot activado (opcional) |

<br>
<br>

#### DEBIAN SERVER

| Componente | Requisito Mínimo | Recomendado para Producción |
| :--- | :--- | :--- |
| **Arquitectura** | 64 bits (amd64, arm64) o compatible (i386, etc.) | 64 bits (amd64 o arm64 según hardware) |
| **Procesador (CPU)** | 1 GHz de 64 bits | Procesador multi-núcleo moderno (2 o más núcleos) |
| **Memoria (RAM)** | 512 MB (mínimo absoluto sin interfaz gráfica) | 2 GB a 4 GB (o más, según los servicios a ejecutar: bases de datos, contenedores, etc.) |
| **Almacenamiento** | 2 GB a 3 GB de espacio libre (instalación base mínima) | 10 GB o más en SSD/NVMe (con particionado separado para `/var` o `/home` según necesidad) |
| **Red** | Adaptador Ethernet de 1 Gbps | Adaptador de red de 1 Gbps o superior (10 GbE para servidores de alto rendimiento) |
| **Firmware / Arranque** | BIOS tradicional o UEFI | UEFI (con soporte de arranque seguro opcional) |

<br>
<br>

#### TRUENAS

| Componente | Requisito Mínimo Oficial | Recomendado para Producción / Uso Real |
| :--- | :--- | :--- |
| **Procesador (CPU)** | Procesador de 64 bits (x86_64) con al menos 2 núcleos | CPU multi-núcleo moderno (4+ núcleos con AES-NI si usas cifrado o virtualización) |
| **Memoria (RAM)** | 8 GB de RAM (para almacenamiento básico con hasta 8 discos) | 16 GB a 32 GB (memoria ECC muy recomendada para proteger la integridad de los datos en ZFS) |
| **Dispositivo de arranque** | 16 GB a 20 GB de espacio libre (en unidad SSD dedicada; no se recomiendan memorias USB) | SSD SATA o NVMe dedicado de 32 GB o más |
| **Almacenamiento de datos** | Mínimo **dos dispositivos** de idéntico tamaño para crear un pool de almacenamiento inicial | Discos duros tipo CMR (evitar SMR) configurados en redundancia (Mirror o RAIDZ) |
| **Red** | Adaptador Ethernet compatible de 1 Gbps | Interfaz de 2.5 GbE, 10 GbE o superior para entornos con múltiples usuarios o alto tráfico |

---

---

### FreeBSD

---

|  SISTEMAS OPERATIVOS   | CANTIDAD |
|------------------------|----------|
|    OPEN-SENSE          |     1    |

<br>

| Componente | Requisito Mínimo Oficial | Recomendado para Producción / Uso Completo |
| :--- | :--- | :--- |
| **Procesador (CPU)** | CPU de 64 bits (x86_64) de 1 GHz y doble núcleo (con soporte AES-NI recomendado) | CPU multi-núcleo de 1.5 GHz o superior (con soporte de aceleración criptográfica AES-NI) |
| **Memoria (RAM)** | 3 GB a 4 GB (mínimo para la instalación y funcionamiento básico) | 8 GB o más (necesario para IDS/IPS como Suricata, plugins avanzados y tablas de estados grandes) |
| **Almacenamiento** | 4 GB (imagen Nano en tarjeta SD/CF o almacenamiento flash limitado, sin escritura de registros) | SSD de 40 GB a 120 GB (indispensable para logs, bases de datos de alertas, proxy y reportes) |
| **Tarjetas de red (NICs)** | 2 interfaces Ethernet compatibles (mínimo WAN y LAN, preferiblemente chipsets Intel) | 2 o más interfaces Ethernet de 1 Gbps, 2.5 GbE o superiores con estabilidad comprobada en FreeBSD |

---

---

### MikroTik

---

|  SISTEMAS OPERATIVOS   | CANTIDAD |
|------------------------|----------|
|    RouterOS            |     1    |

<br>

| Componente | Requisito Mínimo (RouterOS / Hardware x86 o CHR) | Recomendado para Producción / Alto Rendimiento |
| :--- | :--- | :--- |
| **Procesador (CPU)** | Arquitectura x86_64, ARM o Tilera de 1 núcleo | CPU multi-núcleo (para aprovechar enrutamiento multinúcleo en RouterOS v7, colas avanzadas y VPN) |
| **Memoria (RAM)** | 128 MB a 256 MB (para funciones básicas de enrutamiento y NAT) | 1 GB a 4 GB o más (necesario para tablas de rutas completas BGP, cortafuegos complejos, Dude o contenedores) |
| **Almacenamiento** | 64 MB a 128 MB de memoria Flash o disco virtual (según licencia CHR) | 1 GB a 4 GB de almacenamiento Flash/SSD (para guardar respaldos, registros y paquetes adicionales) |
| **Interfaces de Red** | 2 puertos Ethernet de 1 Gbps (mínimo WAN y LAN) | Puertos de 1 Gbps, 2.5 GbE, 10 GbE SFP+ con soporte de aceleración por hardware (Switch Chip) |