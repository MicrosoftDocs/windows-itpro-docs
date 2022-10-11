---
title: Appendix
manager: dougeby
description: Appendix on Microsoft Connected Cache (MCC) for Enterprise and Education.
ms.prod: w10
author: amymzhou
ms.localizationpriority: medium
ms.author: amyzhou
ms.collection: M365-modern-desktop
ms.topic: article
---

# Appendix

## Diagnostics Script

If you're having issues with your MCC, we included a diagnostics script which will collect all your logs and zip them into a single file. You can then send us these logs via email for the MCC team to debug.

To run this script:

1.  Navigate to the following folder in the MCC installation files:

    mccinstaller \> Eflow \> Diagnostics

2.  Run the following commands:

```powershell
Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope Process
.\collectMccDiagnostics.ps1
```

3.  The script stores all the debug files into a folder and then creates a tar file. After the script is finished running, it will output the path of the tar file which you can share with us (should be “**\<currentpath\>**\\mccdiagnostics\\support_bundle_\$timestamp.tar.gz”)

4.  [Email the MCC team](mailto:mccforenterprise@microsoft.com?subject=Debugging%20Help%20Needed%20for%20MCC%20for%20Enterprise) and attach this file asking for debugging support. Screenshots of the error along with any other warnings you saw will be helpful during out debugging process.

## Steps to obtain an Azure Subscription ID

1. Sign in to https://portal.azure.com/ and navigate to the Azure services section.
2. Click on **Subscriptions**. If you do not see **Subscriptions**, click on the **More Services** arrow and search for **Subscriptions**. 
3. If you already have an Azure Subscription, skip to step 5. If you do not have an Azure Subscription, select **+ Add** on the top left. 
4. Select the **Pay-As-You-Go** subscription. You'll be asked to enter credit card information, but you'll not be charged for using the MCC service. 
5. On the **Subscriptions** blade, you'll find details about your current subscription. Click on the subscription name. 
6. After you select the subscription name, you'll find the subscription ID in the **Overview** tab. Click on the **Copy to clipboard** icon next to your Subscription ID to copy the value. 

## Troubleshooting

If you’re not able to sign up for a Microsoft Azure subscription with the error: **Account belongs to a directory that cannot be associated with an Azure subscription. Please sign in with a different account.** See [Can't sign up for a Microsoft Azure subscription](/troubleshoot/azure/general/cannot-sign-up-subscription). 

Also see [Troubleshoot issues when you sign up for a new account in the Azure portal](/azure/cost-management-billing/manage/troubleshoot-azure-sign-up).

## IoT Edge runtime

The Azure IoT Edge runtime enables custom and cloud logic on IoT Edge devices.
The runtime sits on the IoT Edge device, and performs management and
communication operations. The runtime performs several functions:

-   Installs and update workloads (Docker containers) on the device.
-   Maintains Azure IoT Edge security standards on the device.
-   Ensures that IoT Edge modules (Docker containers) are always running.
-   Reports module (Docker containers) health to the cloud for remote monitoring.
-   Manages communication between an IoT Edge device and the cloud.

For more information on Azure IoT Edge, please see the [Azure IoT Edge documentation](/azure/iot-edge/about-iot-edge).

## EFLOW

- [What is Azure IoT Edge for Linux on Windows](/azure/iot-edge/iot-edge-for-linux-on-windows)
- [Install Azure IoT Edge for Linux on Windows](/azure/iot-edge/how-to-provision-single-device-linux-on-windows-symmetric#install-iot-edge)
- [PowerShell functions for Azure IoT Edge for Linux on Windows](/azure/iot-edge/reference-iot-edge-for-linux-on-windows-functions)
- EFLOW FAQ and Support: [Support · Azure/iotedge-eflow Wiki (github.com)](https://github.com/Azure/iotedge-eflow/wiki/Support#how-can-i-apply-updates-to-eflow)
- [Now ready for Production: Linux IoT Edge Modules on Windows - YouTube](https://www.youtube.com/watch?v=pgqVCg6cxVU&ab_channel=MicrosoftIoTDevelopers)

## Routing local Windows Clients to an MCC

### Get the IP address of your MCC using ifconfig

There are multiple methods that can be used to apply a policy to PCs that should participate in downloading from the MCC.

#### Registry Key

You can either set your MCC IP address or FQDN using:

1.  Registry Key in 1709 and higher -  
    [HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization]<br>
    "DOCacheHost"=" "  
    
  From an elevated command prompt:

  ```
  reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization" /v DOCacheHost /t REG_SZ /d "10.137.187.38" /f
  ```

2.  MDM Path in 1809 or higher:

  .Vendor/MSFT/Policy/Config/DeliveryOptimization/DOCacheHost

3. In Windows release version 1809 and later, you can apply the policy via Group Policy Editor. The policy to apply is **DOCacheHost**. To configure the clients to pull content from the MCC using Group Policy, set the Cache Server Hostname (Setting found under Computer Configuration, Administrative Templates, Windows Components, Delivery Optimization) to the IP address of your MCC. For example 10.137.187.38.

    ![eMCC img26](images/emcc26.png)

**Verify Content using the DO Client**

To verify that the Delivery Optimization client can download content using MCC, you can use the following steps:

1. Download a game or application from the Microsoft Store.   

    ![eMCC img27](images/emcc27.png)

2. Verify downloads came from MCC by one of two methods:

    - Using PowerShell Cmdlet Get-DeliveryOptimizationStatus you should see BytesFromCacheServer test  

      ![eMCC img28](images/emcc28.png)

    - Looking at the Delivery Optimization Activity Monitor

      ![eMCC img29](images/emcc29.png)

### Also see

[Microsoft Connected Cache for ISPs](mcc-isp.md)<br>
[Introducing Microsoft Connected Cache](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/introducing-microsoft-connected-cache-microsoft-s-cloud-managed/ba-p/963898)
