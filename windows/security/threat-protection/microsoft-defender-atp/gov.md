---
title: Microsoft Defender for Endpoint for US Government customers
description: Learn about the Microsoft Defender for Endpoint for US Government customers requirements and capabilities available
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

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)

Microsoft Defender for Endpoint for US Government customers, built in the US Azure Government environment, uses the same underlying technologies as Defender for Endpoint in Azure Commercial.

This offering is available to GCC, GCC High, and DoD customers and is based on the same prevention, detection, investigation, and remediation as the commercial version. However, there are some differences in the availability of capabilities for this offering.

> [!NOTE]
> If you are a GCC customer using Defender for Endpoint in Commercial, please refer to the public documentation pages.

## Licensing requirements
Microsoft Defender for Endpoint for US Government customers requires one of the following Microsoft volume licensing offers:

### Desktop licensing
GCC | GCC High | DoD
:---|:---|:---
Windows 10 Enterprise E5 GCC | Windows 10 Enterprise E5 for GCC High | Windows 10 Enterprise E5 for DOD
| | Microsoft 365 E5 for GCC High | 
| | Microsoft 365 G5 Security for GCC High | 
Microsoft Defender for Endpoint - GCC | Microsoft Defender for Endpoint for GCC High | Microsoft Defender for Endpoint for DOD

### Server licensing
GCC | GCC High | DoD
:---|:---|:---
Microsoft Defender for Endpoint Server GCC | Microsoft Defender for Endpoint Server for GCC High | Microsoft Defender for Endpoint Server for DOD
Azure Defender for Servers | Azure Defender for Servers - Government | Azure Defender for Servers - Government

> [!NOTE]
> DoD licensing will only be available at DoD general availability.

<br>

## Portal URLs
The following are the Microsoft Defender for Endpoint portal URLs for US Government customers:

Customer type | Portal URL
:---|:---
GCC | https://gcc.securitycenter.microsoft.us
GCC High | https://securitycenter.microsoft.us
DoD (PREVIEW) | https://securitycenter.microsoft.us

<br>

## Endpoint versions

### Standalone OS versions
The following OS versions are supported:

