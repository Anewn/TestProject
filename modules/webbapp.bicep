

@description('App service Name')
param webbappName string

param location string = resourceGroup().location


resource azureasp 'Microsoft.Web/serverfarms@2022-03-01' = {
  name: 'testbicep'
  location: location
  sku: {
    tier: 'F1'
    name: 'F1'
  }
}

resource azurewebapp 'Microsoft.Web/sites@2022-03-01' = {
  name: webbappName
  location: location
  properties: {
    serverFarmId: azureasp.id
  }
}
