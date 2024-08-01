---
title: Using PowerShell scripting with the WMI Bridge Provider
description: This article covers using PowerShell Cmdlet scripts to configure per-user and per-device policy settings, and how to invoke methods through the WMI Bridge Provider.
ms.topic: conceptual
ms.date: 07/08/2024
---

# Using PowerShell scripting with the WMI Bridge Provider

This article covers using PowerShell Cmdlet scripts to configure per-user and per-device policy settings, and how to invoke methods through the [WMI Bridge Provider](/windows/win32/dmwmibridgeprov/mdm-bridge-wmi-provider-portal).

## Configuring per-device policy settings

This section provides a PowerShell Cmdlet sample script to configure per-device settings through the [WMI Bridge Provider](/windows/win32/dmwmibridgeprov/mdm-bridge-wmi-provider-portal). If a class supports device settings, there must be a class level qualifier defined for InPartition("local-system").

For all device settings, the WMI Bridge client must be executed under local system user. To do that, download the psexec tool from <https://technet.microsoft.com/sysinternals/bb897553.aspx> and run `psexec.exe -i -s cmd.exe` from an elevated admin command prompt.

The script example in this section uses the class [MDM\_Policy\_Config01\_WiFi02](/windows/win32/dmwmibridgeprov/mdm-policy-config01-wifi02):

```ManagedCPlusPlus
[dynamic, provider("DMWmiBridgeProv"), InPartition("local-system")]
class MDM_Policy_Config01_WiFi02
{
  string InstanceID;
  string ParentID;
  sint32 AllowInternetSharing;
  sint32 AllowAutoConnectToWiFiSenseHotspots;
  sint32 WLANScanMode;
};
```

The following script describes how to create, enumerate, query, modify, and delete instances.

```PowerShell
$namespaceName = "root\cimv2\mdm\dmmap"
$className = "MDM_Policy_Config01_WiFi02"

# Create a new instance for MDM_Policy_Config01_WiFi02
New-CimInstance -Namespace $namespaceName -ClassName $className -Property @{ParentID="./Vendor/MSFT/Policy/Config";InstanceID="WiFi";AllowInternetSharing=1;AllowAutoConnectToWiFiSenseHotspots=0;WLANScanMode=100}

# Enumerate all instances available for MDM_Policy_Config01_WiFi02
Get-CimInstance -Namespace $namespaceName -ClassName $className

# Query instances with matching properties
Get-CimInstance -Namespace $namespaceName -ClassName $className -Filter "ParentID='./Vendor/MSFT/Policy/Config' and InstanceID='WiFi'"

# Modify existing instance
$obj = Get-CimInstance -Namespace $namespaceName -ClassName $className -Filter "ParentID='./Vendor/MSFT/Policy/Config' and InstanceID='WiFi'"
$obj.WLANScanMode=500
Set-CimInstance -CimInstance $obj

# Delete existing instance
try
{
    $obj = Get-CimInstance -Namespace $namespaceName -ClassName $className -Filter "ParentID='./Vendor/MSFT/Policy/Config' and InstanceID='WiFi'"
    Remove-CimInstance -CimInstance $obj
}
catch [Exception]
{
    write-host $_ | out-string
}
```

## Configuring per-user settings

This section provides a PowerShell Cmdlet sample script to configure per-user settings through the WMI Bridge. If a class supports user settings, there must be a class level qualifier defined for InPartition("local-user").

The script example in this section uses the class [MDM\_Policy\_User\_Config01\_Authentication02](/windows/win32/dmwmibridgeprov/mdm-policy-user-config01-authentication02):

```ManagedCPlusPlus
[dynamic, provider("DMWmiBridgeProv"), InPartition("local-user")]
class MDM_Policy_User_Config01_Authentication02
{
  string InstanceID;
  string ParentID;
  sint32 AllowEAPCertSSO;
};
```

> [!NOTE]
> If the currently logged on user is trying to access or modify user settings for themselves, it is much easier to use the per-device settings script from the previous section. All PowerShell cmdlets must be executed under an elevated admin command prompt.

If accessing or modifying settings for a different user, then the PowerShell script is more complicated because the WMI Bridge expects the user SID to be set in MI Custom Context, which isn't supported in native PowerShell cmdlets.

> [!NOTE]
> All commands must executed under local system.

Windows command `wmic useraccount get name, sid` can be used to obtain the user SID. The following script example assumes the user SID is` S-1-5-21-4017247134-4237859428-3008104844-1001`.

