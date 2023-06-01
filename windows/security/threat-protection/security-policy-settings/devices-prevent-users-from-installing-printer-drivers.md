---
title: Devices Prevent users from installing printer drivers 
description: Describes the best practices, location, values, and security considerations for the Devices Prevent users from installing printer drivers security policy setting.
ms.assetid: ab70a122-f7f9-47e0-ad8c-541f30a27ec3
ms.reviewer: 
ms.author: vinpa
ms.prod: windows-client
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: vinaypamnani-msft
manager: aaroncz
audience: ITPro
ms.topic: conceptual
ms.date: 01/05/2022
ms.technology: itpro-security
---

# Devices: Prevent users from installing printer drivers

**Applies to**
-   Windows 11
-   Windows 10

Describes the best practices, location, values, and security considerations for the **Devices: Prevent users from installing printer drivers** security policy setting.

## Reference

For a device to print to a network printer, the driver for that network printer must be installed locally. The **Devices: Prevent users from installing printer drivers** policy setting determines who can install a printer driver as part of adding a network printer. When you set the value to **Enabled**, only Administrators and Power Users can install a printer driver as part of adding a network printer. Setting the value to **Disabled** allows any user to install a printer driver as part of adding a network printer. This setting prevents unprivileged users from downloading and installing an untrusted printer driver.

This setting has no impact if you've configured a trusted path for downloading drivers. If trusted paths are being used, the print subsystem attempts to use the trusted path to download the driver. If the trusted path download succeeds, the driver is installed on behalf of any user. If the trusted path download fails, the driver isn't installed and the network printer isn't added.

Although it might be appropriate in some organizations to allow users to install printer drivers on their own workstations, this idea isn't suitable for servers. Installing a printer driver on a server can cause the system to become less stable. Only administrators should have this user right on servers. A malicious user might deliberately try to damage the system by installing inappropriate printer drivers.

### Possible values

-   Enabled
-   Disabled
-   Not defined

### Best practices

-   It's advisable to set **Devices: Prevent users from installing printer drivers** to Enabled. Only users in the Administrative, Power User, or Server Operator groups will be able to install printers on servers. If this policy setting is enabled, but the driver for a network printer already exists on the local computer, users can still add the network printer. This policy setting doesn't affect a user's ability to add a local printer.

> [!NOTE]
> After applying the [July 6, 2021 updates](https://support.microsoft.com/topic/kb5005010-restricting-installation-of-new-printer-drivers-after-applying-the-july-6-2021-updates-31b91c02-05bc-4ada-a7ea-183b129578a7), non-administrators, including delegated admin groups like printer operators, cannot install signed and unsigned printer drivers to a print server. By default, only administrators can install both signed and unsigned printer drivers to a print server. 

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Security Options

### Default values

The following table lists the actual and effective default values for this policy. Default values are also listed on the policy’s property page.

Server type or GPO | Default value |
| - | - |
| Default Domain Policy | Not defined| 
| Default Domain Controller Policy | Not defined| 
| Stand-Alone Server Default Settings | Enabled| 
| DC Effective Default Settings | Enabled| 
| Member Server Effective Default Settings | Enabled| 
| Client Computer Effective Default Settings | Disabled| 
 
## Policy management

This section describes features and tools that are available to help you manage this policy.

### Restart requirement

None. Changes to this policy become effective without a computer restart when they're saved locally or distributed through Group Policy.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

It may be appropriate in some organizations to allow users to install printer drivers on their own workstations. However, you should allow only administrators, not users, to do so on servers because printer driver installation on a server may unintentionally cause the computer to become less 
stable. A malicious user could install inappropriate printer drivers in a deliberate attempt to damage the computer, or a user might accidentally install malicious software that masquerades as a printer driver.

### Countermeasure

Enable the **Devices: Prevent users from installing printer drivers** setting.

### Potential impact

Only members of the Administrator, Power Users, or Server Operator groups can install printers on the servers. If this policy setting is enabled but the driver for a network printer already exists on the local computer, users can still add the network printer.

## Related topics

- [Security Options](security-options.md)