OS version | GCC | GCC High | DoD (PREVIEW)
:---|:---|:---|:---
Windows 10, version 20H2 (with [KB4586853](https://support.microsoft.com/help/4586853)) | ![Yes](../images/svg/check-yes.svg) | ![Yes](../images/svg/check-yes.svg) | ![Yes](../images/svg/check-yes.svg)
Windows 10, version 2004 (with [KB4586853](https://support.microsoft.com/help/4586853)) | ![Yes](../images/svg/check-yes.svg) | ![Yes](../images/svg/check-yes.svg) | ![Yes](../images/svg/check-yes.svg)
Windows 10, version 1909 (with [KB4586819](https://support.microsoft.com/help/4586819)) | ![Yes](../images/svg/check-yes.svg) | ![Yes](../images/svg/check-yes.svg) | ![Yes](../images/svg/check-yes.svg)
Windows 10, version 1903 (with [KB4586819](https://support.microsoft.com/help/4586819)) | ![Yes](../images/svg/check-yes.svg) | ![Yes](../images/svg/check-yes.svg) | ![Yes](../images/svg/check-yes.svg)
Windows 10, version 1809 (with [KB4586839](https://support.microsoft.com/help/4586839)) | ![Yes](../images/svg/check-yes.svg) | ![Yes](../images/svg/check-yes.svg) | ![Yes](../images/svg/check-yes.svg)
Windows 10, version 1803 (with [KB4598245](https://support.microsoft.com/help/4598245)) | ![Yes](../images/svg/check-yes.svg) | ![Yes](../images/svg/check-yes.svg) | ![Yes](../images/svg/check-yes.svg)
Windows 10, version 1709 | ![No](../images/svg/check-no.svg)<br>Note: Won't be supported | ![Yes](../images/svg/check-yes.svg) With [KB4499147](https://support.microsoft.com/help/4499147)<br>Note: [Deprecated](https://docs.microsoft.com/lifecycle/announcements/revised-end-of-service-windows-10-1709), please upgrade | ![No](../images/svg/check-no.svg)<br>Note: Won't be supported
Windows 10, version 1703 and earlier | ![No](../images/svg/check-no.svg)<br>Note: Won't be supported | ![No](../images/svg/check-no.svg)<br>Note: Won't be supported | ![No](../images/svg/check-no.svg)<br>Note: Won't be supported
Windows Server 2019 (with [KB4586839](https://support.microsoft.com/help/4586839)) | ![Yes](../images/svg/check-yes.svg) | ![Yes](../images/svg/check-yes.svg) | ![Yes](../images/svg/check-yes.svg)
Windows Server 2016 | ![Yes](../images/svg/check-yes.svg) | ![Yes](../images/svg/check-yes.svg) | ![Yes](../images/svg/check-yes.svg)
Windows Server 2012 R2 | ![Yes](../images/svg/check-yes.svg) | ![Yes](../images/svg/check-yes.svg) | ![Yes](../images/svg/check-yes.svg)
Windows Server 2008 R2 SP1 | ![Yes](../images/svg/check-yes.svg) | ![Yes](../images/svg/check-yes.svg) | ![Yes](../images/svg/check-yes.svg)
Windows 8.1 Enterprise | ![Yes](../images/svg/check-yes.svg) | ![Yes](../images/svg/check-yes.svg) | ![Yes](../images/svg/check-yes.svg)
Windows 8 Pro | ![Yes](../images/svg/check-yes.svg) | ![Yes](../images/svg/check-yes.svg) | ![Yes](../images/svg/check-yes.svg)
Windows 7 SP1 Enterprise | ![Yes](../images/svg/check-yes.svg) | ![Yes](../images/svg/check-yes.svg) | ![Yes](../images/svg/check-yes.svg)
Windows 7 SP1 Pro | ![Yes](../images/svg/check-yes.svg) | ![Yes](../images/svg/check-yes.svg) | ![Yes](../images/svg/check-yes.svg)
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
Windows Server 2016 | ![Yes](../images/svg/check-yes.svg) | ![Yes](../images/svg/check-yes.svg) | ![Yes](../images/svg/check-yes.svg)
Windows Server 2012 R2 | ![Yes](../images/svg/check-yes.svg) | ![Yes](../images/svg/check-yes.svg) | ![Yes](../images/svg/check-yes.svg)
Windows Server 2008 R2 SP1 | ![Yes](../images/svg/check-yes.svg) | ![Yes](../images/svg/check-yes.svg) | ![Yes](../images/svg/check-yes.svg)

<br>

## Required connectivity settings
If a proxy or firewall is blocking all traffic by default and allowing only specific domains through, add the domains listed in the downloadable sheet to the allowed domains list.

The following downloadable spreadsheet lists the services and their associated URLs your network must be able to connect to. Verify there are no firewall or network filtering rules that would deny access to these URLs, or create an *allow* rule specifically for them.

Spreadsheet of domains list | Description
:-----|:-----
![Thumb image for Microsoft Defender for Endpoint URLs spreadsheet](images/mdatp-urls.png)<br/> | Spreadsheet of specific DNS records for service locations, geographic locations, and OS. <br><br>[Download the spreadsheet here.](https://download.microsoft.com/download/8/a/5/8a51eee5-cd02-431c-9d78-a58b7f77c070/mde-urls.xlsx) 

For more information, see [Configure device proxy and Internet connectivity settings](configure-proxy-internet.md).

> [!NOTE]
> The spreadsheet contains commercial URLs as well, make sure you check the "US Gov" tabs.
>
> When filtering, look for the records labeled as "US Gov" and your specific cloud under the geography column.

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
Defender for Endpoint doesn't have complete parity with the commercial offering. While our goal is to deliver all commercial features and functionality to our US Government customers, there are some capabilities not yet available we want to highlight.

These are the known gaps as of February 2021:

Feature name | GCC | GCC High | DoD (PREVIEW)
:---|:---|:---|:---
Automated investigation and remediation: Live response | ![Yes](../images/svg/check-yes.svg) | ![Yes](../images/svg/check-yes.svg) | ![Yes](../images/svg/check-yes.svg)
Automated investigation and remediation: Response to Office 365 alerts | ![No](../images/svg/check-no.svg) On engineering backlog | ![No](../images/svg/check-no.svg) On engineering backlog | ![No](../images/svg/check-no.svg) On engineering backlog
Email notifications | ![No](../images/svg/check-no.svg) Rolling out | ![No](../images/svg/check-no.svg) Rolling out | ![No](../images/svg/check-no.svg) Rolling out
Evaluation lab | ![Yes](../images/svg/check-yes.svg) | ![Yes](../images/svg/check-yes.svg) | ![Yes](../images/svg/check-yes.svg)
Management and APIs: Device health and compliance report | ![Yes](../images/svg/check-yes.svg) | ![Yes](../images/svg/check-yes.svg) | ![Yes](../images/svg/check-yes.svg)
Management and APIs: Integration with third-party products | ![No](../images/svg/check-no.svg) In development | ![No](../images/svg/check-no.svg) In development | ![No](../images/svg/check-no.svg) In development
Management and APIs: Streaming API | ![Yes](../images/svg/check-yes.svg) | ![No](../images/svg/check-no.svg) In development | ![No](../images/svg/check-no.svg) In development
Management and APIs: Threat protection report | ![Yes](../images/svg/check-yes.svg) | ![Yes](../images/svg/check-yes.svg) | ![Yes](../images/svg/check-yes.svg)
Threat & vulnerability management | ![Yes](../images/svg/check-yes.svg) | ![Yes](../images/svg/check-yes.svg) | ![Yes](../images/svg/check-yes.svg)
Threat analytics | ![Yes](../images/svg/check-yes.svg) | ![Yes](../images/svg/check-yes.svg) | ![Yes](../images/svg/check-yes.svg)
Web content filtering | ![No](../images/svg/check-no.svg) In development | ![No](../images/svg/check-no.svg) In development | ![No](../images/svg/check-no.svg) In development
Integrations: Azure Sentinel | ![Yes](../images/svg/check-yes.svg) | ![No](../images/svg/check-no.svg) In development | ![No](../images/svg/check-no.svg) In development
Integrations: Microsoft Cloud App Security | ![No](../images/svg/check-no.svg) On engineering backlog | ![No](../images/svg/check-no.svg) On engineering backlog | ![No](../images/svg/check-no.svg) On engineering backlog
Integrations: Microsoft Compliance Manager | ![No](../images/svg/check-no.svg) On engineering backlog | ![No](../images/svg/check-no.svg) On engineering backlog | ![No](../images/svg/check-no.svg) On engineering backlog
Integrations: Microsoft Defender for Identity | ![No](../images/svg/check-no.svg) On engineering backlog | ![No](../images/svg/check-no.svg) On engineering backlog | ![No](../images/svg/check-no.svg) On engineering backlog
Integrations: Microsoft Defender for Office 365 | ![No](../images/svg/check-no.svg) On engineering backlog | ![No](../images/svg/check-no.svg) On engineering backlog | ![No](../images/svg/check-no.svg) On engineering backlog
Integrations: Microsoft Endpoint DLP | ![No](../images/svg/check-no.svg) On engineering backlog | ![No](../images/svg/check-no.svg) On engineering backlog | ![No](../images/svg/check-no.svg) On engineering backlog
Integrations: Microsoft Intune | ![Yes](../images/svg/check-yes.svg) | ![No](../images/svg/check-no.svg) In development | ![No](../images/svg/check-no.svg) In development
Integrations: Microsoft Power Automate & Azure Logic Apps | ![Yes](../images/svg/check-yes.svg) | ![No](../images/svg/check-no.svg) In development | ![No](../images/svg/check-no.svg) In development
Integrations: Skype for Business / Teams | ![Yes](../images/svg/check-yes.svg) | ![Yes](../images/svg/check-yes.svg) | ![Yes](../images/svg/check-yes.svg)
Microsoft Threat Experts | ![No](../images/svg/check-no.svg) On engineering backlog | ![No](../images/svg/check-no.svg) On engineering backlog | ![No](../images/svg/check-no.svg) On engineering backlog
