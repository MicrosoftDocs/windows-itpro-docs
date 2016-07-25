---
title: Configure Windows Defender ATP endpoints using a local script
description: Use a local script to deploy the configuration package on endpoints so that they are onboarded to the service.
keywords: configure endpoints using a local script, endpoint management, configure Windows ATP endpoints, configure Windows Defender Advanced Threat Protection endpoints
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: mjcaparas
---

# Configure endpoints using a local script
You can also manually onboard individual endpoints to Windows Defender ATP. You might want to do this first when testing the service before you commit to onboarding all endpoints in your network.


1.  Open the GP configuration package .zip file (*WindowsDefenderATPOnboardingPackage.zip*) that you downloaded from the service onboarding wizard. You can also get the package from the [Windows Defender ATP portal](https://securitycenter.windows.com/):

    a.  Click **Endpoint Management** on the **Navigation pane**.

    b.  Select **Local Script**, click **Download package** and save the .zip file.


2.  Extract the contents of the configuration package to a location on the endpoint you want to onboard (for example, the Desktop). You should have a file called *WindowsDefenderATPOnboardingScript.cmd*.

3.  Open an elevated command-line prompt on the endpoint and run the script:

    a.  Go to **Start** and type **cmd**.

    b.  Right-click **Command prompt** and select **Run as administrator**.

    ![Window Start menu pointing to Run as administrator](images/run-as-admin.png)

4.  Type the location of the script file. If you copied the file to the desktop, type: *%userprofile%\Desktop\WindowsDefenderATPOnboardingScript.cmd*

5.  Press the **Enter** key or click **OK**.

For for information on how you can manually validate that the endpoint is compliant and correctly reports telemetry see, [Troubleshoot Windows Defender Advanced Threat Protection onboarding issues](troubleshoot-onboarding-windows-defender-advanced-threat-protection.md).

## Offboard endpoints using a local script
For security reasons, the package used to offboard endpoints will expire 30 days after the date it was downloaded. Expired offboarding packages sent to an endpoint will be rejected. When downloading an offboarding package you will be notified of the packages expiry date and it will also be included in the package name.

> [!NOTE]
> Onboarding and offboarding policies must not be deployed on the same endpoint at the same time, otherwise this will cause unpredictable collisions.

1.	Get the offboarding package from the [Windows Defender ATP portal](https://securitycenter.windows.com/):

    a. Click **Endpoint Management** on the **Navigation pane**.

    b. Under **Endpoint offboarding** section, select **Group Policy**, click **Download package** and save the .zip file.

2.	Extract the contents of the .zip file to a shared, read-only location that can be accessed by the endpoints. You should have a file named *WindowsDefenderATPOffboardingScript_valid_until_YYYY-MM-DD.cmd*.

3.  Open an elevated command-line prompt on the endpoint and run the script:

    a.  Go to **Start** and type **cmd**.

    b.  Right-click **Command prompt** and select **Run as administrator**.

    ![Window Start menu pointing to Run as administrator](images/run-as-admin.png)

4.  Type the location of the script file. If you copied the file to the desktop, type: *%userprofile%\Desktop\WindowsDefenderATPOffboardingScript_valid_until_YYYY-MM-DD.cmd*

5.  Press the **Enter** key or click **OK**.


## Related topics
- [Configure endpoints using Group Policy](configure-endpoints-gp-windows-defender-advanced-threat-protection.md)
- [Configure endpoints using System Center Configuration Manager](configure-endpoints-sccm-windows-defender-advanced-threat-protection.md)
- [Configure endpoints using Mobile Device Management tools](configure-endpoints-mdm-windows-defender-advanced-threat-protection.md)
- [Troubleshoot Windows Defender Advanced Threat Protection onboarding issues](troubleshoot-onboarding-windows-defender-advanced-threat-protection.md)
