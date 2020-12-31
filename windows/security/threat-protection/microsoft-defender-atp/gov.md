---
title: Microsoft Defender for Endpoint for US Government customers 
description: Learn about the requirements and the available Microsoft Defender for Endpoint capabilities for US Government customers
keywords: government, gcc, high, requirements, capabilities, defender, defender atp, mdatp, endpoint, dod
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
ms.topic: conceptual
---

# Microsoft Defender for Endpoint for US Government customers

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:** [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2146631)

Microsoft Defender for Endpoint for US Government customers, built in the US Azure Government environment, uses the same underlying technologies as Defender for Endpoint in Azure Commercial.

This offering is currently available to Microsoft 365 GCC and GCC High customers and is based on the same prevention, detection, investigation, and remediation as the commercial version. However, there are some differences in the availability of capabilities for this offering.

> [!NOTE]
> If you are a "GCC on Commercial" customer, please refer to the public documentation pages.
<br>


## Endpoint versions

### Standalone OS versions
The following OS versions are supported:

OS version | GCC | GCC High
:---|:---|:---
Windows 10, version 20H2 (with [KB4586853](https://support.microsoft.com/help/4490481)) | ![Yes](../images/svg/check-yes.svg) | ![Yes](../images/svg/check-yes.svg)
Windows 10, version 2004 (with [KB4586853](https://support.microsoft.com/help/4490481)) | ![Yes](../images/svg/check-yes.svg) | ![Yes](../images/svg/check-yes.svg)
Windows 10, version 1909 (with [KB4586819](https://support.microsoft.com/help/4586819)) | ![Yes](../images/svg/check-yes.svg) | ![Yes](../images/svg/check-yes.svg)
Windows 10, version 1903 (with [KB4586819](https://support.microsoft.com/help/4586819)) | ![Yes](../images/svg/check-yes.svg) | ![Yes](../images/svg/check-yes.svg)
Windows 10, version 1809 (with [KB4586839](https://support.microsoft.com/help/4586839)) | ![Yes](../images/svg/check-yes.svg) | ![Yes](../images/svg/check-yes.svg)
Windows 10, version 1803 | ![No](../images/svg/check-no.svg) Coming soon | ![Yes](../images/svg/check-yes.svg) With [KB4499183](https://support.microsoft.com/help/4499183)
Windows 10, version 1709 | ![No](../images/svg/check-no.svg)<br>Note: Will not be supported | ![Yes](../images/svg/check-yes.svg) With [KB4499147](https://support.microsoft.com/help/4499147)<br>Note: Will be deprecated, please upgrade
Windows 10, version 1703 and earlier | ![No](../images/svg/check-no.svg)<br>Note: Will not be supported | ![No](../images/svg/check-no.svg)<br>Note: Will not be supported
Windows Server 2019 (with [KB4586839](https://support.microsoft.com/help/4586839)) | ![Yes](../images/svg/check-yes.svg) | ![Yes](../images/svg/check-yes.svg)
Windows Server 2016 | ![No](../images/svg/check-no.svg) Coming soon | ![No](../images/svg/check-no.svg)
Windows Server 2012 R2 | ![No](../images/svg/check-no.svg) Coming soon | ![No](../images/svg/check-no.svg)
Windows Server 2008 R2 SP1 | ![No](../images/svg/check-no.svg) Coming soon | ![No](../images/svg/check-no.svg)
Windows 8.1 Enterprise | ![No](../images/svg/check-no.svg) Coming soon | ![No](../images/svg/check-no.svg)
Windows 8 Pro | ![No](../images/svg/check-no.svg) Coming soon | ![No](../images/svg/check-no.svg)
Windows 7 SP1 Enterprise | ![No](../images/svg/check-no.svg) Coming soon | ![No](../images/svg/check-no.svg)
Windows 7 SP1 Pro | ![No](../images/svg/check-no.svg) Coming soon | ![No](../images/svg/check-no.svg)
Mac OS | ![No](../images/svg/check-no.svg) | ![No](../images/svg/check-no.svg)
Linux | ![No](../images/svg/check-no.svg) | ![No](../images/svg/check-no.svg)
iOS | ![No](../images/svg/check-no.svg) | ![No](../images/svg/check-no.svg)
Android | ![No](../images/svg/check-no.svg) | ![No](../images/svg/check-no.svg)

> [!NOTE]
> A patch must be deployed before device onboarding in order to configure Defender for Endpoint to the correct environment.

### OS versions when using Azure Defender
The following OS versions are supported when using [Azure Defender](https://docs.microsoft.com/azure/security-center/security-center-wdatp):

OS version | GCC | GCC High
:---|:---|:---
Windows Server 2016 | ![No](../images/svg/check-no.svg) Coming soon | ![Yes](../images/svg/check-yes.svg)
Windows Server 2012 R2 | ![No](../images/svg/check-no.svg) Coming soon | ![Yes](../images/svg/check-yes.svg)
Windows Server 2008 R2 SP1 | ![No](../images/svg/check-no.svg) Coming soon | ![Yes](../images/svg/check-yes.svg)

<br>

## Required connectivity settings
You'll need to ensure that traffic from the following are allowed:

Service location | DNS record
:---|:---
Common URLs for all locations (Global location) | `crl.microsoft.com`<br>`ctldl.windowsupdate.com`<br>`notify.windows.com`<br>`settings-win.data.microsoft.com` <br><br> Note: `settings-win.data.microsoft.com` is only needed on Windows 10 devices running version 1803 or earlier.
Common URLs for all US Gov customers | `us4-v20.events.data.microsoft.com` <br>`*.blob.core.usgovcloudapi.net` 
Defender for Endpoint GCC specific | `winatp-gw-usmt.microsoft.com`<br>`winatp-gw-usmv.microsoft.com`
Defender for Endpoint GCC High specific | `winatp-gw-usgt.microsoft.com`<br>`winatp-gw-usgv.microsoft.com`

<br>


## API
Instead of the public URIs listed in our [API documentation](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/apis-intro), you'll need to use the following URIs:

Environment | Login endpoint | Defender for Endpoint API endpoint
:---|:---|:---
GCC | `https://login.microsoftonline.com` | `https://api-gcc.securitycenter.microsoft.us`
GCC High | `https://login.microsoftonline.us` | `https://api-gov.securitycenter.microsoft.us`

<br>


## Feature parity with commercial
Defender for Endpoint do not have complete parity with the commercial offering. While our goal is to deliver all commercial features and functionality to our US Government customers, there are some capabilities not yet available that we'd like to highlight.

These are the known gaps as of January 2021:

Feature name | GCC | GCC High
:---|:---|:---
Threat analytics | ![Yes](../images/svg/check-yes.svg) | ![No](../images/svg/check-no.svg)
Threat & vulnerability management | ![Yes](../images/svg/check-yes.svg) | ![No](../images/svg/check-no.svg)
Automated investigation and remediation: Response to Office 365 alerts | ![No](../images/svg/check-no.svg) | ![No](../images/svg/check-no.svg)
Automated investigation and remediation: Live response | ![Yes](../images/svg/check-yes.svg) | ![No](../images/svg/check-no.svg)
Management and APIs: Threat protection report | ![Yes](../images/svg/check-yes.svg) | ![No](../images/svg/check-no.svg)
Management and APIs: Device health and compliance report | ![Yes](../images/svg/check-yes.svg) | ![No](../images/svg/check-no.svg)
Management and APIs: Streaming API | ![No](../images/svg/check-no.svg) Coming soon | ![No](../images/svg/check-no.svg)
Management and APIs: Integration with third-party products | ![Yes](../images/svg/check-yes.svg) | ![No](../images/svg/check-no.svg)
Email notifications | ![No](../images/svg/check-no.svg) Coming soon | ![No](../images/svg/check-no.svg)
Evaluation lab | ![Yes](../images/svg/check-yes.svg) | ![No](../images/svg/check-no.svg)
Web content filtering | ![No](../images/svg/check-no.svg) Coming soon | ![No](../images/svg/check-no.svg)
Integrations: Azure Sentinel | ![No](../images/svg/check-no.svg) Coming soon | ![No](../images/svg/check-no.svg)
Integrations: Microsoft Cloud App Security | ![No](../images/svg/check-no.svg) | ![No](../images/svg/check-no.svg)
Integrations: Microsoft Compliance Center | ![No](../images/svg/check-no.svg) | ![No](../images/svg/check-no.svg)
Integrations: Microsoft Defender for Identity | ![No](../images/svg/check-no.svg) | ![No](../images/svg/check-no.svg)
Integrations: Microsoft Defender for Office 365 | ![No](../images/svg/check-no.svg) | ![No](../images/svg/check-no.svg)
Integrations: Microsoft Endpoint DLP | ![No](../images/svg/check-no.svg) | ![No](../images/svg/check-no.svg)
Integrations: Microsoft Intune | ![Yes](../images/svg/check-yes.svg) | ![No](../images/svg/check-no.svg)
Integrations: Microsoft Power Automate & Azure Logic Apps | ![No](../images/svg/check-no.svg) Coming soon | ![No](../images/svg/check-no.svg)
Integrations: Skype for Business / Teams | ![Yes](../images/svg/check-yes.svg) | ![No](../images/svg/check-no.svg)
Microsoft Threat Experts | ![No](../images/svg/check-no.svg) | ![No](../images/svg/check-no.svg)
