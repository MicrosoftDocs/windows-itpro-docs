---
title: What's new in Credential Guard (Windows 10)
description: Credential Guard uses virtualization-based security to isolate secrets so that only privileged system software can access them.
ms.assetid: 59C206F7-2832-4555-97B4-3070D93CC3C5
ms.prod: W10
ms.mktglfcycl: explore
ms.sitesec: library
author: brianlic-msft
---

# What's new in Credential Guard?


**Applies to**

-   Windows 10

Credential Guard uses virtualization-based security to isolate secrets so that only privileged system software can access them.

## New features in Windows 10, version 1511


-   **Credential Manager support**. Credentials that are stored with Credential Manager, including domain credentials, are protected with Credential Guard with the following considerations:

    -   Credentials that are saved by the Remote Desktop Protocol cannot be used. Employees in your organization can manually store credentials in Credential Manager as generic credentials.

    -   Applications that extract derived domain credentials using undocumented APIs from Credential Manager will no longer be able to use those saved derived credentials.

    -   You cannot restore credentials using the Credential Manager control panel if the credentials were backed up from a PC that has Credential Guard turned on. If you need to back up your credentials, you must do this before you enable Credential Guard. Otherwise, you won't be able to restore those credentials.

-   **Enable Credential Guard without UEFI lock**. You can enable Credential Guard by using the registry. This allows you to disable Credential Guard remotely. However, we recommend that Credential Guard is enabled with UEFI lock. You can configure this by using Group Policy.

-   **CredSSP/TsPkg credential delegation**. CredSSP/TsPkg cannot delegate default credentials when Credential Guard is enabled.

[Learn how to deploy and manage Credential Guard within your organization](../keep-secure/credential-guard.md).

 

 





