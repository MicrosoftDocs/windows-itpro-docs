---
author: paolomatarazzo
ms.author: paoloma
ms.date: 02/05/2024
ms.topic: include
---

<!-- example of a kiosk experience and a restricted user experience with 2 profiles-->

```xml
<?xml version="1.0" encoding="utf-8"?>
<AssignedAccessConfiguration xmlns="http://schemas.microsoft.com/AssignedAccess/2017/config" xmlns:v5="http://schemas.microsoft.com/AssignedAccess/2022/config">
  <Profiles>
    <Profile Id="{EDB3036B-780D-487D-A375-69369D8A8F78}">
      <KioskModeApp AppUserModelId="Microsoft.BingWeather_8wekyb3d8bbwe!App" />
    </Profile>
    <Profile Id="{9A2A490F-10F6-4764-974A-43B19E722C23}">
      <AllAppsList>
        <AllowedApps>
          <!-- Add configuration here as needed -->
        </AllowedApps>
      </AllAppsList>
      <!-- Add configuration here as needed -->
    </Profile>
  </Profiles>
  <Configs>
    <Config>
      <Account>Weather app</Account>
      <DefaultProfile Id="{EDB3036B-780D-487D-A375-69369D8A8F78}" />
    </Config>
    <Config>
      <Account>Library Kiosk</Account>
      <DefaultProfile Id="{9A2A490F-10F6-4764-974A-43B19E722C23}" />
    </Config>
  </Configs>
</AssignedAccessConfiguration>
```
