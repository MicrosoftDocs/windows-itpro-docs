---
title: Upgrade Windows Home to Windows Education on student-owned devices
description: Learn how IT Pros can upgrade student-owned devices from Windows Home to Windows Education using Mobile Device Management or Kivuto OnTheHub with qualifying subscriptions.
ms.date: 04/10/2024
ms.topic: how-to
author: scottbreenmsft
ms.author: scbree
ms.reviewer: paoloma
manager: aaroncz
ms.collection:
  - tier3
  - education
---

# Upgrade Windows Home to Windows Education on student-owned devices

## Overview

Customers with qualifying subscriptions can upgrade student-owned and institution-owned devices from *Windows Home* to *Windows Education*, which is designed for both the classroom and remote learning.

> [!NOTE]
> To be qualified for this process, customers must have a Windows Education subscription that includes the student use benefit and must have access to the Volume Licensing Service Center (VLSC) or the Microsoft 365 Admin Center.

IT admins can upgrade student devices using a multiple activation key (MAK) manually or through Mobile Device Management (MDM). The following table provides the recommended method depending on the scenario.

| Method | Product key source | Device ownership | Best for |
|-|-|-|-|
| MDM | VLSC | Personal (student-owned) | IT admin initiated via MDM |
| Provisioning package | VLSC | Personal (student-owned) or Corporate (institution-owned) | IT admin initiated at first boot |

These methods apply to devices with *Windows Home* installed; institution-owned devices can be upgraded from *Windows Professional* or *Windows Pro Edu* to *Windows Education* or *Windows Enterprise* using [Windows 10/11 Subscription Activation](/windows/deployment/windows-10-subscription-activation).

## User Notifications

Users aren't notified when their device is upgraded to Windows Education when using MDM. It's the responsibility of the institution to notify their users. Institutions should notify their users that MDM initiates an upgrade to Windows Education, and that the upgrade gives the institution extra capabilities, such as installing applications.

Device users can disconnect from MDM in the Settings app, to prevent further actions from being taken on their personal device. For instructions on disconnecting from MDM, see [Remove your Windows device from management](/mem/intune/user-help/unenroll-your-device-from-intune-windows).

## Why upgrade student-owned devices from Windows Home to Windows Education?

Some school institutions want to streamline student onboarding for student-owned devices using MDM. Typical MDM requirements include installing certificates, configuring WiFi profiles, and installing applications. On Windows, MDM uses Configuration Service Providers (CSPs) to configure settings. Some CSPs aren't available on Windows Home, which can limit the capabilities. Some of the CSPs not available in Windows Home that can affect typical student onboarding are:

- [EnterpriseDesktopAppManagement](/windows/client-management/mdm/enterprisemodernappmanagement-csp) - which enables deployment of Windows installer or Win32 applications.
- [DeliveryOptimization](/windows/client-management/mdm/policy-csp-deliveryoptimization) - which enables configuration of Delivery Optimization.

A full list of CSPs is available at [Configuration service provider reference](/windows/client-management/mdm/configuration-service-provider-reference). For more information about enrolling devices into Microsoft Intune, see [Deployment guide: Enroll Windows devices in Microsoft Intune](/mem/intune/fundamentals/deployment-guide-enrollment-windows).

## Requirements for using a MAK to upgrade from Windows Home to Windows Education

- Access to Volume Licensing Service Center (VLSC) or the Microsoft 365 Admin Center
- A qualifying Windows subscription such as:
  - Windows A3, or
  - Windows A5
- A preinstalled and activated instance of Windows 10 Home or Windows 11 Home

