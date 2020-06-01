---
title: Windows 10 updates, channels, and tools
description:
keywords: updates, servicing, current, deployment, semi-annual channel, feature, quality, rings, insider, tools
ms.prod: w10
ms.mktglfcycl: manage
author: jaimeo
ms.localizationpriority: medium
ms.author: jaimeo
ms.reviewer: 
manager: laurawi
ms.topic: article
---

# Windows 10 updates, channels, and tools

## How Windows updates work

There are four phases to the Windows Update process:
• Scan. A devices checks the Microsoft Update server or your WSUS endpoint at random intervals to see if
any updates have been added since the last time updates were searched, and then evaluates whether the
update is appropriate by checking the guidelines (e.g. Group Policies) that have been set up by the
administrator. This process is invisible to the user.
• Download. Once the device determines that an update is available, it begins downloading the update.
The download process is also invisible to the user. With feature updates, download happens in multiple
sequential phases.
• Install. After the update is downloaded, depending on the device’s Windows Update settings, the update
is installed on the system.
• Commit and restart. Once installed, the device usually (but not always) must be restarted in order to
complete the installation and begin using the update. Before that phase a device runs the previous
version of the software.

## Types of updates

We include information here about a number of different update types you'll hear about, but the two overarching types which you have the most direct control over are *feature updates* and *quality updates*. 

- **Feature updates**: Released twice per year, around March and September. Feature updates add new features and functionality to Windows 10. Because they are delivered frequently (rather than every 3-5 years), they are easier to manage.
- **Security updates**: Updates that fix security issues that have been discovered are typically included in monthly *quality updates*, but of course can be released out of band whenever necessary for severe issues (referred to as *critical updates*).
- **Quality updates**: Quality updates deliver both security and non-security fixes to Windows 10. They are typically released on the second Tuesday of each month, though they can be released at any time. Quality updates include security updates, critical updates, servicing stack updates, and driver updates. Quality updates are *cumulative*, so installing the latest quality update is sufficient to get all the available fixes for a specific Windows 10 feature update, including any out-of-band security fixes and any *servicing stack updates* that might have been released previously.
- **Servicing stack updates**: The "servicing stack" is the code component that actually installs Windows updates. From time to time, the servicing stack itself needs to be updated in order to function smoothly. If you don't install the latest servicing stack update, there's a risk that your device can't be updated with the latest Microsoft security fixes. Servicing stack updates are not necessarily included in *every* monthly quality update, and occasionally are released out of band to address a late-breaking issue. Always install the latest available quality update to catch any servicing stack updates that might have been released. The servicing stack also contains the "component-based servicing stack" (CBS), which is a key underlying component for several elements of Windows deployment, such as DISM, SFC, changing Windows features or roles, and repairing components. The CBS is a small component that typically does not have updates released every month. You can find a list of servicing stack updates at [Latest servicing stack updates](https://portal.msrc.microsoft.com/en-us/security-guidance/advisory/ADV990001). For more detail about servicing stack updates, see s[Servicing stack updates](servicing-stack-updates.md).
 **Driver updates:** these are non-Microsoft drivers that are applicable to your devices. You can turn off driver updates by using Windows Update for Business policies, if desired. 
- **Microsoft product updates**: these are updates for other Microsoft products, such as Office. You can enable or disable Microsoft updates by using Windows Update for Business policies.


## Servicing channels

Windows 10 offers three servicing channels, each of which offers you a different level of flexibility with how and when updates are delivered to devices. Using the different servicing channels allows you to deploy Windows 10 "as a service" which conceives of deployment as a continual process of updates which roll out across the organization in waves. In this approach, an update is plugged into this process and while it runs, you monitor for anomalies, errors, or user impact and respond as issues arise--without interrupting the entire process.

The first step of controlling when and how devices install updates is assigning them to the appropriate servicing channel. You can assign devices to a particular channel with any of several tools, including Microsoft Endpoint Configuration Manager, Windows Server Update Services (WSUS), and Group Policy settings applied by any of several means. By dividing devices into different populations ("deployment groups" or "rings") you can use servicing channel assignment, followed by other management features such as update deferral policies, to create a phased deployment of any update that allows you to start with a limited pilot deployment for testing before moving to a broad deployment throughout your organization.

### Semi-Annual Channel

In the Semi-Annual Channel, feature updates are available as soon as Microsoft releases them, twice per year. As long as a device isn't set to defer feature updates, any device using the Semi-Annual Channel will install a feature update as soon as it's released. If you use Windows Update for Business, the Semi-Annual Channel provides three months of additional total deployment time before being required to update to the next release.{IS THIS STILL TRUE?}

> [!NOTE]
> All releases of Windows 10 have **18 months of servicing for all editions**--these updates provide security and feature updates for the release. However, fall releases of the **Enterprise and Education editions** will have an **additional 12 months of servicing for specific Windows 10 releases, for a total of 30 months from initial release**. This extended servicing window applies to Enterprise and Education editions starting with Windows 10, version 1607.

### Windows Insider program

Insider preview releases are made available during the development of the features that will be shipped in the next feature update, enabling organizations to validate new features as well as compatibility with existing apps and infrastructure, providing feedback to Microsoft on any issues encountered.

### Long-term Servicing Channel

The **Long Term Servicing Channel** is designed to be used only for specialized devices (which typically don't run Office) such as those that control medical equipment or ATMs. Devices on this channel receive new feature releases every two to three years. LTSB releases service a special LTSB edition of Windows 10 and are only available through the [Microsoft Volume Licensing Center](https://www.microsoft.com/Licensing/servicecenter/default.aspx).

The Semi-Annual Channel is the default servicing channel for all Windows 10 devices except those with the LTSB edition installed. The following table shows the servicing channels available to each Windows 10 edition. 

| Windows 10 edition | Semi-Annual Channel | Long-Term Servicing Channel | Insider Program |
| --- | --- | --- | --- |
| Home | ![no](images/crossmark.png) | ![no](images/crossmark.png) | ![yes](images/checkmark.png) |
| Pro | ![yes](images/checkmark.png) | ![no](images/crossmark.png) | ![yes](images/checkmark.png) |
| Enterprise  | ![yes](images/checkmark.png) | ![no](images/crossmark.png) | ![yes](images/checkmark.png) |
| Enterprise LTSB  | ![no](images/crossmark.png) | ![yes](images/checkmark.png) | ![no](images/crossmark.png) |
| Pro Education | ![yes](images/checkmark.png) | ![no](images/crossmark.png) | ![yes](images/checkmark.png) |
| Education  | ![yes](images/checkmark.png) | ![no](images/crossmark.png) | ![yes](images/checkmark.png) |



## Servicing tools