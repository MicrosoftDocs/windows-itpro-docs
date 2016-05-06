---
title: troubleshoot
description: troubleshoot
keywords: troubleshoot
search.product: eADQiWindows 10XVcnh
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: mjcaparas
---
# Troubleshoot Windows Defender Advanced Threat Protection onboarding issues two

**Applies to:**

- Windows 10 Insider Preview

<span style="color:#ED1C24;">[Some information relates to pre-released product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.]</span>

You might need to troubleshoot the onboarding process if you encounter issues.

**Ensure that the telemetry and diagnostics service is enabled**

If the endpoints aren't reporting correctly, you might need to check that the Windows 10 telemetry and diagnostics service is enabled on the endpoint. The service may have been disabled by other programs or user configuration changes.

You will need to check the startup type and verify that the service is running. 

There are two ways to check the startup type for the service: from the command line or in the services console.

**Check the startup type from the command line:**


## Ensure that the Windows Defender ATP endpoint has internet connection

The Window Defender ATP sensor requires Microsoft Windows HTTP (WinHTTP) to be able to report telemetry and communicate with the Windows Defender ATP service. 

WinHTTP is independent of the Internet browsing proxy settings and other user context applications and must be able to detect the proxy servers that are available in your particular environment. 

To ensure that sensor has service connectivity, follow the steps described in the [Verify client connectivity to Windows Defender ATP service URLs](configure-proxy-internet-windows-defender-advanced-threat-protection.md#
Verify-client-connectivity-to-Windows-Defender-ATP-service-URLs) topic.

If the verification fails and your environment is using a proxy to connect to the internet, then follow the steps described in [Configure proxy and Internet connectivity settings](configure-proxy-internet-windows-defender-advanced-threat-protection.md#) topic.
