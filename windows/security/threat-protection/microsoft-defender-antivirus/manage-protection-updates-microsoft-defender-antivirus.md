---
title: Manage how and where Microsoft Defender AV receives updates
description: Manage the fallback order for how Microsoft Defender Antivirus receives protection updates.
keywords: updates, security baselines, protection, fallback order, ADL, MMPC, UNC, file path, share, wsus
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: denisebmsft
ms.author: deniseb
ms.reviewer: 
manager: dansimp
ms.custom: nextgen
---

# Manage the sources for Microsoft Defender Antivirus protection updates

**Applies to:**

- [Microsoft Defender Advanced Threat Protection](https://go.microsoft.com/fwlink/p/?linkid=2069559)

<a id="protection-updates"></a>
<!-- this has been used as anchor in VDI content -->

Keeping your antivirus protection up to date is critical. There are two components to managing protection updates for Microsoft Defender Antivirus: 
- *Where* the updates are downloaded from; and 
- *When* updates are downloaded and applied. 

This article describes how to specify from where updates should be downloaded (this is also known as the fallback order). See [Manage Microsoft Defender Antivirus updates and apply baselines](manage-updates-baselines-microsoft-defender-antivirus.md) topic for an overview on how updates work, and how to configure other aspects of updates (such as scheduling updates).

> [!IMPORTANT]
> Microsoft Defender Antivirus Security intelligence updates are delivered through Windows Update and starting Monday, October 21, 2019, all security intelligence updates will be SHA-2 signed exclusively. Your devices must be updated to support SHA-2 in order to update your security intelligence. To learn more, see [2019 SHA-2 Code Signing Support requirement for Windows and WSUS](https://support.microsoft.com/help/4472027/2019-sha-2-code-signing-support-requirement-for-windows-and-wsus).  


<a id="fallback-order"></a>

## Fallback order

Typically, you configure endpoints to individually download updates from a primary source followed by other sources in order of priority, based on your network configuration. Updates are obtained from sources in the order you specify. If a source is not available, the next source in the list is used immediately.

When updates are published, some logic is applied to minimize the size of the update. In most cases, only the differences between the latest update and the update that is currently installed (this is referred to as the delta) on the device is downloaded and applied. However, the size of the delta depends on two main factors:
- The age of the last update on the device; and 
- The source used to download and apply updates. 

The older the updates on an endpoint, the larger the download will be. However, you must also consider download frequency as well. A more frequent update schedule can result in more network usage, whereas a less-frequent schedule can result in larger file sizes per download. 

There are five locations where you can specify where an endpoint should obtain updates: 

- [Microsoft Update](https://support.microsoft.com/help/12373/windows-update-faq)
- [Windows Server Update Service](https://docs.microsoft.com/windows-server/administration/windows-server-update-services/get-started/windows-server-update-services-wsus)
- [Microsoft Endpoint Configuration Manager](https://docs.microsoft.com/configmgr/core/servers/manage/updates)
- [Network file share](#unc-share)
- [Security intelligence updates for Microsoft Defender Antivirus and other Microsoft antimalware](https://www.microsoft.com/en-us/wdsi/defenderupdates) (Your policy and registry might have this listed as Microsoft Malware Protection Center (MMPC) security intelligence, its former name.)

To ensure the best level of protection, Microsoft Update allows for rapid releases, which means smaller downloads on a frequent basis. The Windows Server Update Service, Microsoft Endpoint Configuration Manager, and Microsoft security intelligence updates sources deliver less frequent updates. Thus, the delta can be larger, resulting in larger downloads. 

> [!IMPORTANT]
> If you have set [Microsoft Malware Protection Center Security intelligence page](https://www.microsoft.com/security/portal/definitions/adl.aspx) (MMPC) updates as a fallback source after Windows Server Update Service or Microsoft Update, updates are only downloaded from security intelligence updates when the current update is considered out-of-date. (By default, this is 14 consecutive days of not being able to apply updates from the Windows Server Update Service or Microsoft Update services).
> You can, however, [set the number of days before protection is reported as out-of-date](https://docs.microsoft.com/windows/threat-protection/microsoft-defender-antivirus/manage-outdated-endpoints-microsoft-defender-antivirus#set-the-number-of-days-before-protection-is-reported-as-out-of-date).<p>
> Starting Monday, October 21, 2019, security intelligence updates will be SHA-2 signed exclusively. Devices must be updated to support SHA-2 in order to get the latest security intelligence updates. To learn more, see [2019 SHA-2 Code Signing Support requirement for Windows and WSUS](https://support.microsoft.com/help/4472027/2019-sha-2-code-signing-support-requirement-for-windows-and-wsus).

Each source has typical scenarios that depend on how your network is configured, in addition to how often they publish updates, as described in the following table:

|Location | Sample scenario |
|---|---|
|Windows Server Update Service | You are using Windows Server Update Service to manage updates for your network.|
|Microsoft Update | You want your endpoints to connect directly to Microsoft Update. This can be useful for endpoints that irregularly connect to your enterprise network, or if you do not use Windows Server Update Service to manage your updates.|
|File share | You have non-Internet-connected devices (such as VMs). You can use your Internet-connected VM host to download the updates to a network share, from which the VMs can obtain the updates. See the [VDI deployment guide](deployment-vdi-microsoft-defender-antivirus.md) for how file shares can be used in virtual desktop infrastructure (VDI) environments.|
|Microsoft Endpoint Configuration Manager | You are using Microsoft Endpoint Configuration Manager to update your endpoints.|
|Security intelligence updates for Microsoft Defender Antivirus and other Microsoft antimalware (formerly referred to as MMPC) |[Make sure your devices are updated to support SHA-2](https://support.microsoft.com/help/4472027/2019-sha-2-code-signing-support-requirement-for-windows-and-wsus). Microsoft Defender Antivirus Security intelligence updates are delivered through Windows Update, and starting Monday October 21, 2019 security intelligence updates will be SHA-2 signed exclusively. <br/>Download the latest protection updates because of a recent infection or to help provision a strong, base image for [VDI deployment](deployment-vdi-microsoft-defender-antivirus.md). This option should generally be used only as a final fallback source, and not the primary source. It will only be used if updates cannot be downloaded from Windows Server Update Service or Microsoft Update for [a specified number of days](https://docs.microsoft.com/windows/threat-protection/microsoft-defender-antivirus/manage-outdated-endpoints-microsoft-defender-antivirus#set-the-number-of-days-before-protection-is-reported-as-out-of-date).|

You can manage the order in which update sources are used with Group Policy, Microsoft Endpoint Configuration Manager, PowerShell cmdlets, and WMI.

> [!IMPORTANT]
> If you set Windows Server Update Service as a download location, you must approve the updates, regardless of the management tool you use to specify the location. You can set up an automatic approval rule with Windows Server Update Service, which might be useful as updates arrive at least once a day. To learn more, see [synchronize endpoint protection updates in standalone Windows Server Update Service](https://docs.microsoft.com/configmgr/protect/deploy-use/endpoint-definitions-wsus#to-synchronize-endpoint-protection-definition-updates-in-standalone-wsus).

The procedures in this article first describe how to set the order, and then how to set up the **File share** option if you have enabled it.

## Use Group Policy to manage the update location

1. On your Group Policy management machine, open the [Group Policy Management Console](https://docs.microsoft.com/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc731212(v=ws.11)), right-click the Group Policy Object you want to configure and click **Edit**.

2. In the **Group Policy Management Editor** go to **Computer configuration**.

3. Click **Policies** then **Administrative templates**.

4. Expand the tree to **Windows components > Windows Defender > Signature updates** and configure the following settings:

   1.  Double-click the **Define the order of sources for downloading security intelligence updates** setting and set the option to **Enabled**.

   2.  Enter the order of sources, separated by a single pipe, for example: `InternalDefinitionUpdateServer|MicrosoftUpdateServer|MMPC`, as shown in the following screenshot.

   ![Screenshot of group policy setting listing the order of sources](images/defender/wdav-order-update-sources.png)

   3. Click **OK**. This will set the order of protection update sources.

   4. Double-click the **Define file shares for downloading security intelligence updates** setting and set the option to **Enabled**.

   5. Enter the file share source. If you have multiple sources, enter each source in the order they should be used, separated by a single pipe. Use [standard UNC notation](https://docs.microsoft.com/openspecs/windows_protocols/ms-dtyp/62e862f4-2a51-452e-8eeb-dc4ff5ee33cc) for denoting the path, for example: `\\host-name1\share-name\object-name|\\host-name2\share-name\object-name`.  If you do not enter any paths, then this source will be skipped when the VM downloads updates.

   6. Click **OK**. This will set the order of file shares when that source is referenced in the **Define the order of sources...** group policy setting.

> [!NOTE]
> For Windows 10, versions 1703 up to and including 1809, the policy path is **Windows Components > Microsoft Defender Antivirus > Signature Updates**
> For Windows 10, version 1903, the policy path is **Windows Components > Microsoft Defender Antivirus > Security Intelligence Updates**

## Use Configuration Manager to manage the update location

See [Configure Security intelligence Updates for Endpoint Protection](https://docs.microsoft.com/configmgr/protect/deploy-use/endpoint-definition-updates) for details on configuring Microsoft Endpoint Configuration Manager (current branch).


## Use PowerShell cmdlets to manage the update location

Use the following PowerShell cmdlets to set the update order.

```PowerShell
Set-MpPreference -SignatureFallbackOrder {LOCATION|LOCATION|LOCATION|LOCATION}
Set-MpPreference -SignatureDefinitionUpdateFileSharesSource {\\UNC SHARE PATH|\\UNC SHARE PATH}
```
See the following articles for more information:
- [Set-MpPreference -SignatureFallbackOrder](https://docs.microsoft.com/powershell/module/defender/set-mppreference)
- [Set-MpPreference -SignatureDefinitionUpdateFileSharesSource](https://technet.microsoft.com/itpro/powershell/windows/defender/set-mppreference#-signaturedefinitionupdatefilesharessources)
- [Use PowerShell cmdlets to configure and run Microsoft Defender Antivirus](use-powershell-cmdlets-microsoft-defender-antivirus.md)
- [Defender cmdlets](https://docs.microsoft.com/powershell/module/defender/index)

## Use Windows Management Instruction (WMI) to manage the update location

Use the [**Set** method of the **MSFT_MpPreference**](https://docs.microsoft.com/previous-versions/windows/desktop/legacy/dn455323(v=vs.85)) class for the following properties:

```WMI
SignatureFallbackOrder
SignatureDefinitionUpdateFileSharesSource
```

See the following articles for more information:
- [Windows Defender WMIv2 APIs](https://docs.microsoft.com/previous-versions/windows/desktop/defender/windows-defender-wmiv2-apis-portal)

## Use Mobile Device Management (MDM) to manage the update location

See [Policy CSP - Defender/SignatureUpdateFallbackOrder](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-defender#defender-signatureupdatefallbackorder) for details on configuring MDM.

## What if we're using a third-party vendor?

This article describes how to configure and manage updates for Microsoft Defender Antivirus. However, third-party vendors can be used to perform these tasks. 

For example, suppose that Contoso has hired Fabrikam to manage their security solution, which includes Microsoft Defender Antivirus. Fabrikam typically uses [Windows Management Instrumentation](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/use-wmi-microsoft-defender-antivirus), [PowerShell cmdlets](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/use-powershell-cmdlets-microsoft-defender-antivirus), or [Windows command-line](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/command-line-arguments-microsoft-defender-antivirus) to deploy patches and updates. 

> [!NOTE]
> Microsoft does not test third-party solutions for managing Microsoft Defender Antivirus.

<a id="unc-share"></a>
## Create a UNC share for security intelligence updates

Set up a network file share (UNC/mapped drive) to download security intelligence updates from the MMPC site by using a scheduled task.

1. On the system on which you want to provision the share and download the updates, create a folder to which you will save the script.
    ```DOS
    Start, CMD (Run as admin)
    MD C:\Tool\PS-Scripts\
    ```

2. Create the folder to which you will save the signature updates.
    ```DOS
    MD C:\Temp\TempSigs\x64
    MD C:\Temp\TempSigs\x86
    ```

3. Download the Powershell script from [www.powershellgallery.com/packages/SignatureDownloadCustomTask/1.4](https://www.powershellgallery.com/packages/SignatureDownloadCustomTask/1.4).

4. Click **Manual Download**.

5. Click **Download the raw nupkg file**.

6. Extract the file.

7. Copy the file SignatureDownloadCustomTask.ps1 to the folder you previously created, C:\Tool\PS-Scripts\ .

8. Use the command line to set up the scheduled task.
    > [!NOTE]
    > There are two types of updates: full and delta.
   - For x64 delta:

       ```DOS
       Powershell (Run as admin)
    
       C:\Tool\PS-Scripts\
    
       “.\SignatureDownloadCustomTask.ps1 -action create -arch x64 -isDelta $true -destDir C:\Temp\TempSigs\x64 -scriptPath C:\Tool\PS-Scripts\SignatureDownloadCustomTask.ps1 -daysInterval 1”
       ```

   - For x64 full:

       ```DOS
       Powershell (Run as admin)
    
       C:\Tool\PS-Scripts\
    
       “.\SignatureDownloadCustomTask.ps1 -action create -arch x64 -isDelta $false -destDir C:\Temp\TempSigs\x64 -scriptPath C:\Tool\PS-Scripts\SignatureDownloadCustomTask.ps1 -daysInterval 1”
       ```

   - For x86 delta:

       ```DOS
       Powershell (Run as admin)
    
       C:\Tool\PS-Scripts\
    
       “.\SignatureDownloadCustomTask.ps1 -action create -arch x86 -isDelta $true -destDir C:\Temp\TempSigs\x86 -scriptPath C:\Tool\PS-Scripts\SignatureDownloadCustomTask.ps1 -daysInterval 1”
       ```

   - For x86 full:

       ```DOS
       Powershell (Run as admin)
    
       C:\Tool\PS-Scripts\
    
       “.\SignatureDownloadCustomTask.ps1 -action create -arch x86 -isDelta $false -destDir C:\Temp\TempSigs\x86 -scriptPath C:\Tool\PS-Scripts\SignatureDownloadCustomTask.ps1 -daysInterval 1”
       ```

    > [!NOTE]
    > When the scheduled tasks are created, you can find these in the Task Scheduler under Microsoft\Windows\Windows Defender
9. Run each task manually and verify that you have data (mpam-d.exe, mpam-fe.exe, and nis_full.exe) in the following folders (you might have chosen different locations):

   - C:\Temp\TempSigs\x86
   - C:\Temp\TempSigs\x64

   If the scheduled task fails, run the following commands:

    ```DOS
    C:\windows\system32\windowspowershell\v1.0\powershell.exe -NoProfile -executionpolicy allsigned -command “&\”C:\Tool\PS-Scripts\SignatureDownloadCustomTask.ps1\” -action run -arch x64 -isDelta $False -destDir C:\Temp\TempSigs\x64″
    
    C:\windows\system32\windowspowershell\v1.0\powershell.exe -NoProfile -executionpolicy allsigned -command “&\”C:\Tool\PS-Scripts\SignatureDownloadCustomTask.ps1\” -action run -arch x64 -isDelta $True -destDir C:\Temp\TempSigs\x64″
    
    C:\windows\system32\windowspowershell\v1.0\powershell.exe -NoProfile -executionpolicy allsigned -command “&\”C:\Tool\PS-Scripts\SignatureDownloadCustomTask.ps1\” -action run -arch x86 -isDelta $False -destDir C:\Temp\TempSigs\x86″
    
    C:\windows\system32\windowspowershell\v1.0\powershell.exe -NoProfile -executionpolicy allsigned -command “&\”C:\Tool\PS-Scripts\SignatureDownloadCustomTask.ps1\” -action run -arch x86 -isDelta $True -destDir C:\Temp\TempSigs\x86″
    ```
    > [!NOTE]
    > Issues could also be due to execution policy.
    
10. Create a share pointing to C:\Temp\TempSigs (e.g. \\server\updates).
    > [!NOTE]
    > At a minimum, authenticated users must have “Read” access.
11. Set the share location in the policy to the share.

    > [!NOTE]
    > Do not add the x64 (or x86) folder in the path. The mpcmdrun.exe process adds it automatically.

## Related articles

- [Deploy Microsoft Defender Antivirus](deploy-manage-report-microsoft-defender-antivirus.md)
- [Manage Microsoft Defender Antivirus updates and apply baselines](manage-updates-baselines-microsoft-defender-antivirus.md)
- [Manage updates for endpoints that are out of date](manage-outdated-endpoints-microsoft-defender-antivirus.md)
- [Manage event-based forced updates](manage-event-based-updates-microsoft-defender-antivirus.md)
- [Manage updates for mobile devices and VMs](manage-updates-mobile-devices-vms-microsoft-defender-antivirus.md)
- [Microsoft Defender Antivirus in Windows 10](microsoft-defender-antivirus-in-windows-10.md)

