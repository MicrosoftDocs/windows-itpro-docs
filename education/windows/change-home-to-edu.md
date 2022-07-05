---
title: Upgrade Windows Home to Windows Education on personal devices using volume licensing
description: Learn how IT Pros can upgrade personal devices from Windows Home to Windows Education using Mobile Device Management and qualifying subscriptions.
keywords: upgrade, Windows Home to Windows Education, education customers, Windows 10 Home, Windows 11 Home, Windows 11 Education, Windows 10 Education, Intune, Mobile Device Management
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: edu
ms.localizationpriority: medium
author: scottbreenmsft
ms.author: scbree
ms.date: 07/05/2021
ms.reviewer: aczechowski
manager: dansimp
---

# Upgrade Windows Home to Windows Education on personal devices using volume licensing

## Overview

Customers with qualifying subscriptions can upgrade students personal (or institution-owned) devices from Windows Home to Windows Education, which is designed for both the classroom and remote learning.

> [!NOTE]
> To be qualified for this process, customers must have a Windows Education subscription that includes the student use benefit and must have access to the Volume Licensing Service Center (VLSC) or the Microsoft 365 Admin Center.

IT staff can upgrade student devices using a multiple activation key (MAK). Alternatively, student devices can be upgraded by contacting [Kivuto OnTheHub](http://onthehub.com) to obtain a product key for their device. The table below provides the recommended approach for personal devices depending on the scenario.

|Method|MAK source|Device ownership|Best for|
|-|-|-|-|
|Mobile Device Management|Volume License Service Center|Personal|IT admin initiated as part of enrolment into device management|
|Kivuto|Kivuto|Personal|Initiated on device by student, parent or guardian|
|Provisioning package|Volume license center|Personal or Corporate|IT admin initiated before performing Autopilot|

Devices can be upgraded from *Windows Professional* or *Windows Pro Edu* to *Windows Education* or *Windows Enterprise* using [Windows 10/11 Subscription Activation](/windows/deployment/windows-10-subscription-activation).

## Why upgrade personal devices from Windows Home to Windows Education?

Some school institutions want to streamline student onboarding for personal devices using Mobile Device Management. This could include installing certificates, configuring WiFi profiles and offering applications that are required for learning. Some MDM configuration service providers (CSPs) are not available on Windows Home which can limit the management capabilities. Some key CSPs that can affect mobile device management for these scenarios are:

- [EnterpriseDesktopAppManagement](/windows/client-management/mdm/enterprisemodernappmanagement-csp) - which enables deployment of Windows installer or Win32 applications.
- [DeliveryOptimization](/windows/client-management/mdm/policy-csp-deliveryoptimization) - which enables configuration of Delivery Optimization.

A full list is available at [Configuration service provider reference](/windows/client-management/mdm/configuration-service-provider-reference). For more information about enrolling devices into Microsoft Intune, see [Deployment guide: Enroll Windows devices in Microsoft Intune](/mem/intune/fundamentals/deployment-guide-enrollment-windows)

## Requirements for using a MAK to upgrade from Windows Home to Windows Education

- Access to Volume Licensing Service Center (VLSC) or the Microsoft 365 Admin Center.
- A qualifying Windows subscription such as:
  - Windows A3, or;
  - Windows A5.
- A pre-installed and activated instance of Windows 10 Home or Windows 11 Home.

You can find more information in the [Microsoft Product Terms](https://www.microsoft.com/licensing/terms/productoffering).

## How the upgrade process works

IT admins with access to the VLSC or the Microsoft 365 Admin Center, can find their MAK for Windows Education and trigger an upgrade via Mobile Device Management or manually on devices.

> [!WARNING]
> The MAK key is highly sensitive and should always be protected. Only authorized staff should be given access to the key and it should never be distributed to students or broadly to your organization in documentation or emails.

### Recommended methods for using a MAK

It’s critical that MAKs are protected whenever they are used. The following processes provide the best protection for a MAK being applied to a device:

- Provisioning package by institution approved staff;
- Manual entry by institution approved staff (do not distribute the key via email);
- Mobile Device Management (like Microsoft Intune) via [WindowsLicensing CSP](/windows/client-management/mdm/windowslicensing-csp);
    > [!IMPORTANT]
    > If you are using a Mobile Device Management product other than Microsoft Intune, ensure the key is not accessible by students.
- Operating System Deployment processes with tools such as Microsoft Deployment Toolkit or Microsoft Endpoint Configuration Manager.

 For a full list of methods to perform a Windows edition upgrade and more details, see [Windows 10 edition upgrade](/windows/deployment/upgrade/windows-10-edition-upgrades).

## Downgrading, resetting, reinstalling and graduation rights

After upgrading from Windows Home to Windows Education there are some considerations for what happens during downgrade, reset or re-install of the operating system.

The table below highlights the differences by upgrade product key type:

|MAK Type|Downgrade|Reset|Student re-install|
|-|-|-|-|
|MAK from VLSC|No|Yes|No|
|MAK from Kivuto|No|Yes|Yes|

### Downgrade

It is not possible to downgrade to Windows Home from Windows Education without reinstalling Windows.

### Reset

If the computer is reset, Windows Education will be retained. 

### Re-install

If a device upgraded by VLSC MAK has Windows reinstalled by the student, it would need to be reinstalled with Windows Home or whatever edition was installed originally on the device to activate successfully using the key provided with the device at purchase.

If students require a Windows Education key that can work on a new install of Windows, they should use [Kivuto OnTheHub](http://onthehub.com) to request a key prior to graduation.

For details on product keys and reinstalling Windows, see [Find your Windows product key](https://support.microsoft.com/windows/find-your-windows-product-key-aaa2bf69-7b2b-9f13-f581-a806abf0a886).

### Re-sale

The license will remain installed on the device if resold and the same conditions above apply for downgrade (in-place) reset or reinstall.

## User Notifications

Users are not prompted or notified that their device has been or will be upgraded to Windows Education when using MDM. It is the responsibility of the institution to notify their users that enrolling in MDM will result in the device being upgraded to Windows Education and that this will give the institution extra capabilities such as installing applications.

As always, device users can unenroll from within Settings to prevent further actions from being taken on their personal device.

## Step by step process for customers to upgrade personal devices using Microsoft Intune

These steps will configure a Windows edition upgrade policy and target all Windows Home devices that are managed by Microsoft Intune for the upgrade to Windows Education edition using your MAK.

### Step 1: Create a Windows Home edition filter

Filters allow you to target the all devices group but to a subset of devices using a filter. In this case the filter will be based on the operating system SKU. This will ensure we only upgrade devices that are running Windows Home edition and avoid upgrading devices that are running Windows Pro/Pro EDU edition which can upgrade using [Windows 10/11 Subscription Activation](/windows/deployment/windows-10-subscription-activation).

- Start in the **Microsoft Endpoint Manager admin console**
- Go to **Tenant Administration** > **Filters**
- Click **Create**
  - Create a name for the filter (for example *Windows Home edition*)
  - Select the **platform** as **Windows 10 and later**
  - Click **Next**
- On the **Rules** screen, configure the following rules:
  - **operatingSystemSKU** equals **Core (Windows 10/11 Home (101))**
    - OR
  - **operatingSystemSKU** equals **CoreN (Windows 10/11 Home N (98))**
    - OR
  - **operatingSystemSKU** equals **CoreSingleLanguage (Windows 10/11 Home single language (100))**

    > [!NOTE]
    > Ensure you’ve selected OR as the operator in the right And/Or column

    :::image type="content" source="/images/change-home-to-edu-windows-home-edition-intune-filter.png" alt-text="Example of configuring the Windows Home filter":::

- Optionally select scope tags as required
- Save the filter by clicking **Create**

### Step 2: Create a Windows edition upgrade policy

- Start in the **Microsoft Endpoint Manager admin console**
- Select **Devices** > **Configuration profiles**
- Select **Create profile**
  - Select the **Platform** as **Windows 10 or later**
  - Select the **Profile type** as **Templates**
  - Select the **Template** as **Edition upgrade and mode switch**
  - Click **Create**
- Create a name for the filter (for example *Windows Education edition upgrade*), click **Next**
- On the **Configuration settings** screen
  - Expand **Edition Upgrade**
  - Change **Edition to upgrade** to **Windows 10/11 Education**
  - In the **Product Key**, enter your *Windows 10/11 Education MAK*
  - Click **Next**
- Optionally select scope tags as required and click **Next**
- On the **assignments** screen;
  - Select **Add all devices**
  - Next to **All devices**, select **Edit filter**
  - Select to **Include filtered devices in assignment**
  - Select the *Windows Home edition* filter you created earlier
  - Click **Select** to save the filter selection
  - Click **Next** to progress to the next screen
  
  :::image type="content" source="/images/change-home-to-edu-windows-edition-upgrade-policy.png" alt-text="Example of configuring the Windows upgrade policy in Microsoft Intune":::
- Do not configure any applicability rules and click **next**
- Review your settings and click **Create**

The edition upgrade policy will now apply to all existing and new Windows Home edition devices in your tenant. You can verify they’ve upgraded by checking the Operating System SKU field on the device > hardware screen.

### Step 3: Report on device edition

- Start in the **Microsoft Endpoint Manager admin console**
- Select **Devices** > **Windows**
- Select the **Columns** button
- Select **Sku Family**
- Click **Export**
- Select **Only include the selected columns in the exported file** and click **Yes**
- Open the file in Excel and filter on the Sku Family column to identify which devices are running the Home SKU

## Frequently asked questions (FAQ)

### My MAK key has run out of activations, how do I request a new one?

- Increases to MAK Activation quantity can be requested by contacting [VLSC support](/licensing/contact-us) and may be granted by exception. 
- To do this you must have VLSC Administrator, Key Administrator, or Key Viewer permissions and provide the following information:
  - Agreement/Enrollment Number or License ID and Authorization.
  - Product Name (includes version and edition).
  - Last 5 characters of the product key.
  - The number of host activations required.
  - Business Justification or Reason for Deployment.

### What is a firmware-embedded activation key?

A firmware-embedded activation key is a Windows product key that is installed into the firmware of your device to allow for easy activation of Windows. To determine if the computer has a firmware-embedded activation key, type the following command at an elevated Windows PowerShell prompt:

```powershell
(Get-CimInstance -query ‘select * from SoftwareLicensingService’).OA3xOriginalProductKey
```

If the device has a firmware-embedded activation key, it will be displayed in the output. If the output is blank, the device does not have a firmware embedded activation key. Most OEM-provided devices designed to run Windows 8 or later will have a firmware-embedded key.

A firmware embedded key is only required to upgrade using Subscription Activation, a MAK upgrade does not require the firmware embedded key.

### What is a multiple activation key and how does it differ from using KMS, Active Directory based activation or Subscription Activation?

A multiple activation key activates either individual computers or a group of computers by connecting directly to servers over the internet or by telephone. KMS, Active Directory based activation and subscription activation are bulk activation methods that work based on network proximity or joining to Active Directory or Azure Active Directory. The table below shows which methods can be used for each scenario.

| Scenario | Ownership | MAK | KMS | AD based activation | Subscription Activation |
|-|-|:-:|:-:|:-:|:-:|
| **Workplace join (add work or school account)** | Personal | X | | | |
| **Azure Active Directory Join** | Organization | X | X | | X |
| **Hybrid Azure AD Join** | Organization | X | X | X | X |

## Related links

- [Windows 10 edition upgrade (Windows 10)](/windows/deployment/upgrade/windows-10-edition-upgrades)
- [Windows 10/11 Subscription Activation](/windows/deployment/windows-10-subscription-activation)
- [Equip Your Students with Windows 11 Education – Kivuto](https://kivuto.com/windows-11-student-use-benefit/)
- [Upgrade Windows Home to Windows Pro (microsoft.com)](https://support.microsoft.com/windows/upgrade-windows-home-to-windows-pro-ef34d520-e73f-3198-c525-d1a218cc2818)
- [Partner Center: Upgrade Education customers from Windows 10 Home to Windows 10 Education](/partner-center/upgrade-windows-to-education)
