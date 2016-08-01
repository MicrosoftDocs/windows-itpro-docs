---
title: Configure Windows Defender ATP endpoints using System Center Configuration Manager
description: Use System Center Configuration Manager to deploy the configuration package on endpoints so that they are onboarded to the service.
keywords: configure endpoints using sccm, endpoint management, configure Windows ATP endpoints, configure Windows Defender Advanced Threat Protection endpoints, sccm
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: mjcaparas
---

# Configure endpoints using System Center Configuration Manager

**Applies to:**

- Windows 10 Enterprise
- Windows 10 Enterprise for Education
- Windows 10 Pro
- Windows 10 Pro Education
- Windows Defender Advanced Threat Protection (Windows Defender ATP)
- System Center 2012 Configuration Manager or later versions

<span id="sccm1606"/>
## Configure endpoints using System Center Configuration Manager (current branch) version 1606
System Center Configuration Manager (current branch) version 1606, has UI integrated support for configuring and managing Windows Defender ATP on endpoints. For more information, see [Support for Windows Defender Advanced Threat Protection service](https://go.microsoft.com/fwlink/p/?linkid=823682).

<span id="sccm1602"/>
## Configure endpoints using System Center Configuration Manager earlier versions
You can use System Center Configuration Manager’s existing functionality to create a policy to configure your endpoints. This is supported in the following System Center Configuration Manager versions:

- System Center 2012 Configuration Manager
- System Center 2012 R2 Configuration Manager
- System Center Configuration Manager (current branch), version 1511
- System Center Configuration Manager (current branch), version 1602

### Onboard endpoints

1. Open the SCCM configuration package .zip file (*WindowsDefenderATPOnboardingPackage.zip*) that you downloaded from the service onboarding wizard. You can also get the package from the [Windows Defender ATP portal](https://securitycenter.windows.com/):

    a. Click **Endpoint Management** on the **Navigation pane**.

    b. Select **System Center Configuration Manager 2012/2012 R2/1511/1602**, click **Download package**, and save the .zip file.

2. Extract the contents of the .zip file to a shared, read-only location that can be accessed by the network administrators who will deploy the package. You should have a file named *WindowsDefenderATPOnboardingScript.cmd*.

3. Import the configuration package by following the steps in the [How to Create Packages and Programs in Configuration Manager](https://technet.microsoft.com/en-us/library/gg682112.aspx#BKMK_Import) topic.

4. Deploy the package by following the steps in the [How to Deploy Packages and Programs in Configuration Manager](https://technet.microsoft.com/en-us/library/gg682178.aspx) topic.

    a. Choose a predefined device collection to deploy the package to.

### Configure sample collection settings
For each endpoint, you can set a configuration value to state whether samples can be collected from the endpoint when a request is made through the Windows Defender ATP portal to submit a file for deep analysis.

You can set a compliance rule for configuration item in System Center Configuration Manager to change the sample share setting on an endpoint.
This rule should be a *remediating* compliance rule configuration item that sets the value of a registry key on targeted machines to make sure they’re complaint.

The configuration is set through the following registry key entry:

```text
Path: “HKLM\SOFTWARE\Policies\Microsoft\Windows Advanced Threat Protection”
Name: "AllowSampleCollection"
Value: 0 or 1
```
Where:<br>
Key type is a D-WORD. <br>
Possible values are:
- 0 - doesn't allow sample sharing  from this endpoint
- 1 - allows sharing of all file types from this endpoint

The default value in case the registry key doesn’t exist is 1.

For more information about System Center Configuration Manager Compliance see [Compliance Settings in Configuration Manager](https://technet.microsoft.com/en-us/library/gg681958.aspx).


### Offboard endpoints

For security reasons, the package used to offboard endpoints will expire 30 days after the date it was downloaded. Expired offboarding packages sent to an endpoint will be rejected. When downloading an offboarding package you will be notified of the packages expiry date and it will also be included in the package name.

> [!NOTE]
> Onboarding and offboarding policies must not be deployed on the same endpoint at the same time, otherwise this will cause unpredictable collisions.

1.	Get the offboarding package from the [Windows Defender ATP portal](https://securitycenter.windows.com/):

    a. Click **Endpoint Management** on the **Navigation pane**.

    b. Under **Endpoint offboarding** section, select **System Center Configuration Manager System Center Configuration Manager 2012/2012 R2/1511/1602**, click **Download package**, and save the .zip file.

2.	Extract the contents of the .zip file to a shared, read-only location that can be accessed by the network administrators who will deploy the package. You should have a file named *WindowsDefenderATPOffboardingScript_valid_until_YYYY-MM-DD.cmd*.

3. Import the configuration package by following the steps in the [How to Create Packages and Programs in Configuration Manager](https://technet.microsoft.com/en-us/library/gg682112.aspx#BKMK_Import) topic.

4. Deploy the package by following the steps in the [How to Deploy Packages and Programs in Configuration Manager](https://technet.microsoft.com/en-us/library/gg682178.aspx) topic.

    a. Choose a predefined device collection to deploy the package to.

### Monitor endpoint configuration
Monitoring with SCCM consists of two parts:

1. Confirming the configuration package has been correctly deployed and is running (or has successfully run) on the endpoints in your network.

2. Checking that the endpoints are compliant with the Windows Defender ATP service (this ensures the endpoint can complete the onboarding process and can continue to report data to the service).

**To confirm the configuration package has been correctly deployed:**

1. In the SCCM console, click **Monitoring** at the bottom of the navigation pane.

2. Click **Overview** and then **Deployments**.

3. Click on the deployment with the package name.

4. Review the status indicators under **Completion Statistics** and **Content Status**.

If there are failed deployments (endpoints with **Error**, **Requirements Not Met**, or **Failed statuses**), you may need to  troubleshoot the endpoints. For more information see, [Troubleshoot Windows Defender Advanced Threat Protection onboarding issues](troubleshoot-onboarding-windows-defender-advanced-threat-protection.md).

![SCCM showing successful deployment with no errors](images/sccm-deployment.png)

**Check that the endpoints are compliant with the Windows Defender ATP service:**
You can set a compliance rule for configuration item in System Center Configuration Manager to monitor your deployment.

This rule should be a *non-remediating* compliance rule configuration item that monitors the value of a registry key on targeted machines.

Monitor the following registry key entry:
```
Path: “HKLM\SOFTWARE\Microsoft\Windows Advanced Threat Protection\Status”
Name: “OnboardingState”
Value: “1”
```
For more information about System Center Configuration Manager Compliance see [Compliance Settings in Configuration Manager](https://technet.microsoft.com/en-us/library/gg681958.aspx).

## Related topics
- [Configure endpoints using Group Policy](configure-endpoints-gp-windows-defender-advanced-threat-protection.md)
- [Configure endpoints using Mobile Device Management tools](configure-endpoints-mdm-windows-defender-advanced-threat-protection.md)
- [Configure endpoints using a local script](configure-endpoints-script-windows-defender-advanced-threat-protection.md)
- [Troubleshoot Windows Defender Advanced Threat Protection onboarding issues](troubleshoot-onboarding-windows-defender-advanced-threat-protection.md)