```PowerShell
$namespaceName = "root\cimv2\mdm\dmmap"
$className = "MDM_Policy_User_Config01_Authentication02"

# Configure CIM operation options with target user info
$options = New-Object Microsoft.Management.Infrastructure.Options.CimOperationOptions
$options.SetCustomOption("PolicyPlatformContext_PrincipalContext_Type", "PolicyPlatform_UserContext", $false)
$options.SetCustomOption("PolicyPlatformContext_PrincipalContext_Id", "S-1-5-21-4017247134-4237859428-3008104844-1001", $false)

# Construct session used for all operations
$session = New-CimSession

##########################################################################
# Create a new instance for MDM_Policy_User_Config01_Authentication02
##########################################################################
$newInstance = New-Object Microsoft.Management.Infrastructure.CimInstance $className, $namespaceName
$property = [Microsoft.Management.Infrastructure.CimProperty]::Create("ParentID", './Vendor/MSFT/Policy/Config', "string", "Key")
$newInstance.CimInstanceProperties.Add($property)
$property = [Microsoft.Management.Infrastructure.CimProperty]::Create("InstanceID", 'Authentication', "String", "Key")
$newInstance.CimInstanceProperties.Add($property)
$property = [Microsoft.Management.Infrastructure.CimProperty]::Create("AllowEAPCertSSO", 1, "Sint32", "Property")
$newInstance.CimInstanceProperties.Add($property)
try
{
    $session.CreateInstance($namespaceName, $newInstance, $options)
}
catch [Exception]
{
    write-host $_ | out-string
}

##########################################################################
# Enumerate all instances for MDM_Policy_User_Config01_Authentication02
##########################################################################
$session.EnumerateInstances($namespaceName, $className, $options)

##########################################################################
# Query instance for MDM_Policy_User_Config01_Authentication02
# with matching properties
##########################################################################
$getInstance = New-Object Microsoft.Management.Infrastructure.CimInstance $className, $namespaceName
$property = [Microsoft.Management.Infrastructure.CimProperty]::Create("ParentID", './Vendor/MSFT/Policy/Config', "string", "Key")
$getInstance.CimInstanceProperties.Add($property)
$property = [Microsoft.Management.Infrastructure.CimProperty]::Create("InstanceID", 'Authentication', "String", "Key")
$getInstance.CimInstanceProperties.Add($property)
try
{
    $session.GetInstance($namespaceName, $getInstance, $options)
}
catch [Exception]
{
    write-host $_ | out-string
}

##########################################################################
# Modify existing instance for MDM_Policy_User_Config01_Authentication02
##########################################################################
$getInstance = New-Object Microsoft.Management.Infrastructure.CimInstance $className, $namespaceName
$property = [Microsoft.Management.Infrastructure.CimProperty]::Create("ParentID", './Vendor/MSFT/Policy/Config', "string", "Key")
$getInstance.CimInstanceProperties.Add($property)
$property = [Microsoft.Management.Infrastructure.CimProperty]::Create("InstanceID", 'Authentication', "String", "Key")
$getInstance.CimInstanceProperties.Add($property)
try
{
    $updateInstance = $session.GetInstance($namespaceName, $getInstance, $options)[0]
    $updateInstance.AllowEAPCertSSO = 0
    $session.ModifyInstance($namespaceName, $updateInstance, $options)
}
catch [Exception]
{
    write-host $_ | out-string
}

##########################################################################
# Delete existing instance for MDM_Policy_User_Config01_Authentication02
##########################################################################
$getInstance = New-Object Microsoft.Management.Infrastructure.CimInstance $className, $namespaceName
$property = [Microsoft.Management.Infrastructure.CimProperty]::Create("ParentID", './Vendor/MSFT/Policy/Config', "string", "Key")
$getInstance.CimInstanceProperties.Add($property)
$property = [Microsoft.Management.Infrastructure.CimProperty]::Create("InstanceID", 'Authentication', "String", "Key")
$getInstance.CimInstanceProperties.Add($property)
try
{
    $deleteInstance = $session.GetInstance($namespaceName, $getInstance, $options)[0]
    $session.DeleteInstance($namespaceName, $deleteInstance, $options)
}
catch [Exception]
{
    write-host $_ | out-string
}
```

## Invoking methods

This section provides a PowerShell Cmdlet sample script to invoke a WMI Bridge object method. The following script must be executed under local system user. To do that, download the psexec tool from <https://technet.microsoft.com/sysinternals/bb897553.aspx> and run `psexec.exe -i -s cmd.exe` from an elevated admin command prompt.

The script example in this section uses the [UpgradeEditionWithProductKeyMethod](/windows/win32/dmwmibridgeprov/mdm-windowslicensing-upgradeeditionwithproductkeymethod) method of the [MDM\_WindowsLicensing](/windows/win32/dmwmibridgeprov/mdm-windowslicensing) class.

```PowerShell
$namespaceName = "root\cimv2\mdm\dmmap"
$className = "MDM_WindowsLicensing"
$methodName = "UpgradeEditionWithProductKeyMethod"
$fakeProductKey = "7f1a3659-3fa7-4c70-93ce-0d354e8e158e"

$session = New-CimSession

$params = New-Object Microsoft.Management.Infrastructure.CimMethodParametersCollection
$param = [Microsoft.Management.Infrastructure.CimMethodParameter]::Create("param", $fakeProductKey, "String", "In")
$params.Add($param)

try
{
    $instance = Get-CimInstance -Namespace $namespaceName -ClassName $className -Filter "ParentID='./Vendor/MSFT' and InstanceID='WindowsLicensing'"
    $session.InvokeMethod($namespaceName, $instance, $methodName, $params)
}
catch [Exception]
{
    write-host $_ | out-string
}
```

## Related articles

[WMI Bridge Provider](/windows/win32/dmwmibridgeprov/mdm-bridge-wmi-provider-portal)
