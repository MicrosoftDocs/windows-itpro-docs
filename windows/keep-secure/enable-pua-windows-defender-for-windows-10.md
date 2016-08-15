---
title: Detect and block Potentially Unwanted Application with Windows Defender
description: In Windows 10, you can enable the Potentially Unwanted Application (PUA) feature in Managed Windows Defender to identify and block unwanted software during download and install time.
keywords: pua, enable, detect pua, block pua, windows defender and pua
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: detect
ms.sitesec: library
ms.pagetype: security
localizationpriority: medium
author: dulcemv
---

# Detect and block Potentially Unwanted Application in Windows 10

**Applies to:**

- Windows 10

You can enable the Potentially Unwanted Application (PUA) feature in Managed Windows Defender to identify and block unwanted software during download and install time.

Potentially Unwanted Application (PUA) refers to applications that are not considered viruses, malware, or other types of threats, but might perform actions on your computer that adversely affect your computing experience. It also refers to applications considered to have a poor reputation.

Typical examples of PUA behavior include:
*	Various types of software bundling
*	Ad-injection into your browsers
*	Driver and registry optimizers that detect issues, request payment to fix them, and persist

These applications can increase the risk of your network being infected with malware, cause malware infections to be harder to identify among the noise, and can waste helpdesk, IT, and user time in cleaning up the applications.

Since the stakes are higher in an enterprise environment, the potential disaster and potential productivity and performance disruptions that PUA brings can be a cause of concern. Hence, it is important to deliver trusted protection in this field.

##Enable PUA protection in SCCM and Intune

The PUA feature is available for enterprise users who are running System Center Configuration Manager (SCCM) or Intune in their infrastructure.

###Configure PUA in SCCM

For SCCM users, PUA is enabled by default. See the following topics for configuration details:

If you are using these versions | See these topics
:---|:---
System Center Configuration Manager (current branch) version 1606 | [Create a new antimalware policy](https://technet.microsoft.com/en-US/library/mt613199.aspx#To-create-a-new-antimalware-policy)<br>[Real-time Protection Settings](https://technet.microsoft.com/en-US/library/mt613199.aspx#Real-time-Protection-Settings)
System Center 2012 R2 Endpoint Protection<br>System Center 2012 Configuration Manager<br>System Center 2012 Configuration Manager SP1<br>System Center 2012 Configuration Manager SP2<br>System Center 2012 R2 Configuration Manager<br>System Center 2012 Endpoint Protection SP1<br>System Center 2012 Endpoint Protection<br>System Center 2012 R2 Configuration Manager SP1| [How to Deploy Potentially Unwanted Application Protection Policy for Endpoint Protection in Configuration Manager](https://technet.microsoft.com/library/hh508770.aspx#BKMK_PUA)

<br>
###Use PUA audit mode in SCCM

You can use PowerShell to detect PUA without blocking them. In fact, you can run audit mode on individual machines. This feature is useful if your company is conducting an internal software security compliance check and you’d like to avoid any false positives.

1. Open PowerShell as Administrator: <br>

    a.  Click **Start**, type **powershell**, and press **Enter**.
    
    b.  Click **Windows PowerShell** to open the interface.
    >[!NOTE]
    >You may need to open an administrator-level version of PowerShell. Right-click the item in the Start menu, click **Run as administrator** and click **Yes** at the permissions prompt.
2. Enter the PowerShell command:

  ```text
  et-mpPreference -puaprotection 2
  ```
> [!NOTE]
> PUA events are reported in the Windows Event Viewer and not in SCCM.  


###Configure PUA in Intune

 PUA is not enabled by default. You need to [Create and deploy a PUA configuration policy to use it](https://docs.microsoft.com/en-us/intune/deploy-use/manage-settings-and-features-on-your-devices-with-microsoft-intune-policies). See the [Potentially Unwanted Application Detection policy setting](https://docs.microsoft.com/en-us/intune/deploy-use/windows-10-policy-settings-in-microsoft-intune) for details.


###Use PUA audit mode in Intune

 You can detect PUA without blocking them from your client. Gain insights into what can be blocked.

1. Open PowerShell as Administrator: <br>

    a.  Click **Start**, type **powershell**, and press **Enter**.
    
    b.  Click **Windows PowerShell** to open the interface.
    
    >[!NOTE]
    >You may need to open an administrator-level version of PowerShell. Right-click the item in the Start menu, click **Run as administrator** and click **Yes** at the permissions prompt.
    
2. Enter the PowerShell command:

  ```text
  et-mpPreference -puaprotection 1
  ```

##View PUA events

PUA events are reported in the Windows Event Viewer and not in SCCM or Intune. To view PUA events:

1.  Open **Event Viewer**.
2.  In the console tree, expand **Applications and Services Logs**, then **Microsoft**, then **Windows**, then **Windows Defender**.
3.  Double-click on **Operational**.
4.  In the details pane, view the list of individual events to find your event. PUA events are under Event ID 1160 along with detection details.

You can find a complete list of the Microsoft antimalware event IDs, the symbol, and the description of each ID in [Windows Server Antimalware Events TechNet](https://technet.microsoft.com/library/dn913615.aspx).


##What PUA notifications look like

When a detection occurs, end users who enabled the PUA detection feature will see the following notification:


To see historical PUA detections that occurred on a PC, users can go to History, then **Quarantined items** or **All detected items**.

##PUA threat naming convention

When enabled, potentially unwanted applications are identified with threat names that start with “PUA:”, such as, PUA:Win32/Creprote.

##PUA blocking conditions

PUA protection quarantines the file so they won’t run. PUA will be blocked only at download or install-time. A file will be included for blocking if it has been identified as PUA and meets one of the following conditions:
*	The file is being scanned from the browser
*	The file is in the %downloads% folder
*	Or if the file in the %temp% folder
