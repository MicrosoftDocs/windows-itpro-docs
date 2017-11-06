---
title: Configure Windows Defender ATP endpoints using Group Policy
description: Use Group Policy to deploy the configuration package on endpoints so that they are onboarded to the service.
keywords: configure endpoints using group policy, endpoint management, configure Windows ATP endpoints, configure Windows Defender Advanced Threat Protection endpoints, group policy
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: high
ms.date: 10/17/2017
---

# Configure endpoints using Group Policy

**Applies to:**

- Group Policy
- Windows 10 Enterprise
- Windows 10 Education
- Windows 10 Pro
- Windows 10 Pro Education
- Windows Defender Advanced Threat Protection (Windows Defender ATP)




>Want to experience Windows Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-configureendpointsgp-abovefoldlink)


> [!NOTE]
> To use Group Policy (GP) updates to deploy the package, you must be on Windows Server 2008 R2 or later.

## Onboard endpoints
1.  Open the GP configuration package .zip file (*WindowsDefenderATPOnboardingPackage.zip*) that you downloaded from the service onboarding wizard. You can also get the package from the [Windows Defender ATP portal](https://securitycenter.windows.com/):

    a.  Click **Endpoint management** > **Clients** on the **Navigation pane**.

    b.  Select **Group Policy**, click **Download package** and save the .zip file.

2.	Extract the contents of the .zip file to a shared, read-only location that can be accessed by the endpoints. You should have a folder called *OptionalParamsPolicy* and the file *WindowsDefenderATPOnboardingScript.cmd*.

3. Open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx) (GPMC), right-click the Group Policy Object (GPO) you want to configure and click **Edit**.

4. In the **Group Policy Management Editor**, go to **Computer configuration**, then **Preferences**, and then **Control panel settings**.

5. Right-click **Scheduled tasks**, point to **New**, and then click **Immediate task**.

6. In the  **Task** window that opens, go to the **General** tab. Choose the local SYSTEM user account under **Security options**.

7. Select **Run whether user is logged on or not** and check the **Run with highest privileges** check box.

8. Go to the **Actions** tab and click **New...** Ensure that **Start a program** is selected in the **Action** field. Enter the file name and location of the shared *WindowsDefenderATPOnboardingScript.cmd* file.

9. Click **OK** and close any open GPMC windows.

>[!TIP]
> After onboarding the endpoint, you can choose to run a detection test to verify that an endpoint is properly onboarded to the service. For more information, see [Run a detection test on a newly onboarded Windows Defender ATP endpoint](run-detection-test-windows-defender-advanced-threat-protection.md).

## Additional Windows Defender ATP configuration settings
For each endpoint, you can state whether samples can be collected from the endpoint when a request is made through the Windows Defender ATP portal to submit a file for deep analysis.

You can use Group Policy (GP) to configure settings, such as settings for the sample sharing used in the deep analysis feature.

### Configure sample collection settings
1.  On your GP management machine, copy the following files from the
    configuration package:

    a.  Copy _AtpConfiguration.admx_ into _C:\\Windows\\PolicyDefinitions_

    b.  Copy _AtpConfiguration.adml_ into _C:\\Windows\\PolicyDefinitions\\en-US_

2.  Open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the GPO you want to configure and click **Edit**.

3.  In the **Group Policy Management Editor**, go to **Computer configuration**.

4.  Click **Policies**, then **Administrative templates**.

5.  Click **Windows components** and then **Windows Defender ATP**.

6.  Choose to enable or disable sample sharing from your endpoints.

>[!NOTE]
> If you don't set a value, the default value is to enable sample collection.

### Configure reporting frequency settings
Windows Defender ATP reporting frequency was tested over a large number of machines and is optimized to provide a recommended balance between speed and performance.

In cases where high-value assets or machines are at high risk, you can configure the reporting frequency to expedite mode, allowing the machine to report at a higher frequency.

> [!NOTE]
> Using the Expedite mode might have an impact on the machine's battery usage and actual bandwidth used for sensor data. You should consider this when these measures are critical.

