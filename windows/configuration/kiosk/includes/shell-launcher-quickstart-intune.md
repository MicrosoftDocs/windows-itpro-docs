---
author: paolomatarazzo
ms.author: paoloma
ms.date: 02/05/2024
ms.topic: include
ms.prod: windows-client
---

```msgraph-interactive
POST https://graph.microsoft.com/beta/deviceManagement/deviceConfigurations
Content-Type: application/json

{ "id": "00-0000-0000-0000-000000000000", "displayName": "_MSLearn_Example_Kiosk - Shell Launcher", "description": "This is a sample policy created from an article on learn.microsoft.com.", "roleScopeTagIds": [ "0" ], "@odata.type": "#microsoft.graph.windows10CustomConfiguration", "omaSettings": [ { "@odata.type": "#microsoft.graph.omaSettingString", "displayName": "ShellLauncher", "description": null, "omaUri": "./Vendor/MSFT/AssignedAccess/ShellLauncher", "secretReferenceValueId": null, "isEncrypted": true, "value": "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ShellLauncherConfiguration\nxmlns=\"http://schemas.microsoft.com/ShellLauncher/2018/Configuration\"\nxmlns:rs5=\"http://schemas.microsoft.com/ShellLauncher/2019/Configuration\">\n    <Profiles>\n        <DefaultProfile>\n            <Shell Shell=\"%SystemRoot%\\explorer.exe\"/>\n        </DefaultProfile>\n        <Profile Id=\"{EDB3036B-780D-487D-A375-69369D8A8F78}\">\n            <Shell Shell=\"%ProgramFiles(x86)%\\Microsoft\\Edge\\Application\\msedge.exe --kiosk https://maps.heathrow.com --edge-kiosk-type=fullscreen --kiosk-idle-timeout-minutes=2\" rs5:AppType=\"Desktop\" rs5:AllAppsFullScreen=\"true\">\n                <ReturnCodeActions>\n                    <ReturnCodeAction ReturnCode=\"0\" Action=\"RestartShell\"/>\n                    <ReturnCodeAction ReturnCode=\"-1\" Action=\"RestartDevice\"/>\n                    <ReturnCodeAction ReturnCode=\"255\" Action=\"ShutdownDevice\"/>\n                </ReturnCodeActions>\n                <DefaultAction Action=\"RestartShell\"/>\n            </Shell>\n        </Profile>\n    </Profiles>\n    <Configs>\n        <Config>\n            <AutoLogonAccount/>\n            <Profile Id=\"{EDB3036B-780D-487D-A375-69369D8A8F78}\"/>\n        </Config>\n    </Configs>\n</ShellLauncherConfiguration>" } ], }
```