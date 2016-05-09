---
title: troubleshoot Windows Defender Advanced Threat Protection onboarding issues two
description: Troubleshoot Windows Defender Advanced Threat Protection onboarding issues
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

## Endpoints not reporting to the service correctly

If you have completed the endpoint onboarding process and don't see endpoints in the [Machines view](investigate-machines-windows-defender-advanced-threat-protection.md) after 20 minutes, it might indicate an endpoint onboarding or a connectivity problem.

### Ensure that the endpoint is onboarded successfully
If the endpoints aren't reporting correctly, you might need to check that the Windows Defender Advanced Threat Protection service was successfully onboarded on the endpoint.

**Check the onboarding state in Registry**:

1. Click **Start**.

2. Type **Run**.

3. From the **Run** dialog box, type **regedit** and press **Enter**.

4. In the **Registry Editor** navigate to the Status key under **HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Advanced Threat Protection**.

5. Check that the **OnboardingState** value is set to **1**.

  ![Image of OnboardingState status in Registry Editor](images/onboardingstate.png)

  If the **OnboardingState** value is not set to **1**, follow the instructions on **Identifying and addressing onboarding issues**.
