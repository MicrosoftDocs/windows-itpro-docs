---
title: Per User services in Windows 10 and Windows Server 2016
description: Learn about Per User services introduced in Windows 10.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: mobile
ms.author: elizapo
author: lizap
ms.date: 08/11/2017
---

# Per User services in Windows 10 and Windows Server 2016

Per User services are services that are created when a user signs into Windows or Windows Server and are stopped and deleted when that user signs out. These services run in the security context of the user account - this provides better resource management than the previous approach of running these kinds of services in Explorer, associated with a preconfigured account, or as tasks. 

> [!NOTE]
> Per User services are only in available in Windows Server if you have installed the Desktop Experience. If you are running a Server Core or Nano Server installation, you won't see these services.

You can't prevent Per User services from being created but you *can* "disable" them by configuring the template service, used in the creation of Per User services, to create these services in a stopped and disabled state. You do this by setting the template service's start value to "disabled."

> [!IMPORTANT]
> If you change the template service's start value, make sure you carefully test that change prior to rolling it out in your production environment. Because this change requires editing the registry, there could be unforeseen consequences that you need to understand and accept.

Use the following information to understand Per User services, disable the template service start value, and manage Per User services through Group Policy and security templates.

## Per User services

Windows 10 and Windows Server 2016 (with the Desktop Experience) have the following Per User services. The template services are located in the registry at HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services.

Before you disable any of these services, review the **Description** column in this table to understand the implications, including dependent apps that will no longer work correctly.

| Key name               | Display name                            | Default start type | Dependencies | Description                                                                                                                                                                           |
|------------------------|-----------------------------------------|--------------------|--------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| CDPUserSvc             | CDPUserSvc                              | Auto               |              | Used for Connected Devices Platform scenarios                                                                                                                                         |
| OneSyncSvc             | Sync Host                               | Auto (delayed)     |              | Synchronizes mail, contacts, calendar, and other user data. Mail and other applications dependent on this service don't work correctly when this service is not running.              |
| PimIndexMaintenanceSvc | Contact Data                            | Manual             | UnistoreSvc  | Indexes contact data for fast contact searching. If you stop or disable this service, search results might not display all contacts.                                                  |
| UnistoreSvc            | User Data Storage                       | Manual             |              | Handles storage of structured user data, including contact info, calendars, and messages. If you stop or disable this service, apps that use this data might not work correctly.      |
| UserDataSvc            | User Data Access                        | Manual             | UnistoreSvc  | Provides apps access to structured user data, including contact info, calendars, and messages. If you stop or disable this service, apps that use this data might not work correctly. |
| WpnUserService         | Windows Push Notifications User Service | Manual             |              | Hosts Windows notification platform, which provides support for local and push notifications. Supported notifications are tile, toast, and raw.                                        |

## Disable Per User services

The template service isn't displayed in Services console (services.msc) so you need to edit the registry directly, either with Group Policy or a scripted solution, to disable a Per User service.

> [!NOTE]
> Remember, disabling a Per User service simply means that it is created in a stopped and disabled state. When the user signs out, the Per User service is removed.

You can't manage all of the Per User service templates services using normal Group Policy management methods. Because the Per User services aren't displayed in the Services management console, they're also not displayed in the Group Policy Services policy editor UI. 

Additionally there are four template services that can't be managed with a security template:
- PimIndexMaintenanceSvc
- UnistoreSvc
- UserDataSvc
- WpnUserService

In light of these restrictions, you can use the following methods to manage Per User services template services:

- A combination of a security template and a script or Group Policy preference registry policy
- Group Policy preference for all of the services
- A script for all of the services

### Manage template services using a security template

You can manage the CDPUserSvc and OneSyncSvc Per User services with a [security template](/windows/device-security/security-policy-settings/administer-security-policy-settings#bkmk-sectmpl). See [Administer security policy settings](../device-security/security-policy-settings/administer-security-policy-settings.md) for more information.

For example: 

```
[Unicode]
Unicode=yes
[Version]
signature="$CHICAGO$"
Revision=1
[Service General Setting]
"CDPUserSVC".4,""
```

### Manage template services by modifying the Windows image

If you're using custom images to deploy Windows, you can modify the Start value for the template services as part of the normal imaging process.

### Use a script to manage Per User services

You can create a script to change the start setting for the Per User services. Then use Group Policy or another management solution to deploy the script in your environment.

Sample script using [sc.exe](https://technet.microsoft.com/library/cc990290%28v=ws.11%29.aspx?f=255&MSPPError=-2147217396):

```
sc.exe configure <service name> start= disabled
```
Note that the space after "=" is intentional.

Sample script using the [Set-Service PowerShell cmdlet](https://technet.microsoft.com/library/ee176963.aspx):

```powershell
Set-Service <service name> -StartupType Disabled
```

## View Per User services in the Services console (services.msc)

As mentioned you can't view the template services in the Services console, but you can see the user-specific Per User services - they are displayed using the <service name>_LUID format (where LUID is the locally unique identifier).

For example, you might see the following Per User services listed in the Services console:

- CPDUserSVC_443f50
- ContactData_443f50
- Sync Host_443f50
- User Data Access_443f50
- User Data Storage_443f50