<#
Reset hasła lokalnego użytkownika.
Wymaga uruchomienia w sesji z uprawnieniami administratora.
#>

$Username = Read-Host "Podaj nazwę konta (np. jan.kowalski)"
$SecurePass = Read-Host "Podaj nowe hasło (ukryte)" -AsSecureString

try {
    Set-LocalUser -Name $Username -Password $SecurePass -ErrorAction Stop
    Write-Host "Hasło zmienione przez Set-LocalUser."
} catch {
    # Fallback: net user (plaintext w pamięci podczas wykonania)
    $BSTR = [System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($SecurePass)
    $Plain = [System.Runtime.InteropServices.Marshal]::PtrToStringAuto($BSTR)
    net user $Username $Plain
    Write-Host "Hasło zmienione przez 'net user'."
}
