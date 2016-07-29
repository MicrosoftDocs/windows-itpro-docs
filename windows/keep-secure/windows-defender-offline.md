---
title: Windows Defender Offline in Windows 10
description: You can use Windows Defender Offline straight from the Windows Defender client. You can also manage how it is deployed in your network.
keywords: scan, defender, offline
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
author: iaanw
---

# Windows Defender Offline in Windows 10

**Applies to:**

- Windows 10, version 1607

Windows Defender Offline is an antimalware scanning tool that lets you boot and run a scan from a trusted environment. The scan runs from outside the normal Windows kernel so it can target malware that attempts to bypass the Windows shell, such as viruses and rootkits that infect or overwrite the master boot record (MBR).

In Windows 10, Windows Defender Offline can be run with one click directly from the Windows Defender client. In previous versions of Windows, a user had to install Windows Defender Offline to bootable media, restart the endpoint, and load the bootable media.

## Pre-requisites and requirements

Windows Defender Offline in Windows 10 has the same hardware requirements as Windows 10. 

For more information about Windows 10 requirements, see the following topics:

- [Minimum hardware requirements](https://msdn.microsoft.com/library/windows/hardware/dn915086(v=vs.85).aspx)

- [Hardware component guidelines](https://msdn.microsoft.com/library/windows/hardware/dn915049(v=vs.85).aspx)

>[!NOTE]Windows Defender Offline is not supported on machines with ARM processors, or on Windows Server Stock Keeping Units.

To run Windows Defender Offline from the endpoint, the user must be logged in with administrator privileges.
 
## Windows Defender Offline updates

Windows Defender Offline uses the most up-to-date signature definitions available on the endpoint; it's updated whenever Windows Defender is updated with new signature definitions. Depending on your setup, this is usually though Microsoft Update or through the [Microsoft Malware Protection Center](https://www.microsoft.com/security/portal/definitions/adl.aspx).

>[!NOTE]Before running an offline scan, you should attempt to update the definitions on the endpoint. You can either force an update via Group Policy or however you normally deploy updates to endpoints, or you can manually download and install the latest updates from the [Microsoft Malware Protection Center](https://www.microsoft.com/security/portal/definitions/adl.aspx).

For information on setting up Windows Defender updates, see the [Configure Windows Defender in Windows 10](configure-windows-defender-in-windows-10.md) topic.

## Usage scenarios

In Windows 10, version 1607, you can manually force an offline scan. Alternatively, if Windows Defender determines that Windows Defender Offline needs to run, it will prompt the user on the endpoint. The need to perform an offline scan will also be revealed in System Center Configuration Manager, if you're using it to manage your endpoints.

The prompt can occur via a notification, similar to the following:

![Windows notification showing the requirement to run Windows Defender Offline](images/defender/notification.png)

The user will also be notified within the Windows Defender client:

![Windows Defender showing the requirement to run Windows Defender Offline](images/defender/client.png)

In Configuration Manager, you can identify the status of endpoints by navigating to **Monitoring > Overview > Security > Endpoint Protection Status > System Center Endpoint Protection Status**. Windows Defender Offline scans are indicated under **Malware remediation status** as **Offline scan required**.

![System Center Configuration Manager indicating a Windows Defender Offline scan is required](images/defender/sccm-wdo.png)

## Manage notifications
<a name="manage-notifications"></a>

You can suppress Windows Defender Offline notifications by modifying the registry or with Group Policy. 

>[!NOTE]Changing these settings will affect *all* notifications from Windows Defender. Disabling notifications will mean the endpoint user will not see any messages about any threats detected, removed, or if additional steps are required.

**Use the registry to disable Windows Defender notifications on individual endpoints:**

1. Click **Start**, type **Run**, and press **Enter**.

2. From the **Run** dialog box, type **regedit** and press **Enter**.

4. In the **Registry Editor** navigate to the **ux configuration** key under:

    ```text
    HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\ux configuration
    ```

5. Double-click the **Notifications_Suppress** value and set it to **1**.

![Image of enhanced notification suppression in Registry Editor](images/defender/ux-config-key.png)


**Use Group Policy to suppress Windows Defender notifications:**

1.  On your Group Policy management machine, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

3.  In the **Group Policy Management Editor** go to **Computer configuration**.

4.  Click **Policies** then **Administrative templates**.

5.  Expand the tree to **Windows components > Windows Defender > Client Interface**.

1.  Double-click the **Suppress all notifications** setting and set the option to **Enabled**. Click **OK**. This will disable all notifications shown by the Windows Defender client.

## Configure Windows Defender Offline settings

You can use Windows Management Instrumentation to enable and disable certain features in Windows Defender Offline. For example, you can use `Set-MpPreference` to change the `UILockdown` setting to disable and enable notifications. 

For more information about using Windows Management Instrumentation to configure Windows Defender Offline, including configuration parameters and options, see the following topics:

-	[Windows Defender WMIv2 APIs](https://msdn.microsoft.com/en-us/library/windows/desktop/dn439477(v=vs.85).aspx)

-	[Windows Defender MSFT_MpPreference class](https://msdn.microsoft.com/en-us/library/windows/desktop/dn455323(v=vs.85).aspx)

For more information about notifications in Windows Defender, see the [Configure enhanced notifications in Windows Defender](windows-defender-enhanced-notifications.md)] topic.

## Run a scan 

Windows Defender Offline uses up-to-date threat definitions to scan the endpoint for malware that might be hidden. In Windows 10, version 1607, you can manually force an offline scan using Windows Update and Security settings.

>[!NOTE]Before you use Windows Defender Offline, make sure you save any files and shut down running programs. The Windows Defender Offline scan takes about 15 minutes to run. It will restart the endpoint when the scan is complete. 

You can set up a Windows Defender Offline scan with the following:

-	Windows Update and Security settings

-	Windows Defender

-	Windows Management Instrumentation

-	Windows PowerShell

-	Group Policy

>[!NOTE]The scan is performed outside of the usual Windows operating environment. The user interface will appear different to a normal scan performed by Windows Defender. After the scan is completed, the endpoint will be restarted and Windows will load normally.

**Run Windows Defender Offline from Windows Settings:**

1.	Open the **Start** menu and click or type **Settings**.

1.	Click **Update & Security** and then **Windows Defender**. Scroll to the bottom of the settings page until you see the **Windows Defender Offline** section.

1.	Click **Scan offline**. 

    ![Windows Defender Offline setting](images/defender/settings-wdo.png)

1.	Follow the prompts to continue with the scan. You might be warned that you'll be signed out of Windows and that the endpoint will restart.

**Run Windows Defender Offline from Windows Defender:**

1.	Open the **Start** menu, type **windows defender**, and press **Enter** to open the Windows Defender client. 

1.	On the **Home** tab click **Download and Run**.

    ![Windows Defender home tab showing the Download and run button](images/defender/download-wdo.png)

1.	Follow the prompts to continue with the scan. You might be warned that you'll be signed out of Windows and that the endpoint will restart.


**Use Windows Management Instrumentation to configure and run Windows Defender Offline:**

Use the `MSFT_MpWDOScan` class (part of the Windows Defender Windows Management Instrumentation provider) to run a Windows Defender Offline scan.
 
The following Windows Management Instrumentation script snippet will immediately run a Windows Defender Offline scan, which will cause the endpoint to restart, run the offline scan, and then restart and boot into Windows.

```WMI
wmic /namespace:\\root\Microsoft\Windows\Defender path MSFT_MpWDOScan call Start 
```

For more information about using Windows Management Instrumentation to run a scan in Windows Defender, including configuration parameters and options, see the following topics:

-	[Windows Defender WMIv2 APIs](https://msdn.microsoft.com/en-us/library/windows/desktop/dn439477(v=vs.85).aspx) 

-	[MSFT_MpWDOScan class article](https://msdn.microsoft.com/library/windows/desktop/mt622458(v=vs.85).aspx)


To run Windows Defender Offline remotely, xxx. <span style="background-color:yellow">{{How do we do this? Still in pipeline?}}</span>

**Run Windows Defender Offline using PowerShell:**

Use the PowerShell parameter `Start-MpWDOScan` to run a Windows Defender Offline scan. 

For more information on available cmdlets and optios, see the [Use PowerShell cmdlets to configure and run Windows Defender](use-powershell-cmdlets-windows-defender-for-windows-10) topic.

## Review scan results

Windows Defender Offline scan results will be listed in the main Windows Defender user interface after performing the scan. 

1.	Open the **Start** menu, type **windows defender**, and press **Enter** to open the Windows Defender client. 

1.	Go to the **History** tab.

1.	Select **All detected items**.

1.	Click **View details**.

Any detected items will display. Items that are detected by Windows Defender Offline will be listed as **Offline** in the **Detection source**:

![Windows Defender detection source showing as Offline](images/defender/detection-source.png)

## Related topics

[Windows Defender in Windows 10](windows-defender-in-windows-10.md)