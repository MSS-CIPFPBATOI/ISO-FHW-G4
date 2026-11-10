## BENCHMARK DE RED OPNsense - OPNsense -\> 127.0.0.1 - 2026-11-09 10:20:16

Interfaz: le0 \| velocidad de enlace: desconocida MODO LOOPBACK: mide el
software de red del sistema, no la red fisica.

## Latencia (ping x10)

``` text
--- 127.0.0.1 ping statistics ---
```

10 packets transmitted, 10 packets received, 0.0% packet loss

``` text
round-trip min/avg/max/stddev = 0.058/0.328/0.488/0.162 ms
```

\[OK\] PERDIDAS: 0% perdidos Latencia media: 0.328 ms

## iperf3 (10 s cada prueba)

1 flujo (subida) : 29309 Mbps 4 flujos (subida) : 24570 Mbps 1 flujo
(bajada, -R): 30382 Mbps

## CONTADORES DEL SISTEMA TRAS LA PRUEBA

Errores y descartes por interfaz:

``` text
Name       Mtu Network          Address                          Ipkts Ierrs Idrop     Opkts Oerrs  Coll
le0       1500 <Link#1>         08:00:27:fb:dc:bb                 6643     0     0      5787     0     0
le0          - fe80::%le0/64    fe80::a00:27ff:fefb:dcbb%le0         0     -     -        16     -     -
le0          - 172.16.222.0/24  172.16.222.155                    5615     -     -      5766     -     -
le1       1500 <Link#2>         08:00:27:b6:2a:7d                 4891     0     0      8295     0     0
le1          - 192.168.40.0/24  192.168.40.3                      4767     -     -      8266     -     -
le1          - fe80::%le1/64    fe80::a00:27ff:feb6:2a7d%le1         0     -     -         1     -     -
lo0      16384 <Link#3>         lo0                           14179583     0     0  14179583     0     0
lo0          - ::1/128          ::1                                 76     -     -        76     -     -
lo0          - fe80::%lo0/64    fe80::1%lo0                          0     -     -         0     -     -
lo0          - 127.0.0.0/8      127.0.0.1                     14179507     -     -  14179507     -     -
enc0*     1536 <Link#4>         enc0                                 0     0     0         0     0     0
```

Firewall (pf): Status: Enabled for 0 days 00:38:07 Debug: Urgent

``` text
State Table                          Total             Rate
```

current entries 12\
searches 25279 11.1/s inserts 276 0.1/s removals 264 0.1/s

``` text
Counters
```

## VALORACION

\[OK\] RED: loopback: 29309 Mbps (no representa la red real) \| 0%
perdidas \| 0.328 ms

## RESUMEN

Sin avisos ni cuellos de botella con los umbrales del script.
