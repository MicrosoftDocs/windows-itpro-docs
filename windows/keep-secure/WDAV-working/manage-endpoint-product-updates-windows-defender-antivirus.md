---
title: 
description: 
ms.assetid: 22649663-AC7A-40D8-B1F7-5CAD9E49653D
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
localizationpriority: medium
author: iaanw
---

# Manage Windows Defender Antivirus protection and definition updates

**Applies to**
-   Windows 10

**Audience**

- Network administrators

**Manageability available with**

- Group Policy
- System Center Configuration Manager
- Microsoft Intune
- PowerShell cmdlets
- Windows Management Instruction (WMI)
<span id="protection-updates"/>  

<!-- this has been used as anchor in VDI content -->

Windows Defender Antivirus requires regular protection updates to help ensure your network and endpoints are fully protected. These protection updates are also known as "definitions" or "signature updates".

There are a number of ways you can obtain and manage protection updates.

## Obtain protection updates
There are four locations where you can specify where an endpoint should obtain updates. Typically, you would configure each endpoint to individually download the updates from a primary source and specify fallback sources in case the primary source is unavailble.

-   [Windows Server Update Service (WSUS)](https://technet.microsoft.com/windowsserver/bb332157.aspx).
-   Microsoft Update. 
-   The [Microsoft Malware Protection Center definitions page (MMPC)](http://www.microsoft.com/security/portal/definitions/adl.aspx).
-   A network file share.

Each location has typical scenarios (in addition to acting as fallback locations) for when you would use that source, as described in the following table:

Location | Sample scenario
---|---
WSUS | https://docs.microsoft.com/en-us/sccm/protect/deploy-use/endpoint-definitions-wsus#to-synchronize-endpoint-protection-definition-updates-in-standalone-wsus
Microsoft Update | Internet...
MMPC | You need to download the latest protection updates because of a recent infection or to help provision a strong, base image for [VDI deployment](deployment-vdi-windows-defender-antivirus.md).
File share | You have non-Internet-connected devices (such as VMs). You can use your Internet-connected VM host download the updates to a network share, from which the VMs can obtain the updates.

You can manage how you obtain the protection updates with System Center Configuration Manager, Microsoft Intune, Group Policy, or PowerShell cmdlets and WMI.

> [!IMPORTANT]
> If you set WSUS as a download location, you must approve the updates - regardless of what management tool you use to specify the location. You can set up an automatic approval rule with WSUS, which may be useful as updates arrive at least once a day. See [To synchronize endpoint protection updates in standalone WSUS](https://docs.microsoft.com/en-us/sccm/protect/deploy-use/endpoint-definitions-wsus#to-synchronize-endpoint-protection-definition-updates-in-standalone-wsus) for more details.




**Use Group Policy to manage the update location:**

1.  On your Group Policy management machine, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

3.  In the **Group Policy Management Editor** go to **Computer configuration**.

4.  Click **Policies** then **Administrative templates**.

5.  Expand the tree to **Windows components > Windows Defender > Client Interface** and configure the following settings:
    
    1.  Double-click the **Suppress all notifications** setting and set the option to **Enabled**. Click **OK**. This will disable all notifications shown by the Windows Defender client.
    
    1.  Double-click the **Suppresses reboot notifications** setting and set the option to **Enabled**. Click **Ok**. This will disable notifications that ask the endpoint user to reboot the machine to perform additional cleaning.


2.In the Local Computer Policy tree, expand Computer Configuration, then Administrative Templates, then Windows Components, then Windows Defender.
3.Click on Signature Updates.
{\\unc1\\unc2} - where you define [unc] as the UNC shares.


**Use PowerShell and WMI cmdlets to manage the update location:**

Use the following PowerShell cmdlets to enable cloud-delivered protection:

```PowerShell
Set-MpPreference -MAPSReporting Advanced
Set-MpPreference -SubmitSamplesConsent 3
```
See [Use PowerShell cmdlets to configure and run Windows Defender Antivirus](use-powershell-windows-defender-antivirus)  and [Defender cmdlets](https://technet.microsoft.com/en-us/library/dn433280.aspx) for more information on how to use PowerShell with Windows Defender Antivirus.


Use the following WMI cmdlets to enable cloud-delivered protection:

```WMI

```





**Use Configuration Manager to manage the update location:**

1.  See [Configure Definition Updates for Endpoint Protection](https://docs.microsoft.com/en-us/sccm/protect/deploy-use/endpoint-definition-updates) for details on configuring System Center Configuration Manager (current branch).

**Use Microsoft Intune to manage the update location:**


### Configure protection update options





-schedule scans
-etc...







## Opt-in to Microsoft Update on mobile computers without a WSUS connection

You can use Microsoft Update to keep definitions on mobile computers running Windows Defender in Windows 10 up to date when they are not connected to the corporate network. If the mobile computer doesn't have a [Windows Server Update Service](https://technet.microsoft.com/windowsserver/bb332157.aspx) (WSUS) connection, the signatures will still come from Microsoft Update. This means that signatures can be pushed down (via Microsoft Update) even if WSUS overrides Windows Update.

You need to opt-in to Microsoft Update on the mobile computer before it can retrieve the definition updates from Microsoft Update.

There are two ways you can opt-in to Microsoft Update in Windows Defender for Windows 10:

1.  Use a VBScript to create a script, then run it on each computer in your network.
2.  Manually opt-in every computer on your network through the **Settings** menu.

You can create a VBScript and run it on each computer on your network; this is an efficient way to opt-in to Microsoft Update.

**Use a VBScript to opt in to Microsoft Update**

1.  Use the instructions in the MSDN article [Opt-In to Microsoft Update](https://msdn.microsoft.com/library/windows/desktop/aa826676.aspx) to create the VBScript.
2.  Run the VBScript you created on each computer in your network.

You can manually opt-in each individual computer on your network to receive Microsoft Update.

**Manually opt-in to Microsoft Update**

1.  Open **Windows Update** in **Update & security** settings on the computer you want to opt-in.
2.  Click **Advanced** options.
3.  Select the checkbox for **Give me updates for other Microsoft products when I update Windows**.



## Related topics

- [Update and manage Windows Defender in Windows 10](get-started-with-windows-defender-for-windows-10.md)
- [Troubleshoot Windows Defender in Windows 10](troubleshoot-windows-defender-in-windows-10.md)
