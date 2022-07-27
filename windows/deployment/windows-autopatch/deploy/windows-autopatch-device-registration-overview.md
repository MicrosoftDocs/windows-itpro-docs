---
title: Device registration overview
description:  This article details how to register devices in Autopatch
ms.date: 07/28/2022
ms.prod: w11
ms.technology: windows
ms.topic: how-to
ms.localizationpriority: medium
author: tiaraquan
ms.author: tiaraquan
manager: dougeby
msreviewer: andredm7
---

# Device registration overview

Windows Autopatch must register your existing devices into its service to manage update deployments on your behalf.

The Windows Autopatch device registration process is transparent for end-users because it doesn’t require devices to be reset.

The overall device registration process is:

:::image type="content" source="../media/windows-autopatch-device-registration-overview.png" alt-text="Overview of the device registration process" lightbox="../media/windows-autopatch-device-registration-overview.png":::

1. IT admin identifies devices to be managed by Windows Autopatch and adds them into the **Windows Autopatch Device Registration** Azure Active Directory (AD) group.
1. Windows Autopatch then:
    1. Performs device readiness prior registration (prerequisite checks).
    1. Calculates the deployment ring distribution.
    1. Assigns devices to one of the deployment rings based on the previous calculation.
    1. Assigns devices to other Azure AD groups required for management.
    1. Marks devices as active for management so it can apply its update deployment policies.
1. IT admin then monitors the device registration trends and the update deployment reports.

