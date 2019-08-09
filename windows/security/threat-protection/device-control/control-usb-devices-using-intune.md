---
title: How to control USB devices and other removable media using Intune (Windows 10)
description: You can configure Intune settings to reduce threats from removable storage such as USB devices.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
ms.author: daniha
author: danihalfin
ms.date: 02/22/2019
ms.reviewer: 
manager: dansimp
audience: ITPro
---

# How to control USB devices and other removable media using Windows Defender ATP

**Applies to:** [Windows Defender Advanced Threat Protection (Windows Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

Microsoft recommends [a layered approach to securing removable media](https://aka.ms/devicecontrolblog), and Windows Defender ATP provides multiple monitoring and control features to help prevent threats in unauthorized peripherals from compromising your devices: 

1. [Prevent threats from removable storage](#prevent-threats-from-removable-storage) introduced by removable storage devices by enabling: 
   - [Windows Defender Antivirus real-time protection (RTP)](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-antivirus/configure-real-time-protection-windows-defender-antivirus) to scan removable storage for malware. 
   - The [Exploit Guard Attack Surface Reduction (ASR) USB rule](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-exploit-guard/attack-surface-reduction-exploit-guard) to block untrusted and unsigned processes that run from USB.  
   - [Direct Memory Access (DMA) protection settings](#protect-against-direct-memory-access-dma-attacks) to mitigate DMA attacks, including [Kernel DMA Protection for Thunderbolt](https://docs.microsoft.com/windows/security/information-protection/kernel-dma-protection-for-thunderbolt) and blocking DMA until a user signs in. 
   
2. [Detect plug and play connected events for peripherals in Windows Defender ATP advanced hunting](#detect-plug-and-play-connected-events) 
   - Identify or investigate suspicious usage activity. Create customized alerts based on these PnP events or any other Windows Defender ATP events with [custom detection rules](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/custom-detection-rules).  

3. [Respond to threats](#respond-to-threats) from peripherals in real-time based on properties reported by each peripheral:
   - Granular configuration to deny write access to removable disks and approve or deny devices by USB vendor code, product code, device IDs, or a combination. 
   - Flexible policy assignment of device installation settings based on an individual or group of Azure Active Directory (Azure AD) users and devices. 

>[!Note]
>These threat reduction measures help prevent malware from coming into your environment. To protect enterprise data from leaving your environment, you can also configure data loss prevention measures. For example, on Windows 10 devices you can configure [BitLocker](https://docs.microsoft.com/windows/security/information-protection/bitlocker/bitlocker-overview) and [Windows Information Protection](https://docs.microsoft.com/windows/security/information-protection/windows-information-protection/create-wip-policy-using-intune-azure), which will encrypt company data even if it is stored on a personal device, or use the [Storage/RemovableDiskDenyWriteAccess CSP](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-storage#storage-removablediskdenywriteaccess) to deny write access to removable disks. Additionally, you can [classify and protect files on Windows devices](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/information-protection-in-windows-overview) (including their mounted USB devices) by using Windows Defender ATP and Azure Information Protection.


## Prevent threats from removable storage
  
Windows Defender ATP can help identify and block malicious files on allowed removable storage peripherals.

### Enable Windows Defender Antivirus Scanning 

Protecting authorized removable storage with Windows Defender Antivirus requires [enabling real-time protection](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-antivirus/configure-real-time-protection-windows-defender-antivirus) or scheduling scans and configuring removable drives for scans. 

- If real-time protection is enabled, files are scanned before they are accessed and executed. The scanning scope includes all files, including those on mounted removable devices such as USB drives. You can optionally [run a PowerShell script to perform a custom scan](https://aka.ms/scanusb) of a USB drive after it is mounted, so that Windows Defender Antivirus starts scanning all files on a removable device once the removable device is attached. However, we recommend enabling real-time protection for improved scanning performance, especially for large storage devices.
- If scheduled scans are used, then you need to disable the DisableRemovableDriveScanning setting (enabled by default) to scan the removable device during a full scan. Removable devices are scanned during a quick or custom scan regardless of the DisableRemovableDriveScanning setting.

>[!NOTE]
>We recommend enabling real-time monitoring for scanning. In Intune, you can enable real-time monitoring for Windows 10 in **Device Restrictions** > **Configure** > **Windows Defender Antivirus** > **Real-time monitoring**.

<!-- Need to build out point in the precedeing note. 
-->

### Block untrusted and unsigned processes on USB peripherals

End-users might plug in removable devices that are infected with malware. 
To prevent infections, a company can block USB files that are unsigned or untrusted. 
Alternatively, companies can leverage the audit feature of attack surface reduction rules to monitor the activity of untrusted and unsigned processes that execute on a USB peripheral. 
This can be done by setting **Untrusted and unsigned processes that run from USB** to either **Block** or **Audit only**, respectively. 
With this rule, admins can prevent or audit unsigned or untrusted executable files from running from USB removable drives, including SD cards. 
Affected file types include executable files (such as .exe, .dll, or .scr) and script files such as a PowerShell (.ps), VisualBasic (.vbs), or JavaScript (.js) files.

These settings require [enabling real-time protection](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-antivirus/configure-real-time-protection-windows-defender-antivirus). 

1. Sign in to the [Microsoft Azure portal](https://portal.azure.com/).
2. Click **Intune** > **Device configuration** > **Profiles** > **Create profile**. 

   ![Create device configuration profile](images/create-device-configuration-profile.png)

3. Use the following settings:

   - Name: Type a name for the profile 
   - Description: Type a description 
   - Platform: Windows 10 or later 
   - Profile type: Endpoint protection 

   ![Create endpoint protection profile](images/create-endpoint-protection-profile.png)

4. Click **Configure** > **Windows Defender Exploit Guard** > **Attack Surface Reduction**. 

5. For **Unsigned and untrusted processes that run from USB**, choose **Block**. 

   ![Block untrusted processes](images/block-untrusted-processes.png)

6. Click **OK** to close **Attack Surface Reduction**, **Windows Defender Exploit Guard**, and **Endpoint protection**.

7. Click **Create** to save the profile.

### Protect against Direct Memory Access (DMA) attacks

DMA attacks can lead to disclosure of sensitive information residing on a PC, or even injection of malware that allows attackers to bypass the lock screen or control PCs remotely. The following settings help to prevent DMA attacks:

1. Beginning with Windows 10 version 1803, Microsoft introduced [Kernel DMA Protection for Thunderbolt](https://docs.microsoft.com/windows/security/information-protection/kernel-dma-protection-for-thunderbolt) to provide native protection against DMA attacks via Thunderbolt ports. Kernel DMA Protection for Thunderbolt is enabled by system manufacturers and cannot be turned on or off by users. 

   Beginning with Windows 10 version 1809, you can adjust the level of Kernel DMA Protection by configuring the [DMA Guard CSP](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-dmaguard#dmaguard-deviceenumerationpolicy). This is an additional control for peripherals that don't support device memory isolation (also known as DMA-remapping). Memory isolation allows the OS to leverage the I/O Memory Management Unit (IOMMU) of a device to block unallowed I/O, or memory access, by the peripheral (memory sandboxing). In other words, the OS assigns a certain memory range to the peripheral. If the peripheral attempts to read/write to memory outside of the assigned range, the OS blocks it.
   
   Peripherals that support device memory isolation can always connect. Peripherals that don't can be blocked, allowed, or allowed only after the user signs in (default). 

2. On Windows 10 systems that do not suppprt Kernel DMA Protection, you can:

   - [Block DMA until a user signs in](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-dataprotection#dataprotection-allowdirectmemoryaccess)
   - [Block all connections via the Thunderbolt ports (including USB devices)](https://support.microsoft.com/help/2516445/blocking-the-sbp-2-driver-and-thunderbolt-controllers-to-reduce-1394-d)

### Restrict USB Drives and Other Peripherals

To prevent malware infections or data loss, an organization may restrict USB drives and other peripherals. The following table describes the ways Microsoft Defender Advanced Threat Protection can help prevent installation and usage of USB drives and other peripherals.

| Control  | Description |
|----------|-------------|
| Allow installation and usage of USB drives and other peripherals | Allow users to install only the USB drives and other peripherals included on a list of authorized devices or device types |
| Prevent installation and usage of USB drives and other peripherals| Prevent users from installing USB drives and other peripherals included on a list of unauthorized devices and device types |

All of the above controls can be set through the Intune [Administrative Templates](https://docs.microsoft.com/en-us/intune/administrative-templates-windows). The relevant policies are located here in the Intune Administrator Templates:

![Admintemplates](images/admintemplates.png)

>[!Note]
>Using Intune, you can apply device configuration policies to AAD user and/or device groups.
The above policies can also be set through the [Device Installation CSP settings](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-deviceinstallation) and the [Device Installation GPOs](https://docs.microsoft.com/en-us/previous-versions/dotnet/articles/bb530324(v=msdn.10)).

>[!Note]
>Always test and refine these settings with a pilot group of users and devices first before applying them in production.
For more information about controlling USB devices, see the [Microsoft Secure blog "WDATP has protections for USB and removable devices"](https://www.microsoft.com/security/blog/2018/12/19/windows-defender-atp-has-protections-for-usb-and-removable-devices/).

### Allow installation and usage of USB drives and other peripherals

One way to approach allowing installation and usage of USB drives and other peripherals is to start by allowing everything. Afterwards, you can start reducing the allowable USB drivers and other peripherals. 

>[!Note]
>Because an unauthorized USB peripheral can have firmware that spoofs its USB properties, we recommend only allowing specifically approved USB peripherals and limiting the users who can access them.
>1.	Enable **prevent installation of devices not described by other policy settings** to all users.
>2.	Enable **allow installation of devices using drivers that match these device setup classes** for all [device setup classes](https://docs.microsoft.com/en-us/windows-hardware/drivers/install/system-defined-device-setup-classes-available-to-vendors).
To enforce the policy for already installed devices, apply the prevent policies that have this setting.

When configuring the allow device installation policy, you will need to allow all parent attributes as well.  You can view the parents of a device by opening device manager and view by connection.

![Device by Connection](images/devicesbyconnection.png)

In this example, the following classesneeded to be added: HID, Keboard, and {36fc9e60-c465-11cf-8056-444553540000}. More information on [Microsoft-provided USB drivers](https://docs.microsoft.com/en-us/windows-hardware/drivers/usbcon/supported-usb-classes).

![Device host controller](images/devicehostcontroller.jpg)

If you want to restrict to certain devices, remove the device setup class of the peripheral that you want to limit. Then add the device id that you want to add. For example,

1.	Remove class USBDevice from the **allow installation of devices using drivers that match these device setup**
2.	Add the VID/PID to allow in the **allow installation of device that match any of these device IDs**

>[!Note]
>How to locate the VID/PID: Using Device Manager; right click on the device and select properties.  Click details tab, click property drop down list, and choose hardware Ids. Right click the top ID value and select copy.

>Using PowerShell: Get-WMIObject -Class Win32_DiskDrive |
Select-Object -Property *  
>For the typical format for the USB ID please reference the following link; (https://docs.microsoft.com/en-us/windows-hardware/drivers/install/standard-usb-identifiers)

### Prevent installation and usage of USB drives and other peripherals
If you want to prevent a device class or certain devices, you can use the prevent device installation policies. 

1.	Enable **Prevent installation of devices that match any of these device IDs**. 
2.	Enable the **Prevent installation of devices that match these device setup classes policy**.

>[!Note]
>The prevent device installation policies take precedence over the allow device installation policies. 

### Block installation and usage of removable storage

1. Sign in to the [Microsoft Azure portal](https://portal.azure.com/).
2. Click **Intune** > **Device configuration** > **Profiles** > **Create profile**. 

   ![Create device configuration profile](images/create-device-configuration-profile.png)

3. Use the following settings: 

   - Name: Type a name for the profile 
   - Description: Type a description 
   - Platform: Windows 10 and later 
   - Profile type: Device restrictions 

   ![Create profile](images/create-profile.png)

4. Click **Configure** > **General**.  

5. For **Removable storage** and **USB connection (mobile only)**, choose **Block**. **Removable storage** includes USB drives, where **USB connection (mobile only)** excludes USB charging but includes other USB connections on mobile devices only. 

   ![General settings](images/general-settings.png)

6. Click **OK** to close **General** settings and **Device restrictions**.

7. Click **Create** to save the profile.

### Only allow installation and usage of specifically approved peripherals

Peripherals that are allowed to be installed can be specified by their [hardware identity](https://docs.microsoft.com/windows-hardware/drivers/install/device-identification-strings). For a list of common identifier structures, see [Device Identifier Formats](https://docs.microsoft.com/windows-hardware/drivers/install/device-identifier-formats). Test the configuration prior to rolling it out to ensure it blocks and allows the devices expected. Ideally test various instances of the hardware. For example, test multiple USB keys rather than only one.

For a SyncML example that allows installation of specific device IDs, see [DeviceInstallation/AllowInstallationOfMatchingDeviceIDs CSP](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-deviceinstallation#deviceinstallation-allowinstallationofmatchingdeviceids). To allow specific device classes, see [DeviceInstallation/AllowInstallationOfMatchingDeviceSetupClasses CSP](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-deviceinstallation#deviceinstallation-allowinstallationofmatchingdevicesetupclasses).
Allowing installation of specific devices requires also enabling [DeviceInstallation/PreventInstallationOfDevicesNotDescribedByOtherPolicySettings](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-deviceinstallation#deviceinstallation-preventinstallationofdevicesnotdescribedbyotherpolicysettings).

### Prevent installation of specifically prohibited peripherals

Windows Defender ATP blocks installation and usage of prohibited peripherals by using either of these options:

- [Administrative Templates](https://docs.microsoft.com/intune/administrative-templates-windows) can block any device with a matching hardware ID or setup class.  
- [Device Installation CSP settings](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-deviceinstallation) with a custom profile in Intune. You can [prevent installation of specific device IDs](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-deviceinstallation#deviceinstallation-preventinstallationofmatchingdeviceids) or [prevent specific device classes](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-deviceinstallation#deviceinstallation-preventinstallationofmatchingdevicesetupclasses).

### Security Baseline

The Microsoft Defender Advanced Threat Protection (ATP) baseline settings, represent the recommended configuration for ATP.  Configuration settings for baseline are located here in the edit profile page of the configuration settings.

![Baselines](images/baselines.png)

### Bluetooth

Using Intune, you can limited the services that can use Bluetooth through the “Bluetooth allowed services”. The default state of “Bluetooth allowed services” settings means everything is allowed.  As soon as a service is added, that becomes the allowed list. If the customer adds the Keyboards and Mice values, and don’t add the file transfer GUIDs, file transfer should be blocked. 

![Bluetooth](images/bluetooth.png)

## Detect plug and play connected events

You can view plug and play connected events in Windows Defender ATP advanced hunting to identify suspicious usage activity or perform internal investigations. 
For examples of Windows Defender ATP advanced hunting queries, see the [Windows Defender ATP hunting queries GitHub repo](https://github.com/Microsoft/WindowsDefenderATP-Hunting-Queries). 
Based on any Windows Defender ATP event, including the plug and play events, you can create custom alerts using the Windows Defender ATP [custom detection rule feature](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/custom-detection-rules).

## Respond to threats 

Windows Defender ATP can prevent USB peripherals from being used on devices to help prevent external threats. It does this by using the properties reported by USB peripherals to determine whether or not they can be installed and used on the device.

>[!NOTE]
>Always test and refine these settings with a pilot group of users and devices first before applying them in production. 

The following table describes the ways Windows Defender ATP can help prevent installation and usage of USB peripherals. 
For more information about controlling USB devices, see the [Microsoft Secure blog "WDATP has protections for USB and removable devices"](https://aka.ms/devicecontrolblog).

| Control  | Description |
|----------|-------------|
| [Block installation and usage of removable storage](#block-installation-and-usage-of-removable-storage) | Users can't install or use removable storage |
| [Only allow installation and usage of specifically approved peripherals](#only-allow-installation-and-usage-of-specifically-approved-peripherals)   | Users can only install and use approved peripherals that report specific properties in their firmware |
| [Prevent installation of specifically prohibited peripherals](#prevent-installation-of-specifically-prohibited-peripherals) | Users can't install or use prohibited peripherals that report specific properties in their firmware |

>[!NOTE]
>Because an unauthorized USB peripheral can have firmware that spoofs its USB properties, we recommend only allowing specifically approved USB peripherals and limiting the users who can access them.

### Custom Alerts and Response Actions

You can create custom alerts and response actions with the WDATP Connector and the Custom Detection Rules:

**Wdatp Connector response Actions:**

**Investigate:** Initiate investigations, collect investigation package, and isolate a machine.

**Threat Scanning** on USB devices

**Restrict execution of all applications** on the machine except a predefined set
MDATP connector is one of over 200 pre-defined connectors including Outlook, Teams, Slack, etc. Custom connectors can be built.
- [More information on WDATP Connector Response Actions](https://docs.microsoft.com/en-us/connectors/wdatp/)

**Custom Detection Rules Response Action:**
Both machine and file level actions can be applied.
- [More information on Custom Detection Rules Response Actions](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/custom-detection-rules)

## Related topics

- [Configure real-time protection for Windows Defender Antivirus](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-antivirus/configure-real-time-protection-windows-defender-antivirus)
- [Defender/AllowFullScanRemovableDriveScanning](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-defender#defender-allowfullscanremovabledrivescanning)
- [Policy/DeviceInstallation CSP](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-deviceinstallation)
- [Perform a custom scan of a removable device](https://aka.ms/scanusb)
- [Device Control PowerBI Template for custom reporting](https://github.com/microsoft/MDATP-PowerBI-Templates)
- [BitLocker](https://docs.microsoft.com/windows/security/information-protection/bitlocker/bitlocker-overview) 
- [Windows Information Protection](https://docs.microsoft.com/windows/security/information-protection/windows-information-protection/create-wip-policy-using-intune-azure)



