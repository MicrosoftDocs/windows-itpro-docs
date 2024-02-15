---
title: "Quickstart: configure a kiosk experience with Shell Launcher"
description: Learn how to configure a kiosk experience with Shell Launcher, using Windows Configuration Designer, Microsoft Intune, or PowerShell.
ms.topic: quickstart
ms.date: 02/05/2024
appliesto:
- ✅ <a href=/windows/release-health/supported-versions-windows-client target=_blank>Windows 11</a>
---

# Quickstart: configure a kiosk experience with Shell Launcher

This quickstart provides the information to configure a kiosk experience with Shell Launcher, using Windows Configuration Designer, Microsoft Intune, or PowerShell.

## Prerequisites

>[!div class="checklist"]
>Here's a list of requirements to complete this quickstart:
>
>- A Windows Enterprise or Education device
>- Microsoft Intune, or a non-Microsoft MDM solution, if you want to configure the settings using MDM
>- Access to the [psexec tool](/sysinternals/downloads/psexec), if you want to test the configuration using Windows PowerShell

## Configure a kiosk device

[!INCLUDE [tab-intro](../../../includes/configure/tab-intro.md)]

#### [:::image type="icon" source="../images/icons/intune.svg"::: **Intune/CSP**](#tab/intune)

> [!TIP]
> Use the following Graph call to automatically create a custom policy in your Microsoft Intune tenant without assignments nor scope tags.
>
> When using this call, authenticate to your tenant in the Graph Explorer window. If it's the first time using Graph Explorer, you may need to authorize the application to access your tenant or to modify the existing permissions. This graph call requires *DeviceManagementConfiguration.ReadWrite.All* permissions.

```msgraph-interactive
POST https://graph.microsoft.com/beta/deviceManagement/deviceConfigurations
Content-Type: application/json

{ "id": "00-0000-0000-0000-000000000000", "displayName": "_MSLearn_Example_Kiosk - Shell Launcher", "description": "This is a sample policy created from an article on learn.microsoft.com.", "roleScopeTagIds": [ "0" ], "@odata.type": "#microsoft.graph.windows10CustomConfiguration", "omaSettings": [ { "@odata.type": "#microsoft.graph.omaSettingString", "displayName": "ShellLauncher", "description": null, "omaUri": "./Vendor/MSFT/AssignedAccess/ShellLauncher", "secretReferenceValueId": null, "isEncrypted": true, "value": "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ShellLauncherConfiguration\nxmlns=\"http://schemas.microsoft.com/ShellLauncher/2018/Configuration\"\nxmlns:rs5=\"http://schemas.microsoft.com/ShellLauncher/2019/Configuration\">\n    <Profiles>\n        <DefaultProfile>\n            <Shell Shell=\"%SystemRoot%\\explorer.exe\"/>\n        </DefaultProfile>\n        <Profile Id=\"{EDB3036B-780D-487D-A375-69369D8A8F78}\">\n            <Shell Shell=\"%ProgramFiles(x86)%\\Microsoft\\Edge\\Application\\msedge.exe --kiosk https://maps.heathrow.com --edge-kiosk-type=fullscreen --kiosk-idle-timeout-minutes=2\" rs5:AppType=\"Desktop\" rs5:AllAppsFullScreen=\"true\">\n                <ReturnCodeActions>\n                    <ReturnCodeAction ReturnCode=\"0\" Action=\"RestartShell\"/>\n                    <ReturnCodeAction ReturnCode=\"-1\" Action=\"RestartDevice\"/>\n                    <ReturnCodeAction ReturnCode=\"255\" Action=\"ShutdownDevice\"/>\n                </ReturnCodeActions>\n                <DefaultAction Action=\"RestartShell\"/>\n            </Shell>\n        </Profile>\n    </Profiles>\n    <Configs>\n        <Config>\n            <AutoLogonAccount/>\n            <Profile Id=\"{EDB3036B-780D-487D-A375-69369D8A8F78}\"/>\n        </Config>\n    </Configs>\n</ShellLauncherConfiguration>" } ], }
```

[!INCLUDE [intune-custom-settings-2](../../../includes/configure/intune-custom-settings-2.md)]

Alternatively, you can configure devices using a [custom policy][MEM-1] with the [AssignedAccess CSP][WIN-3].

- **Setting:** `./Vendor/MSFT/AssignedAccess/ShellLauncher`
- **Value:**

[!INCLUDE [quickstart-shell-launcher-xml](includes/quickstart-shell-launcher-xml.md)]

#### [:::image type="icon" source="../images/icons/powershell.svg"::: **PowerShell**](#tab/ps)

[!INCLUDE [powershell-wmi-bridge-1](../../../includes/configure/powershell-wmi-bridge-1.md)]

```PowerShell
$shellLauncherConfiguration = @"
<?xml version="1.0" encoding="utf-8"?>
<ShellLauncherConfiguration
xmlns="http://schemas.microsoft.com/ShellLauncher/2018/Configuration"
xmlns:rs5="http://schemas.microsoft.com/ShellLauncher/2019/Configuration">
    <Profiles>
        <DefaultProfile>
            <Shell Shell="%SystemRoot%\explorer.exe"/>
        </DefaultProfile>
        <Profile Id="{EDB3036B-780D-487D-A375-69369D8A8F78}">
            <Shell Shell="%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe --kiosk https://maps.heathrow.com --edge-kiosk-type=fullscreen --kiosk-idle-timeout-minutes=2" rs5:AppType="Desktop" rs5:AllAppsFullScreen="true">
                <ReturnCodeActions>
                    <ReturnCodeAction ReturnCode="0" Action="RestartShell"/>
                    <ReturnCodeAction ReturnCode="-1" Action="RestartDevice"/>
                    <ReturnCodeAction ReturnCode="255" Action="ShutdownDevice"/>
                </ReturnCodeActions>
                <DefaultAction Action="RestartShell"/>
            </Shell>
        </Profile>
    </Profiles>
    <Configs>
        <Config>
            <AutoLogonAccount/>
            <Profile Id="{EDB3036B-780D-487D-A375-69369D8A8F78}"/>
        </Config>
    </Configs>
</ShellLauncherConfiguration>
"@

$namespaceName="root\cimv2\mdm\dmmap"
$className="MDM_AssignedAccess"
$obj = Get-CimInstance -Namespace $namespaceName -ClassName $className
$obj.ShellLauncher = [System.Net.WebUtility]::HtmlEncode($shellLauncherConfiguration)
$obj = Set-CimInstance -CimInstance $obj


```

[!INCLUDE [powershell-wmi-bridge-2](../../../includes/configure/powershell-wmi-bridge-2.md)]

---

## User experience

After the settings are applied, reboot the device. A local account is automatically signed in, and Microsoft Edge app starts automatically in full screen, opening the London Heathrow airport map.

## Next steps

> [!div class="nextstepaction"]
> Learn more how to configure Windows to execute as a restricted user experience:
>
> [Configure a shell launcher configuration](create-shell-launcher-configuration.md)

<!--links-->

[WIN-3]: /windows/client-management/mdm/assignedaccess-csp
[MEM-1]: /mem/intune/configuration/custom-settings-windows-10
