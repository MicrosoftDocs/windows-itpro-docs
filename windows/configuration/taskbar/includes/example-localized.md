---
author: paolomatarazzo
ms.author: paoloma
ms.date: 03/13/2024
ms.topic: include
---

::: zone pivot="windows-10"

```xml
<?xml version="1.0" encoding="utf-8"?>
<LayoutModificationTemplate
    xmlns="http://schemas.microsoft.com/Start/2014/LayoutModification"
    xmlns:defaultlayout="http://schemas.microsoft.com/Start/2014/FullDefaultLayout"
    xmlns:start="http://schemas.microsoft.com/Start/2014/StartLayout"
    xmlns:taskbar="http://schemas.microsoft.com/Start/2014/TaskbarLayout"
    Version="1">

  <CustomTaskbarLayoutCollection PinListPlacement="Replace">
    <defaultlayout:TaskbarLayout Region="US|UK">
      <taskbar:TaskbarPinList >
        <taskbar:DesktopApp DesktopApplicationID="Microsoft.Windows.Explorer"/>
        <taskbar:DesktopApp DesktopApplicationID="MSEdge"/>
        <taskbar:DesktopApp DesktopApplicationID="Microsoft.Office.WINWORD.EXE.15" />
        <taskbar:DesktopApp DesktopApplicationLinkPath="%APPDATA%\Microsoft\Windows\Start Menu\Programs\System Tools\Command Prompt.lnk"/>
      </taskbar:TaskbarPinList>
    </defaultlayout:TaskbarLayout>
    <defaultlayout:TaskbarLayout Region="DE|FR|IT">
      <taskbar:TaskbarPinList>
        <taskbar:DesktopApp DesktopApplicationID="MSEdge"/>
        <taskbar:UWA AppUserModelID="windows.immersivecontrolpanel_cw5n1h2txyewy!microsoft.windows.immersivecontrolpanel" />
        <taskbar:DesktopApp DesktopApplicationID="Microsoft.Windows.Explorer"/>
        <taskbar:DesktopApp DesktopApplicationID="Microsoft.Office.EXCEL.EXE.15" />
        <taskbar:DesktopApp DesktopApplicationID="%PROGRAMDATA%\Microsoft\Windows\Start Menu\Programs\Accessories\quickassist.lnk" />
        <taskbar:DesktopApp DesktopApplicationID="{1AC14E77-02E7-4E5D-B744-2EB1AE5198B7}\quickassist.exe" />
      </taskbar:TaskbarPinList>
    </defaultlayout:TaskbarLayout>
    <defaultlayout:TaskbarLayout>
      <taskbar:TaskbarPinList>
        <taskbar:DesktopApp DesktopApplicationID="MSEdge"/>
        <taskbar:DesktopApp DesktopApplicationID="Microsoft.Windows.Explorer"/>
        <taskbar:DesktopApp DesktopApplicationID="Microsoft.Office.WINWORD.EXE.15" />
        <taskbar:DesktopApp DesktopApplicationID="Microsoft.Office.EXCEL.EXE.15" />
        <taskbar:DesktopApp DesktopApplicationLinkPath="%APPDATA%\Microsoft\Windows\Start Menu\Programs\System Tools\Command Prompt.lnk"/>
      </taskbar:TaskbarPinList>
    </defaultlayout:TaskbarLayout>
  </CustomTaskbarLayoutCollection>
</LayoutModificationTemplate>
```

::: zone-end

::: zone pivot="windows-11"

```xml
<?xml version="1.0" encoding="utf-8"?>
<LayoutModificationTemplate
    xmlns="http://schemas.microsoft.com/Start/2014/LayoutModification"
    xmlns:defaultlayout="http://schemas.microsoft.com/Start/2014/FullDefaultLayout"
    xmlns:start="http://schemas.microsoft.com/Start/2014/StartLayout"
    xmlns:taskbar="http://schemas.microsoft.com/Start/2014/TaskbarLayout"
    Version="1">

  <CustomTaskbarLayoutCollection PinListPlacement="Replace">
    <defaultlayout:TaskbarLayout Region="US|UK">
      <taskbar:TaskbarPinList >
        <taskbar:UWA AppUserModelID="windows.immersivecontrolpanel_cw5n1h2txyewy!microsoft.windows.immersivecontrolpanel" />
        <taskbar:DesktopApp DesktopApplicationID="Microsoft.Windows.Explorer"/>
        <taskbar:DesktopApp DesktopApplicationID="MSEdge"/>
        <taskbar:DesktopApp DesktopApplicationLinkPath="%APPDATA%\Microsoft\Windows\Start Menu\Programs\System Tools\Command Prompt.lnk"/>
      </taskbar:TaskbarPinList>
    </defaultlayout:TaskbarLayout>
    <defaultlayout:TaskbarLayout Region="DE|FR|IT">
      <taskbar:TaskbarPinList>
        <taskbar:DesktopApp DesktopApplicationID="MSEdge"/>
        <taskbar:UWA AppUserModelID="windows.immersivecontrolpanel_cw5n1h2txyewy!microsoft.windows.immersivecontrolpanel" />
        <taskbar:UWA AppUserModelID="Microsoft.MicrosoftLoop_8wekyb3d8bbwe!App" />
        <taskbar:UWA AppUserModelID="MicrosoftCorporationII.QuickAssist_8wekyb3d8bbwe!App" />
      </taskbar:TaskbarPinList>
    </defaultlayout:TaskbarLayout>
    <defaultlayout:TaskbarLayout>
      <taskbar:TaskbarPinList>
        <taskbar:DesktopApp DesktopApplicationID="MSEdge"/>
        <taskbar:DesktopApp DesktopApplicationID="Microsoft.Windows.Explorer"/>
        <taskbar:DesktopApp DesktopApplicationID="Microsoft.Office.WINWORD.EXE.15" />
        <taskbar:DesktopApp DesktopApplicationID="Microsoft.Office.EXCEL.EXE.15" />
      </taskbar:TaskbarPinList>
    </defaultlayout:TaskbarLayout>
  </CustomTaskbarLayoutCollection>
</LayoutModificationTemplate>
```

::: zone-end
