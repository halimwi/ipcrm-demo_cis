[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)]
    [ValidateNotNullOrEmpty()]
    [String]
    $Command
)

$commandOuptut = reg query $Command

echo $commandOutput
