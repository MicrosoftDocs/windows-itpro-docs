---
author: paolomatarazzo
ms.author: paoloma
ms.date: 02/05/2024
ms.topic: include
---

<!-- example of a kiosk experience with UWP app-->

```xml
<AssignedAccessConfiguration xmlns="http://schemas.microsoft.com/AssignedAccess/2017/config">
  <Profiles>
    <Profile Id="{EDB3036B-780D-487D-A375-69369D8A8F78}">
      <KioskModeApp AppUserModelId="Microsoft.BingWeather_8wekyb3d8bbwe!App" />
    </Profile>
  </Profiles>
  <Configs>
    <Config>
      <Account>Weather app</Account>
      <DefaultProfile Id="{EDB3036B-780D-487D-A375-69369D8A8F78}" />
    </Config>
  </Configs>
</AssignedAccessConfiguration>
```
