---
title: Per-user services
description: Learn about per-user services, how to change the template service startup type, and manage per-user services through group policy and security templates.
author: aczechowski
ms.author: aaroncz
manager: aaroncz
ms.date: 10/01/2024
ms.topic: how-to
ms.service: windows-client
ms.subservice: itpro-apps
ms.localizationpriority: medium
ms.collection: tier2
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/windows-server-release-info" target="_blank">Windows Server</a>
---

# Per-user services in Windows

When a user signs in to Windows, the OS creates *per-user services*. When the user signs out, these services are stopped and deleted. They run in the security context of the user account instead of a built-in security principal. This behavior provides better resource management than the previous approach of running these services associated with a preconfigured account or as tasks.

> [!NOTE]
> Per-user services are only available in Windows Server if you install the Desktop Experience. For more information, see [Server Core vs Server with Desktop Experience install options](/windows-server/get-started/install-options-server-core-desktop-experience).

Windows creates these per-user services based on templates defined in the registry. If you need to manage or control behaviors of these services, you can adjust the template. For example, you can set a template service's startup type to **Disabled**. In this example, Windows creates the per-user service in a stopped and disabled state.

> [!IMPORTANT]
> Carefully test any changes to the template service's configuration before you broadly deploy them to a production environment.

Use the information in this article to understand per-user services, configure user service templates, and manage per-user services through group policy and security templates.

## List of per-user services

The following table lists per-user services in the current version of Windows. Other versions of Windows 10/11 might not have the same services available.

Before you reconfigure any of these services, review this information to understand the implications. For example, if you disable the per-user service, there might be dependent apps that don't work correctly.

