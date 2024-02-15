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

{ "id": "00000000-0000-0000-0000-000000000000", "displayName": "_MSLearn_Example_Kiosk - Assigned Access", "description": "This is a sample policy created from an article on learn.microsoft.com.", "roleScopeTagIds": [ "0" ], "@odata.type": "#microsoft.graph.windows10CustomConfiguration", "omaSettings": [ { "omaUri": "./Vendor/MSFT/AssignedAccess/Configuration", "displayName": "Configuration", "@odata.type": "#microsoft.graph.omaSettingString", "value": "<?xml version=\"1.0\" encoding=\"utf-8\" ?>\n<AssignedAccessConfiguration\n    xmlns=\"http://schemas.microsoft.com/AssignedAccess/2017/config\"\n    xmlns:rs5=\"http://schemas.microsoft.com/AssignedAccess/201810/config\"\n    xmlns:v4=\"http://schemas.microsoft.com/AssignedAccess/2021/config\"\n    >\n    <Profiles>\n        <Profile Id=\"{EDB3036B-780D-487D-A375-69369D8A8F78}\">\n            <KioskModeApp v4:ClassicAppPath=\"%ProgramFiles(x86)%\\Microsoft\\Edge\\Application\\msedge.exe\" v4:ClassicAppArguments=\"--kiosk https://maps.cltairport.com/ --edge-kiosk-type=fullscreen --kiosk-idle-timeout-minutes=2\" />\n            <v4:BreakoutSequence Key=\"Ctrl+A\"/>\n        </Profile>\n    </Profiles>\n    <Configs>\n        <Config>\n            <AutoLogonAccount rs5:DisplayName=\"Airport Kiosk\"/>\n            <DefaultProfile Id=\"{EDB3036B-780D-487D-A375-69369D8A8F78}\"/>\n        </Config>\n    </Configs>\n</AssignedAccessConfiguration>" } ] }
```