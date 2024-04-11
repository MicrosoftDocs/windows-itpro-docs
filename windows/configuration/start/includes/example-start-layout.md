---
author: paolomatarazzo
ms.author: paoloma
ms.date: 03/13/2024
ms.topic: include
---

::: zone pivot="windows-10"

```xml
<LayoutModificationTemplate xmlns:defaultlayout="http://schemas.microsoft.com/Start/2014/FullDefaultLayout" xmlns:start="http://schemas.microsoft.com/Start/2014/StartLayout" Version="1" xmlns="http://schemas.microsoft.com/Start/2014/LayoutModification">
  <LayoutOptions StartTileGroupCellWidth="6" />
  <DefaultLayoutOverride>
    <StartLayoutCollection>
      <defaultlayout:StartLayout GroupCellWidth="6">
        <start:Group Name="">
          <start:DesktopApplicationTile Size="2x2" Column="0" Row="2" DesktopApplicationLinkPath="%APPDATA%\Microsoft\Windows\Start Menu\Programs\Windows PowerShell\Windows PowerShell.lnk" />
          <start:DesktopApplicationTile Size="2x2" Column="2" Row="4" DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Accessories\Quick Assist.lnk" />
          <start:DesktopApplicationTile Size="2x2" Column="4" Row="2" DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Accessories\Paint.lnk" />
          <start:DesktopApplicationTile Size="2x2" Column="4" Row="0" DesktopApplicationLinkPath="%APPDATA%\Microsoft\Windows\Start Menu\Programs\System Tools\File Explorer.lnk" />
          <start:DesktopApplicationTile Size="2x2" Column="0" Row="0" DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Microsoft Edge.lnk" />
          <start:Tile Size="2x2" Column="4" Row="4" AppUserModelID="Microsoft.MicrosoftStickyNotes_8wekyb3d8bbwe!App" />
          <start:Tile Size="2x2" Column="2" Row="2" AppUserModelID="Microsoft.WindowsTerminal_8wekyb3d8bbwe!App" />
          <start:Tile Size="2x2" Column="0" Row="4" AppUserModelID="Microsoft.Windows.Photos_8wekyb3d8bbwe!App" />
          <start:Tile Size="2x2" Column="0" Row="6" AppUserModelID="Microsoft.Windows.SecHealthUI_cw5n1h2txyewy!SecHealthUI" />
          <start:Tile Size="2x2" Column="2" Row="6" AppUserModelID="Microsoft.OutlookforWindows_8wekyb3d8bbwe!Microsoft.OutlookforWindows" />
          <start:Tile Size="2x2" Column="2" Row="0" AppUserModelID="windows.immersivecontrolpanel_cw5n1h2txyewy!microsoft.windows.immersivecontrolpanel" />
        </start:Group>
      </defaultlayout:StartLayout>
    </StartLayoutCollection>
  </DefaultLayoutOverride>
</LayoutModificationTemplate>
```

::: zone-end

::: zone pivot="windows-11"

```json
{
    "pinnedList": [
        {"desktopAppLink": "%ALLUSERSPROFILE%\\Microsoft\\Windows\\Start Menu\\Programs\\Microsoft Edge.lnk" },
        { "packagedAppId": "windows.immersivecontrolpanel_cw5n1h2txyewy!microsoft.windows.immersivecontrolpanel" },
        { "desktopAppLink": "%APPDATA%\\Microsoft\\Windows\\Start Menu\\Programs\\File Explorer.lnk" },
        { "desktopAppLink": "%APPDATA%\\Microsoft\\Windows\\Start Menu\\Programs\\Windows PowerShell\\Windows PowerShell.lnk" },
        { "packagedAppId": "Microsoft.WindowsTerminal_8wekyb3d8bbwe!App" },
        { "packagedAppId": "Microsoft.Paint_8wekyb3d8bbwe!App" },
        { "packagedAppId": "Microsoft.Windows.Photos_8wekyb3d8bbwe!App" },
        { "packagedAppId": "MicrosoftCorporationII.QuickAssist_8wekyb3d8bbwe!App" },
        { "packagedAppId": "Microsoft.MicrosoftStickyNotes_8wekyb3d8bbwe!App" },
        { "packagedAppId": "Microsoft.SecHealthUI_8wekyb3d8bbwe!SecHealthUI" },
        { "packagedAppId": "Microsoft.OutlookForWindows_8wekyb3d8bbwe!Microsoft.OutlookforWindows"}
    ]
}
```

::: zone-end
