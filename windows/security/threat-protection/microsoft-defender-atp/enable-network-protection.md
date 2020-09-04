---
title: Turn on network protection
description: Enable network protection with Group Policy, PowerShell, or Mobile Device Management and Configuration Manager.
keywords: ANetwork protection, exploits, malicious website, ip, domain, domains, enable, turn on
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: levinec
ms.author: ellevin
ms.reviewer: 
manager: dansimp
---

# Turn on network protection

**Applies to:**

* [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

[Network protection](network-protection.md) helps to prevent employees from using any application to access dangerous domains that may host phishing scams, exploits, and other malicious content on the internet. You can [audit network protection](evaluate-network-protection.md) in a test environment to view which apps would be blocked before you enable it.

[Learn more about network filtering configuration options](https://docs.microsoft.com/mem/intune/protect/endpoint-protection-windows-10#network-filtering)

## Check if network protection is enabled

Check if network protection has been enabled on a local device by using Registry editor.

1. Select the **Start** button in the task bar and type **regedit** to open Registry editor
1. Choose **HKEY_LOCAL_MACHINE** from the side menu
1. Navigate through the nested menus to **SOFTWARE** > **Policies** > **Microsoft** > **Windows Defender** > **Policy Manager**
1. Select **EnableNetworkProtection** to see the current state of network protection on the device

    * 0, or **Off**
    * 1, or **On**
    * 2, or **Audit** mode

## Enable network protection

Enable network protection by using any of these methods:

* [PowerShell](#powershell)
* [Mobile Device Management (MDM)](#mobile-device-management-mdm)
* [Microsoft Endpoint Manager / Intune](#microsoft-endpoint-manager-formerly-intune)
* [Group Policy](#group-policy)

### PowerShell

1. Type **powershell** in the Start menu, right-click **Windows PowerShell** and select **Run as administrator**
2. Enter the following cmdlet:

    ```PowerShell
    Set-MpPreference -EnableNetworkProtection Enabled
    ```

3. Optional: Enable the feature in audit mode using the following cmdlet:

    ```PowerShell
    Set-MpPreference -EnableNetworkProtection AuditMode
    ```

    Use `Disabled` instead of `AuditMode` or `Enabled` to turn off the feature.

### Mobile device management (MDM)

Use the [./Vendor/MSFT/Policy/Config/Defender/EnableNetworkProtection](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-defender#defender-enablenetworkprotection) configuration service provider (CSP) to enable or disable network protection or enable audit mode.

### Microsoft Endpoint Manager (formerly Intune)

1. Sign into the Microsoft Endpoint Manager admin center (https://endpoint.microsoft.com)

2. Create or edit an [endpoint protection configuration profile](https://docs.microsoft.com/mem/intune/protect/endpoint-protection-configure)

3. Under "Configuration Settings" in the profile flow, go to **Microsoft Defender Exploit Guard** > **Network filtering** > **Network protection** > **Enable** or **Audit only**

### Group Policy

Use the following procedure to enable network protection on domain-joined computers or on a standalone computer.

1. On a standalone computer, go to **Start** and then type and select **Edit group policy**.

    *-Or-*

    On a domain-joined Group Policy management computer, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and select **Edit**.

2. In the **Group Policy Management Editor**, go to **Computer configuration** and select **Administrative templates**.

3. Expand the tree to **Windows components** > **Microsoft Defender Antivirus** > **Windows Defender Exploit Guard** > **Network protection**.

4. Double-click the **Prevent users and apps from accessing dangerous websites** setting and set the option to **Enabled**. In the options section, you must specify one of the following options:
    * **Block** - Users can't access malicious IP addresses and domains
    * **Disable (Default)** - The Network protection feature won't work. Users won't be blocked from accessing malicious domains
    * **Audit Mode** - If a user visits a malicious IP address or domain, an event won't be recorded in the Windows event log. However, the user won't be blocked from visiting the address.

> [!IMPORTANT]
> To fully enable network protection, you must set the Group Policy option to **Enabled** and also select **Block** in the options drop-down menu.

Confirm network protection is enabled on a local computer by using Registry editor:

1. Select **Start** and type **regedit** to open **Registry Editor**.

2. Navigate to HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\Network Protection

3. Select **EnableNetworkProtection** and confirm the value:
   * 0=Off
   * 1=On
   * 2=Audit

## See also

* [Network protection](network-protection.md)
* [Evaluate network protection](evaluate-network-protection.md)
* [Troubleshoot network protection](troubleshoot-np.md)