You can find more information in the [Microsoft Product Terms](https://www.microsoft.com/licensing/terms/productoffering).

## How the upgrade process works

IT admins with access to the VLSC or the Microsoft 365 Admin Center, can find their MAK for Windows Education and trigger an upgrade using Mobile Device Management or manually on devices.

> [!WARNING]
> The MAK is highly sensitive and should always be protected. Only authorized staff should be given access to the key and it should never be distributed to students or broadly to your organization in documentation or emails.

### Recommended methods for using a MAK

It's critical that MAKs are protected whenever they're used. The following processes provide the best protection for a MAK being applied to a device:

- Provisioning package by institution approved staff
- Manual entry by institution approved staff (don't distribute the key via email)
- Mobile Device Management (like Microsoft Intune) via [WindowsLicensing CSP](/windows/client-management/mdm/windowslicensing-csp)
    > [!IMPORTANT]
    > If you are using a Mobile Device Management product other than Microsoft Intune, ensure the key isn't accessible by students.
- Operating System Deployment processes with tools such as Microsoft Deployment Toolkit or Microsoft Configuration Manager

For a full list of methods to perform a Windows edition upgrade and more details, see [Windows 10 edition upgrade](/windows/deployment/upgrade/windows-10-edition-upgrades).

## Downgrading, resetting, reinstalling, and graduation rights

After upgrading from *Windows Home* to *Windows Education* there are some considerations for what happens during downgrade, reset or reinstall of the operating system.

### Downgrade

It isn't possible to downgrade to *Windows Home* from *Windows Education* without reinstalling Windows.

### Reset

If the computer is reset, Windows Education is retained.

### Reinstall

The Education upgrade doesn't apply to reinstalling Windows. Use the original Windows edition when reinstalling Windows. The original product key or [firmware-embedded product key](#what-is-a-firmware-embedded-activation-key) is used to activate Windows.

For details on product keys and reinstalling Windows, see [Find your Windows product key](https://support.microsoft.com/windows/find-your-windows-product-key-aaa2bf69-7b2b-9f13-f581-a806abf0a886).

### Resale

The license remains installed on the device if resold and the same conditions apply for downgrade, reset, or reinstall.

## Step by step process for customers to upgrade student-owned devices using Microsoft Intune

These steps provide instructions on how to use Microsoft Intune to upgrade devices from Home to Education.

### Step 1: Create a Windows Home edition filter

These steps configure a filter that only applies to devices running the *Windows Home edition*, ensuring that only devices running *Windows Home edition* are upgraded. For more information about filters, see [Create filters in Microsoft Intune](/mem/intune/fundamentals/filters).

- Start in the [**Microsoft Intune admin center**](https://go.microsoft.com/fwlink/?linkid=2109431)
- Select **Tenant administration** > **Filters**
- Select **Create**
  - Specify a name for the filter (for example *Windows Home edition*)
  - Select the **platform** as **Windows 10 and later**
  - Select **Next**
- On the **Rules** screen, configure the following rules:
  - **operatingSystemSKU** equals **Core (Windows 10/11 Home (101))**
    - OR
  - **operatingSystemSKU** equals **CoreN (Windows 10/11 Home N (98))**
    - OR
  - **operatingSystemSKU** equals **CoreSingleLanguage (Windows 10/11 Home single language (100))**

    > [!NOTE]
    > Ensure you've selected OR as the operator in the right And/Or column

    :::image type="content" source="images/change-home-to-edu-windows-home-edition-intune-filter.png" alt-text="Example of configuring the Windows Home filter":::

- Optionally select scope tags as required
- Save the filter by selecting **Create**

### Step 2: Create a Windows edition upgrade policy

These steps create and assign a Windows edition upgrade policy. For more information, see [Windows 10/11 device settings to upgrade editions or enable S mode in Intune](/mem/intune/configuration/edition-upgrade-windows-settings).

- Start in the [**Microsoft Intune admin center**](https://go.microsoft.com/fwlink/?linkid=2109431)
- Select **Devices** > **Configuration profiles**
- Select **Create profile**
  - Select the **Platform** as **Windows 10 or later**
  - Select the **Profile type** as **Templates**
  - Select the **Template** as **Edition upgrade and mode switch**
  - Select **Create**
- Specify a name for the policy (for example *Windows Education edition upgrade*), select **Next**
- On the **Configuration settings** screen
  - Expand **Edition Upgrade**
  - Change **Edition to upgrade** to **Windows 10/11 Education**
  - In the **Product Key**, enter your *Windows 10/11 Education MAK*
  - Select **Next**

    :::image type="content" source="images/change-home-to-edu-windows-edition-upgrade-policy.png" alt-text="Example of configuring the Windows upgrade policy in Microsoft Intune":::

- Optionally select scope tags as required and select **Next**
- On the **assignments** screen:
  - Select **Add all devices**
  - Next to **All devices**, select **Edit filter**

      > [!NOTE]
      > You can also target other security groups that contain a smaller scope of users or devices and apply the filter rather than All devices.

  - Select to **Include filtered devices in assignment**
  - Select the *Windows Home edition* filter you created earlier
  - Choose **Select** to save the filter selection
  - Select **Next** to progress to the next screen
- Don't configure any applicability rules and select **next**
- Review your settings and select **Create**

The edition upgrade policy applies to all existing and new Windows Home edition devices targeted.

### Step 3: Report on device edition

You can check the Windows versions of managed devices in the Microsoft Intune admin center.

- Start in the **Microsoft Intune admin center**
- Select **Devices** > **Windows**
- Select the **Columns** button
- Select **Sku Family**
- Select **Export**
- Select **Only include the selected columns in the exported file** and select **Yes**
- Open the file in Excel and filter on the Sku Family column to identify which devices are running the Home SKU

## Frequently asked questions (FAQ)

### My MAK key has run out of activations, how do I request a new one?

Increases to MAK Activation quantity can be requested by contacting [VLSC support](/licensing/contact-us) and may be granted by exception. A request can be made by accounts with the VLSC Administrator, Key Administrator, or Key Viewer permissions. The request should include the following information:

- Agreement/Enrollment Number or License ID and Authorization
- Product Name (includes version and edition)
- Last five characters of the product key
- The number of host activations required
- Business Justification or Reason for Deployment

### What is a firmware-embedded activation key?

A firmware-embedded activation key is a Windows product key that is installed into the firmware of your device. The embedded key makes it easier to install and activate Windows. To determine if the computer has a firmware-embedded activation key, type the following command at an elevated Windows PowerShell prompt:

```powershell
(Get-CimInstance -query 'select * from SoftwareLicensingService').OA3xOriginalProductKey
```

If the device has a firmware-embedded activation key, it's displayed in the output. Otherwise the device doesn't have a firmware embedded activation key. Most OEM-provided devices designed to run Windows 8 or later have a firmware-embedded key.

A firmware embedded key is only required to upgrade using Subscription Activation, a MAK upgrade doesn't require the firmware embedded key.

### What is a multiple activation key and how does it differ from using KMS, Active Directory based activation or Subscription Activation?

A multiple activation key activates either individual computers or a group of computers by connecting directly to servers over the internet or by telephone. KMS, Active Directory based activation and subscription activation are bulk activation methods that work based on network proximity or joining to Active Directory or Microsoft Entra ID. The table below shows which methods can be used for each scenario.

| Scenario | Ownership | MAK | KMS | AD based activation | Subscription Activation |
|-|-|:-:|:-:|:-:|:-:|
| **Workplace join (add work or school account)** | Personal (or student-owned) | ✅ | | | |
| **Microsoft Entra join** | Organization | ✅ | ✅ | | ✅ |
| **Microsoft Entra hybrid join** | Organization | ✅ | ✅ | ✅ | ✅ |
