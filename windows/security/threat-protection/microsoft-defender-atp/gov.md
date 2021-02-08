---
title: Microsoft Defender for Endpoint for US Government customers
description: Learn about the requirements and the available Microsoft Defender for Endpoint capabilities for US Government customers
keywords: government, gcc, high, requirements, capabilities, defender, defender atp, mdatp, endpoint, dod
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
ms.topic: conceptual
ms.technology: mde
---

# Microsoft Defender for Endpoint for US Government customers

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:** [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/?linkid=2154037)

Microsoft Defender for Endpoint for US Government customers, built in the US Azure Government environment, uses the same underlying technologies as Defender for Endpoint in Azure Commercial.

This offering is available to GCC, GCC High, and DoD customers and is based on the same prevention, detection, investigation, and remediation as the commercial version. However, there are some differences in the availability of capabilities for this offering.

> [!NOTE]
> If you are a "GCC on Commercial" customer, please refer to the public documentation pages.

## Portal URLs
The following are the Microsoft Defender for Endpoint portal URLs for US Government customers:

Customer type | Portal URL
:---|:---
GCC | https://gcc.securitycenter.microsoft.us
GCC High | https://securitycenter.microsoft.us
DoD (PREVIEW) | Rolling out

<br>

## Endpoint versions

### Standalone OS versions
The following OS versions are supported:

