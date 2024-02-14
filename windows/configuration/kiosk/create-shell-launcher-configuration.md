---
title: Create an Shell Launcher configuration file
description: Learn how to create an XML file to configure a device with Shell Launcher.
ms.date: 02/12/2024
ms.topic: how-to
---

# Create an Shell Launcher configuration file

## Full XML example


```xml
<?xml version="1.0" encoding="utf-8"?>
<ShellLauncherConfiguration
xmlns="http://schemas.microsoft.com/ShellLauncher/2018/Configuration"
xmlns:v2="http://schemas.microsoft.com/ShellLauncher/2019/Configuration">
    <Profiles>
        <DefaultProfile>
            <Shell Shell="%SystemRoot%\explorer.exe"/>
        </DefaultProfile>
        <Profile Id="{EDB3036B-780D-487D-A375-69369D8A8F78}">
            <Shell Shell="%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe --kiosk https://maps.heathrow.com --edge-kiosk-type=fullscreen --kiosk-idle-timeout-minutes=2" v2:AppType="Desktop" v2:AllAppsFullScreen="true">
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
```

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
