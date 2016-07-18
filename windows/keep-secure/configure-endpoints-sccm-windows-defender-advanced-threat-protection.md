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

- Windows 10 Insider Preview Build 14332 or later
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

<span style="color:#ED1C24;">[Some information relates to pre-released product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.]</span>

<span id="sccm1606"/>
## Configure endpoints using System Center Configuration Manager (current branch) version 1606
System Center Configuration Manager (current branch) version 1606, currently in technical preview, has UI integrated support for configuring and managing Windows Defender ATP on endpoints. For more information, see the [Support for Windows Defender Advanced Threat Protection service](https://technet.microsoft.com/en-us/library/mt706220.aspx#BKMK_ATP) section.

> **Note**&nbsp;&nbsp; If you intend to use this deployment tool, ensure that you are on Windows 10 Insider Preview Build 14379 or later. This deployment method is only available from that build or later.

<span id="sccm1602"/>
## Configure endpoints using System Center Configuration Manager (current branch) version 1602 or earlier versions 
You can use System Center Configuration Manager’s existing functionality to create a policy to configure your endpoints. This is supported in System Center Configuration Manager (current branch), version 1602 or earlier, including: System Center 2012 R2 Configuration Manager and System Center 2012 Configuration Manager. 

### Onboard endpoints 

1. Open the SCCM configuration package .zip file (*WindowsDefenderATPOnboardingPackage.zip*) that you downloaded from the service onboarding wizard. You can also get the package from the [Windows Defender ATP portal](https://securitycenter.windows.com/):

    a. Click **Endpoint Management** on the **Navigation pane**.

    b. Select **System Center Configuration Manager**, click **Download package**, and save the .zip file.

2. Extract the contents of the .zip file to a shared, read-only location that can be accessed by the network administrators who will deploy the package. You should have a file called *WindowsDefenderATPOnboardingScript.cmd*.

3. Import the configuration package by following the steps in the [How to Create Packages and Programs in Configuration Manager](https://technet.microsoft.com/en-us/library/gg682112.aspx#BKMK_Import) topic.

4. Deploy the package by following the steps in the [How to Deploy Packages and Programs in Configuration Manager](https://technet.microsoft.com/en-us/library/gg682178.aspx) topic.

    a. Choose a predefined device collection to deploy the package to.
    
### Offboard endpoints 
For security reasons, the package used to offboard endpoints will expire 30 days after the date it was downloaded. Expired offboarding packages sent to an endpoint will be rejected. When downloading an offboarding package you will be notified of the packages expiry date and it will also be included in the package name.

> **Note**&nbsp;&nbsp;Onboarding and offboarding policies must not be deployed on the same endpoint at the same time, otherwise this will cause unpredictable collisions.

1.	Get the offboarding package from the [Windows Defender ATP portal](https://securitycenter.windows.com/):

    a. Click Endpoint Management on the Navigation pane.
    b. Under Endpoint offboarding section, select System Center Configuration Manager (current branch) version 1602 or earlier, click Download package, and save the .zip file.
    
2.	Extract the contents of the .zip file to a shared, read-only location that can be accessed by the network administrators who will deploy the package. You should have a file named *WindowsDefenderATP_valid_until_YYYY-MM-DD.cmd*.

3. Import the configuration package by following the steps in the [How to Create Packages and Programs in Configuration Manager](https://technet.microsoft.com/en-us/library/gg682112.aspx#BKMK_Import) topic.

4. Deploy the package by following the steps in the [How to Deploy Packages and Programs in Configuration Manager](https://technet.microsoft.com/en-us/library/gg682178.aspx) topic.

    a. Choose a predefined device collection to deploy the package to.
    
### Monitor endpoint configuration using System Center Configuration Manager
Monitoring with SCCM consists of two parts:

1. Confirming the configuration package has been correctly deployed and is running (or has successfully run) on the endpoints in your network.

2. Checking that the endpoints are compliant with the Windows Defender ATP service (this ensures the endpoint can complete the onboarding process and can continue to report data to the service).

**To confirm the configuration package has been correctly deployed:**

1. In the SCCM console, click **Monitoring** at the bottom of the navigation pane.

2. Click **Overview** and then **Deployments**.

3. Click on the deployment with the package name.

4. Review the status indicators under **Completion Statistics** and **Content Status**.

If there are failed deployments (endpoints with **Error**, **Requirements Not Met**, or **Failed statuses**), you may need to  troubleshoot the endpoints. See the [Troubleshoot Windows Defender Advanced Threat Protection onboarding issues](troubleshoot-onboarding-windows-defender-advanced-threat-protection.md) topic for more information.

![SCCM showing successful deployment with no errors](images/sccm-deployment.png)

## Related topics
- [Configure endpoints using Group Policy](configure-endpoints-gp-windows-defender-advanced-threat-protection.md)
- [Configure endpoints using Mobile Device Management tools](configure-endpoints-mdm-windows-defender-advanced-threat-protection.md)
- [Configure endpoints using a local script](configure-endpoints-script-windows-defender-advanced-threat-protection.md) 