OS version | GCC | GCC High | DoD (PREVIEW)
:---|:---|:---|:---
Windows 10, version 20H2 (with [KB4586853](https://support.microsoft.com/help/4586853)) | ![Yes](../images/svg/check-yes.svg) | ![Yes](../images/svg/check-yes.svg) | ![No](../images/svg/check-no.svg) Rolling out
Windows 10, version 2004 (with [KB4586853](https://support.microsoft.com/help/4586853)) | ![Yes](../images/svg/check-yes.svg) | ![Yes](../images/svg/check-yes.svg) | ![No](../images/svg/check-no.svg) Rolling out
Windows 10, version 1909 (with [KB4586819](https://support.microsoft.com/help/4586819)) | ![Yes](../images/svg/check-yes.svg) | ![Yes](../images/svg/check-yes.svg) | ![No](../images/svg/check-no.svg) Rolling out
Windows 10, version 1903 (with [KB4586819](https://support.microsoft.com/help/4586819)) | ![Yes](../images/svg/check-yes.svg) | ![Yes](../images/svg/check-yes.svg) | ![No](../images/svg/check-no.svg) Rolling out
Windows 10, version 1809 (with [KB4586839](https://support.microsoft.com/help/4586839)) | ![Yes](../images/svg/check-yes.svg) | ![Yes](../images/svg/check-yes.svg) | ![No](../images/svg/check-no.svg) Rolling out
Windows 10, version 1803 (with [KB4598245](https://support.microsoft.com/help/4598245)) | ![Yes](../images/svg/check-yes.svg) | ![Yes](../images/svg/check-yes.svg) | ![No](../images/svg/check-no.svg) Rolling out
Windows 10, version 1709 | ![No](../images/svg/check-no.svg)<br>Note: Won't be supported | ![Yes](../images/svg/check-yes.svg) With [KB4499147](https://support.microsoft.com/help/4499147)<br>Note: [Deprecated](https://docs.microsoft.com/lifecycle/announcements/revised-end-of-service-windows-10-1709), please upgrade | ![No](../images/svg/check-no.svg)<br>Note: Won't be supported
Windows 10, version 1703 and earlier | ![No](../images/svg/check-no.svg)<br>Note: Won't be supported | ![No](../images/svg/check-no.svg)<br>Note: Won't be supported | ![No](../images/svg/check-no.svg)<br>Note: Won't be supported
Windows Server 2019 (with [KB4586839](https://support.microsoft.com/help/4586839)) | ![Yes](../images/svg/check-yes.svg) | ![Yes](../images/svg/check-yes.svg) | ![No](../images/svg/check-no.svg) Rolling out
Windows Server 2016 | ![Yes](../images/svg/check-yes.svg) | ![No](../images/svg/check-no.svg) Rolling out | ![No](../images/svg/check-no.svg) Rolling out
Windows Server 2012 R2 | ![Yes](../images/svg/check-yes.svg) | ![No](../images/svg/check-no.svg) Rolling out | ![No](../images/svg/check-no.svg) Rolling out
Windows Server 2008 R2 SP1 | ![Yes](../images/svg/check-yes.svg) | ![No](../images/svg/check-no.svg) Rolling out | ![No](../images/svg/check-no.svg) Rolling out
Windows 8.1 Enterprise | ![Yes](../images/svg/check-yes.svg) | ![No](../images/svg/check-no.svg) Rolling out | ![No](../images/svg/check-no.svg) Rolling out
Windows 8 Pro | ![Yes](../images/svg/check-yes.svg) | ![No](../images/svg/check-no.svg) Rolling out | ![No](../images/svg/check-no.svg) Rolling out
Windows 7 SP1 Enterprise | ![Yes](../images/svg/check-yes.svg) | ![No](../images/svg/check-no.svg) Rolling out | ![No](../images/svg/check-no.svg) Rolling out
Windows 7 SP1 Pro | ![Yes](../images/svg/check-yes.svg) | ![No](../images/svg/check-no.svg) Rolling out | ![No](../images/svg/check-no.svg) Rolling out
Linux | ![No](../images/svg/check-no.svg) In development | ![No](../images/svg/check-no.svg) In development | ![No](../images/svg/check-no.svg) In development
macOS | ![No](../images/svg/check-no.svg) In development | ![No](../images/svg/check-no.svg) In development | ![No](../images/svg/check-no.svg) In development
Android | ![No](../images/svg/check-no.svg) On engineering backlog | ![No](../images/svg/check-no.svg) On engineering backlog | ![No](../images/svg/check-no.svg) On engineering backlog
iOS | ![No](../images/svg/check-no.svg) On engineering backlog | ![No](../images/svg/check-no.svg) On engineering backlog | ![No](../images/svg/check-no.svg) On engineering backlog

> [!NOTE]
> Where a patch is specified, it must be deployed prior to device onboarding in order to configure Defender for Endpoint to the correct environment.

> [!NOTE]
> Trying to onboard Windows devices older than Windows 10 or Windows Server 2019 using [Microsoft Monitoring Agent](configure-server-endpoints.md#option-1-onboard-by-installing-and-configuring-microsoft-monitoring-agent-mma)? You'll need to choose "Azure US Government" under "Azure Cloud" if using the [setup wizard](https://docs.microsoft.com/azure/log-analytics/log-analytics-windows-agents#install-agent-using-setup-wizard), or if using a [command line](https://docs.microsoft.com/azure/log-analytics/log-analytics-windows-agents#install-agent-using-command-line) or a [script](https://docs.microsoft.com/azure/log-analytics/log-analytics-windows-agents#install-agent-using-dsc-in-azure-automation) - set the "OPINSIGHTS_WORKSPACE_AZURE_CLOUD_TYPE" parameter to 1.

### OS versions when using Azure Defender for Servers
The following OS versions are supported when using [Azure Defender for Servers](https://docs.microsoft.com/azure/security-center/security-center-wdatp):

OS version | GCC | GCC High | DoD (PREVIEW)
:---|:---|:---|:---
Windows Server 2016 | ![No](../images/svg/check-no.svg) Rolling out | ![Yes](../images/svg/check-yes.svg) | ![Yes](../images/svg/check-yes.svg)
Windows Server 2012 R2 | ![No](../images/svg/check-no.svg) Rolling out | ![Yes](../images/svg/check-yes.svg) | ![Yes](../images/svg/check-yes.svg)
Windows Server 2008 R2 SP1 | ![No](../images/svg/check-no.svg) Rolling out | ![Yes](../images/svg/check-yes.svg) | ![Yes](../images/svg/check-yes.svg)

<br>

## Required connectivity settings
You'll need to ensure that traffic from the following are allowed:

Service location | DNS record
:---|:---
Common URLs for all locations (Global location) | `crl.microsoft.com`<br>`ctldl.windowsupdate.com`<br>`notify.windows.com`<br>`settings-win.data.microsoft.com` <br><br> Note: `settings-win.data.microsoft.com` is only needed on Windows 10 devices running version 1803 or earlier.
Common URLs for all US Gov customers | `us4-v20.events.data.microsoft.com` <br>`*.blob.core.usgovcloudapi.net` 
Defender for Endpoint GCC specific | `winatp-gw-usmt.microsoft.com`<br>`winatp-gw-usmv.microsoft.com`
Defender for Endpoint GCC High & DoD (PREVIEW) specific | `winatp-gw-usgt.microsoft.com`<br>`winatp-gw-usgv.microsoft.com`

<br>

## API
Instead of the public URIs listed in our [API documentation](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/apis-intro), you'll need to use the following URIs:

Endpoint type | GCC | GCC High & DoD (PREVIEW)
:---|:---|:---
Login | `https://login.microsoftonline.com` | `https://login.microsoftonline.us`
Defender for Endpoint API | `https://api-gcc.securitycenter.microsoft.us` | `https://api-gov.securitycenter.microsoft.us`
SIEM | `https://wdatp-alertexporter-us.gcc.securitycenter.windows.us` | `https://wdatp-alertexporter-us.securitycenter.windows.us`

<br>

## Feature parity with commercial
Defender for Endpoint doesn't have complete parity with the commercial offering. While our goal is to deliver all commercial features and functionality to our US Government customers, there are some capabilities not yet available we'd like to highlight.

These are the known gaps as of February 2021:

Feature name | GCC | GCC High | DoD (PREVIEW)
:---|:---|:---|:---
Automated investigation and remediation: Live response | ![Yes](../images/svg/check-yes.svg) | ![No](../images/svg/check-no.svg) Rolling out | ![No](../images/svg/check-no.svg) Rolling out
Automated investigation and remediation: Response to Office 365 alerts | ![No](../images/svg/check-no.svg) On engineering backlog | ![No](../images/svg/check-no.svg) On engineering backlog | ![No](../images/svg/check-no.svg) On engineering backlog
Email notifications | ![No](../images/svg/check-no.svg) Rolling out | ![No](../images/svg/check-no.svg) Rolling out | ![No](../images/svg/check-no.svg) Rolling out
Evaluation lab | ![Yes](../images/svg/check-yes.svg) | ![No](../images/svg/check-no.svg) Rolling out | ![No](../images/svg/check-no.svg) Rolling out
Management and APIs: Device health and compliance report | ![Yes](../images/svg/check-yes.svg) | ![No](../images/svg/check-no.svg) Rolling out | ![No](../images/svg/check-no.svg) Rolling out
Management and APIs: Integration with third-party products | ![No](../images/svg/check-no.svg) In development | ![No](../images/svg/check-no.svg) In development | ![No](../images/svg/check-no.svg) In development
Management and APIs: Streaming API | ![Yes](../images/svg/check-yes.svg) | ![No](../images/svg/check-no.svg) In development | ![No](../images/svg/check-no.svg) In development
Management and APIs: Threat protection report | ![Yes](../images/svg/check-yes.svg) | ![No](../images/svg/check-no.svg) Rolling out | ![No](../images/svg/check-no.svg) Rolling out
Threat & vulnerability management | ![Yes](../images/svg/check-yes.svg) | ![No](../images/svg/check-no.svg) Rolling out | ![No](../images/svg/check-no.svg) Rolling out
Threat analytics | ![Yes](../images/svg/check-yes.svg) | ![No](../images/svg/check-no.svg) Rolling out | ![No](../images/svg/check-no.svg) Rolling out
Web content filtering | ![No](../images/svg/check-no.svg) In development | ![No](../images/svg/check-no.svg) In development | ![No](../images/svg/check-no.svg) In development
Integrations: Azure Sentinel | ![Yes](../images/svg/check-yes.svg) | ![No](../images/svg/check-no.svg) In development | ![No](../images/svg/check-no.svg) In development
Integrations: Microsoft Cloud App Security | ![No](../images/svg/check-no.svg) On engineering backlog | ![No](../images/svg/check-no.svg) On engineering backlog | ![No](../images/svg/check-no.svg) On engineering backlog
Integrations: Microsoft Compliance Center | ![No](../images/svg/check-no.svg) On engineering backlog | ![No](../images/svg/check-no.svg) On engineering backlog | ![No](../images/svg/check-no.svg) On engineering backlog
Integrations: Microsoft Defender for Identity | ![No](../images/svg/check-no.svg) On engineering backlog | ![No](../images/svg/check-no.svg) On engineering backlog | ![No](../images/svg/check-no.svg) On engineering backlog
Integrations: Microsoft Defender for Office 365 | ![No](../images/svg/check-no.svg) On engineering backlog | ![No](../images/svg/check-no.svg) On engineering backlog | ![No](../images/svg/check-no.svg) On engineering backlog
Integrations: Microsoft Endpoint DLP | ![No](../images/svg/check-no.svg) On engineering backlog | ![No](../images/svg/check-no.svg) On engineering backlog | ![No](../images/svg/check-no.svg) On engineering backlog
Integrations: Microsoft Intune | ![Yes](../images/svg/check-yes.svg) | ![No](../images/svg/check-no.svg) In development | ![No](../images/svg/check-no.svg) In development
Integrations: Microsoft Power Automate & Azure Logic Apps | ![Yes](../images/svg/check-yes.svg) | ![No](../images/svg/check-no.svg) In development | ![No](../images/svg/check-no.svg) In development
Integrations: Skype for Business / Teams | ![Yes](../images/svg/check-yes.svg) | ![No](../images/svg/check-no.svg) Rolling out | ![No](../images/svg/check-no.svg) Rolling out
Microsoft Threat Experts | ![No](../images/svg/check-no.svg) On engineering backlog | ![No](../images/svg/check-no.svg) On engineering backlog | ![No](../images/svg/check-no.svg) On engineering backlog
