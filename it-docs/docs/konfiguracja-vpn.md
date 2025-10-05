# Konfiguracja VPN (OpenVPN) - krok po kroku

## Wymagania
- Plik konfiguracyjny `.ovpn` od administratora IT
- Zainstalowany klient OpenVPN (Windows lub macOS)

## Kroki
1. Pobierz plik `.ovpn` i zapisz go na komputerze.
2. Pobierz i zainstaluj klienta OpenVPN z https://openvpn.net.
3. Uruchom klienta jako Administrator.
4. Zaimportuj plik `.ovpn`.
5. Kliknij **Połącz** i sprawdź połączenie np. pingując serwer firmowy.

## Rozwiązywanie problemów
- **Błąd połączenia**: sprawdź, czy firewall nie blokuje portu 1194.
- **Brak internetu po połączeniu**: upewnij się, że w konfiguracji jest split-tunneling.
