---
ms.date: 12/15/2023
ms.topic: include
---

:::row:::
    :::column span="1":::
    Authentication to Microsoft Entra ID
    :::column-end:::
    :::column span="3":::
    Authentication to Microsoft Entra ID can be configured with or without federation:
    - [Password hash synchronization][AZ-6] or [Microsoft Entra pass-through authentication][AZ-7] is required for non-federated environments
    - Active Directory Federation Services (AD FS) or a third-party federation service is required for federated environments
    :::column-end:::
:::row-end:::

[AZ-6]: /azure/active-directory/hybrid/whatis-phs
[AZ-7]: /azure/active-directory/connect/active-directory-aadconnect-pass-through-authentication