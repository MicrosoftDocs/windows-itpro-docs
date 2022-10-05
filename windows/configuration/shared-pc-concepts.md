--
title: Manage multi-user and guest Windows devices
description: options to optimize Windows devices used in shared scenarios, such touchdown spaces in an enterprise, temporary customer use in retail or shared devices in a school.
ms.date: 10/15/2022
ms.prod: windows
ms.technology: windows
ms.topic: conceptual
ms.localizationpriority: medium
author: paolomatarazzo
ms.author: paoloma
ms.reviewer:
manager: aaroncz
ms.collection: 
appliesto:
- ✅ <b>Windows 10</b>
- ✅ <b>Windows 11</b>
- ✅ <b>Windows 11 SE</b>
---

# Manage multi-user and guest Windows devices

*Shared PC* is a Windows feature that optimizes Windows clients for shared use scenarios, such as touchdown spaces in an enterprise, temporary customer use in retail or shared devices in a school.

## Shared PC mode

A Windows device enabled for *Shared PC mode* is designed to be maintenance-free with high reliability. Devices configured in Shared PC mode allow sign in of one user at a time. When a device is locked, the signed in user can be signed out at the lock screen.

## Account models
Shared PC offers the possibility to enable a **Guest** option on the sign-in screen. The Guest option doesn't require any user credentials or authentication, and creates a new local account each time it's used.
Windows also offers an **Assigned access** or **kiosk** mode. Shared PC can be configured to enable a the **Guest** option and execute a specific application in kiosk mode.

## Account management
When the account management service is configured, user profiles are automatically deleted to free up disk space and resources. The deletion process applies to Active Directory, Azure Active Directory, and local accounts that are created by the **Guest** and **Kiosk** options. Account management is performed both at sign-off time (to make sure there is enough disk space for the next user) as well as during system maintenance time periods. Shared PC mode can be configured to delete accounts immediately at sign-out or when disk space is low. In Windows client, an inactive option is added which deletes accounts if they haven't signed in after a specified number of days.

### Maintenance and sleep
Shared PC mode is configured to take advantage of maintenance time periods which run while the PC is not in use. Therefore, sleep is strongly recommended so that the PC can wake up when it is not in use to perform maintenance, clean up accounts, and run Windows Update. The recommended settings can be set by choosing **SetPowerPolicies** in the list of shared PC options. Additionally, on devices without Advanced Configuration and Power Interface (ACPI) wake alarms, shared PC mode will always override real-time clock (RTC) wake alarms to be allowed to wake the PC from sleep (by default, RTC wake alarms are off). This ensures that the widest variety of hardware will take advantage of maintenance periods.

While shared PC mode does not configure Windows Update itself, it is recommended to configure Windows Update to automatically install updates and reboot during maintenance hours. This will help ensure the PC is always up to date and not interrupting users with updates.  

Use one of the following methods to configure Windows Update:

- Group Policy: Set **Computer Configuration > Administrative Templates > Windows Components > Windows Update > Configure Automatic Updates** to `4` and check **Install during automatic maintenance**.
- MDM: Set **Update/AllowAutoUpdate** to `4`. 
- Provisioning: In Windows Imaging and Configuration Designer (ICD), set **Policies/Update/AllowAutoUpdate** to `4`. 

[Learn more about the AllowAutoUpdate settings](/windows/client-management/mdm/policy-configuration-service-provider#Update_AllowAutoUpdate)

## Additional information

- To configure Shared PC mode, see [Configure Shared PC mode](set-up-shared-or-guest-pc.md).
- For a list of settings configured by the different options offered by Shared PC mode, see the [Shared PC technical reference](shared-pc-technical.md).
- For a list of settings exposed by the SharedPC configuration service provider, see [SharedPC CSP][WIN-3].
- For a list of settings exposed by Windows Configuration Designer, see [SharedPC CSP][WIN-4].

-----------

[WIN-1]: /windows/configuration/provisioning-packages/provisioning-create-package
[WIN-2]: /windows/configuration/provisioning-packages/provisioning-apply-package
[WIN-3]: /windows/client-management/mdm/sharedpc-csp
[WIN-4]: /windows/configuration/wcd/wcd-sharedpc