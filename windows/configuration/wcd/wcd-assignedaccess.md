---
title: AssignedAccess (Windows 10)
description: This section describes the AssignedAccess setting that you can configure in provisioning packages for Windows 10 using Windows Configuration Designer.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: dansimp
ms.localizationpriority: medium
ms.author: dansimp
ms.topic: article
ms.date: 04/30/2018
ms.reviewer: 
manager: dansimp
---

# AssignedAccess (Windows Configuration Designer reference)

Use this setting to configure single use (kiosk) devices.

## Applies to

| Setting | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | :---: | :---: | :---: | :---: | :---: |
| [AssignedAccessSettings](#assignedaccesssettings)  | X |  |  | X |  |
| [MultiAppAssignedAccessSettings](#multiappassignedaccesssettings) | X |  |  | X |  |


## AssignedAccessSettings

Enter the account and the application you want to use for Assigned access, using [the AUMID](https://msdn.microsoft.com/windows/hardware/commercialize/customize/enterprise/find-the-application-user-model-id-of-an-installed-app). When that user account signs in on the device, only the specified app will run. 

**Example**:

```
{"Account":"domain\user", "AUMID":"Microsoft.WindowsCalculator_8wekyb3d8bbwe!App"}
```

## MultiAppAssignedAccessSettings

>[!NOTE]
>MultiAppAssignedAccessSettings is supported on Windows 10, version 1709 only.

Use this setting to configure a kiosk device that runs more than one app.

1. Create an assigned access configuration XML file for multiple apps [(desktop](../lock-down-windows-10-to-specific-apps.md) or [HoloLens)](https://docs.microsoft.com/hololens/hololens-provisioning).
2. In Windows Configuration Designer, select **MultiAppAssignedAccessSettings**.
3. Browse to and select the assigned access configuration XML file.

## Related topics

- [AssignedAccess configuration service provider (CSP)](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/assignedaccess-csp)
