[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)]
    [ValidateNotNullOrEmpty()]
    [String]
    $Command
)

echo "testing printing output"
echo "$Command"
echo $Command
$commandOuptut = reg query "$Command"
dir
reg query "HKCU\Software\Microsoft\Windows\CurrentVersion\"

echo $commandOutput
