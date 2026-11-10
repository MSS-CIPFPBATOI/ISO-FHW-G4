# Pruebas de Latencia Red MikroTik — 192.168.40.1

**Fecha:** 2026-11-10 09:21:44  
**Origen:** `admin@192.168.40.1`

---

## 1. Pruebas de Ping (`/ping`)

###  Destino: `192.168.40.3` (10 Paquetes)
* **Resultado:** `sent=10 received=0 packet-loss=100%`
* **Estado:**  **Sin respuesta (Timeout)**
* **Diagnóstico:** `[CUELLO] PING 192.168.40.3: sin respuesta (revisa IP, cable virtual o firewall)`

---

###  Destino: `192.168.40.199` (10 Paquetes)
* **Resultado:** `sent=10 received=10 packet-loss=0%`
* **Métricas de Latencia:**
  * **Mínima:** 497 µs
  * **Media (`avg-rtt`):** 565 µs
  * **Máxima:** 737 µs
* **Estado:**  **OK (0% pérdida, latencia media 565 µs)**

---

###  Destino: `192.168.40.200` (10 Paquetes)
* **Resultado:** `sent=10 received=10 packet-loss=0%`
* **Métricas de Latencia:**
  * **Mínima:** 446 µs
  * **Media (`avg-rtt`):** 502 µs
  * **Máxima:** 598 µs
* **Estado:**  **OK (0% pérdida, latencia media 502 µs)**

---

## 2. Notas Técnicas

>  **Nota:** Esta prueba mide únicamente **latencia y pérdida de paquetes**. Para medir el ancho de banda/velocidad real, se requiere la herramienta `/tool bandwidth-test` contra otro router MikroTik *(recuerda que una licencia gratuita CHR limita el ancho de banda máximo)*.

---

## 3. Resumen de Incidencias

| Destino | Pérdida de paquetes | Latencia Promedio | Estado |
| :--- | :---: | :---: | :--- |
| **`192.168.40.3`** | 100% | N/A |  **Fallo de Conexión** |
| **`192.168.40.199`** | 0% | 565 µs |  Excelente |
| **`192.168.40.200`** | 0% | 502 µs |  Excelente |

* **Cuellos de botella o alertas detectadas:** Pérdida total de conectividad hacia `192.168.40.3`.
