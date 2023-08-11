[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)]
    [ValidateNotNullOrEmpty()]
    [String]
    $Command
)

echo "testing printing output"
echo "$Command"
reg query $Command
dir
reg query "HKCU\Software\Microsoft\Windows\CurrentVersion\"

