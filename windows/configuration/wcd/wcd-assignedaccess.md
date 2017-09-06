---
title: AssignedAccess (Windows 10)
description: This section describes the AssignedAccess setting that you can configure in provisioning packages for Windows 10 using Windows Configuration Designer.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: jdeckerMS
ms.localizationpriority: medium
ms.author: jdecker
ms.date: 08/21/2017
---

# AssignedAccess (Windows Configuration Designer reference)

Use this setting to configure single use (kiosk) devices.

## Applies to

| Setting | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | :---: | :---: | :---: | :---: | :---: |
| [AssignedAccessSettings](#assignedaccesssettings)  | X |  |  | X |  |


## AssignedAccessSettings

Enter the account and the application you want to use for Assigned access, using [the AUMID](https://msdn.microsoft.com/windows/hardware/commercialize/customize/enterprise/find-the-application-user-model-id-of-an-installed-app). When that user account signs in on the device, only the specified app will run. 

**Example**:

```
"Account":"domain\user", "AUMID":"Microsoft.WindowsCalculator_8wekyb3d8bbwe!App"
```
## Related topics

- [AssignedAccess configuration service provider (CSP)](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/assignedaccess-csp)