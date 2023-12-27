---
ms.date: 12/15/2023
ms.topic: include
---

:::row:::
    :::column span="1":::
Directories and directory synchronization
    :::column-end:::
    :::column span="3":::
Hybrid Windows Hello for Business needs two directories:

- An on-premises Active Directory
- A Microsoft Entra tenant

The two directories must be synchronized with [Microsoft Entra Connect Sync][AZ-1], which synchronizes user accounts from the on-premises Active Directory to Microsoft Entra ID.\
During the Window Hello for Business provisioning process, users register the public portion of their Windows Hello for Business credential with Microsoft Entra ID. *Microsoft Entra Connect Sync* synchronizes the Windows Hello for Business public key to Active Directory.

> [!NOTE]
> Windows Hello for Business hybrid key trust is not supported if the users' on-premises UPN suffix cannot be added as a verified domain in Microsoft Entra ID.

> [!IMPORTANT]
> Windows Hello for Business is tied between a user and a device. Both the user and device object must be synchronized between Microsoft Entra ID and Active Directory.
    :::column-end:::

:::row-end:::

[AZ-1]: /azure/active-directory/hybrid/how-to-connect-sync-whatis