| Display name | Service name | Default start type | Dependencies | Description |
|--|--|--|--|--|
| **Agent Activation Runtime** | AarSvc | Manual |  | Runtime for activating conversational agent applications. |
| **Bluetooth User Support Service** | BluetoothUserService | Manual |  | Supports proper functionality of Bluetooth features relevant to each user session. |
| **OneCore Capture Service** | CaptureService | Manual |  | Enables optional screen capture functionality for applications that call [screen capture](/windows/uwp/audio-video-camera/screen-capture) APIs of the [Windows.Graphics.Capture](/uwp/api/windows.graphics.capture) namespace. |
| **Clipboard User Service** | cbdhsvc | Automated (Delayed Start) |  | Windows uses this user service for clipboard scenarios. For example, clipboard history or sync across devices. For more information, see [Clipboard in Windows](https://support.microsoft.com/windows/clipboard-in-windows-c436501e-985d-1c8d-97ea-fe46ddf338c6). |
| **Cloud Backup and Restore Service** | CloudBackupRestoreSvc | Manual |  | Monitors the system for changes in application and setting states. When required, this service does cloud backup and restore operations. |
| **Connected Devices Platform User Service** | CDPUserSvc | Automatic | - Network Connection Broker </br> - Remote Procedure Call (RPC) </br> - TCP/IP Protocol Driver | This service allows the user to connect, manage, and control connected devices. These connected devices include mobile, Xbox, HoloLens, or smart/IoT devices. For one specific example, see [Share things with nearby devices in Windows](https://support.microsoft.com/windows/share-things-with-nearby-devices-in-windows-0efbfe40-e3e2-581b-13f4-1a0e9936c2d9). |
| **Consent UX User Service** | ConsentUxUserSvc | Manual |  | Allows the system to request user consent to allow apps to access sensitive resources and information such as the device's location. |
| **Contact Data** | PimIndexMaintenanceSvc | Manual | UnistoreSvc | Indexes contact data for fast contact searching. If you stop or disable this service, contacts might be missing from your search results. |
| **Credential Enrollment Manager** | CredentialEnrollmentManagerUserSvc | Manual |  | This service supports the secure storage and retrieval of user credentials. For example, tokens for web sites, remote desktop connections, or other apps. |
| **Device Association Broker** | DeviceAssociationBrokerSvc | Manual | - DevicePicker </br> - Shell Pairing UX | Supports in-app pairing and access checks for new device scenarios. |
| **Device Picker** | DevicePickerUserSvc | Manual |  | Windows uses this user service to manage Miracast, Digital Living Network Alliance (DLNA), and Discovery and Launch (DIAL) experiences. |
| **Devices Flow** | DevicesFlowUserSvc | Manual |  | Allows the Connect user interface and Settings app to connect and pair with WiFi displays and Bluetooth devices. |
| **Game DVR and Broadcast User Service** | BcastDVRUserService | Manual |  | Windows uses this user service for game recordings and live broadcasts. |
| **Messaging Service** | MessagingService | Manual |  | This service supports text messaging and related functionality. |
| **Now Playing Session Manager** | NPSMSvc | Manual |  | The *now playing session manager* (NPSM) service manages media sessions running on the device. |
| **Plan 9 Redirector Service** | P9RdrService | Manual |  | Enables trigger-starting plan9 file servers, which are supported by [Windows Subsystem for Linux](/windows/wsl/). For more information, see [Plan 9 from Bell Labs](https://wikipedia.org/wiki/Plan_9_from_Bell_Labs). |
| **Pen Service** | PenService | Manual |  | When you press the tail button on a pen input device, this service responds to those actions. It can launch applications or take another action that you customize in Settings. For more information, see user documentation on [How to use your Surface Pen](https://support.microsoft.com/surface/how-to-use-your-surface-pen-8a403519-cd1f-15b2-c9df-faa5aa924e98) or hardware developer documentation on [Pen devices](/windows-hardware/design/component-guidelines/pen-devices). |
| **Print Workflow** | PrintWorkflowUserSvc | Manual |  | Provides support for [Print Workflow](/windows/uwp/devices-sensors/print-workflow-customize) applications. If you turn off this service, some printing functions might not work successfully. |
| **Sync Host** | OneSyncSvc | Automated (Delayed Start) |  | This service synchronizes mail, contacts, calendar, and other user data. When this service is stopped, mail and other applications dependent on this functionality don't work properly. |
| **UDK User Service** | UdkUserSvc | Manual |  | Windows uses this service to coordinate between shell experiences. |
| **User Data Access** | UserDataSvc | Manual | UnistoreSvc | Provides apps access to structured user data, including contact info, calendars, messages, and other content. If you stop or disable this service, apps that use this data might not work correctly. |
| **User Data Storage** | UnistoreSvc | Manual |  | Handles storage of structured user data, including contact info, calendars, messages, and other content. If you stop or disable this service, apps that use this data might not work correctly. |
| **Web Threat Defense User Service** | webthreatdefusersvc | Automatic |  | This service helps protect your computer by warning the user when unauthorized entities attempt to gain access to their credentials. |
| **Windows Push Notifications User Service** | WpnUserService | Automatic |  | This service hosts the [Windows push notification services](/windows/apps/design/shell/tiles-and-notifications/windows-push-notification-services--wns--overview) (WNS) platform, which provides support for local and push notifications. Supported notifications are tile, toast, and raw. |

## View per-user services

You can't view the user service templates outside of the Windows Registry, but you can see the user-specific per-user services. Windows displays these services with the following format: `<service name>_LUID` where `<service name>` is the display name of the user service and `LUID` is a locally unique identifier for the user context.

For example, you might see the following per-user service names:

- `Contact Data_443f50`
- `Sync Host_443f50`
- `User Data Access_443f50`
- `User Data Storage_443f50`

> [!NOTE]
> The display name and the service name for all per-user services include the same LUID suffix.

### View per-user services in the Windows Services console

When you sign in to Windows, run `services.msc` to open the Services console. When you view the local machine, you can see these services for your user account.

### View per-user services using Windows PowerShell

The following PowerShell script is an example of how to query for per-user services. It queries for service type values that include the `64` bit value.

```powershell
# Define the bit value for per-user services in the ServiceType property of a service object
$flag = 64

# Define an empty array to store the resulting services that match the criteria
$serviceList = @()

# Get all services on the computer and store them in the variable
$services = Get-Service

# Loop through each service in the array of services.
foreach ( $service in $services ) {
  # For each specific service, check if the service type property includes the 64 bit using the bitwise AND operator (-band).
  # If the result equals the flag value, then the service is a per-user service.
  if ( ( $service.ServiceType -band $flag ) -eq $flag ) {
    # When a per-user service is found, then add that service object to the results array.
    $serviceList += $service
  }
}

# Display the results array, sorted by display name, in a table format with the specified properties.
$serviceList | Sort-Object DisplayName | Format-Table DisplayName, Name, StartType, ServiceType
```

### View per-user services from the command line

Run `cmd.exe` to open a Windows command prompt. Use the `sc qc` command to query these services. The **Type** value indicates whether the service is a user-service template or user-service instance.

The following example queries for the template and user-specific instance of the **Game DVR and Broadcast User Service** (`BcastDVRUserService`) service:

```cmd
sc qc BcastDVRUserService
sc qc BcastDVRUserService_18f113
```

:::image type="content" source="media/cmd-type.png" alt-text="Screenshot of a Windows command line session running sc.exe qc on two services and highlighting the type values in the output.":::

## How to disable per-user services

The templates for user services aren't displayed in the **Services** console (services.msc). To disable a per-user service, you need to directly edit the registry, either with group policy or a scripted solution. The templates are located in the registry at `HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services`.

> [!NOTE]
> When you disable a per-user service, Windows still creates it when the user signs in, but in a stopped and disabled state. When the user signs out, Windows removes the per-user service.

You can't manage all of the per-user service templates using normal group policy management methods. Because the per-user services aren't displayed in the **Services** management console, they're also not displayed in the group policy services policy editor.

Additionally, there are four user services that you can't manage with a security template:

- PimIndexMaintenanceSvc
- UnistoreSvc
- UserDataSvc
- WpnUserService

With these restrictions, you can use the following methods to manage per-user service templates:

- A combination of a security template and a script, or group policy preferences registry policy.
- Group policy preferences for all of the services.
- A script for all of the services.

### Manage template services using a security template

You can manage the CDPUserSvc and OneSyncSvc per-user services with a [security template](/windows/security/threat-protection/security-policy-settings/administer-security-policy-settings#security-templates).

For example:

```ini
[Unicode]
Unicode=yes
[Version]
signature="$CHICAGO$"
Revision=1
[Service General Setting]
"CDPUserSVC".4,""
```

### Use a script to manage per-user services

You can create a script to change the startup type for the per-user services. Then use group policy or another management solution such as Microsoft Configuration Manager to deploy the script to targeted devices.

#### Example 1: Use the `Set-Service` PowerShell cmdlet

The following sample script uses the [Set-Service](/powershell/module/microsoft.powershell.management/set-service) PowerShell cmdlet to configure the PimIndexMaintenanceSvc service start type to disabled:

```powershell
Set-Service -Name PimIndexMaintenanceSvc -StartupType Disabled
```

#### Example 2: Use the `sc.exe config` command line

The following sample script uses [`sc.exe config`](/windows-server/administration/windows-commands/sc-config) to configure the PimIndexMaintenanceSvc service start type to disabled:

```cmd
sc.exe configure PimIndexMaintenanceSvc start= disabled
```

> [!NOTE]
> The space after `=` is intentional.

### Manage template services using group policy preferences

If you can't disable a per-user service with the security template, use group policy preferences.

1. Open the **Group Policy Management Console** (gpmc.msc).

1. Create a new group policy object (GPO) or use an existing GPO.

1. **Edit** the GPO to launch the group policy object editor.

1. Depending on how you want to target the group policy, under **Computer configuration** or **User configuration** browse to **Preferences**, **Windows Settings**, and select **Registry**.

1. Go to the **Action** menu, select **New**, and select **Registry Item**.

    :::image type="content" source="media/gpp-per-user-services.png" alt-text="Screenshot of the Group Policy Management Editor highlighting the contextual menu on registry preferences to create a new registry item.":::

1. For the **Hive** select `HKEY_LOCAL_MACHINE`.

    :::image type="content" source="media/gpp-hklm.png" alt-text="Screenshot of the New Registry Properties window highlighting the Hive value set to HKEY_LOCAL_MACHINE.":::

1. Select the ellipses (`...`) next to **Key Path**. Browse to `System\CurrentControlSet\Services` and then select the user service template. For example, `PimIndexMaintenanceSvc`. In the list of values, highlight **Start** and select **Select**.

    :::image type="content" source="media/gpp-svc-start.png" alt-text="Screenshot of the Registry Item Browser window with the PimIndexMaintenanceSvc registry item selected, and the Start value selected.":::

1. In the **Start Properties** window, Change **Value data** from `00000003` to `00000004` and select **OK**. Note setting the Value data to **4** = **Disabled**.

    :::image type="content" source="media/gpp-svc-disabled.png" alt-text="Screenshot of the Start Properties window highlighting the Value data field with the value 00000004.":::

    > [!NOTE]
    > The service start value `4` is **Disabled**.

1. To add the other services that can't be managed with group policy templates, edit the policy and repeat the previous steps.

### Managing user service templates with the Windows Registry

If you can't use group policy preferences to manage the per-user services, you can edit the Windows Registry. To disable a user service template, change the startup type for each service to `4`, which is **Disabled**.

> [!CAUTION]
> Don't directly edit the registry unless there's no other alternative. The Registry Editor or Windows don't validate these manual modifications to the registry. Incorrect values can be stored, which can result in unrecoverable errors in the system. When possible, instead of editing the registry directly, use group policy or other supported Windows tools to accomplish these tasks. If you must edit the registry, use extreme caution.

#### Example 1: Use the `reg.exe` command line command to edit the registry

1. As an administrator, run `cmd.exe` to open a Windows command prompt.

1. The following example includes multiple commands that disable the specified Windows services by changing their **Start** value in the Windows Registry to `4`:

    ```cmd
    REG.EXE ADD HKLM\System\CurrentControlSet\Services\CDPUserSvc /v Start /t REG_DWORD /d 4 /f
    REG.EXE ADD HKLM\System\CurrentControlSet\Services\OneSyncSvc /v Start /t REG_DWORD /d 4 /f
    REG.EXE ADD HKLM\System\CurrentControlSet\Services\PimIndexMaintenanceSvc /v Start /t REG_DWORD /d 4 /f
    REG.EXE ADD HKLM\System\CurrentControlSet\Services\UnistoreSvc /v Start /t REG_DWORD /d 4 /f
    REG.EXE ADD HKLM\System\CurrentControlSet\Services\UserDataSvc /v Start /t REG_DWORD /d 4 /f
    REG.EXE ADD HKLM\System\CurrentControlSet\Services\WpnUserService /v Start /t REG_DWORD /d 4 /f
    ```

#### Example 2: Use the Registry Editor user interface to edit the registry

1. As an administrator, run `regedit.exe` to open the Registry Editor.

1. Browse to `HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services` and then select the user service template. For example, `CDPSvc`.

1. In the list of values, open the **Start** value.

1. Change the **Value data** to `4`.

    :::image type="content" source="media/regedit-change-service-startup-type.png" alt-text="Screenshot of the Registry Editor open to HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\CDPSvc and highlighting the Start value set to 4.":::

#### Example 3: Prevent the creation of per-user services

You can prevent Windows from creating a per-user service when a user signs on. In the same service template node of the registry, set `UserServiceFlags` to `0`.

:::image type="content" source="media/user-service-flag.png" alt-text="Screenshot of the Registry Editor open to HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\PimIndexMaintenanceSvc highlighting the UserServiceFlag set to 0.":::

## Next steps

For more information about disabling system services for Windows Server, see [Guidance on disabling system services on Windows Server with Desktop Experience](/windows-server/security/windows-services/security-guidelines-for-disabling-system-services-in-windows-server).
