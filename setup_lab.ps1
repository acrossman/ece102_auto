# 1. Setup paths
$labDir = "D:\ECE102_LAB"
$desktopPath = [System.IO.Path]::Combine($env:USERPROFILE, "Desktop\Launch Thonny.lnk")

# 2. Create the directory if it doesn't exist
if (!(Test-Path $labDir)) {
    New-Item -ItemType Directory -Path $labDir
}
Set-Location $labDir

# 3. Create the Virtual Environment
Write-Host "Creating Virtual Environment... this may take a minute." -ForegroundColor Cyan
python -m venv .

# 4. Install Thonny
Write-Host "Installing Thonny..." -ForegroundColor Cyan
.\Scripts\python.exe -m pip install thonny

# 5. Create the Desktop Shortcut
Write-Host "Creating Desktop Shortcut..." -ForegroundColor Cyan
$WshShell = New-Object -ComObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut($desktopPath)
$Shortcut.TargetPath = "$labDir\Scripts\python.exe"
$Shortcut.Arguments = "-m thonny"
$Shortcut.WorkingDirectory = $labDir
$Shortcut.IconLocation = "$labDir\Scripts\python.exe, 0" # Uses Python icon
$Shortcut.Save()

Write-Host "Setup Complete! Launching Thonny..." -ForegroundColor Green

# 6. Launch Thonny
.\Scripts\python.exe -m thonny
