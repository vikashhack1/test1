Connect-AzAccount
 #testvikash
Set-AzureRmContext -SubscriptionId 'd1be0ef8-b110-417e-992e-71a61d0e06cf'

Install-Module -Name Az.CosmosDB
$resourceGroupName = "myResourceGroup"
$locations = @("<location name>")
$accountName = "mycosmosaccount"
$apiKind = "<api kind>"
$consistencyLevel = "BoundedStaleness"
$maxStalenessInterval = 300
$maxStalenessPrefix = 100000
 
New-AzCosmosDBAccount -ResourceGroupName $resourceGroupName -Location $locations -Name $accountName -ApiKind $apiKind -EnableAutomaticFailover:$true -DefaultConsistencyLevel $consistencyLevel -MaxStalenessIntervalInSeconds $maxStalenessInterval -MaxStalenessPrefix $maxStalenessPrefix
 
//sample command
 
$resourceGroupName = "testrg"
$locations = @("Norway East")
$accountName = "vikakforcosmosdbnorwayeast"
$apiKind = "Sql"
$consistencyLevel = "BoundedStaleness"
$maxStalenessInterval = 300
$maxStalenessPrefix = 100000
 
New-AzCosmosDBAccount -ResourceGroupName $resourceGroupName -Location $locations -Name $accountName -ApiKind $apiKind -EnableAutomaticFailover:$true -DefaultConsistencyLevel $consistencyLevel -MaxStalenessIntervalInSeconds $maxStalenessInterval -MaxStalenessPrefix $maxStalenessPrefix
