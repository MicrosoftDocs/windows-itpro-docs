---
author: tiaraquan
ms.author: tiaraquan
manager: aaroncz
ms.service: windows-client
ms.subservice: autopatch
ms.topic: include
ms.date: 09/16/2024
ms.localizationpriority: medium
---
<!--This file is shared by windows-autopatch-driver-and-firmware-programmatic-controls.md, windows-autopatch-windows-feature-update-programmatic-controls.md articles. Headings may be driven by article context. 7512398 -->

When a device no longer requires management, unenroll it from Windows Autopatch. Just like [enrolling a device](#enroll-devices), specify either `driver` or `feature` as the value for the `updateCategory`. The device will no longer receive updates from Windows Autopatch for the specified update category. Depending on the device's configuration, it may start to receive updates from Windows Update. For instance, if a device is still enrolled for feature updates, but it's unenrolled from drivers:

- Existing driver deployments from the service won't be offered to the device
- The device continues to receive feature updates from Windows Autopatch
- Drivers may start being installed from Windows Update depending on the device's configuration

To unenroll a device, POST to [updatableAssets](/graph/api/resources/windowsupdates-updatableasset) using [unenrollAssets](/graph/api/windowsupdates-updatableasset-unenrollassets). In the request body, specify:
- **Microsoft Entra Device ID** as `id` for the device
- Either `feature` or `driver` for the updateCategory

The following example removes `driver` enrollment for two devices, `01234567-89ab-cdef-0123-456789abcdef` and `01234567-89ab-cdef-0123-456789abcde0`:

```msgraph-interactive
POST https://graph.microsoft.com/beta/admin/windows/updates/updatableAssets/unenrollAssets
content-type: application/json

{
  "updateCategory": "driver",
  "assets": [
    {
      "@odata.type": "#microsoft.graph.windowsUpdates.azureADDevice",
      "id": "01234567-89ab-cdef-0123-456789abcdef"
    },
    {
      "@odata.type": "#microsoft.graph.windowsUpdates.azureADDevice",
      "id": "01234567-89ab-cdef-0123-456789abcde0"
    }
  ]
}
```
