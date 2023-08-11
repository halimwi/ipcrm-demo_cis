[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)]
    [ValidateNotNullOrEmpty()]
    [String]
    $Registrypath
)

echo "Printing out Windows registry information $Registrypath"
reg query $Registrypath
