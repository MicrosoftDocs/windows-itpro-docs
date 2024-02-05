---
title: "Quickstart: Configure a restricted user experience"
description: Learn how to configure a restricted user experience using Windows Configuration Designer, Microsoft Intune, PowerShell or GPO.
ms.topic: quickstart
ms.date: 02/05/2024
appliesto:
- ✅ <a href=/windows/release-health/supported-versions-windows-client target=_blank>Windows 11</a>
---

# Quickstart: Configure a restricted user experience

With a *restricted user experience*, you can control the applications allowed in a locked down Windows desktop.

This quickstart provides practical examples of how to configure a restricted user experience on Windows 11. The examples describe the steps using a mobile device management solution (MDM) like Microsoft Intune, provisioning packages (PPKG), and PowerShell. While different solutions are used, the configuration settings and results are the same.

The examples can be modified to fit your specific requirements. For example, you can add or remove applications from the list of allowed apps, or change the name of the user that automatically signs in to Windows.

## Prerequisites

Here's a list of requirements to complete this quickstart:

- A Windows 11 device
- Microsoft Intune, or a non-Microsoft MDM solution, if you want to configure the settings using MDM
- Windows Configuration Designer, if you want to configure the settings using a provisioning package
- Access to the [psexec tool](/sysinternals/downloads/psexec), if you want to test the configuration using Windows PowerShell

## Configure a restricted user experience

[!INCLUDE [tab-intro](../../../includes/configure/tab-intro.md)]

#### [:::image type="icon" source="../images/icons/intune.svg"::: **Intune/CSP**](#tab/intune)

> [!TIP]
> Use the following Graph call to automatically create a custom policy in your Microsoft Intune tenant without assignments nor scope tags.
>
> When using this call, authenticate to your tenant in the Graph Explorer window. If it's the first time using Graph Explorer, you may need to authorize the application to access your tenant or to modify the existing permissions. This graph call requires *DeviceManagementConfiguration.ReadWrite.All* permissions.

```msgraph-interactive
POST https://graph.microsoft.com/beta/deviceManagement/deviceConfigurations
Content-Type: application/json

{ "id": "00-0000-0000-0000-000000000000", "displayName": "_MSLearn_Example", "description": "Collection of settings for Assigned Access", "roleScopeTagIds": [ "0" ], "@odata.type": "#microsoft.graph.windows10CustomConfiguration", "omaSettings": [ { "@odata.type": "#microsoft.graph.omaSettingString", "displayName": "AssignedAccess_Configuration", "description": null, "omaUri": "./Vendor/MSFT/AssignedAccess/Configuration", "secretReferenceValueId": null, "isEncrypted": true, "value": "<?xml version=\"1.0\" encoding=\"utf-8\" ?>\n<AssignedAccessConfiguration xmlns=\"http://schemas.microsoft.com/AssignedAccess/2017/config\"\n    xmlns:rs5=\"http://schemas.microsoft.com/AssignedAccess/201810/config\"\n    xmlns:v2=\"http://schemas.microsoft.com/AssignedAccess/201810/config\"\n    xmlns:v3=\"http://schemas.microsoft.com/AssignedAccess/2020/config\"\n    xmlns:v5=\"http://schemas.microsoft.com/AssignedAccess/2022/config\"\n    xmlns:win11=\"http://schemas.microsoft.com/AssignedAccess/2022/config\"\n    >\n    <Profiles>\n        <Profile Id=\"{9A2A490F-10F6-4764-974A-43B19E722C23}\">\n            <AllAppsList>\n                <AllowedApps>\n                    <App AppUserModelId=\"Microsoft.WindowsCalculator_8wekyb3d8bbwe!App\" />\n                    <App AppUserModelId=\"Microsoft.Windows.Photos_8wekyb3d8bbwe!App\" />\n                    <App AppUserModelId=\"Microsoft.BingWeather_8wekyb3d8bbwe!App\" />\n                    <App DesktopAppPath=\"C:\\Windows\\system32\\cmd.exe\" />\n                    <App DesktopAppPath=\"%windir%\\System32\\WindowsPowerShell\\v1.0\\Powershell.exe\" />\n                    <App DesktopAppPath=\"%windir%\\explorer.exe\" />\n                    <App AppUserModelId=\"windows.immersivecontrolpanel_cw5n1h2txyewy!microsoft.windows.immersivecontrolpanel\" />\n                    <App AppUserModelId=\"%ProgramFiles(x86)%\\Microsoft\\Edge\\Application\\msedge.exe\" />\n                </AllowedApps>\n            </AllAppsList>\n            <rs5:FileExplorerNamespaceRestrictions>\n                <rs5:AllowedNamespace Name=\"Downloads\"/>\n                <v3:AllowRemovableDrives/>\n            </rs5:FileExplorerNamespaceRestrictions>\n            <win11:StartPins>\n                <![CDATA[{\n                    \"pinnedList\":[\n                        {\"packagedAppId\":\"Microsoft.WindowsCalculator_8wekyb3d8bbwe!App\"},\n                        {\"packagedAppId\":\"Microsoft.Windows.Photos_8wekyb3d8bbwe!App\"},\n                        {\"packagedAppId\":\"Microsoft.BingWeather_8wekyb3d8bbwe!App\"},\n                        {\"desktopAppLink\":\"%APPDATA%\\\\Microsoft\\\\Windows\\\\Start Menu\\\\Programs\\\\System Tools\\\\Command Prompt.lnk\"},\n                        {\"desktopAppLink\":\"%APPDATA%\\\\Microsoft\\\\Windows\\\\Start Menu\\\\Programs\\\\Windows PowerShell\\\\Windows PowerShell.lnk\"},\n                        {\"desktopAppLink\":\"%APPDATA%\\\\Microsoft\\\\Windows\\\\Start Menu\\\\Programs\\\\File Explorer.lnk\"},\n                        {\"packagedAppId\": \"windows.immersivecontrolpanel_cw5n1h2txyewy!microsoft.windows.immersivecontrolpanel\"},\n                        {\"desktopAppLink\": \"%ALLUSERSPROFILE%\\\\Microsoft\\\\Windows\\\\Start Menu\\\\Programs\\\\Microsoft Edge.lnk\"}\n                    ]\n                }]]>\n            </win11:StartPins>\n            <Taskbar ShowTaskbar=\"true\"/>\n        </Profile>\n    </Profiles>\n    <Configs>\n        <Config>\n            <AutoLogonAccount rs5:DisplayName=\"Library Kiosk\"/>\n            <DefaultProfile Id=\"{9A2A490F-10F6-4764-974A-43B19E722C23}\"/>\n        </Config>\n    </Configs>\n</AssignedAccessConfiguration>" } ] }
```

