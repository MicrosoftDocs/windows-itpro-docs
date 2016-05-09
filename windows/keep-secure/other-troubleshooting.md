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

Check the onboarding state in Registry:

1. Click **Start**.

2. Type **Run**.

3. From the **Run** dialog box, type **regedit** and press **Enter**.

4. In the **Registry Editor** navigate to the Status key under **HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Advanced Threat Protection**.

5. Check that the **OnboardingState** value is set to **1**.

  ![Image of OnboardingState status in Registry Editor](images/onboardingstate.png)

  If the **OnboardingState** value is not set to **1**, follow the instructions on **Identifying and addressing onboarding issues**.

Identifying and addressing onboarding errors:   

1. Click **Start**.

2. Type **Event Viewer**.

3. In **Event Viewer**, browse to the **Application and Services Logs\Microsoft\Windows\SENSE** directory.

4. Click the **Operational** log.

5. In the **Action** pane, click **Filter Current log**.

6. Select **Critical**, **Warning**, and **Error**, then click **OK**.

  ![Image of Event Viewer log filter](images/filter-log.png)

7. Review the remaining events which can indicate issues and troubleshoot them based on the corresponding solutions from the following table:

Event ID | Message | Resolution steps
:---|:---|:---
5 | Windows Advanced Threat Protection service failed to connect to the server at _variable_ | Ensure that the Windows Defender ATP endpoint has internet access.
6 | Windows Advanced Threat Protection service failed to read the onboarding parameters. Failure code: _variable_ | Run the onboarding script again.
7 |  Windows Advanced Threat Protection service failed to read the onboarding parameters. Failure code: _variable_ | Ensure that the Windows Defender ATP endpoint has internet access, then run the onboarding script again.
15 | Windows Advanced Threat Protection cannot start command channel with URL: _variable_ | Ensure that the Windows Defender ATP endpoint has internet access.

