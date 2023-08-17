[CmdletBinding()]
param(
)

echo "Started Wireshark installation"
Start-Process('C:\temp\Wireshark-win64-4.0.7.exe') -ArgumentList '/S'
echo "Installing Wireshark"
sleep 15
echo "Validating Wireshark installation, checking registry key to confirm wireshark installation is successful"
get-itemproperty 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*' | findstr wireshark
get-itemproperty 'HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*' | findstr wireshark
