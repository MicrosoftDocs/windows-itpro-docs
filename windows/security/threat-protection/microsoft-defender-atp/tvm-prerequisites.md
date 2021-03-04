---
title: Prerequisites & permissions - threat and vulnerability management
description: Before you begin using threat and vulnerability management, make sure you have the relevant configurations and permissions.
keywords: threat & vulnerability management permissions prerequisites, threat and vulnerability management permissions prerequisites, MDATP TVM permissions prerequisites, vulnerability management
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: ellevin
author: levinec
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.technology: mde
---

# Prerequisites & permissions - threat and vulnerability management

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Threat and vulnerability management](next-gen-threat-and-vuln-mgt.md)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

>Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-portaloverview-abovefoldlink)

Ensure that your devices:

- Are onboarded to Microsoft Defender for Endpoint
- Run [supported operating systems and platforms](tvm-supported-os.md)
- Have the following mandatory updates installed and deployed in your network to boost your vulnerability assessment detection rates:

> Release | Security update KB number and link
> :---|:---
> Windows 10 Version 1709 | [KB4493441](https://support.microsoft.com/help/4493441/windows-10-update-kb4493441) and [KB 4516071](https://support.microsoft.com/help/4516071/windows-10-update-kb4516071)
> Windows 10 Version 1803 | [KB4493464](https://support.microsoft.com/help/4493464) and [KB 4516045](https://support.microsoft.com/help/4516045/windows-10-update-kb4516045)
> Windows 10 Version 1809 | [KB 4516077](https://support.microsoft.com/help/4516077/windows-10-update-kb4516077)
> Windows 10 Version 1903 | [KB 4512941](https://support.microsoft.com/help/4512941/windows-10-update-kb4512941)

- Are onboarded to [Microsoft Intune](https://docs.microsoft.com/mem/intune/fundamentals/what-is-intune) and  [Microsoft Endpoint Configuration Manager](https://docs.microsoft.com/mem/configmgr/protect/deploy-use/endpoint-protection-configure) to help remediate threats found by threat and vulnerability management. If you're using Configuration Manager, update your console to the latest version.
    - **Note**: If you have the Intune connection enabled, you get an option to create an Intune security task when creating a remediation request. This option does not appear if the connection is not set.
- Have at least one security recommendation that can be viewed in the device page
- Are tagged or marked as co-managed

## Relevant permission options

1. Log in to Microsoft Defender Security Center using account with a Security administrator or Global administrator role assigned.
2. In the navigation pane, select **Settings > Roles**.

For more information, see [Create and manage roles for role-based access control](user-roles.md)

### View data

- **Security operations** - View all security operations data in the portal
- **Threat and vulnerability management** - View threat and vulnerability management data in the portal

### Active remediation actions

- **Security operations** - Take response actions, approve or dismiss pending remediation actions, manage allowed/blocked lists for automation and indicators
- **Threat and vulnerability management - Exception handling** - Create new exceptions and manage active exceptions
- **Threat and vulnerability management - Remediation handling** - Submit new remediation requests, create tickets, and manage existing remediation activities

For more information, see [RBAC permission options](user-roles.md#permission-options)

## Related articles

- [Threat and vulnerability management overview](next-gen-threat-and-vuln-mgt.md)
- [Supported operating systems and platforms](tvm-supported-os.md)
- [Assign device value](tvm-assign-device-value.md)
- [Threat and vulnerability management dashboard](tvm-dashboard-insights.md)

