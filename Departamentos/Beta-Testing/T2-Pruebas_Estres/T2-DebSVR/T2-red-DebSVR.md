# Benchmark de red - SVRCOMM40-G4

**Destino:** `127.0.0.1`  
**Fecha de captura:** 2026-11-10 09:37:19  
**Velocidad de enlace:** 1000 Mbps

> **Modo loopback:** mide el software de red del sistema, no la red física.

## Latencia (ping x10)

```text
--- 127.0.0.1 ping statistics ---
10 packets transmitted, 10 received, 0% packet loss, time 1837ms
rtt min/avg/max/mdev = 0.050/0.059/0.083/0.009 ms
```

- **Pérdida de paquetes:** 0%.
- **Latencia media:** 0.059 ms.
- **Valoración de pérdidas:** OK.

## iperf3 (10 segundos por prueba)

| Prueba | Rendimiento |
| ------ | ----------: |
| 1 flujo (subida) | 25159 Mbps |
| 4 flujos (subida) | 22940 Mbps |
| 1 flujo (bajada, `-R`) | 24869 Mbps |

## Valoración

**[OK] RED:** loopback: 25159 Mbps (no representa la red real), 0% de pérdidas y 0.059 ms de latencia media.

## Resumen

Sin avisos ni cuellos de botella con los umbrales del script.
