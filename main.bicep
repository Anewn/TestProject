
param location string = resourceGroup().location

module webappdeployment 'modules/webbapp.bicep' = {
  name: 'webappdeployment'
  params: {
    webbappName: 'my.project'
    location: location
  }
}
