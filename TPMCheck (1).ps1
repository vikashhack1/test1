$TestTPM =gc $Env:USERPROFILE\AppData\Local\Packages\PaloAltoNetworks.GlobalProtect_rn9aeerfb38dg\LocalState\DiagOutputDir\PanGPS.log |sls "error 0x80090016: Keyset does not exist"

if ($TestTPM -match "error 0x80090016: Keyset does not exist")  # The term in brackets is a true/false value
{
    Write-Host "Device have TPM issue"
 }
else 
{
    Write-Host "TPM is okay on this device"
}