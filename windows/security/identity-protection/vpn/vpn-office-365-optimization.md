---
title: Optimizing Office 365 traffic for remote workers with the native Windows 10 VPN client
description: tbd
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security, networking
audience: ITPro
ms.topic: article
author: kelleyvice-msft
ms.localizationpriority: medium
ms.date: 04/07/2020
ms.reviewer: 
manager: dansimp
ms.author: jajo
---

# Optimizing Office 365 traffic for remote workers with the native Windows 10 VPN client

This article describes how to configure the recommendations in the article [Optimize Office 365 connectivity for remote users using VPN split tunneling](/office365/enterprise/office-365-vpn-split-tunnel) for the *native Windows 10 VPN client*. This guidance enables VPN administrators to optimize Office 365 usage while still ensuring that all other traffic goes over the VPN connection and through existing security gateways and tooling.

This can be achieved for the native/built-in Windows 10 VPN client using a _Force Tunneling with Exclusions_ approach. This allows you to define IP-based exclusions *even when using force tunneling* in order to "split" certain traffic to use the physical interface while still forcing all other traffic via the VPN interface. Traffic addressed to specifically defined destinations (like those listed in the Office 365 optimize categories) will therefore follow a much more direct and efficient path, without the need to traverse or "hairpin" via the VPN tunnel and back out of the corporate network. For cloud-services like Office 365, this makes a huge difference in performance and usability for remote users.

