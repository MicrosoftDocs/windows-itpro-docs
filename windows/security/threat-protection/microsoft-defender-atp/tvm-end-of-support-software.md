---
title: Plan for end-of-support software and software versions
description: Discover and plan for software and software versions that are no longer supported and won't receive security updates.
keywords: threat and vulnerability management, mdatp tvm security recommendation, cybersecurity recommendation, actionable security recommendation
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
ms.collection: 
  - m365-security-compliance
  - m365initiative-defender-endpoint
ms.topic: conceptual
ms.technology: mde
---
# Plan for end-of-support software and software versions with threat and vulnerability management

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Threat and vulnerability management](next-gen-threat-and-vuln-mgt.md)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

>Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-portaloverview-abovefoldlink)

End-of-support (EOS), otherwise known as end-of-life (EOL), for software or software versions means that they will no longer be supported or serviced, and will not receive security updates. When you use software or software versions with ended support, you're exposing your organization to security vulnerabilities, legal, and financial risks.

It's crucial for Security and IT Administrators to work together and ensure that the organization's software inventory is configured for optimal results, compliance, and a healthy network ecosystem. They should examine the options to remove or replace apps that have reached end-of-support and update versions that are no longer supported. It's best to create and implement a plan **before** the end of support dates.

## Find software or software versions that are no longer supported

1. From the threat and vulnerability management menu, navigate to [**Security recommendations**](tvm-security-recommendation.md).
2. Go to the **Filters** panel and look for the tags section. Select one or more of the EOS tag options. Then **Apply**.

    ![Screenshot tags that say EOS software, EOS versions, and Upcoming EOS versions.](images/tvm-eos-tag.png)

3. You'll see a list of recommendations related to software with ended support, software versions that are end of support, or versions with upcoming end of support. These tags are also visible in the [software inventory](tvm-software-inventory.md) page.

    ![Recommendations with EOS tag.](images/tvm-eos-tags-column.png)

## List of versions and dates

To view a list of versions that have reached end of support, or end or support soon, and those dates, follow the below steps:

1. A message will appear in the security recommendation flyout for software with versions that have reached end of support, or will reach end of support soon.

    ![Screenshot of version distribution link.](images/eos-upcoming-eos.png)

2. Select the **version distribution** link to go to the software drill-down page. There, you can see a filtered list of versions with tags identifying them as end of support, or upcoming end of support.

    ![Screenshot of software drilldown page with end of support software.](images/software-drilldown-eos.png)

3. Select one of the versions in the table to open. For example, version 10.0.18362.1. A flyout will appear with the end of support date.

    ![Screenshot of end of support date.](images/version-eos-date.png)

Once you identify which software and software versions are vulnerable due to their end-of-support status, you must decide whether to update or remove them from your organization. Doing so will lower your organizations exposure to vulnerabilities and advanced persistent threats.

## Related topics

- [Threat and vulnerability management overview](next-gen-threat-and-vuln-mgt.md)
- [Security recommendations](tvm-security-recommendation.md)
- [Software inventory](tvm-software-inventory.md)
