$authUrl = 'Your Authorization URL'
$clientId = 'Your Client ID'
$clientSecret = 'Your Client Secret'


Try
{
    $tokenPayload = @{
        "resource" = 'https://graph.windows.net'
        "client_id" = $clientId
        "client_secret" = $clientSecret
        "grant_type"='client_credentials'}

    "Fetching an access token"
    $response = Invoke-RestMethod $authUrl -Method Post -Body $tokenPayload
    $token = $response.access_token
    "Token fetched successfully"

    $headers = @{
        "Content-Type" = "application/json"
        "Accept" = "application/json"
        "Authorization" = "Bearer {0}" -f $token }

    $apiBaseUrl = "https://ti.securitycenter.windows.com/V1.0/"

    $alertDefinitionPayload = @{
        "Name" = "Test Alert"
        "Severity" = "Medium"
        "InternalDescription" = "A test alert used for demonstrating the WDATP TI API feature"
        "Title" = "Test alert."
        "UxDescription" = "This is a test alert based on a sample custom alert   definition. This alert was riggered manually using a provided test command. It indicates that the Threat Intelligence API has been properly enabled"
        "RecommendedAction" = "No recommended action for this test alert."
        "Category" = "SuspiciousNetworkTraffic"
        "Enabled" = "true"}
    "Creating an Alert Definition"
    $alertDefinition =
        Invoke-RestMethod ("{0}AlertDefinitions" -f $apiBaseUrl) `
            -Method Post -Headers $headers -Body ($alertDefinitionPayload | ConvertTo-Json)
    "Alert Definition created successfully"
    $alertDefinitionId = $alertDefinition.Id

    $iocPayload = @{
        "Type"="IpAddress"
        "Value"="52.184.197.12"
        "DetectionFunction"="Equals"
        "Enabled"="true"
        "AlertDefinition@odata.bind"="AlertDefinitions({0})" -f $alertDefinitionId }

    "Creating an Indicator of Compromise"
    $ioc =
        Invoke-RestMethod ("{0}IndicatorsOfCompromise" -f $apiBaseUrl) `
             -Method Post -Headers $headers -Body ($iocPayload | ConvertTo-Json)
    "Indicator of Compromise created successfully"

    "All done!"
}
Catch
{
    'Something Went Wrong! Got the following exception message: {0}' -f $_.Exception.Message
}
