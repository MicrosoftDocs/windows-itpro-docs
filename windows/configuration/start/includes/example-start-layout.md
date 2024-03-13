---
author: paolomatarazzo
ms.author: paoloma
ms.date: 03/13/2024
ms.topic: include
---

::: zone pivot="windows-10"

```xml
<StartLayout>
  <LayoutModificationTemplate xmlns:defaultlayout="http://schemas.microsoft.com/Start/2014/FullDefaultLayout" xmlns:start="http://schemas.microsoft.com/Start/2014/StartLayout" Version="1" xmlns="http://schemas.microsoft.com/Start/2014/LayoutModification">
    <LayoutOptions StartTileGroupCellWidth="6" />
    <DefaultLayoutOverride>
      <StartLayoutCollection>
        <defaultlayout:StartLayout GroupCellWidth="6">
          <start:Group Name="">
            <start:Tile Size="2x2" Column="0" Row="4" AppUserModelID="windows.immersivecontrolpanel_cw5n1h2txyewy!microsoft.windows.immersivecontrolpanel" />
            <start:DesktopApplicationTile Size="2x2" Column="2" Row="4" DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Microsoft Edge.lnk" />
            <start:Tile Size="2x2" Column="4" Row="0" AppUserModelID="Microsoft.BingWeather_8wekyb3d8bbwe!App" />
            <start:DesktopApplicationTile Size="2x2" Column="4" Row="2" DesktopApplicationLinkPath="%APPDATA%\Microsoft\Windows\Start Menu\Programs\System Tools\File Explorer.lnk" />
            <start:DesktopApplicationTile Size="2x2" Column="2" Row="2" DesktopApplicationLinkPath="%APPDATA%\Microsoft\Windows\Start Menu\Programs\Windows PowerShell\Windows PowerShell.lnk" />
            <start:Tile Size="2x2" Column="2" Row="0" AppUserModelID="Microsoft.Windows.Photos_8wekyb3d8bbwe!App" />
            <start:Tile Size="2x2" Column="0" Row="0" AppUserModelID="Microsoft.WindowsCalculator_8wekyb3d8bbwe!App" />
            <start:DesktopApplicationTile Size="2x2" Column="0" Row="2" DesktopApplicationLinkPath="%APPDATA%\Microsoft\Windows\Start Menu\Programs\System Tools\Command Prompt.lnk" />
          </start:Group>
        </defaultlayout:StartLayout>
      </StartLayoutCollection>
    </DefaultLayoutOverride>
  </LayoutModificationTemplate>
</StartLayout>
```

::: zone-end

::: zone pivot="windows-11"

```json
{
  "pinnedList": [
    {"packagedAppId": "Microsoft.WindowsCalculator_8wekyb3d8bbwe!App"},
    {"packagedAppId": "Microsoft.Windows.Photos_8wekyb3d8bbwe!App"},
    {"packagedAppId": "Microsoft.BingWeather_8wekyb3d8bbwe!App"},
    {"desktopAppLink": "%APPDATA%\\Microsoft\\Windows\\Start Menu\\Programs\\System Tools\\Command Prompt.lnk"},
    {"desktopAppLink": "%APPDATA%\\Microsoft\\Windows\\Start Menu\\Programs\\Windows PowerShell\\Windows PowerShell.lnk"},
    {"desktopAppLink": "%APPDATA%\\Microsoft\\Windows\\Start Menu\\Programs\\File Explorer.lnk"},
    {"packagedAppId": "windows.immersivecontrolpanel_cw5n1h2txyewy!microsoft.windows.immersivecontrolpanel"},
    {"desktopAppLink": "%ALLUSERSPROFILE%\\Microsoft\\Windows\\Start Menu\\Programs\\Microsoft Edge.lnk"}
  ]
}
```

::: zone-end
