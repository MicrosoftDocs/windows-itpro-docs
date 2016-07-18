---
title: Monitor Windows Defender ATP onboarding
description: Monitor the onboarding of the Windows Defender ATP service to ensure your endpoints are correctly configured and are sending telemetry reports.
keywords: monitor onboarding, monitor Windows Defender ATP onboarding, monitor Windows Defender Advanced Threat Protection onboarding
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: mjcaparas
---

# Monitor Windows Defender Advanced Threat Protection onboarding

**Applies to:**

- Windows 10 Insider Preview Build 14322 or later
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

<span style="color:#ED1C24;">[Some information relates to pre-released product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.]</span>

You can monitor the onboarding of the Windows Defender ATP service to ensure your endpoints are correctly configured and are sending telemetry reports.

You might need to monitor the onboarding if the package did not configure the registry correctly, or the reporting client did not start or execute correctly.

Monitoring can be done directly on the portal, or by using System Center Configuration Manager (SCCM).

## Monitor with the portal

1.  Go to the [Windows Defender ATP portal](https://securitycenter.windows.com/).

2.  Click **Machines view**.

3.  Verify that endpoints are appearing.


> **Note**&nbsp;&nbsp;It can take several days for endpoints to start showing on the **Machines view**. This includes the time it takes for the policies to be distributed to the endpoint, the time it takes before the user logs on, and the time it takes for the endpoint to start reporting.



## Related topics
<!--- [Windows Defender ATP service onboarding](service-onboarding-windows-defender-advanced-threat-protection.md)-->
- [Configure Windows Defender ATP endpoints](configure-endpoints-windows-defender-advanced-threat-protection.md)
- [Configure endpoint proxy and Internet connectivity settings](configure-proxy-internet-windows-defender-advanced-threat-protection.md)
- [Additional Windows Defender ATP configuration settings](additional-configuration-windows-defender-advanced-threat-protection.md)
- [Troubleshoot Windows Defender Advanced Threat Protection onboarding issues](troubleshoot-onboarding-windows-defender-advanced-threat-protection.md)
