---
title: Enable hardware-based isolation for Microsoft Edge (Windows)
description: Learn about the Microsoft Defender Application Guard modes (Standalone or Enterprise-managed), and how to install Application Guard in your enterprise.
ms.prod: windows-client
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: vinaypamnani-msft
ms.author: vinpa
ms.date: 09/09/2021
ms.reviewer: 
manager: aaroncz
ms.custom: asr
ms.technology: itpro-security
ms.collection: 
  - highpri
---

# Prepare to install Microsoft Defender Application Guard

**Applies to:**

- Windows 10
- Windows 11

## Review system requirements
 
See [System requirements for Microsoft Defender Application Guard](./reqs-md-app-guard.md) to review the hardware and software installation requirements for Microsoft Defender Application Guard.
>[!NOTE]
>Microsoft Defender Application Guard is not supported on VMs and VDI environment. For testing and automation on non-production machines, you may enable WDAG on a VM by enabling Hyper-V nested virtualization on the host.

## Prepare for Microsoft Defender Application Guard 
Before you can install and use Microsoft Defender Application Guard, you must determine which way you intend to use it in your enterprise. You can use Application Guard in either **Standalone** or **Enterprise-managed** mode.

### Standalone mode

Applies to:
- Windows 10 Enterprise edition, version 1709 or higher
- Windows 10 Pro edition, version 1803
- Windows 11

Employees can use hardware-isolated browsing sessions without any administrator or management policy configuration. In this mode,   you must install Application Guard and then the employee must manually start Microsoft Edge in Application Guard while browsing untrusted sites. For an example of how this works, see the [Application Guard in standalone mode](test-scenarios-md-app-guard.md) testing scenario.

## Enterprise-managed mode

Applies to:
- Windows 10 Enterprise edition, version 1709 or higher
- Windows 11

You and your security department can define your corporate boundaries by explicitly adding trusted domains and by customizing the Application Guard experience to meet and enforce your needs on employee devices. Enterprise-managed mode also automatically redirects any browser requests to add non-enterprise domain(s) in the container.

The following diagram shows the flow between the host PC and the isolated container.
![Flowchart for movement between Microsoft Edge and Application Guard.](images/application-guard-container-v-host.png)

## Install Application Guard

Application Guard functionality is turned off by default. However, you can quickly install it on your employee's devices through the Control Panel, PowerShell, or your mobile device management (MDM) solution.

### To install by using the Control Panel

1. Open the **Control Panel**, click **Programs,** and then click **Turn Windows features on or off**.

    ![Windows Features, turning on Microsoft Defender Application Guard.](images/turn-windows-features-on-off.png)

2. Select the check box next to **Microsoft Defender Application Guard** and then click **OK**.

   Application Guard and its underlying dependencies are all installed.

### To install by using PowerShell

>[!NOTE]
>Ensure your devices have met all system requirements prior to this step. PowerShell will install the feature without checking system requirements. If your devices don't meet the system requirements, Application Guard may not work. This step is recommended for enterprise managed scenarios only.

1. Click the **Search** or **Cortana** icon in the Windows 10 or Windows 11 taskbar and type **PowerShell**.
   
2. Right-click **Windows PowerShell**, and then click **Run as administrator**.

   Windows PowerShell opens with administrator credentials.

3. Type the following command:

    ```
    Enable-WindowsOptionalFeature -online -FeatureName Windows-Defender-ApplicationGuard
    ```
4. Restart the device.

   Application Guard and its underlying dependencies are all installed.

### To install by using Intune

> [!IMPORTANT]
> Make sure your organization's devices meet [requirements](reqs-md-app-guard.md) and are [enrolled in Intune](/mem/intune/enrollment/device-enrollment).

:::image type="content" source="images/MDAG-EndpointMgr-newprofile.jpg" alt-text="Enroll devices in Intune.":::

1. Sign in to the [Microsoft Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431).

1. Choose **Devices** > **Configuration profiles** > **+ Create profile**, and do the following: <br/>

   1. In the **Platform** list, select **Windows 10 and later**. 
   
   1. In the **Profile** list, select **Endpoint protection**. 
   
   1. Choose **Create**.

1. Specify the following settings for the profile:

   - **Name** and **Description**

   - In the **Select a category to configure settings** section, choose **Microsoft Defender Application Guard**.

   - In the **Application Guard** list, choose **Enabled for Edge**.

   - Choose your preferences for **Clipboard behavior**, **External content**, and the remaining settings.

1. Choose **OK**, and then choose **OK** again.

1. Review your settings, and then choose **Create**.

1. Choose **Assignments**, and then do the following:

   1. On the **Include** tab, in the **Assign to** list, choose an option.

   1. If you have any devices or users you want to exclude from this endpoint protection profile, specify those on the **Exclude** tab.

   1. Click **Save**.

After the profile is created, any devices to which the policy should apply will have Microsoft Defender Application Guard enabled. Users might have to restart their devices in order for protection to be in place.
