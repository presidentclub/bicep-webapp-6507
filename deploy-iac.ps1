param (
    [string]$ResourceGroupName = "IaCLabRG-6507",
    [string]$TemplateFile = "webapp.bicep"
)

Write-Host "-------------------------------------------"
Write-Host "Starting IaC deployment using Azure CLI"
Write-Host "Resource Group : $ResourceGroupName"
Write-Host "Template File  : $TemplateFile"
Write-Host "-------------------------------------------"

# Run Azure CLI deployment inside PowerShell
az deployment group create `
  --resource-group $ResourceGroupName `
  --template-file $TemplateFile

Write-Host "-------------------------------------------"
Write-Host "Deployment completed. Check Azure Portal."
Write-Host "-------------------------------------------"
