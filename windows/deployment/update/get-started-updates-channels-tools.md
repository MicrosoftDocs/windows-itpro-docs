---
title: Windows client updates, channels, and tools
description: Brief summary of the kinds of Windows updates, the channels they are served through, and the tools for managing them
ms.prod: windows-client
author: aczechowski
ms.localizationpriority: medium
ms.author: aaroncz
manager: dougeby
ms.topic: article
ms.technology: itpro-updates
---

# Windows client updates, channels, and tools

**Applies to**

- Windows 10
- Windows 11

## How Windows updates work

There are four phases to the Windows update process:

- **Scan:** A device checks the Microsoft Update server, Windows Update service, or your Windows Server Update Services (WSUS) endpoint at random intervals to see if any updates have been added since the last time updates were searched, and then evaluates whether the update is appropriate by checking the policies that have been set up by the
administrator. This process is invisible to the user.
- **Download:** Once the device determines that an update is available, it begins downloading the update. The download process is also invisible to the user. With feature updates, download happens in multiple
sequential phases.
- **Install:** After the update is downloaded, depending on the device’s Windows Update settings, the update is installed on the system.
- **Commit and restart:** Once installed, the device usually (but not always) must be restarted in order to complete the installation and begin using the update. Before that happens, a device is still running the previous
version of the software.

## Types of updates

We include information here about many different update types you'll hear about, but the two overarching types that you have the most direct control over are *feature updates* and *quality updates*. 

- **Feature updates:** Released annually. Feature updates add new features and functionality to Windows 10. Because they are delivered frequently (rather than every 3-5 years), they are easier to manage.
- **Quality updates:** Quality updates deliver both security and non-security fixes. Quality updates include security updates, critical updates, servicing stack updates, and driver updates. They are typically released on the second Tuesday of each month, though they can be released at any time. The second-Tuesday releases are the ones that focus on security updates. Quality updates are *cumulative*, so installing the latest quality update is sufficient to get all the available fixes for a specific feature update, including any out-of-band security fixes and any *servicing stack updates* that might have been released previously.
- **Servicing stack updates:** The "servicing stack" is the code component that actually installs Windows updates. From time to time, the servicing stack itself needs to be updated in order to function smoothly. If you don't install the latest servicing stack update, there's a risk that your device can't be updated with the latest Microsoft security fixes. Servicing stack updates are not necessarily included in *every* monthly quality update, and occasionally are released out of band to address a late-breaking issue. Always install the latest available quality update to catch any servicing stack updates that might have been released. The servicing stack also contains the "component-based servicing stack" (CBS), which is a key underlying component for several elements of Windows deployment, such as DISM, SFC, changing Windows features or roles, and repairing components. The CBS is a small component that typically does not have updates released every month. You can find a list of servicing stack updates at [Latest servicing stack updates](https://portal.msrc.microsoft.com/security-guidance/advisory/ADV990001). For more detail about servicing stack updates, see [Servicing stack updates](servicing-stack-updates.md).
- **Driver updates**: These update drivers applicable to your devices. Driver updates are turned off by default in Windows Server Update Services (WSUS), but for cloud-based update methods, you can control whether they are installed or not.
- **Microsoft product updates:** These update other Microsoft products, such as Office. You can enable or disable Microsoft updates by using policies controlled by various servicing tools.


## Servicing channels

There are three servicing channels, each of which offers you a different level of flexibility with how and when updates are delivered to devices. Using the different servicing channels allows you to deploy Windows "as a service," which conceives of deployment as a continual process of updates that roll out across the organization in waves. In this approach, an update is plugged into this process and while it runs, you monitor for anomalies, errors, or user impact and respond as issues arise--without interrupting the entire process.

The first step of controlling when and how devices install updates is assigning them to the appropriate servicing channel. You can assign devices to a particular channel with any of several tools, including Microsoft Configuration Manager, Windows Server Update Services (WSUS), and Group Policy settings applied by any of several means. By dividing devices into different populations ("deployment groups" or "rings") you can use servicing channel assignment, followed by other management features such as update deferral policies, to create a phased deployment of any update that allows you to start with a limited pilot deployment for testing before moving to a broad deployment throughout your organization.


### General Availability Channel

In the General Availability Channel, feature updates are released annually. As long as a device isn't set to defer feature updates, any device in this channel will install a feature update as soon as it's released. If you use Windows Update for Business, the channel provides three months of additional total deployment time before being required to update to the next release.


### Windows Insider Program for Business

Insider preview releases are made available during the development of the features that will be shipped in the next feature update, enabling organizations to validate new features and compatibility with existing apps and infrastructure, providing feedback to Microsoft on any issues encountered. There are actually three options within the Windows Insider Program for Business channel:

- Windows Insider Dev
- Windows Insider Beta
- Windows Insider Release Preview

We recommend that you use the Windows Insider Release Preview channel for validation activities.


### Long-term Servicing Channel

The **Long-Term Servicing Channel** is designed to be used only for specialized devices (which typically don't run Office) such as ones that control medical equipment or ATMs. Devices on this channel receive new feature releases every two to three years. LTSC releases service a special LTSC edition of Windows 10 and are only available through the [Microsoft Volume Licensing Center](https://www.microsoft.com/Licensing/servicecenter/default.aspx).

The General Availability Channel is the default servicing channel for all Windows devices except those with the LTSC edition installed. The following table shows the servicing channels available to each edition. 


| Edition | General Availability Channel | Insider Program | Long-Term Servicing Channel |
| --- | --- | --- | --- |
| Home | ![yes.](images/checkmark.png)|![no](images/crossmark.png)    | ![no](images/crossmark.png)|
| Pro | ![yes.](images/checkmark.png) | ![yes](images/checkmark.png) |  ![no](images/crossmark.png)|
| Enterprise  | ![yes.](images/checkmark.png) |![yes](images/checkmark.png)  |  ![no](images/crossmark.png)|
| Enterprise LTSC  | ![no.](images/crossmark.png) |![no](images/crossmark.png) |   ![yes](images/checkmark.png)|
| Pro Education | ![yes.](images/checkmark.png) | ![yes](images/checkmark.png) |  ![no](images/crossmark.png)|
| Education  | ![yes.](images/checkmark.png) | ![yes](images/checkmark.png) |  ![no](images/crossmark.png)|

## Servicing tools

### Tools for on-premises update delivery

Windows Server Update Services (WSUS): you set up a WSUS server, which downloads updates in bulk from Microsoft. Your individual devices then connect to your server to install their updates from there.

You can set up, control, and manage the server and update process with several tools:

- A standalone Windows Server Update Services server operated directly
- [Configuration Manager](deploy-updates-configmgr.md)
- Non-Microsoft tools

For more information, see [Windows Server Update Services (WSUS)](/windows-server/administration/windows-server-update-services/get-started/windows-server-update-services-wsus).

### Tools for cloud-based update delivery

Your individual devices connect to Microsoft endpoints directly to get the updates. The details of this process (how often devices download updates of various kinds, from which channels, deferrals, and details of the users' experience of installation) are set on devices either with Group Policy or MDM policies, which you can control with any of several tools:

- [Group Policy Management Console](waas-wufb-group-policy.md) (Gpmc.msc)
- [Microsoft Intune](waas-wufb-intune.md)
- Non-Microsoft MDM tools

### Hybrid scenarios

It is also possible to combine WSUS-based on-premises update distribution with cloud-based update delivery.
