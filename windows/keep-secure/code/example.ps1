$authUrl = 'Your Authorization URL'
$clientId = 'Your Client ID'
$clientSecret = 'Your Client Secret'

$tokenPayload = @{
    "resource"='https://graph.windows.net'
    "client_id" = $clientId
    "client_secret" = $clientSecret
    "grant_type"='client_credentials'}

$response = Invoke-RestMethod $authUrl -Method Post -Body $tokenPayload
$token = $response.access_token

$headers = @{
    "Content-Type"="application/json"
    "Accept"="application/json"
    "Authorization"="Bearer {0}" -f $token }

$apiBaseUrl = "https://ti.securitycenter.windows.com/V1.0/"

$alertDefinitions =
    (Invoke-RestMethod ("{0}AlertDefinitions" -f $apiBaseUrl) -Method Get -Headers $headers).value

$alertDefinitionPayload = @{
    "Name"= "The alert's name"
    "Severity"= "Low"
    "InternalDescription"= "An internal description of the Alert"
    "Title"= "The Title"
    "UxDescription"= "Description of the alerts"
    "RecommendedAction"= "The alert's recommended action"
    "Category"= "Trojan"
    "Enabled"= "true"}

$alertDefinition =
    Invoke-RestMethod ("{0}AlertDefinitions" -f $apiBaseUrl) `
        -Method Post -Headers $headers -Body ($alertDefinitionPayload | ConvertTo-Json)

$alertDefinitionId = $alertDefinition.Id

$iocPayload = @{
    "Type"="Sha1"
    "Value"="dead1111eeaabbccddeeaabbccddee11ffffffff"
    "DetectionFunction"="Equals"
    "Enabled"="true"
    "AlertDefinition@odata.bind"="AlertDefinitions({0})" -f $alertDefinitionId }


$ioc =
    Invoke-RestMethod ("{0}IndicatorsOfCompromise" -f $apiBaseUrl) `
         -Method Post -Headers $headers -Body ($iocPayload | ConvertTo-Json)
