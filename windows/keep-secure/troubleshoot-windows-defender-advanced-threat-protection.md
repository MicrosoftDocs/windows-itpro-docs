---
title: Troubleshoot Windows Defender Advanced Threat Protection
description: Find solutions and work arounds to known issues such as server errors when trying to access the service.
keywords: troubleshoot Windows Defender Advanced Threat Protection, troubleshoot Windows ATP, server error, access denied, invalid credentials, no data, dashboard portal, whitelist, event viewer
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: mjcaparas
localizationpriority: high
---
# Troubleshoot Windows Defender Advanced Threat Protection

**Applies to:**

- Windows 10 Enterprise
- Windows 10 Education
- Windows 10 Pro
- Windows 10 Pro Education
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

This section addresses issues that might arise as you use the Windows Defender Advanced Threat service.

### Server error - Access is denied due to invalid credentials
If you encounter a server error when trying to access the service, you’ll need to change your browser cookie settings.
Configure your browser to allow cookies.

### No data is shown on the portal
If no data is displayed on the Dashboard portal even if no errors were encountered in the portal logs or in the browser console, you'll need to whitelist the threat intelligence, data access, and detonation endpoints that also use this protocol.

Depending on your region, add the following endpoints to the whitelist:

U.S. region:

- daasmon-cus-prd.cloudapp.net			
- daasmon-eus-prd.cloudapp.net			
- dataaccess-cus-prd.cloudapp.net			
- dataaccess-eus-prd.cloudapp.net			
- onboardingservice-prd.trafficmanager.net			
- sevillefeedback-prd.trafficmanager.net			
- sevillesettings-prd.trafficmanager.net			
- threatintel-cus-prd.cloudapp.net			
- threatintel-eus-prd.cloudapp.net
- winatpauthorization.windows.com
- winatpfeedback.windows.com
- winatpmanagement.windows.com
- winatponboarding.windows.com

EU region:

- dataaccess-neu-prd.cloudapp.net
- dataaccess-weu-prd.cloudapp.net
- onboardingservice-prd.trafficmanager.net
- sevillefeedback-prd.trafficmanager.net
- sevillesettings-prd.trafficmanager.net
- threatintel-neu-prd.cloudapp.net
- threatintel-weu-prd.cloudapp.net
- winatpauthorization.windows.com
- winatpfeedback.windows.com
- winatpmanagement.windows.com
- winatponboarding.windows.com

### Windows Defender ATP service shows event or error logs in the Event Viewer

See the topic [Review events and errors on endpoints with Event Viewer](event-error-codes-windows-defender-advanced-threat-protection.md) for a list of event IDs that are reported by the Windows Defender ATP service. The topic also contains troubleshooting steps for event errors.


### Related topic
- [Troubleshoot Windows Defender Advanced Threat Protection onboarding issues](troubleshoot-onboarding-windows-defender-advanced-threat-protection.md)
- [Review events and errors on endpoints with Event Viewer](event-error-codes-windows-defender-advanced-threat-protection.md)
