---
title: Create an Shell Launcher configuration file
description: Learn how to create an XML file to configure a device with Shell Launcher.
ms.date: 02/12/2024
ms.topic: how-to
zone_pivot_groups: windows-versions-11-10
appliesto:
---

# Create an Shell Launcher configuration file

## Full XML example

::: zone pivot="windows-11"

```xml
<?xml version="1.0" encoding="utf-8" ?>
<AssignedAccessConfiguration xmlns="http://schemas.microsoft.com/AssignedAccess/2017/config"
    xmlns:rs5="http://schemas.microsoft.com/AssignedAccess/201810/config"
    xmlns:v2="http://schemas.microsoft.com/AssignedAccess/201810/config"
    xmlns:v3="http://schemas.microsoft.com/AssignedAccess/2020/config"
    xmlns:v5="http://schemas.microsoft.com/AssignedAccess/2022/config"
    xmlns:win11="http://schemas.microsoft.com/AssignedAccess/2022/config">
    <Profiles>
        <Profile Id="{6954c40a-45dd-4176-a2e3-ecaf5c97f425}">
            <AllAppsList>
                <AllowedApps>
                    <App AppUserModelId="Microsoft.WindowsCalculator_8wekyb3d8bbwe!App" />
                    <App AppUserModelId="Microsoft.Windows.Photos_8wekyb3d8bbwe!App" />
                    <App AppUserModelId="Microsoft.BingWeather_8wekyb3d8bbwe!App" />
                    <App DesktopAppPath="C:\Windows\system32\cmd.exe" />
                    <App DesktopAppPath="%windir%\System32\WindowsPowerShell\v1.0\Powershell.exe" />
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
```
::: zone-end


:::row:::
    :::column span="1":::
    **Scenario**
    :::column-end:::
    :::column span="3":::
    **Sample Xml**
    :::column-end:::
:::row-end:::
:::row:::
    :::column span="1":::
    **Block everything**
    :::column-end:::
    :::column span="3":::
    Either don't use the node or leave it empty

    ```xml
    <v2:FileExplorerNamespaceRestrictions>
    </v2:FileExplorerNamespaceRestrictions>
    ```
    :::column-end:::
:::row-end:::
:::row:::
    :::column span="1":::
    **Only allow downloads**
    :::column-end:::
    :::column span="3":::
    ```xml
    <v2:FileExplorerNamespaceRestrictions>
        <v2:AllowedNamespace Name="Downloads"/>
    </v2:FileExplorerNamespaceRestrictions>
    ```
    :::column-end:::
:::row-end:::

:::row:::
    :::column span="1":::
    **Only allow removable drives**
    :::column-end:::
    :::column span="3":::
    ```xml
    <v2:FileExplorerNamespaceRestrictions>
        <v3:AllowRemovableDrives />
    </v2:FileExplorerNamespaceRestrictions>
    ```
    :::column-end:::
:::row-end:::

:::row:::
    :::column span="1":::
    **Allow both Downloads, and removable drives**
    :::column-end:::
    :::column span="3":::
    ```xml
    <v2:FileExplorerNamespaceRestrictions>
        <v2:AllowedNamespace Name="Downloads"/>
        <v3:AllowRemovableDrives/>
    </v2:FileExplorerNamespaceRestrictions>
    ```
    :::column-end:::
:::row-end:::

:::row:::
    :::column span="1":::
    **No restrictions, all locations are allowed**
    :::column-end:::
    :::column span="3":::
    ```xml
    <v2:FileExplorerNamespaceRestrictions>
        <v3:NoRestriction />
    </v2:FileExplorerNamespaceRestrictions>
    ```
    :::column-end:::
:::row-end:::

<!--troubleshooting
Event Viewer
Run "eventvwr.msc"
Navigate to "Applications and Services Logs"
There are 2 areas of your interests:
"Microsoft-Windows-AssignedAccess"
"Microsoft-Windows-AssignedAccessBroker"
Before any repro, it's recommended to enable "Operational" channel to get the most of logs.
TraceLogging
<TBD>

Registry Key
These locations contain the latest Assigned Access Configuration:

HKLM\SOFTWARE\Microsoft\Windows\AssignedAccessConfiguration
HKLM\SOFTWARE\Microsoft\Windows\AssignedAccessCsp
These locations contain the latest "evaluated" configuration for each sign-in user:

"HKCU\SOFTWARE\Microsoft\Windows\AssignedAccessConfiguration" (If it doesn't exist, it means no Assigned Access to be enforced for this user.)
-->
