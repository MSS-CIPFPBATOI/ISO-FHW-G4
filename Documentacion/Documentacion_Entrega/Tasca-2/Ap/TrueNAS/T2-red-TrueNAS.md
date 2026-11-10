# Benchmark de red - truenasG40

**Destino:** `127.0.0.1`  
**Fecha de captura:** 2026-11-09 23:34:14  
**Velocidad de enlace:** 1000 Mbps

> **Modo loopback:** mide el software de red del sistema, no la red física.

## Latencia (ping x10)

```text
--- 127.0.0.1 ping statistics ---
10 packets transmitted, 10 received, 0% packet loss, time 1834ms
rtt min/avg/max/mdev = 0.030/0.032/0.038/0.002 ms
```

- **Pérdida de paquetes:** 0%.
- **Latencia media:** 0.032 ms.
- **Valoración de pérdidas:** OK.

## iperf3 (10 segundos por prueba)

| Prueba | Rendimiento |
| ------ | ----------: |
| 1 flujo (subida) | 66457 Mbps |
| 4 flujos (subida) | 44189 Mbps |
| 1 flujo (bajada, `-R`) | 67090 Mbps |

## Valoración

**[OK] RED:** loopback: 66457 Mbps (no representa la red real), 0% de pérdidas y 0.032 ms de latencia media.

## Resumen

Sin avisos ni cuellos de botella con los umbrales del script.
