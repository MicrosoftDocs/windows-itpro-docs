---
title: Troubleshoot Windows Defender Advanced Threat Protection
description: Find solutions and work arounds to known issues such as server errors when trying to access the service.
keywords: troubleshoot Windows Defender Advanced Threat Protection, troubleshoot Windows ATP, server error, access denied, invalid credentials
search.product: eADQiWindows 10XVcnh
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: mjcaparas
---
# Troubleshoot Windows Defender Advanced Threat Protection

**Applies to:**

- Windows 10 Insider Preview
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

<span style="color:#ED1C24;">[Some information relates to pre-released product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.]</span>

This section addresses issues that might arise as you use the Windows Defender Advanced Threat service.

###Server error - Access is denied due to invalid credentials
If you encounter a server error when trying to access the service, you’ll need to change your browser cookie settings.
Configure your browser to allow cookies.

### No data is shown on the portal
If no data is displayed on the Dashboard portal even if no errors were encountered in the portal logs or in the browser console, you'll need to whitelist TI and DA endpoints and detonation endpoints that also use the this protocol.

QUESTIONs TO NAMAA:
- what dos TI AND DA stand for
- what are we referring to when we say "this protocol"
thanks, joey


Depending on your region, add the following endpoints to the whitelist:

U.S. region:
- threatintel-cus-prd.cloudapp.net
- threatintel-eus-prd.cloudapp.net
- dataaccess-cus-prd.cloudapp.net
- dataaccess-eus-prd.cloudapp.net
- daasmon-eus-prd.cloudapp.net
- daasmon-cus-prd.cloudapp.net

EU region:

- threatintel-neu-prd.cloudapp.net
- threatintel-weu-prd.cloudapp.net
- dataaccess-neu-prd.cloudapp.net
- dataaccess-weu-prd.cloudapp.net


### Related topic
- [Troubleshoot Windows Defender Advanced Threat Protection onboarding issues](troubleshoot-onboarding-windows-defender-advanced-threat-protection.md)
