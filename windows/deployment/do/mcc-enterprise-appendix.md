---
title: Appendix
manager: aaroncz
description: Appendix on Microsoft Connected Cache (MCC) for Enterprise and Education.
ms.prod: w10
author: amymzhou
ms.author: amyzhou
ms.localizationpriority: medium
ms.collection: M365-modern-desktop
ms.topic: article
---

# Appendix

## Diagnostics Script

If you're having issues with your MCC, we included a diagnostics script. The script collects all your logs and zips them into a single file. You can then send us these logs via email for the MCC team to debug.

To run this script:

1. Navigate to the following folder in the MCC installation files:

    mccinstaller > Eflow > Diagnostics

1. Run the following commands:

   ```powershell
   Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope Process
   .\collectMccDiagnostics.ps1
   ```

1. The script stores all the debug files into a folder and then creates a tar file. After the script is finished running, it will output the path of the tar file, which you can share with us. The location should be **\<currentpath\>**\mccdiagnostics\support_bundle_\$timestamp.tar.gz

1. [Email the MCC team](mailto:mccforenterprise@microsoft.com?subject=Debugging%20Help%20Needed%20for%20MCC%20for%20Enterprise) and attach this file asking for debugging support. Screenshots of the error along with any other warnings you saw will be helpful during out debugging process.

## Steps to obtain an Azure Subscription ID

<!--Using include file, get-azure-subscription.md, do/mcc-isp.md for shared content-->
[!INCLUDE [Get Azure subscription](includes/get-azure-subscription.md)]

## Troubleshooting

If you're not able to sign up for a Microsoft Azure subscription with the error: **Account belongs to a directory that cannot be associated with an Azure subscription. Please sign in with a different account.** See [Can't sign up for a Microsoft Azure subscription](/troubleshoot/azure/general/cannot-sign-up-subscription). 

Also see [Troubleshoot issues when you sign up for a new account in the Azure portal](/azure/cost-management-billing/manage/troubleshoot-azure-sign-up).

## IoT Edge runtime

The Azure IoT Edge runtime enables custom and cloud logic on IoT Edge devices.
The runtime sits on the IoT Edge device, and performs management and
communication operations. The runtime performs several functions:

- Installs and update workloads (Docker containers) on the device.
- Maintains Azure IoT Edge security standards on the device.
- Ensures that IoT Edge modules (Docker containers) are always running.
- Reports module (Docker containers) health to the cloud for remote monitoring.
- Manages communication between an IoT Edge device and the cloud.

For more information on Azure IoT Edge, see the [Azure IoT Edge documentation](/azure/iot-edge/about-iot-edge).

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

1.  Registry Key (version 1709 and later):  
    `HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization`
</br>
    "DOCacheHost"=" "  
    
    From an elevated command prompt:

    ```
    reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization" /v DOCacheHost /t REG_SZ /d "10.137.187.38" /f
    ```

1. MDM Path (version 1809 and later):

    `.Vendor/MSFT/Policy/Config/DeliveryOptimization/DOCacheHost`

1. In Windows (release version 1809 and later), you can apply the policy via Group Policy Editor. The policy to apply is **DOCacheHost**. To configure the clients to pull content from the MCC using Group Policy, go to **Computer Configuration** > **Administrative Templates** > **Windows Components** > **Delivery Optimization**. Set the **Cache Server Hostname** to the IP address of your MCC, such as `10.137.187.38`.

   :::image type="content" source="./images/ent-mcc-group-policy-hostname.png" alt-text="Screenshot of the Group Policy editor showing the Cache Server Hostname Group Policy setting." lightbox="./images/ent-mcc-group-policy-hostname.png":::


**Verify Content using the DO Client**

To verify that the Delivery Optimization client can download content using MCC, you can use the following steps:

1. Download a game or application from the Microsoft Store.

   :::image type="content" source="./images/ent-mcc-store-example-download.png" alt-text="Screenshot of the Microsoft Store with the game, Angry Birds 2, selected.":::


1. Verify downloads came from MCC by one of two methods:

    - Using the PowerShell Cmdlet Get-DeliveryOptimizationStatus you should see *BytesFromCacheServer*.

      :::image type="content" source="./images/ent-mcc-get-deliveryoptimizationstatus.png" alt-text="Screenshot of the output of Get-DeliveryOptimization | FT from PowerShell." lightbox="./images/ent-mcc-get-deliveryoptimizationstatus.png":::

    - Using the Delivery Optimization Activity Monitor
    
      :::image type="content" source="./images/ent-mcc-delivery-optimization-activity.png" alt-text="Screenshot of the Delivery Optimization Activity Monitor.":::

