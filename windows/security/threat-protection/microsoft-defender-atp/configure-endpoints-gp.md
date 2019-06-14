---
title: Onboard Windows 10 machines using Group Policy to Microsoft Defender ATP
description: Use Group Policy to deploy the configuration package on Windows 10 machines so that they are onboarded to the service.
keywords: configure machines using group policy, machine management, configure Windows ATP machines, onboard Microsoft Defender Advanced Threat Protection machines, group policy
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
ms.date: 04/24/2018
---

# Onboard Windows 10 machines using Group Policy 

**Applies to:**

- Group Policy

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)




>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-configureendpointsgp-abovefoldlink)


> [!NOTE]
> To use Group Policy (GP) updates to deploy the package, you must be on Windows Server 2008 R2 or later.

## Onboard machines using Group Policy
1. Open the GP configuration package .zip file (*WindowsDefenderATPOnboardingPackage.zip*) that you downloaded from the service onboarding wizard. You can also get the package from [Microsoft Defender Security Center](https://securitycenter.windows.com/):
 
    a.  In the navigation pane, select **Settings** > **Onboarding**.

    b. Select Windows 10 as the operating system.
    
    c. In the **Deployment method** field, select **Group policy**.
    
    d. Click **Download package** and save the .zip file.

2.	Extract the contents of the .zip file to a shared, read-only location that can be accessed by the machine. You should have a folder called *OptionalParamsPolicy* and the file *WindowsDefenderATPOnboardingScript.cmd*.

3. Open the [Group Policy Management Console](https://docs.microsoft.com/internet-explorer/ie11-deploy-guide/group-policy-and-group-policy-mgmt-console-ie11) (GPMC), right-click the Group Policy Object (GPO) you want to configure and click **Edit**.

4. In the **Group Policy Management Editor**, go to **Computer configuration**, then **Preferences**, and then **Control panel settings**.

5. Right-click **Scheduled tasks**, point to **New**, and then click **Immediate task**.

6. In the **Task** window that opens, go to the **General** tab. Choose the local SYSTEM user account (BUILTIN\SYSTEM) under **Security options**.

7. Select **Run whether user is logged on or not** and check the **Run with highest privileges** check box.

8. Go to the **Actions** tab and click **New...** Ensure that **Start a program** is selected in the **Action** field. Enter the file name and location of the shared *WindowsDefenderATPOnboardingScript.cmd* file.

9. Click **OK** and close any open GPMC windows.

>[!TIP]
> After onboarding the machine, you can choose to run a detection test to verify that the machine is properly onboarded to the service. For more information, see [Run a detection test on a newly onboarded Microsoft Defender ATP machine](run-detection-test.md).

## Additional Microsoft Defender ATP configuration settings
For each machine, you can state whether samples can be collected from the machine when a request is made through Microsoft Defender Security Center to submit a file for deep analysis.

You can use Group Policy (GP) to configure settings, such as settings for the sample sharing used in the deep analysis feature.

### Configure sample collection settings
1.  On your GP management machine, copy the following files from the
    configuration package:

    a.  Copy _AtpConfiguration.admx_ into _C:\\Windows\\PolicyDefinitions_

    b.  Copy _AtpConfiguration.adml_ into _C:\\Windows\\PolicyDefinitions\\en-US_

2.  Open the [Group Policy Management Console](https://docs.microsoft.com/internet-explorer/ie11-deploy-guide/group-policy-and-group-policy-mgmt-console-ie11), right-click the GPO you want to configure and click **Edit**.

3.  In the **Group Policy Management Editor**, go to **Computer configuration**.

4.  Click **Policies**, then **Administrative templates**.

5.  Click **Windows components** and then **Microsoft Defender ATP**.

6.  Choose to enable or disable sample sharing from your machines.

>[!NOTE]
> If you don't set a value, the default value is to enable sample collection.


## Offboard machines using Group Policy
For security reasons, the package used to Offboard machines will expire 30 days after the date it was downloaded. Expired offboarding packages sent to a machine will be rejected. When downloading an offboarding package you will be notified of the packages expiry date and it will also be included in the package name.

> [!NOTE]
> Onboarding and offboarding policies must not be deployed on the same machine at the same time, otherwise this will cause unpredictable collisions.

1.	Get the offboarding package from [Microsoft Defender Security Center](https://securitycenter.windows.com/):

    a. In the navigation pane, select **Settings** > **Offboarding**.

    b. Select Windows 10 as the operating system.
    
    c. In the **Deployment method** field, select **Group policy**.

    d. Click **Download package** and save the .zip file.

2.	Extract the contents of the .zip file to a shared, read-only location that can be accessed by the machine. You should have a file named *WindowsDefenderATPOffboardingScript_valid_until_YYYY-MM-DD.cmd*.

3.	Open the [Group Policy Management Console](https://docs.microsoft.com/internet-explorer/ie11-deploy-guide/group-policy-and-group-policy-mgmt-console-ie11) (GPMC), right-click the Group Policy Object (GPO) you want to configure and click **Edit**.

4.	In the **Group Policy Management Editor**, go to **Computer configuration,** then **Preferences**, and then **Control panel settings**.

5.	Right-click **Scheduled tasks**, point to **New**, and then click **Immediate task**.

6.	In the **Task** window that opens, go to the **General** tab. Choose the local SYSTEM user account (BUILTIN\SYSTEM) under **Security options**.

7.	Select **Run whether user is logged on or not** and check the **Run with highest privileges** check-box.

8.	Go to the **Actions** tab and click **New...**. Ensure that **Start a program** is selected in the **Action** field. Enter the file name and location of the shared  *WindowsDefenderATPOffboardingScript_valid_until_YYYY-MM-DD.cmd* file.

9.	Click **OK** and close any open GPMC windows.

> [!IMPORTANT]
> Offboarding causes the machine to stop sending sensor data to the portal but data from the machine, including reference to any alerts it has had will be retained for up to 6 months.


## Monitor machine configuration
With Group Policy there isn’t an option to monitor deployment of policies on the machines. Monitoring can be done directly on the portal, or by using the different deployment tools.

## Monitor machines using the portal
1.	Go to [Microsoft Defender Security Center](https://securitycenter.windows.com/).
2.	Click **Machines list**.
3.	Verify that machines are appearing.

> [!NOTE]
> It can take several days for machines to start showing on the **Machines list**. This includes the time it takes for the policies to be distributed to the machine, the time it takes before the user logs on, and the time it takes for the endpoint to start reporting.


## Related topics
- [Onboard Windows 10 machines using System Center Configuration Manager](configure-endpoints-sccm.md)
- [Onboard Windows 10 machines using Mobile Device Management tools](configure-endpoints-mdm.md)
- [Onboard Windows 10 machines using a local script](configure-endpoints-script.md)
- [Onboard non-persistent virtual desktop infrastructure (VDI) machines](configure-endpoints-vdi.md)
- [Run a detection test on a newly onboarded Microsoft Defender ATP machines](run-detection-test.md)
- [Troubleshoot Microsoft Defender Advanced Threat Protection onboarding issues](troubleshoot-onboarding.md)
