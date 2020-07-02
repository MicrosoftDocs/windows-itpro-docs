---
title: Configure managed security service provider support
description: Take the necessary steps to configure the MSSP integration with Microsoft Defender ATP 
keywords: managed security service provider, mssp, configure, integration
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
---

# Configure managed security service provider integration

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-mssp-support-abovefoldlink)
 

[!include[Prerelease information](../../includes/prerelease.md)]

You'll need to take the following configuration steps to enable the managed security service provider (MSSP) integration.

>[!NOTE]
>The following terms are used in this article to distinguish between the service provider and service consumer:
> - MSSPs: Security organizations that offer to monitor and manage security devices for an organization.
> - MSSP customers: Organizations that engage the services of MSSPs.

The integration will allow MSSPs to take the following actions:

- Get access to MSSP customer's Microsoft Defender Security Center portal
- Get email notifications, and 
- Fetch alerts through security information and event management (SIEM) tools

Before MSSPs can take these actions, the MSSP customer will need to grant access to their Microsoft Defender ATP tenant so that the MSSP can access the portal. 
 

Typically, MSSP customers take the initial configuration steps to grant MSSPs access to their Windows Defender Security Central tenant. After access is granted, other configuration steps can be done by either the MSSP customer or the MSSP.


In general, the following configuration steps need to be taken:


- **Grant the MSSP access to Microsoft Defender Security Center** <br>
This action needs to be done by the MSSP customer. It grants the MSSP access to the MSSP customer's Microsoft Defender ATP tenant.
 

- **Configure alert notifications sent to MSSPs** <br>
This action can be taken by either the MSSP customer or MSSP. This lets the MSSPs know what alerts they need to address for the MSSP customer.

- **Fetch alerts from MSSP customer's tenant into SIEM system** <br> 
This action is taken by the MSSP. It allows MSSPs to fetch alerts in SIEM tools.

- **Fetch alerts from MSSP customer's tenant using APIs** <br>
This action is taken by the MSSP. It allows MSSPs to fetch alerts using APIs.




## Related topics
- [Grant MSSP access to the portal](grant-mssp-access.md)
- [Access the MSSP customer portal](access-mssp-portal.md)
- [Configure alert notifications](configure-mssp-notifications.md)
- [Fetch alerts from customer tenant](fetch-alerts-mssp.md)


- [Manage portal access using RBAC](rbac.md) 
- [Pull alerts to your SIEM tools](configure-siem.md)
- [Pull alerts using REST API](pull-alerts-using-rest-api.md)
 

