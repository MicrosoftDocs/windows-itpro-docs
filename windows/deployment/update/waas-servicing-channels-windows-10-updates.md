---
title: Assign devices to servicing channels for Windows client updates
description: Learn how to assign devices to servicing channels for Windows 10 updates locally, by using Group Policy, and by using MDM
ms.prod: windows-client
author: mestew
ms.localizationpriority: medium
ms.author: mstewart
manager: aaroncz
ms.topic: article
ms.technology: itpro-updates
ms.date: 12/31/2017
---

# Assign devices to servicing channels for Windows 10 updates


**Applies to**

- Windows 10
- Windows 11


> **Looking for consumer information?** See [Windows Update: FAQ](https://support.microsoft.com/help/12373/windows-update-faq) 

>[!TIP]
>If you're not familiar with the servicing or release channels, read [Servicing Channels](waas-overview.md#servicing-channels) first.

The General Availability Channel is the default servicing channel for all Windows 10 and Windows 11 devices except devices with the LTSC edition installed. The following table shows the servicing channels available to each edition. 

| Edition | General Availability Channel | Long-Term Servicing Channel | Insider Program |
| --- | --- | --- | --- |
| Home | ![no.](images/crossmark.png) | ![no](images/crossmark.png) | ![yes](images/checkmark.png) |
| Pro | ![yes.](images/checkmark.png) | ![no](images/crossmark.png) | ![yes](images/checkmark.png) |
| Enterprise  | ![yes.](images/checkmark.png) | ![no](images/crossmark.png) | ![yes](images/checkmark.png) |
| Enterprise LTSC  | ![no.](images/crossmark.png) | ![yes](images/checkmark.png) | ![no](images/crossmark.png) |
| Pro Education | ![yes.](images/checkmark.png) | ![no](images/crossmark.png) | ![yes](images/checkmark.png) |
| Education  | ![yes.](images/checkmark.png) | ![no](images/crossmark.png) | ![yes](images/checkmark.png) |


>[!NOTE]
>The LTSC edition is only available through the [Microsoft Volume Licensing Center](https://www.microsoft.com/Licensing/servicecenter/default.aspx).

>[!NOTE]
>Devices will automatically receive updates from the General Availability Channel, unless they are configured to receive preview updates through the Windows Insider Program.


## Enroll devices in the Windows Insider Program

To get started with the Windows Insider Program for Business, follows these steps:

1. On the [Windows Insider](https://www.microsoft.com/windowsinsider/for-business) website, select **Register** to register your organizational Azure AD account.
2. Follow the prompts to register your tenant.</br>**Note:** The signed-in user needs to be a **Global Administrator** of the Azure AD domain in order to be able to register.
3. Make sure the **Allow Telemetry** setting is set to **2** or higher.
4. For Windows devices, set policies to manage preview builds and their delivery:

The **Manage preview builds** setting gives administrators control over enabling or disabling preview build installation on a device. You can also decide to stop preview builds once the release is public.
* Group Policy: **Computer Configuration/Administrative Templates/Windows Components/Windows Update/Windows Update for Business** - *Manage preview builds*
* MDM: **Update/ManagePreviewBuilds**

The **Branch Readiness Level** settings allow you to choose between preview flight rings, and allows you to defer or pause the delivery of updates.
* Group Policy: **Computer Configuration/Administrative Templates/Windows Components/Windows Update/ Windows Update for Business** - *Select when Preview Builds and feature updates are received*
* MDM: **Update/BranchReadinessLevel**

For more information, see [Windows Insider Program for Business](/windows-insider/business/register).

## Block access to Windows Insider Program

To prevent devices in your organization from being enrolled in the Insider Program for early releases of Windows 10:

- Group Policy: Computer Configuration\Administrative Templates\Windows Components\Data Collection and Preview Builds\\**Toggle user control over Insider builds**
- MDM: Policy CSP - [System/AllowBuildPreview](/windows/client-management/mdm/policy-configuration-service-provider#System_AllowBuildPreview)

>[!IMPORTANT]
>Starting with Windows 10, version 1709, this policy is replaced by **Manage preview builds** policy.
> * Group Policy: **Computer Configuration/Administrative Templates/Windows Components/Windows Update/Windows Update for Business** - *Manage preview builds*
> * MDM: **Update/ManagePreviewBuilds**

