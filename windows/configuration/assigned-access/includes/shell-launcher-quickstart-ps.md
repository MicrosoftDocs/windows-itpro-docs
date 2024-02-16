---
author: paolomatarazzo
ms.author: paoloma
ms.date: 02/05/2024
ms.topic: include
ms.prod: windows-client
---

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