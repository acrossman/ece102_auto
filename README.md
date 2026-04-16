# ece102_auto
Automatically sets up thonny IDE for ece 102

Copy and paste the following into the terminal:

```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; iex (curl.exe -sSL https://raw.github.com/acrossman/ece102_auto//main/setup_lab.ps1)
```
