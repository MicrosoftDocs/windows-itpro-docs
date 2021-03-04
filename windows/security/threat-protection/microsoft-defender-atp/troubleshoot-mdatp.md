---
title: Troubleshoot Microsoft Defender for Endpoint service issues
description: Find solutions and work arounds to known issues such as server errors when trying to access the service.
keywords: troubleshoot microsoft defender for endpoint, troubleshoot Windows ATP, server error, access denied, invalid credentials, no data, dashboard portal, allow, event viewer
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: troubleshooting
ms.technology: mde
---

# Troubleshoot service issues

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2146631)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-pullalerts-abovefoldlink) 


This section addresses issues that might arise as you use the Microsoft Defender Advanced Threat service.

## Server error - Access is denied due to invalid credentials
If you encounter a server error when trying to access the service, you’ll need to change your browser cookie settings.
Configure your browser to allow cookies.

## Elements or data missing on the portal
If some UI elements or data is missing on Microsoft Defender Security Center it’s possible that proxy settings are blocking it.

Make sure that `*.securitycenter.windows.com` is included the proxy allow list.


> [!NOTE]
> You must use the HTTPS protocol when adding the following endpoints.

## Microsoft Defender for Endpoint service shows event or error logs in the Event Viewer

See the topic [Review events and errors using Event Viewer](event-error-codes.md) for a list of event IDs that are reported by the Microsoft Defender for Endpoint service. The topic also contains troubleshooting steps for event errors.

## Microsoft Defender for Endpoint service fails to start after a reboot and shows error 577

If onboarding devices successfully completes but Microsoft Defender for Endpoint does not start after a reboot and shows error 577, check that Windows Defender is not disabled by a policy.

For more information, see [Ensure that Microsoft Defender Antivirus is not disabled by policy](troubleshoot-onboarding.md#ensure-that-microsoft-defender-antivirus-is-not-disabled-by-a-policy).

## Known issues with regional formats

**Date and time formats**<br>
There are some known issues with the time and date formats. 

The following date formats are supported:
- MM/dd/yyyy
- dd/MM/yyyy

The following date and time formats are currently not supported:
- Date format yyyy/MM/dd
- Date format dd/MM/yy
- Date format with yy. Will only show yyyy.
- Time format HH:mm:ss is not supported (the 12 hour AM/PM format is not supported). Only the 24-hour format is supported.

**Use of comma to indicate thousand**<br>
Support of use of comma as a separator in numbers are not supported. Regions where a number is separated with a comma to indicate a thousand, will only see the use of a dot as a separator. For example, 15,5K is displayed as 15.5K.

>Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-troubleshoot-belowfoldlink)

## Microsoft Defender for Endpoint tenant was automatically created in Europe
When you use Azure Security Center to monitor servers, a Microsoft Defender for Endpoint tenant is automatically created. The Microsoft Defender for Endpoint data is stored in Europe by default.





## Related topics
- [Troubleshoot Microsoft Defender for Endpoint onboarding issues](troubleshoot-onboarding.md)
- [Review events and errors using Event Viewer](event-error-codes.md)
