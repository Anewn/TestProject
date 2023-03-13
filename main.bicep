
param location string = resourceGroup().location

module webappdeployment 'modules/webbapp.bicep' = {
  name: 'webappdeployment'
  params: {
    webbappName: 'ane-bicep-project'
    location: location
  }
}
