---
title: Minimum requirements for Windows Defender Advanced Threat Protection
description: Minimum network and data storage configuration, endpoint hardware and software requirements, and deployment channel requirements for Windows Defender ATP.
keywords: minimum requirements, Windows Defender Advanced Threat Protection minimum requirements, network and data storage, endpoint, endpoint configuration, deployment channel
search.product: eADQiWindows 10XVcnh
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: iaanw
---

# Minimum requirements for Windows Defender ATP

**Applies to:**

- Windows 10 Insider Preview
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

<span style="color:#ED1C24;">[Some information relates to pre-released product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.]</span>

There are some minimum requirements for onboarding your network and endpoints.

## Minimum requirements

### Network and data storage and configuration requirements
<!---Your organization must use Azure Active Directory (AAD) to manage users. AAD is used during service onboarding to manage user-based access to the [Windows Defender ATP portal](https://securitycenter.windows.com/).--->

<!--If you’d like help with using AAD to set up user access, contact the [Windows Defender ATP Yammer group](https://www.yammer.com/wsscengineering/\#/threads/inGroup?type=in\_group&feedId=7108776&view=all) or email [winatp@microsoft.com](mailto:winatp@microsoft.com).-->

When you run the onboarding wizard for the first time, you must choose where your Windows Defender Advanced Threat Protection-related information is stored: in either a European or United States datacenter.

> **Notes**&nbsp;&nbsp;
-   You cannot change your data storage location after the first-time setup.
-   Review the [Windows Defender ATP data storage and privacy](data-storage-privacy-windows-defender-advanced-threat-protection.md) for more information on where and how Microsoft stores your data.

### Endpoint hardware and software requirements
Endpoints on your network must be running the pre-release version of Windows build 14332 or greater. The hardware requirements for Windows Defender ATP on endpoints is the same as those for Windows build 14332.

> **Note**&nbsp;&nbsp;Endpoints that are running Windows Server and mobile versions of Windows are not supported.

Internet connectivity on endpoints is also required. See [Configure Windows Defender ATP endpoint proxy and Internet connectivity settings](configure-proxy-internet-windows-defender-advanced-threat-protection.md)  for additional proxy configuration settings.

Before you configure endpoints, the telemetry and diagnostics service must be enabled. The service is enabled by default in Windows 10, but if it has been disabled you can turn it on by following the instructions in the [Troubleshoot Windows Defender Advanced Threat Protection onboarding issues](troubleshoot-onboarding-windows-defender-advanced-threat-protection.md) section.

### Deployment channel operating system requirements

You can choose to onboard endpoints with a scheduled Group Policy (GP) or System Center Configuration Manager (SCCM) update (using a configuration package that you download from the portal or during the service onboarding wizard), or by manually running a script to modify the registry.

The following describes the minimum operating system or software version
required for each deployment channel.

Deployment channel | Minimum server requirements
:---|:---
Group Policy settings | Windows Server 2008 R2
System Center Configuration Manager | SCCM 2012
Manual (script) | No minimum requirements
