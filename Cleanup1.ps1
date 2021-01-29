Connect-AzAccount # login with AAD account
Select-AzSubscription -SubscriptionId 'a3463f52-da99-49bd-86ac-3ccd110e834d' # Automation Testing
#Add-AzAccount -Tenant fairfaxdevopsnonrestricted.onmicrosoft.com -Environment AzureUSGovernment
#Select-AzSubscription -SubscriptionId 'a1d148ea-c45e-45f7-acc5-b7bcc10813af' # CDM OaaS Runner 1
$x = Get-AzResourceGroup
$y = $x | where-object { $_.ResourceGroupName -like "region_autovalidate*" }
foreach ($z in $y) { $z.ResourceGroupName; Remove-AzResourceGroup -Name $z.ResourceGroupName -Force -AsJob }

Select-AzSubscription -SubscriptionId '51ee979b-d350-4283-a505-dadb85e88079'
$x = Get-AzResourceGroup
$y = $x | where-object { $_.ResourceGroupName -notlike "cleanup*" }
foreach ($z in $x) { $z.ResourceGroupName; Remove-AzResourceGroup -Name $z.ResourceGroupName -Force -AsJob }

Unregister-AzResourceProvider -ProviderNamespace Microsoft.Automation

Register-AzResourceProvider -ProviderNamespace Microsoft.Automation