For each endpoint, you can configure a registry key value that determines how frequent a machine reports sensor data to the portal.

The configuration is set through the following registry key entry:

```
Path: “HKLM\SOFTWARE\Policies\Microsoft\Windows Advanced Threat Protection”
Name: "latency"
Value: Normal or Expedite
```
Where:<br>
Key type is a string. <br>
Possible values are:
- Normal - sets reporting frequency from the endpoint to Normal mode for the optimal speed and performance balance
- Expedite - sets reporting frequency from the endpoint to Expedite mode

The default value in case the registry key doesn’t exist is Normal.

### Offboard endpoints
For security reasons, the package used to offboard endpoints will expire 30 days after the date it was downloaded. Expired offboarding packages sent to an endpoint will be rejected. When downloading an offboarding package you will be notified of the packages expiry date and it will also be included in the package name.

> [!NOTE]
> Onboarding and offboarding policies must not be deployed on the same endpoint at the same time, otherwise this will cause unpredictable collisions.

1.	Get the offboarding package from the [Windows Defender ATP portal](https://securitycenter.windows.com/):

    a. Click **Endpoint management** > **Clients** on the **Navigation pane**.

    b. Click the **Endpoint offboarding** section.

    c. Select **Group Policy**, click **Download package** and save the .zip file.

2.	Extract the contents of the .zip file to a shared, read-only location that can be accessed by the endpoints. You should have a file named *WindowsDefenderATPOffboardingScript_valid_until_YYYY-MM-DD.cmd*.

3.	Open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx) (GPMC), right-click the Group Policy Object (GPO) you want to configure and click **Edit**.

4.	In the **Group Policy Management Editor**, go to **Computer configuration,** then **Preferences**, and then **Control panel settings**.

5.	Right-click **Scheduled tasks**, point to **New**, and then click **Immediate task**.

6.	In the **Task** window that opens, go to the **General** tab. Choose the local SYSTEM user account under **Security options**.

7.	Select **Run whether user is logged on or not** and check the **Run with highest privileges** check-box.

8.	Go to the **Actions** tab and click **New...**. Ensure that **Start a program** is selected in the **Action** field. Enter the file name and location of the shared  *WindowsDefenderATPOffboardingScript_valid_until_YYYY-MM-DD.cmd* file.

9.	Click **OK** and close any open GPMC windows.

> [!IMPORTANT]
> Offboarding causes the machine to stop sending sensor data to the portal but data from the machine, including reference to any alerts it has had will be retained for up to 6 months.


## Monitor endpoint configuration
With Group Policy there isn’t an option to monitor deployment of policies on the endpoints. Monitoring can be done directly on the portal, or by using the different deployment tools.

## Monitor endpoints using the portal
1.	Go to the [Windows Defender ATP portal](https://securitycenter.windows.com/).
2.	Click **Machines list**.
3.	Verify that endpoints are appearing.

> [!NOTE]
> It can take several days for endpoints to start showing on the **Machines list**. This includes the time it takes for the policies to be distributed to the endpoint, the time it takes before the user logs on, and the time it takes for the endpoint to start reporting.


## Related topics
- [Configure endpoints using System Center Configuration Manager](configure-endpoints-sccm-windows-defender-advanced-threat-protection.md)
- [Configure endpoints using Mobile Device Management tools](configure-endpoints-mdm-windows-defender-advanced-threat-protection.md)
- [Configure endpoints using a local script](configure-endpoints-script-windows-defender-advanced-threat-protection.md)
- [Configure non-persistent virtual desktop infrastructure (VDI) machines](configure-endpoints-vdi-windows-defender-advanced-threat-protection.md)
- [Run a detection test on a newly onboarded Windows Defender ATP endpoint](run-detection-test-windows-defender-advanced-threat-protection.md)
- [Troubleshoot Windows Defender Advanced Threat Protection onboarding issues](troubleshoot-onboarding-windows-defender-advanced-threat-protection.md)
