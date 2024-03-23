#!/usr/bin/env python3

import socket

def scan_ports(target_host):
    try:
        print(f"Scansione delle porte su {target_host} in corso...")
        for port in range(1, 1001):  # Controlla le prime 1000 porte TCP
            print(f"Scansione porta {port}...")
            s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
            s.settimeout(1)
            result = s.connect_ex((target_host, port))
            if result == 0:
                print(f"Porta {port} aperta su {target_host}")
            else:
                print(f"Porta {port} chiusa su {target_host}")
            s.close()
    except socket.error as e:
        print(f"Errore durante la scansione delle porte su {target_host}: {e}")

if __name__ == "__main__":
    target_host = input("Inserisci l'indirizzo IP o il nome host del target: ")
    scan_ports(target_host)