> [!NOTE]
> The term _force tunneling with exclusions_ is sometimes confusingly called "split tunnels" by other vendors and in some online documentation. For Windows 10 VPN, the term _split tunneling_ is defined differently as described in the article [VPN routing decisions](./vpn-routing.md#split-tunnel-configuration).

## Solution Overview

The solution is based upon the use of a VPN Configuration Service Provider Reference profile ([VPNv2 CSP](/windows/client-management/mdm/vpnv2-csp)) and the embedded [ProfileXML](/windows/client-management/mdm/vpnv2-profile-xsd). These are used to configure the VPN profile on the device. Various provisioning approaches can be used to create and deploy the VPN profile as discussed in the article [Step 6. Configure Windows 10 client Always On VPN connections](/windows-server/remote/remote-access/vpn/always-on-vpn/deploy/vpn-deploy-client-vpn-connections#create-the-profilexml-configuration-files).

Typically, these VPN profiles are distributed using a Mobile Device Management solution like Intune, as described in [VPN profile options](./vpn-profile-options.md#apply-profilexml-using-intune) and [Configure the VPN client by using Intune](/windows-server/remote/remote-access/vpn/always-on-vpn/deploy/vpn-deploy-client-vpn-connections#configure-the-vpn-client-by-using-intune).

To enable the use of force tunneling in Windows 10 VPN, the `<RoutingPolicyType>` setting is typically configured with a value of _ForceTunnel_ in your existing Profile XML (or script) by way of the following entry, under the `<NativeProfile></NativeProfile>` section:

```xml
<RoutingPolicyType>ForceTunnel</RoutingPolicyType>
```

In order to define specific force tunnel exclusions, you then need to add the following lines to your existing Profile XML (or script) for each required exclusion, and place them outside of the `<NativeProfile></NativeProfile>` section as follows:

```xml
<Route>
 <Address>[IP addresses or subnet]</Address>
 <PrefixSize>[IP Prefix]</PrefixSize>
 <ExclusionRoute>true</ExclusionRoute>
</Route>
```

Entries defined by the `[IP Addresses or Subnet]` and `[IP Prefix]` references will consequently be added to the routing table as _more specific route entries_ that will use the Internet-connected interface as the default gateway, as opposed to using the VPN interface. You will need to define a unique and separate `<Route></Route>` section for each required exclusion.

An example of a correctly formatted Profile XML configuration for force tunnel with exclusions is shown below:

```xml
<VPNProfile>
 <NativeProfile>
  <RoutingPolicyType>ForceTunnel</RoutingPolicyType>
 </NativeProfile>
 <Route>
  <Address>203.0.113.0</Address>
  <PrefixSize>24</PrefixSize>
  <ExclusionRoute>true</ExclusionRoute>
 </Route>
 <Route>
  <Address>198.51.100.0</Address>
  <PrefixSize>22</PrefixSize>
  <ExclusionRoute>true</ExclusionRoute>
 </Route>
</VPNProfile>
```

> [!NOTE]
> The IP addresses and prefix size values in this example are used purely as examples only and should not be used.

## Solution Deployment

For Office 365, it is therefore necessary to add exclusions for all IP addresses documented within the optimize categories described in [Office 365 URLs and IP address ranges](/office365/enterprise/urls-and-ip-address-ranges) to ensure that they are excluded from VPN force tunneling.

This can be achieved manually by adding the IP addresses defined within the *optimize* category entries to an existing Profile XML (or script) file, or alternatively the following script can be used which dynamically adds the required entries to an existing PowerShell script, or XML file, based upon directly querying the REST-based web service to ensure the correct IP address ranges are always used.

An example of a PowerShell script that can be used to update a force tunnel VPN connection with Office 365 exclusions is provided below.

```powershell
# Copyright (c) Microsoft Corporation.  All rights reserved.
#  
# THIS SAMPLE CODE AND INFORMATION IS PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND,
# WHETHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED
# WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A PARTICULAR PURPOSE.
# IF THIS CODE AND INFORMATION IS MODIFIED, THE ENTIRE RISK OF USE OR RESULTS IN
# CONNECTION WITH THE USE OF THIS CODE AND INFORMATION REMAINS WITH THE USER.

<#
.SYNOPSIS
    Applies or updates recommended Office 365 optimize IP address exclusions to an existing force tunnel Windows 10 VPN profile
.DESCRIPTION
    Connects to the Office 365 worldwide commercial service instance endpoints to obtain the latest published IP address ranges
    Compares the optimized IP addresses with those contained in the supplied VPN Profile (PowerShell or XML file)
    Adds or updates IP addresses as necessary and saves the resultant file with "-NEW" appended to the file name
.PARAMETERS
    Filename and path for a supplied Windows 10 VPN profile file in either PowerShell or XML format
.NOTES
    Requires at least Windows 10 Version 1803 with KB4493437, 1809 with KB4490481, or later
.VERSION
    1.0
#>

param (
    [string]$VPNprofilefile
)

$usage=@"

This script uses the following parameters:

VPNprofilefile - The full path and name of the VPN profile PowerShell script or XML file

EXAMPLES

To check a VPN profile PowerShell script file:

Update-VPN-Profile-Office365-Exclusion-Routes.ps1 -VPNprofilefile [FULLPATH AND NAME OF POWERSHELL SCRIPT FILE]

To check a VPN profile XML file:

Update-VPN-Profile-Office365-Exclusion-Routes.ps1 -VPNprofilefile [FULLPATH AND NAME OF XML FILE]

"@
  
# Check if filename has been provided #
if ($VPNprofilefile -eq "")
{
   Write-Host "`nWARNING: You must specify either a PowerShell script or XML filename!" -ForegroundColor Red

    $usage
    exit
}

$FileExtension = [System.IO.Path]::GetExtension($VPNprofilefile)

# Check if XML file exists and is a valid XML file #
if ( $VPNprofilefile -ne "" -and $FileExtension -eq ".xml")
{
    if ( Test-Path $VPNprofilefile )
    {
        $xml = New-Object System.Xml.XmlDocument
        try
        {
            $xml.Load((Get-ChildItem -Path $VPNprofilefile).FullName)

        }
        catch [System.Xml.XmlException]
        {
            Write-Verbose "$VPNprofilefile : $($_.toString())"
            Write-Host "`nWARNING: The VPN profile XML file is not a valid xml file or incorrectly formatted!" -ForegroundColor Red
            $usage
            exit
        }
    }else
    {
        Write-Host "`nWARNING: VPN profile XML file does not exist or cannot be found!" -ForegroundColor Red
        $usage
        exit
    }
}

# Check if VPN profile PowerShell script file exists and contains a VPNPROFILE XML section #
if ( $VPNprofilefile -ne "" -and $FileExtension -eq ".ps1")
{
    if ( (Test-Path $VPNprofilefile) )
    {
        if (-Not $(Select-String -Path $VPNprofilefile -Pattern "<VPNPROFILE>") )
        {
            Write-Host "`nWARNING: PowerShell script file does not contain a valid VPN profile XML section or is incorrectly formatted!" -ForegroundColor Red
            $usage
            exit
        }
    }else
    {
        Write-Host "`nWARNING: PowerShell script file does not exist or cannot be found!"-ForegroundColor Red
        $usage
        exit
    }
}

# Define Office 365 endpoints and service URLs #
$ws = "https://endpoints.office.com"
$baseServiceUrl = "https://endpoints.office.com"

# Path where client ID and latest version number will be stored #
$datapath = $Env:TEMP + "\endpoints_clientid_latestversion.txt"

# Fetch client ID and version if data file exists; otherwise create new file #
if (Test-Path $datapath)
{
    $content = Get-Content $datapath
    $clientRequestId = $content[0]
    $lastVersion = $content[1]

}else
{
    $clientRequestId = [GUID]::NewGuid().Guid
    $lastVersion = "0000000000"
    @($clientRequestId, $lastVersion) | Out-File $datapath
}

# Call version method to check the latest version, and pull new data if version number is different #
$version = Invoke-RestMethod -Uri ($ws + "/version?clientRequestId=" + $clientRequestId)

if ($version[0].latest -gt $lastVersion)
{

    Write-Host
    Write-Host "A new version of Office 365 worldwide commercial service instance endpoints has been detected!" -ForegroundColor Cyan

    # Write the new version number to the data file #
    @($clientRequestId, $version[0].latest) | Out-File $datapath
}

# Invoke endpoints method to get the new data #
$uri = "$baseServiceUrl" + "/endpoints/worldwide?clientRequestId=$clientRequestId"

# Invoke endpoints method to get the data for the VPN profile comparison #
$endpointSets = Invoke-RestMethod -Uri ($uri)
$Optimize = $endpointSets | Where-Object { $_.category -eq "Optimize" }
$optimizeIpsv4 = $Optimize.ips | Where-Object { ($_).contains(".") } | Sort-Object -Unique

# Temporarily include additional IP address until Teams client update is released
$optimizeIpsv4 += "13.107.60.1/32"

# Process PowerShell script file start #
if ($VPNprofilefile -ne "" -and $FileExtension -eq ".ps1")
{
    Write-host "`nStarting PowerShell script exclusion route check...`n" -ForegroundColor Cyan

    # Clear Variables to allow re-run testing #

    $ARRVPN=$null              # Array to hold VPN addresses from VPN profile PowerShell file #
    $In_Opt_Only=$null         # Variable to hold IP addresses that only appear in the optimize list #
    $In_VPN_Only=$null         # Variable to hold IP addresses that only appear in the VPN profile PowerShell file #

    # Extract the Profile XML from the ps1 file #

    $regex = '(?sm).*^*.<VPNProfile>\r?\n(.*?)\r?\n</VPNProfile>.*'

    # Create xml format variable to compare with the optimize list #

    $xmlbody=(Get-Content -Raw $VPNprofilefile) -replace $regex, '$1'
    [xml]$VPNprofilexml="<VPNProfile>"+$xmlbody+"</VPNProfile>"

        # Loop through each address found in VPNPROFILE XML section #
        foreach ($Route in $VPNprofilexml.VPNProfile.Route)
        {
        $VPNIP=$Route.Address+"/"+$Route.PrefixSize
        [array]$ARRVPN=$ARRVPN+$VPNIP
        }

    # In optimize address list only #
    $In_Opt_Only= $optimizeIpsv4 | Where {$ARRVPN -NotContains $_}

    # In VPN list only #
    $In_VPN_only =$ARRVPN | Where {$optimizeIpsv4 -NotContains $_}
    [array]$Inpfile = get-content $VPNprofilefile

    if ($In_Opt_Only.Count -gt 0 )
    {
        Write-Host "Exclusion route IP addresses are unknown, missing, or need to be updated in the VPN profile`n" -ForegroundColor Red

         [int32]$insline=0

            for ($i=0; $i -lt $Inpfile.count; $i++)
            {
                if ($Inpfile[$i] -match "</NativeProfile>")
                {
                $insline += $i # Record the position of the line after the NativeProfile section ends #
                }
            }
            $OFS = "`r`n"
                foreach ($NewIP in $In_Opt_Only)
                {
                    # Add the missing IP address(es) #
                    $IPInfo=$NewIP.Split("/")
                    $InpFile[$insline] += $OFS+"    <Route>"
                    $InpFile[$insline] += $OFS+"      <Address>"+$IPInfo[0].Trim()+"</Address>"
                    $InpFile[$insline] += $OFS+"      <PrefixSize>"+$IPInfo[1].Trim()+"</PrefixSize>"
                    $InpFile[$insline] += $OFS+"      <ExclusionRoute>true</ExclusionRoute>"
                    $InpFile[$insline] += $OFS+"    </Route>"
                }
             # Update fileName and write new PowerShell file #
             $NewFileName=(Get-Item $VPNprofilefile).Basename + "-NEW.ps1"
             $OutFile=$(Split-Path $VPNprofilefile -Parent)+"\"+$NewFileName
             $InpFile | Set-Content $OutFile
             Write-Host "Exclusion routes have been added to VPN profile and output to a separate PowerShell script file; the original file has not been modified`n" -ForegroundColor Green
    }else
    {
        Write-Host "Exclusion route IP addresses are correct and up to date in the VPN profile`n" -ForegroundColor Green
        $OutFile=$VPNprofilefile
    }

if ( $In_VPN_Only.Count -gt 0 )
{
    Write-Host "Unknown exclusion route IP addresses have been found in the VPN profile`n" -ForegroundColor Yellow

        foreach ($OldIP in $In_VPN_Only)
        {
            [array]$Inpfile = get-content $Outfile
            $IPInfo=$OldIP.Split("/")
            Write-Host "Unknown exclusion route IP address"$IPInfo[0]"has been found in the VPN profile - Do you wish to remove it? (Y/N)`n" -ForegroundColor Yellow
            $matchstr="<Address>"+$IPInfo[0].Trim()+"</Address>"
            $DelAns=Read-host
                if ($DelAns.ToUpper() -eq "Y")
                {
                    [int32]$insline=0
                        for ($i=0; $i -lt $Inpfile.count; $i++)
                        {
                            if ($Inpfile[$i] -match $matchstr)
                            {
                                $insline += $i # Record the position of the line for the string match #
                            }
                        }
                        # Remove entries from XML #
                        $InpFile[$insline-1]="REMOVETHISLINE"
                        $InpFile[$insline]="REMOVETHISLINE"
                        $InpFile[$insline+1]="REMOVETHISLINE"
                        $InpFile[$insline+2]="REMOVETHISLINE"
                        $InpFile[$insline+3]="REMOVETHISLINE"
                        $InpFile=$InpFile | Where-Object {$_ -ne "REMOVETHISLINE"}

                        # Update filename and write new PowerShell file #
                        $NewFileName=(Get-Item $VPNprofilefile).Basename + "-NEW.xml"
                        $OutFile=$(Split-Path $VPNprofilefile -Parent)+"\"+$NewFileName
                        $Inpfile | Set-content $OutFile
                        Write-Host "`nAddress"$IPInfo[0]"exclusion route has been removed from the VPN profile and output to a separate PowerShell script file; the original file has not been modified`n" -ForegroundColor Green

                }else
                {
                    Write-Host "`nExclusion route IP address has *NOT* been removed from the VPN profile`n" -ForegroundColor Green
                }
        }
 }
}

# Process XML file start #
if ($VPNprofilefile -ne "" -and $FileExtension -eq ".xml")
{
    Write-host "`nStarting XML file exclusion route check...`n" -ForegroundColor Cyan

    # Clear variables to allow re-run testing #
    $ARRVPN=$null              # Array to hold VPN addresses from the XML file #
    $In_Opt_Only=$null         # Variable to hold IP Addresses that only appear in optimize list #
    $In_VPN_Only=$null         # Variable to hold IP Addresses that only appear in the VPN profile XML file #  

    # Extract the Profile XML from the XML file #
    $regex = '(?sm).*^*.<VPNProfile>\r?\n(.*?)\r?\n</VPNProfile>.*'

    # Create xml format variable to compare with optimize list #
    $xmlbody=(Get-Content -Raw $VPNprofilefile) -replace $regex, '$1'
    [xml]$VPNRulesxml="$xmlbody"

        # Loop through each address found in VPNPROFILE file #
        foreach ($Route in $VPNRulesxml.VPNProfile.Route)
        {
            $VPNIP=$Route.Address+"/"+$Route.PrefixSize
            [array]$ARRVPN=$ARRVPN+$VPNIP
        }

    # In optimize address list only #
    $In_Opt_Only= $optimizeIpsv4 | Where {$ARRVPN -NotContains $_}

    # In VPN list only #
    $In_VPN_only =$ARRVPN | Where {$optimizeIpsv4 -NotContains $_}
    [System.Collections.ArrayList]$Inpfile = get-content $VPNprofilefile

        if ($In_Opt_Only.Count -gt 0 )
        {
            Write-Host "Exclusion route IP addresses are unknown, missing, or need to be updated in the VPN profile`n" -ForegroundColor Red

                foreach ($NewIP in $In_Opt_Only)
                {
                    # Add the missing IP address(es) #
                    $IPInfo=$NewIP.Split("/")
                    $routes += "<Route>`n"+"`t<Address>"+$IPInfo[0].Trim()+"</Address>`n"+"`t<PrefixSize>"+$IPInfo[1].Trim()+"</PrefixSize>`n"+"`t<ExclusionRoute>true</ExclusionRoute>`n"+"</Route>`n"
                }
            $inspoint = $Inpfile.IndexOf("</VPNProfile>")
            $Inpfile.Insert($inspoint,$routes)

            # Update filename and write new XML file #
            $NewFileName=(Get-Item $VPNprofilefile).Basename + "-NEW.xml"
            $OutFile=$(Split-Path $VPNprofilefile -Parent)+"\"+$NewFileName
            $InpFile | Set-Content $OutFile
            Write-Host "Exclusion routes have been added to VPN profile and output to a separate XML file; the original file has not been modified`n`n" -ForegroundColor Green

        }else
        {
            Write-Host "Exclusion route IP addresses are correct and up to date in the VPN profile`n" -ForegroundColor Green
            $OutFile=$VPNprofilefile
        }

        if ( $In_VPN_Only.Count -gt 0 )
        {
            Write-Host "Unknown exclusion route IP addresses found in the VPN profile`n" -ForegroundColor Yellow

            foreach ($OldIP in $In_VPN_Only)
            {
                [array]$Inpfile = get-content $OutFile
                $IPInfo=$OldIP.Split("/")
                Write-Host "Unknown exclusion route IP address"$IPInfo[0]"has been found in the VPN profile - Do you wish to remove it? (Y/N)`n" -ForegroundColor Yellow
                $matchstr="<Route>"+"<Address>"+$IPInfo[0].Trim()+"</Address>"+"<PrefixSize>"+$IPInfo[1].Trim()+"</PrefixSize>"+"<ExclusionRoute>true</ExclusionRoute>"+"</Route>"
                $DelAns=Read-host
                    if ($DelAns.ToUpper() -eq "Y")
                    {
                        # Remove unknown IP address(es) #
                        $inspoint = $Inpfile[0].IndexOf($matchstr)
                        $Inpfile[0] = $Inpfile[0].Replace($matchstr,"")

                        # Update filename and write new XML file #
                        $NewFileName=(Get-Item $VPNprofilefile).Basename + "-NEW.xml"
                        $OutFile=$(Split-Path $VPNprofilefile -Parent)+"\"+$NewFileName
                        $Inpfile | Set-content $OutFile
                        Write-Host "`nAddress"$IPInfo[0]"exclusion route has been removed from the VPN profile and output to a separate XML file; the original file has not been modified`n" -ForegroundColor Green

                    }else
                    {
                        Write-Host "`nExclusion route IP address has *NOT* been removed from the VPN profile`n" -ForegroundColor Green
                    }
            }
        }
}
```

## Version Support

This solution is supported with the following versions of Windows:

- Windows 10 1903/1909 and newer: Included, no action needed
- Windows 10 1809: At least [KB4490481](https://support.microsoft.com/help/4490481/windows-10-update-kb4490481)
- Windows 10 1803: At least [KB4493437](https://support.microsoft.com/help/4493437/windows-10-update-kb4493437)
- Windows 10 1709 and lower: Exclusion routes are not supported

- Windows 10 Enterprise 2019 LTSC: At least [KB4490481](https://support.microsoft.com/help/4490481/windows-10-update-kb4490481)
- Windows 10 Enterprise 2016 LTSC: Exclusion routes are not supported
- Windows 10 Enterprise 2015 LTSC: Exclusion routes are not supported

Microsoft strongly recommends that the latest available Windows 10 cumulative update always be applied.

## Other Considerations

You should also be able to adapt this approach to include necessary exclusions for other cloud-services that can be defined by known/static IP addresses; exclusions required for [Cisco WebEx](https://help.webex.com/WBX000028782/Network-Requirements-for-Webex-Teams-Services) or [Zoom](https://support.zoom.us/hc/en-us/articles/201362683) are good examples.

## Examples

An example of a PowerShell script that can be used to create a force tunnel VPN connection with Office 365 exclusions is provided below, or refer to the guidance in [Create the ProfileXML configuration files](/windows-server/remote/remote-access/vpn/always-on-vpn/deploy/vpn-deploy-client-vpn-connections#create-the-profilexml-configuration-files) to create the initial PowerShell script:

```powershell
# Copyright (c) Microsoft Corporation.  All rights reserved.
#
# THIS SAMPLE CODE AND INFORMATION IS PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND,
# WHETHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED
# WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A PARTICULAR PURPOSE.
# IF THIS CODE AND INFORMATION IS MODIFIED, THE ENTIRE RISK OF USE OR RESULTS IN
# CONNECTION WITH THE USE OF THIS CODE AND INFORMATION REMAINS WITH THE USER.

<#
.SYNOPSIS
    Configures an AlwaysOn IKEv2 VPN Connection using a basic script
.DESCRIPTION
    Configures an AlwaysOn IKEv2 VPN Connection with proxy PAC information and force tunneling
.PARAMETERS
    Parameters are defined in a ProfileXML object within the script itself
.NOTES
    Requires at least Windows 10 Version 1803 with KB4493437, 1809 with KB4490481, or later
.VERSION
    1.0
#>

<#-- Define Key VPN Profile Parameters --#>
$ProfileName = 'Contoso VPN with Office 365 Exclusions'
$ProfileNameEscaped = $ProfileName -replace ' ', '%20'

<#-- Define VPN ProfileXML --#>
$ProfileXML = '<VPNProfile>
      <RememberCredentials>true</RememberCredentials>
    <DnsSuffix>corp.contoso.com</DnsSuffix>
    <AlwaysOn>true</AlwaysOn>
    <TrustedNetworkDetection>corp.contoso.com</TrustedNetworkDetection>
<NativeProfile>
        <Servers>edge1.contoso.com</Servers>
        <RoutingPolicyType>ForceTunnel</RoutingPolicyType>
        <NativeProtocolType>IKEv2</NativeProtocolType>
        <Authentication>
            <MachineMethod>Certificate</MachineMethod>
        </Authentication>
    </NativeProfile>
    <Route>
      <Address>13.107.6.152</Address>
      <PrefixSize>31</PrefixSize>
      <ExclusionRoute>true</ExclusionRoute>
    </Route>
    <Route>
      <Address>13.107.18.10</Address>
      <PrefixSize>31</PrefixSize>
      <ExclusionRoute>true</ExclusionRoute>
    </Route>
    <Route>
      <Address>13.107.128.0</Address>
      <PrefixSize>22</PrefixSize>
      <ExclusionRoute>true</ExclusionRoute>
    </Route>
    <Route>
      <Address>23.103.160.0</Address>
      <PrefixSize>20</PrefixSize>
      <ExclusionRoute>true</ExclusionRoute>
    </Route>
    <Route>
      <Address>40.96.0.0</Address>
      <PrefixSize>13</PrefixSize>
      <ExclusionRoute>true</ExclusionRoute>
    </Route>
    <Route>
      <Address>40.104.0.0</Address>
      <PrefixSize>15</PrefixSize>
      <ExclusionRoute>true</ExclusionRoute>
    </Route>
    <Route>
      <Address>52.96.0.0</Address>
      <PrefixSize>14</PrefixSize>
      <ExclusionRoute>true</ExclusionRoute>
    </Route>
    <Route>
      <Address>131.253.33.215</Address>
      <PrefixSize>32</PrefixSize>
      <ExclusionRoute>true</ExclusionRoute>
    </Route>
    <Route>
      <Address>132.245.0.0</Address>
      <PrefixSize>16</PrefixSize>
      <ExclusionRoute>true</ExclusionRoute>
    </Route>
    <Route>
      <Address>150.171.32.0</Address>
      <PrefixSize>22</PrefixSize>
      <ExclusionRoute>true</ExclusionRoute>
    </Route>
    <Route>
      <Address>191.234.140.0</Address>
      <PrefixSize>22</PrefixSize>
      <ExclusionRoute>true</ExclusionRoute>
    </Route>
    <Route>
      <Address>204.79.197.215</Address>
      <PrefixSize>32</PrefixSize>
    <ExclusionRoute>true</ExclusionRoute>
    </Route>
    <Route>
      <Address>13.107.136.0</Address>
      <PrefixSize>22</PrefixSize>
      <ExclusionRoute>true</ExclusionRoute>
    </Route>
    <Route>
      <Address>40.108.128.0</Address>
      <PrefixSize>17</PrefixSize>
      <ExclusionRoute>true</ExclusionRoute>
    </Route>
    <Route>
      <Address>52.104.0.0</Address>
      <PrefixSize>14</PrefixSize>
      <ExclusionRoute>true</ExclusionRoute>
    </Route>
    <Route>
      <Address>104.146.128.0</Address>
      <PrefixSize>17</PrefixSize>
      <ExclusionRoute>true</ExclusionRoute>
    </Route>  
    <Route>
      <Address>150.171.40.0</Address>
      <PrefixSize>22</PrefixSize>
      <ExclusionRoute>true</ExclusionRoute>
    </Route>  
    <Route>
      <Address>13.107.60.1</Address>
      <PrefixSize>32</PrefixSize>
      <ExclusionRoute>true</ExclusionRoute>
    </Route>
    <Route>
      <Address>13.107.64.0</Address>
     <PrefixSize>18</PrefixSize>
    <ExclusionRoute>true</ExclusionRoute>
    </Route>
    <Route>
      <Address>52.112.0.0</Address>
      <PrefixSize>14</PrefixSize>
      <ExclusionRoute>true</ExclusionRoute>
    </Route>
    <Route>
      <Address>52.120.0.0</Address>
      <PrefixSize>14</PrefixSize>
    <ExclusionRoute>true</ExclusionRoute>
    </Route>
    <Proxy>  
            <AutoConfigUrl>http://webproxy.corp.contoso.com/proxy.pac</AutoConfigUrl>  
      </Proxy>  
</VPNProfile>'

<#-- Convert ProfileXML to Escaped Format --#>
$ProfileXML = $ProfileXML -replace '<', '&lt;'
$ProfileXML = $ProfileXML -replace '>', '&gt;'
$ProfileXML = $ProfileXML -replace '"', '&quot;'

<#-- Define WMI-to-CSP Bridge Properties --#>
$nodeCSPURI = './Vendor/MSFT/VPNv2'
$namespaceName = "root\cimv2\mdm\dmmap"
$className = "MDM_VPNv2_01"

<#-- Define WMI Session --#>
$session = New-CimSession

<#-- Detect and Delete Previous VPN Profile --#>
try
{
    $deleteInstances = $session.EnumerateInstances($namespaceName, $className, $options)
    foreach ($deleteInstance in $deleteInstances)
    {
        $InstanceId = $deleteInstance.InstanceID
        if ("$InstanceId" -eq "$ProfileNameEscaped")
        {
            $session.DeleteInstance($namespaceName, $deleteInstance, $options)
            $Message = "Removed $ProfileName profile $InstanceId"
            Write-Host "$Message"
        } else {
            $Message = "Ignoring existing VPN profile $InstanceId"
            Write-Host "$Message"
        }
    }
}
catch [Exception]
{
    $Message = "Unable to remove existing outdated instance(s) of $ProfileName profile: $_"
    Write-Host "$Message"
    exit
}

<#-- Create VPN Profile --#>
try
{
    $newInstance = New-Object Microsoft.Management.Infrastructure.CimInstance $className, $namespaceName
    $property = [Microsoft.Management.Infrastructure.CimProperty]::Create("ParentID", "$nodeCSPURI", 'String', 'Key')
    $newInstance.CimInstanceProperties.Add($property)
    $property = [Microsoft.Management.Infrastructure.CimProperty]::Create("InstanceID", "$ProfileNameEscaped", 'String', 'Key')
    $newInstance.CimInstanceProperties.Add($property)
    $property = [Microsoft.Management.Infrastructure.CimProperty]::Create("ProfileXML", "$ProfileXML", 'String', 'Property')
    $newInstance.CimInstanceProperties.Add($property)

    $session.CreateInstance($namespaceName, $newInstance, $options)
    $Message = "Created $ProfileName profile."
    Write-Host "$Message"
    Write-Host "$ProfileName profile summary:"  
    $session.EnumerateInstances($namespaceName, $className, $options)
}
catch [Exception]
{
    $Message = "Unable to create $ProfileName profile: $_"
    Write-Host "$Message"
    exit
}

$Message = "Script Complete"
Write-Host "$Message"

```

An example of an [Intune-ready XML file](./vpn-profile-options.md#apply-profilexml-using-intune) that can be used to create a force tunnel VPN connection with Office 365 exclusions is provided below, or refer to the guidance in [Create the ProfileXML configuration files](/windows-server/remote/remote-access/vpn/always-on-vpn/deploy/vpn-deploy-client-vpn-connections#create-the-profilexml-configuration-files) to create the initial XML file.

>[!NOTE]
>This XML is formatted for use with Intune and cannot contain any carriage returns or whitespace.

```xml
<VPNProfile><RememberCredentials>true</RememberCredentials><DnsSuffix>corp.contoso.com</DnsSuffix><AlwaysOn>true</AlwaysOn><TrustedNetworkDetection>corp.contoso.com</TrustedNetworkDetection><NativeProfile><Servers>edge1.contoso.com</Servers><RoutingPolicyType>ForceTunnel</RoutingPolicyType><NativeProtocolType>IKEv2</NativeProtocolType><Authentication><MachineMethod>Certificate</MachineMethod></Authentication></NativeProfile><Route><Address>13.107.6.152</Address><PrefixSize>31</PrefixSize><ExclusionRoute>true</ExclusionRoute></Route><Route><Address>13.107.18.10</Address><PrefixSize>31</PrefixSize><ExclusionRoute>true</ExclusionRoute></Route><Route><Address>13.107.128.0</Address><PrefixSize>22</PrefixSize><ExclusionRoute>true</ExclusionRoute></Route><Route><Address>23.103.160.0</Address><PrefixSize>20</PrefixSize><ExclusionRoute>true</ExclusionRoute></Route><Route><Address>40.96.0.0</Address><PrefixSize>13</PrefixSize><ExclusionRoute>true</ExclusionRoute></Route><Route><Address>40.104.0.0</Address><PrefixSize>15</PrefixSize><ExclusionRoute>true</ExclusionRoute></Route><Route><Address>52.96.0.0</Address><PrefixSize>14</PrefixSize><ExclusionRoute>true</ExclusionRoute></Route><Route><Address>131.253.33.215</Address><PrefixSize>32</PrefixSize><ExclusionRoute>true</ExclusionRoute></Route><Route><Address>132.245.0.0</Address><PrefixSize>16</PrefixSize><ExclusionRoute>true</ExclusionRoute></Route><Route><Address>150.171.32.0</Address><PrefixSize>22</PrefixSize><ExclusionRoute>true</ExclusionRoute></Route><Route><Address>191.234.140.0</Address><PrefixSize>22</PrefixSize><ExclusionRoute>true</ExclusionRoute></Route><Route><Address>204.79.197.215</Address><PrefixSize>32</PrefixSize><ExclusionRoute>true</ExclusionRoute></Route><Route><Address>13.107.136.0</Address><PrefixSize>22</PrefixSize><ExclusionRoute>true</ExclusionRoute></Route><Route><Address>40.108.128.0</Address><PrefixSize>17</PrefixSize><ExclusionRoute>true</ExclusionRoute></Route><Route><Address>52.104.0.0</Address><PrefixSize>14</PrefixSize><ExclusionRoute>true</ExclusionRoute></Route><Route><Address>104.146.128.0</Address><PrefixSize>17</PrefixSize><ExclusionRoute>true</ExclusionRoute></Route><Route><Address>150.171.40.0</Address><PrefixSize>22</PrefixSize><ExclusionRoute>true</ExclusionRoute></Route><Route><Address>13.107.60.1</Address><PrefixSize>32</PrefixSize><ExclusionRoute>true</ExclusionRoute></Route><Route><Address>13.107.64.0</Address><PrefixSize>18</PrefixSize><ExclusionRoute>true</ExclusionRoute></Route><Route><Address>52.112.0.0</Address><PrefixSize>14</PrefixSize><ExclusionRoute>true</ExclusionRoute></Route><Route><Address>52.120.0.0</Address><PrefixSize>14</PrefixSize><ExclusionRoute>true</ExclusionRoute></Route><Proxy><AutoConfigUrl>http://webproxy.corp.contoso.com/proxy.pac</AutoConfigUrl></Proxy></VPNProfile>
```