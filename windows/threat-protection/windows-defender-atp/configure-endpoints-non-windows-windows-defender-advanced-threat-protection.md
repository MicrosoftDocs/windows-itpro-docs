---
title: Configure non-Windows endpoints in Windows Defender ATP
description: Configure non-Winodws endpoints to see sensor data and get alerts from them
keywords: configure endpoints non-Windows endpoints, endpoint management, configure Windows ATP endpoints, configure Windows Defender Advanced Threat Protection endpoints
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: mjcaparas
localizationpriority: high
---

# Configure non-Windows endpoints

**Applies to:**

- Group Policy
- Windows 10 Enterprise
- Windows 10 Education
- Windows 10 Pro
- Windows 10 Pro Education
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

Windows Defender Security Center provides a centralized security operations experience for Windows as well as non-Windows platforms.This experience leverages on a 3rd-party security products’ telemetry. 

### Supported non-Windows endpoints
Windows Defender Security Center supports the following non-Windows endpoints:

- Mac OS (DAN, ARE THERE SPECIFIC VERSIONS THAT WE SUPPORT?)
- Linux  (DAN, ARE THERE SPECIFIC VERSIONS THAT WE SUPPORT?)


## Onboard non-Windows endpoints

1. In Windows Defender  Security Center portal, select the **Endpoint management** > **Non-Windows endpoint management**.

2. Make sure the 3rd-party solution is listed.

3. 	Toggle the switch button to turn on the 3rd party solution integration.[LOOKED AT SECURITYCENTER.WINDOWS.COM AND SAW THE TOGGLE - MIGHT CHANGE.]

4. 	Click **Generate access token** button and then **Copy**.

5. 	Depending on the 3rd-party implementation you're using, the implementation might vary. Refer to the 3rd-party solution documentation for guidance on how to use the token.

>[!NOTE]
> The access token has limited expiration period. If needed, regenerate the token close to the time you share  it with the 3rd party solution.

## Offboard non-Windows endpoints
To effectively offboard the endpoints from the service, you'll need to disable the data push on the 3rd-party portal then switch the toggle to off in Windows Defender Security Center to block the data inbound flow.

1. Follow the 3rd party documentation to opt-out on the 3rd party service side.

2. In Windows Defender Security Center portal, select **Endpoint management**> **Non-Windows endpoint management**.

3. Toggle the switch button to turn off the 3rd party solution integration. 