[!INCLUDE [intune-custom-settings-2](../../../includes/configure/intune-custom-settings-2.md)]

Alternatively, you can configure devices using a [custom policy][MEM-1] with the [AssignedAccess CSP][WIN-3].

- **Setting:** `./Vendor/MSFT/AssignedAccess/Configuration`
- **Value:**

[!INCLUDE [quickstart-restricted-experience-xml](includes/quickstart-restricted-experience-xml.md)]

#### [:::image type="icon" source="../images/icons/provisioning-package.svg"::: **PPKG**](#tab/ppkg)

[!INCLUDE [provisioning-package-1](../../../includes/configure/provisioning-package-1.md)]

- **Path:** `AssignedAccess/MultiAppAssignedAccessSettings`
- **Value:**

[!INCLUDE [quickstart-restricted-experience-xml](includes/quickstart-restricted-experience-xml.md)]

[!INCLUDE [provisioning-package-2](../../../includes/configure/provisioning-package-2.md)]

#### [:::image type="icon" source="../images/icons/powershell.svg"::: **PowerShell**](#tab/ps)

[!INCLUDE [powershell-wmi-bridge-1](../../../includes/configure/powershell-wmi-bridge-1.md)]

```powershell
$eventLogFilterHashTable = @{
    ProviderName = "Microsoft-Windows-AssignedAccess";
    StartTime    = Get-Date -Millisecond 0
}

$namespaceName="root\cimv2\mdm\dmmap"
$className="MDM_AssignedAccess"
$obj = Get-CimInstance -Namespace $namespaceName -ClassName $className
$obj.Configuration = [System.Net.WebUtility]::HtmlEncode(@"
<?xml version="1.0" encoding="utf-8" ?>
<AssignedAccessConfiguration xmlns="http://schemas.microsoft.com/AssignedAccess/2017/config"
    xmlns:rs5="http://schemas.microsoft.com/AssignedAccess/201810/config"
    xmlns:v2="http://schemas.microsoft.com/AssignedAccess/201810/config"
    xmlns:v3="http://schemas.microsoft.com/AssignedAccess/2020/config"
    xmlns:v5="http://schemas.microsoft.com/AssignedAccess/2022/config"
    xmlns:win11="http://schemas.microsoft.com/AssignedAccess/2022/config">
    <Profiles>
        <Profile Id="{9A2A490F-10F6-4764-974A-43B19E722C23}">
            <AllAppsList>
                <AllowedApps>
                    <App AppUserModelId="Microsoft.WindowsCalculator_8wekyb3d8bbwe!App" />
                    <App AppUserModelId="Microsoft.Windows.Photos_8wekyb3d8bbwe!App" />
                    <App AppUserModelId="Microsoft.BingWeather_8wekyb3d8bbwe!App" />
                    <App DesktopAppPath="C:\Windows\system32\cmd.exe" />
                    <App DesktopAppPath="%windir%\System32\WindowsPowerShell\v1.0\Powershell.exe" />
                    <App DesktopAppPath="%windir%\explorer.exe" />
                    <App AppUserModelId="windows.immersivecontrolpanel_cw5n1h2txyewy!microsoft.windows.immersivecontrolpanel" />
                    <App AppUserModelId="%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe" />
                </AllowedApps>
            </AllAppsList>
            <rs5:FileExplorerNamespaceRestrictions>
                <rs5:AllowedNamespace Name="Downloads"/>
                <v3:AllowRemovableDrives/>
            </rs5:FileExplorerNamespaceRestrictions>
            <win11:StartPins>
                <![CDATA[{
                    "pinnedList":[
                        {"packagedAppId":"Microsoft.WindowsCalculator_8wekyb3d8bbwe!App"},
                        {"packagedAppId":"Microsoft.Windows.Photos_8wekyb3d8bbwe!App"},
                        {"packagedAppId":"Microsoft.BingWeather_8wekyb3d8bbwe!App"},
                        {"desktopAppLink":"%APPDATA%\\Microsoft\\Windows\\Start Menu\\Programs\\System Tools\\Command Prompt.lnk"},
                        {"desktopAppLink":"%APPDATA%\\Microsoft\\Windows\\Start Menu\\Programs\\Windows PowerShell\\Windows PowerShell.lnk"},
                        {"desktopAppLink":"%APPDATA%\\Microsoft\\Windows\\Start Menu\\Programs\\File Explorer.lnk"},
                        {"packagedAppId": "windows.immersivecontrolpanel_cw5n1h2txyewy!microsoft.windows.immersivecontrolpanel"},
                        {"desktopAppLink": "%ALLUSERSPROFILE%\\Microsoft\\Windows\\Start Menu\\Programs\\Microsoft Edge.lnk"}
                    ]
                }]]>
            </win11:StartPins>
            <Taskbar ShowTaskbar="true"/>
        </Profile>
    </Profiles>
    <Configs>
        <Config>
            <AutoLogonAccount rs5:DisplayName="Library Kiosk"/>
            <DefaultProfile Id="{9A2A490F-10F6-4764-974A-43B19E722C23}"/>
        </Config>
    </Configs>
</AssignedAccessConfiguration>
"@)

$obj = Set-CimInstance -CimInstance $obj -ErrorVariable cimSetError -ErrorAction SilentlyContinue
if($cimSetError) {
    Write-Output "An ERROR occurred. Displaying error record and attempting to retrieve error logs...`n"
    Write-Error -ErrorRecord $cimSetError[0]

    $timeout = New-TimeSpan -Seconds 30
    $stopwatch = [System.Diagnostics.Stopwatch]::StartNew()
    do{
        $events = Get-WinEvent -FilterHashtable $eventLogFilterHashTable -ErrorAction Ignore
    } until ($events.Count -or $stopwatch.Elapsed -gt $timeout) # wait for the log to be available

    if($events.Count) {
        $events | ForEach-Object {
            Write-Output "$($_.TimeCreated) [$($_.LevelDisplayName.ToUpper())] $($_.Message -replace "`n|`r")"
        }
    } else {
        Write-Warning "Timed-out attempting to retrieve event logs..."
    }

    Exit 1
}

Write-Output "Successfully applied Assigned Access configuration"
```

[!INCLUDE [powershell-wmi-bridge-2](../../../includes/configure/powershell-wmi-bridge-2.md)]

---

## User experience

After the settings are applied, reboot the device. A user account names `Library Kiosk` is automatically signed in, with access to a limited set of applications, which are pinned to the Start menu.

:::image type="content" source="images/quickstart-restricted-experience.png" alt-text="Screenshot of the Windows desktop used for the quickstart." border="false":::

## Next steps

> [!div class="nextstepaction"]
> To learn more about how to configure Windows to execute as a kiosk or as a restricted user experience see:
>
> [Configure a multi-app kiosk >](lock-down-windows-11-to-specific-apps.md)

<!--links-->

[WIN-3]: /windows/client-management/mdm/assignedaccess-csp
[MEM-1]: /mem/intune/configuration/custom-settings-windows-10