For more information about the device registration workflow, see the [Detailed device registration workflow diagram](#detailed-device-registration-workflow-diagram) section for more technical details behind the Windows Autopatch device registration process.

## Detailed device registration workflow diagram

See the following detailed workflow diagram. The diagram covers the Windows Autopatch device registration process:

:::image type="content" source="../media/windows-autopatch-device-registration-workflow-diagram.png" alt-text="Detailed device registration workflow diagram" lightbox="../media/windows-autopatch-device-registration-workflow-diagram.png":::

1. IT admin identifies devices to be managed by the Windows Autopatch service.
2. IT admin adds devices through direct membership or nests other Azure AD assigned or dynamic groups into the **Windows Autopatch Device Registration** Azure AD assigned group.
3. The Windows Autopatch Discover Devices function hourly discovers devices previously added by the IT admin into the **Windows Autopatch Device Registration** Azure AD assigned group in **step #2**. The Azure AD device ID is used by Windows Autopatch to query device attributes in both Microsoft Endpoint Manager-Intune and Azure AD when registering devices into its service.
    1. Once devices are discovered from the Azure AD group, the same function gathers additional device attributes and saves it into its memory during the discovery operation. The following device attributes are gathered from Azure AD in this step:
        1. AzureADDeviceID
        2. OperatingSystem
        3. DisplayName (Device name)
        4. AccountEnabled
        5. RegistrationDateTime
        6. ApproximateLastSignInDateTime
    2. In this same step, the Windows Autopatch discover devices function calls another function, the device prerequisite check function. The device prerequisite check function evaluates software-based device-level prerequisites to comply with Windows Autopatch device readiness requirements prior to registration.
4. The Windows Autopatch prerequisite function makes an Intune Graph API call to sequentially validate device readiness attributes required for the registration process. For detailed information, see the [Detailed prerequisite check workflow diagram](#detailed-prerequisite-check-workflow-diagram) section. The service checks the following device readiness attributes, and/or prerequisites:
    1. **Serial number, model, and manufacturer.**
        1. Checks if the serial number already exists in the Windows Autopatch’s managed device database.
    2. **If the device is Intune-managed or not**.  
        1. Windows Autopatch looks to see if the Azure AD device ID has an Intune device ID associated with it.
            1. If **yes**, it means this device is enrolled into Intune.
            2. If **not**, it means the device isn't enrolled into Intune, hence it can't be managed by the Windows Autopatch service.
        2. **If the device is not managed by Intune**, the Windows Autopatch service can't gather device attributes such as operating system version, Intune enrollment date, device name and other attributes. When this happens, the Windows Autopatch service uses the Azure AD device attributes gathered and saved to its memory in **step 3a**.
            1. Once it has the device attributes gathered from Azure AD in **step 3a**, the device is flagged with the Prerequisite failed status, then added to the Not ready tab so the IT admin can review the reason(s) the device wasn't registered into Windows Autopatch. The IT admin will remediate these devices. In this case, the IT admin should check why the device wasn’t enrolled into Intune.
            2. A common reason is when the Azure AD device ID is stale, it doesn’t have an Intune device ID associated with anymore. To remediate, clean up any stale Azure AD records from your tenant.
        3. **If the device is managed by Intune**, the Windows Autopatch prerequisite check function continues to the next prerequisite check, which evaluates whether the device has checked into Intune in the last 28 days.
    3. **If the device is a Windows device or not**.
        1. If it’s a Windows device, Windows Autopatch evaluates the following requirements:
            1. Whether the **Windows OS version** is **greater or equal to 10**.
            2. The **OS build** is **greater or equal to 1809**.
            3. The **architecture** is **x64**.
    4. **Windows Autopatch checks the Windows SKU family**. The SKU must be either:
        1. **Enterprise**
        2. **Pro**
        3. **Pro Workstation**
    5. If the device meets the operating system requirements, Windows Autopatch checks whether the device is either:
        1. **Only managed by Intune**
            1. If the device is only managed by Intune, the device is marked as **passed all prerequisites**.
        2. **Co-managed by both Configuration Manager and Intune**
            1. If the device is co-managed by both Configuration Manager and Intune, an additional prerequisite check is evaluated to determine if the device satisfies the co-management-enabled workloads required by Windows Autopatch to manage devices in a co-managed state.
                1. The required co-management workloads evaluated in this step are:
                    1. **Windows Updates Policies**
                    2. **Device Configuration**
                    3. **Office Click to Run**
                2. If Windows Autopatch determines that one of these workloads isn’t enabled on the device, the service marks the device as **Prerequisite failed** and moves the device to the **Not Ready** tab.
5. Once the device passes all prerequisites described in **step #4**, Windows Autopatch starts its deployment ring assignment calculation. The following logic is used to calculate the Windows Autopatch deployment ring assignment:
    1. If the Windows Autopatch tenant’s existing managed device size is **≤ 200**, the deployment ring assignment is **First (5%)**, **Fast (15%)**, remaining devices go to the **Broad ring (80%)**.
    2. If the Windows Autopatch tenant’s existing managed device size is **>200**, the deployment ring assignment will be **First (1%)**, **Fast (9%)**, remaining devices go to the **Broad ring (90%)**.
6. Once the deployment ring calculation is done, Windows Autopatch assigns devices to one of the following deployment ring groups:
    1. **Modern Workplace Devices-Windows Autopatch-First**
        1. The Windows Autopatch device registration process doesn’t automatically assign devices to the Test ring represented by the Azure AD group (Modern Workplace Devices-Windows Autopatch-First). It’s important that you assign devices to the Test ring to validate the update deployments before the updates are deployed to a broader population of devices.
    2. **Modern Workplace Devices-Windows Autopatch-Fast**
    3. **Modern Workplace Devices-Windows Autopatch-Broad**
7. Windows Autopatch also assigns devices to the following Azure AD groups:
    1. **Modern Workplace Devices - All**
        1. This group has all devices managed by Windows Autopatch.
    2. **Modern Workplace Devices Dynamic - Windows 10**
        1. This group has all devices managed by Windows Autopatch and that have Windows 10 installed.
    3. M**odern Workplace Devices Dynamic - Windows 11**
        1. This group has all devices managed by Windows Autopatch and that have Windows 11 installed.
    4. **Modern Workplace Devices - Virtual Machine**
        1. This group has all virtual devices managed by Windows Autopatch.
8. In post-device registration, three actions occur:
    1. Windows Autopatch adds devices to its managed database.
    2. Flags devices as **Active** in the **Ready** tab.
    3. The Azure AD device ID of the device successfully registered is added into the Microsoft Cloud Managed Desktop Extension’s allowlist. Windows Autopatch installs the Microsoft Cloud Managed Desktop Extension agent once devices are registered, so the agent can communicate back to the Microsoft Cloud Managed Desktop Extension service.
        1. The agent is the **Modern Workplace - Autopatch Client setup** PowerShell script that was created during the Windows Autopatch tenant enrollment process. The script is executed once devices are successfully registered into the Windows Autopatch service.
9. IT admins review the device registration status in both the **Ready** and **Not ready** tabs.
    1. If the device was successfully registered, it shows up in the **Ready** tab.
    2. If not, in the **Not ready** tab.
10. This is the end of the Windows Autopatch device registration workflow.

## Detailed prerequisite check workflow diagram

As described in **step #4** in the previous [Detailed device registration workflow diagram](#detailed-device-registration-workflow-diagram), the following diagram is a visual representation of the prerequisite construct for the Windows Autopatch device registration process. The prerequisite checks are sequentially performed.

:::image type="content" source="../media/windows-autopatch-prerequisite-check-workflow-diagram.png" alt-text="Detailed prerequisite check workflow diagram" lightbox="../media/windows-autopatch-prerequisite-check-workflow-diagram.png":::
