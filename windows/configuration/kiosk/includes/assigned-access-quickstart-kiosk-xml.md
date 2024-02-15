---
author: paolomatarazzo
ms.author: paoloma
ms.date: 02/05/2024
ms.topic: include
ms.prod: windows-client
---

```xml
<?xml version="1.0" encoding="utf-8" ?>
<AssignedAccessConfiguration
    xmlns="http://schemas.microsoft.com/AssignedAccess/2017/config"
    xmlns:rs5="http://schemas.microsoft.com/AssignedAccess/201810/config"
    xmlns:v4="http://schemas.microsoft.com/AssignedAccess/2021/config"
    >
    <Profiles>
        <Profile Id="{EDB3036B-780D-487D-A375-69369D8A8F78}">
            <KioskModeApp v4:ClassicAppPath="%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe" v4:ClassicAppArguments="--kiosk https://maps.cltairport.com/ --edge-kiosk-type=fullscreen --kiosk-idle-timeout-minutes=2" />
            <v4:BreakoutSequence Key="Ctrl+A"/>
        </Profile>
    </Profiles>
    <Configs>
        <Config>
            <AutoLogonAccount rs5:DisplayName="Airport Kiosk"/>
            <DefaultProfile Id="{EDB3036B-780D-487D-A375-69369D8A8F78}"/>
        </Config>
    </Configs>
</AssignedAccessConfiguration>
```
