---
title: AssignedAccess
description: This section describes the AssignedAccess setting that you can configure in provisioning packages for Windows 10 using Windows Configuration Designer.
ms.topic: reference
ms.date: 01/25/2024
---

# AssignedAccess (Windows Configuration Designer reference)

Use this setting to configure single use (kiosk) devices.

## Applies to

| Setting | Windows client | Surface Hub | HoloLens | IoT Core |
|--|:-:|:-:|:-:|:-:|
| [AssignedAccessSettings](#assignedaccesssettings) | ✅ |  | ✅ |  |
| [MultiAppAssignedAccessSettings](#multiappassignedaccesssettings) | ✅ |  | ✅ |  |

## AssignedAccessSettings

Enter the account and the application you want to use for Assigned access, using [the AUMID](../find-the-application-user-model-id-of-an-installed-app.md). When that user account signs in on the device, only the specified app will run.

**Example**:

`{"Account":"domain\user", "AUMID":"Microsoft.WindowsCalculator_8wekyb3d8bbwe!App"}`

## MultiAppAssignedAccessSettings

>[!NOTE]
>MultiAppAssignedAccessSettings is supported on Windows 10, version 1709 only.

Use this setting to configure a kiosk device that runs more than one app.

1. Create an assigned access configuration XML file for multiple apps [(desktop](../lock-down-windows-10-to-specific-apps.md) or [HoloLens)](/hololens/hololens-provisioning).
1. In Windows Configuration Designer, select **MultiAppAssignedAccessSettings**.
1. Browse to and select the assigned access configuration XML file.

## Related topics

- [AssignedAccess configuration service provider (CSP)](/windows/client-management/mdm/assignedaccess-csp)
