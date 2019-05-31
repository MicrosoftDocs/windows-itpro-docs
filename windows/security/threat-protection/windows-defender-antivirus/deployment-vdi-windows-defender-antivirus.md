---
title: Windows Defender Antivirus VDI deployment guide
description: Learn how to deploy Windows Defender Antivirus in a VDI environment for the best balance between protection and performance.
keywords: vdi, hyper-v, vm, virtual machine, windows defender, antivirus, av, virtual desktop, rds, remote desktop
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
ms.author: dansimp
ms.date: 09/03/2018
ms.reviewer: 
manager: dansimp
---

# Deployment guide for Windows Defender Antivirus in a virtual desktop infrastructure (VDI) environment

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

In addition to standard on-premises or hardware configurations, you can also use Windows Defender Antivirus in a remote desktop (RDS) or virtual desktop infrastructure (VDI) environment.

Boot storms can be a problem in large-scale VDIs; this guide will help reduce the overall network bandwidth and performance impact on your hardware.

>[!NOTE]
>We've recently introduced a new feature that helps reduce the network and CPU overhead ov VMs when obtaining security intelligence updates. If you'd like to test this feature before it's released generally, [download the PDF guide for VDI performance improvement testing](https://demo.wd.microsoft.com/Content/wdav-testing-vdi-ssu.pdf).


We recommend setting the following when deploying Windows Defender Antivirus in a VDI environment:

Location | Setting | Suggested configuration
---|---|---
Client interface | Enable headless UI mode | Enabled
Client interface | Suppress all notifications | Enabled
Scan | Specify the scan type to use for a scheduled scan | Enabled - Quick
Root | Randomize scheduled task times | Enabled
Signature updates | Turn on scan after signature update | Enabled
Scan | Turn on catch up quick scan | Enabled

For more details on the best configuration options to ensure a good balance between performance and protection, including detailed instructions for System Center Configuration Manager and Group Policy, see the [Configure endpoints for optimal performance](#configure-endpoints-for-optimal-performance) section.

See the [Microsoft Desktop virtualization site](https://www.microsoft.com/en-us/server-cloud/products/virtual-desktop-infrastructure/) for more details on Microsoft Remote Desktop Services and VDI support.

For Azure-based virtual machines, you can also review the [Install Endpoint Protection in Azure Security Center](https://docs.microsoft.com/azure/security-center/security-center-install-endpoint-protection) topic.

There are three main steps in this guide to help roll out Windows Defender Antivirus protection across your VDI:

1. [Create and deploy the base image (for example, as a virtual hard disk (VHD)) that your virtual machines (VMs) will use](#create-and-deploy-the-base-image)

2. [Manage the base image and updates for your VMs](#manage-your-vms-and-base-image)

3. [Configure the VMs for optimal protection and performance](#configure-endpoints-for-optimal-performance), including:

    - [Randomize scheduled scans](#randomize-scheduled-scans)
    - [Use quick scans](#use-quick-scans)
    - [Prevent notifications](#prevent-notifications)
    - [Disable scans from occurring after every update](#disable-scans-after-an-update)
    - [Scan out-of-date machines or machines that have been offline for a while](#scan-vms-that-have-been-offline)

>[!IMPORTANT]
> While the VDI can be hosted on Windows Server 2012 or Windows Server 2016, the virtual machines (VMs) should be running Windows 10, 1607 at a minimum, due to increased protection technologies and features that are unavailable in earlier versions of Windows.

>[!NOTE]
>When you manage Windows with System Center Configuration Manager, Windows Defender Antivirus protection will be referred to as Endpoint Protection or System Center Endpoint Protection. See the [Endpoint Protection section at the Configuration Manager library]( https://docs.microsoft.com/sccm/protect/deploy-use/endpoint-protection) for more information.

## Create and deploy the base image

The main steps in this section include:

1. Create your standard base image according to your requirements
2. Apply Windows Defender AV protection updates to your base image
3. Seal or “lock” the image to create a “known-good” image
4. Deploy your image to your VMs

### Create the base image  

First, you should create your base image according to your business needs, applying or installing the relevant line of business (LOB) apps and settings as you normally would. Typically, this would involve creating a VHD or customized .iso, depending on how you will deploy the image to your VMs.

### Apply protection updates to the base image

After creating the image, you should ensure it is fully updated. See [Configure Windows Defender in Windows 10]( https://technet.microsoft.com/itpro/windows/keep-secure/configure-windows-defender-in-windows-10) for instructions on how to update Windows Defender Antivirus protection via WSUS, Microsoft Update, the MMPC site, or UNC file shares. You should ensure that your initial base image is also fully patched with Microsoft and Windows updates and patches.

### Seal the base image

When the base image is fully updated, you should run a quick scan on the image.

After running a scan and buliding the cache, remove the machine GUID that uniquely identifies the device in telemetry for both Windows Defender Antivirus and the Microsoft Security Removal Tool. This key is located here:

'HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\RemovalTools\MRT'

Remove the string found in the 'GUID' value

This “sealing” or “locking” of the image helps Windows Defender Antivirus build a cache of known-good files and avoid scanning them again on your VMs. In turn, this can help ensure performance on the VM is not impacted.

You can run a quick scan [from the command line](command-line-arguments-windows-defender-antivirus.md) or via [System Center Configuration Manager](run-scan-windows-defender-antivirus.md).

>[!NOTE]
><b>Quick scan versus full scan</b>
>Quick scan looks at all the locations where there could be malware registered to start with the system, such as registry keys and known Windows startup folders. Combined with our always on real-time protection capability - which reviews files when they are opened and closed, and whenever a user navigates to a folder – quick scan helps provide strong coverage both for malware that starts with the system and kernel-level malware.  
>Therefore, when considering performance – especially for creating a new or updated image in preparation for deployment – it makes sense to use a quick scan only.
>A full scan, however, can be useful on a VM that has encountered a malware threat to identify if there are any inactive components lying around and help perform a thorough clean-up.

### Deploy the base image

You'll then need to deploy the base image across your VDI. For example, you can create or clone a VHD from your base image, and then use that VHD when you create or start your VMs.

The following references provide ways you can create and deploy the base image across your VDI:

- [Single image management for Virtual Desktop Collections](https://blogs.technet.microsoft.com/enterprisemobility/2012/10/29/single-image-management-for-virtual-desktop-collections-in-windows-server-2012/)
- [Using Hyper-V to create a Base OS image that can be used for VMs and VHDs](https://blogs.technet.microsoft.com/haroldwong/2011/06/12/using-hyper-v-to-create-a-base-os-image-that-can-be-used-for-vms-and-boot-to-vhd/)
- [Plan for Hyper-V security in Windows Server 2016]( https://technet.microsoft.com/windows-server-docs/compute/hyper-v/plan/plan-for-hyper-v-security-in-windows-server-2016)
- [Create a virtual machine in Hyper-V (with a VHD)](https://technet.microsoft.com/windows-server-docs/compute/hyper-v/get-started/create-a-virtual-machine-in-hyper-v)
- [Build Virtual Desktop templates]( https://technet.microsoft.com/library/dn645526(v=ws.11).aspx)

## Manage your VMs and base image

How you manage your VDI will affect the performance impact of Windows Defender AV on your VMs and infrastructure.

Because Windows Defender Antivirus downloads protection updates every day, or [based on your protection update settings](manage-protection-updates-windows-defender-antivirus.md), network bandwidth can be a problem if multiple VMs attempt to download updates at the same time.  

Following the guidelines in this means the VMs will only need to download “delta” updates, which are the differences between an existing Security intelligence set and the next one. Delta updates are typically much smaller (a few kilobytes) than a full Security intelligence download (which can average around 150 mb).

### Manage updates for persistent VDIs

If you are using a persistent VDI, you should update the base image monthly, and set up protection updates to be delivered daily via a file share, as follows:  

1. Create a dedicated file share location on your network that can be accessed by your VMs and your VM host (or other, persistent machine, such as a dedicated admin console that you use to manage your VMs).

2. Set up a scheduled task on your VM host to automatically download updates from the MMPC website or Microsoft Update and save them to the file share (the [SignatureDownloadCustomTask PowerShell script](https://www.powershellgallery.com/packages/SignatureDownloadCustomTask/1.4/DisplayScript) can help with this).

3. [Configure the VMs to pull protection updates from the file share](manage-protection-updates-windows-defender-antivirus.md).

4. Disable or delay automatic Microsoft updates on your VMs. See [Update Windows 10 in the enterprise](https://technet.microsoft.com/itpro/windows/manage/waas-update-windows-10) for information on managing operating system updates with WSUS, SCCM, and others.

5. On or just after each Patch Tuesday (the second Tuesday of each month), [update your base image with the latest protection updates from the MMPC website, WSUS, or Microsoft Update](manage-protection-updates-windows-defender-antivirus.md) Also apply all other Windows patches and fixes that were delivered on the Patch Tuesday. You can automate this by following the instructions in [Orchestrated offline VM Patching using Service Management Automation](https://blogs.technet.microsoft.com/privatecloud/2013/12/06/orchestrated-offline-vm-patching-using-service-management-automation/).

6. [Run a quick scan](run-scan-windows-defender-antivirus.md) on your base image before deploying it to your VMs.

A benefit to aligning your image update to the monthly Microsoft Update is that you ensure your VMs will have the latest Windows security patches and other important Microsoft updates without each VM needing to individually download them.

### Manage updates for non-persistent VDIs

If you are using a non-persistent VDI, you can update the base image daily (or nightly) and directly apply the latest updates to the image.

An example:  

1. Every night or other time when you can safely take your VMs offline, update your base image with the latest [protection updates from the MMPC website, WSUS, or Microsoft Update](manage-protection-updates-windows-defender-antivirus.md).

2. [Run a quick scan](run-scan-windows-defender-antivirus.md) on your base image before deploying it to your VMs.

## Configure endpoints for optimal performance

There are a number of settings that can help ensure optimal performance on your VMs and VDI without affecting the level of protection, including:

- [Randomize scheduled scans](#randomize-scheduled-scans)
- [Use quick scans](#use-quick-scans)
- [Prevent notifications](#prevent-notifications)
- [Disable scans from occurring after every update](#disable-scans-after-an-update)
- [Scan out-of-date machines or machines that have been offline for a while](#scan-vms-that-have-been-offline)

These settings can be configured as part of creating your base image, or as a day-to-day management function of your VDI infrastructure or network.

### Randomize scheduled scans

Windows Defender Antivirus supports the randomization of scheduled scans and Security intelligence updates. This can be extremely helpful in reducing boot storms (especially when used in conjunction with [Disable scans from occurring after every update](#disable-scans-after-an-update) and [Scan out-of-date machines or machines that have been offline for a while](#scan-vms-that-have-been-offline).

Scheduled scans run in addition to [real-time protection and scanning](configure-real-time-protection-windows-defender-antivirus.md).

The start time of the scan itself is still based on the scheduled scan policy – ScheduleDay, ScheduleTime, ScheduleQuickScanTime.  
 
<!-- individual instructions will be removed and linked to RS2 content when it's live, for now I'll put them inline-->

**Use Group Policy to randomize scheduled scan start times:**

1. On your Group Policy management computer, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

2. In the **Group Policy Management Editor** go to **Computer configuration**.

3. Click **Policies** then **Administrative templates**.

4. Expand the tree to **Windows components > Windows Defender** and configure the following setting:

    - Double-click **Randomize scheduled task times** and set the option to **Enabled**. Click **OK**. This adds a true randomization (it is still random if the disk image is replicated) of plus or minus 30 minutes (using all of the intervals) to the start of the scheduled scan and the Security intelligence update. For example, if the schedule start time was set at 2.30pm, then enabling this setting  could cause one machine to scan and update at 2.33pm and another machine to scan and update at 2.14pm.

**Use Configuration Manager to randomize scheduled scans:**

See [How to create and deploy antimalware policies: Advanced settings]( https://docs.microsoft.com/sccm/protect/deploy-use/endpoint-antimalware-policies#advanced-settings) for details on configuring System Center Configuration Manager (current branch).

See [Schedule scans](scheduled-catch-up-scans-windows-defender-antivirus.md) for other configuration options available for scheduled scans.

### Use quick scans

You can specify the type of scan that should be performed during a scheduled scan.
Quick scans are the preferred approach as they are designed to look in all places where malware needs to reside to be active.

**Use Group Policy to specify the type of scheduled scan:**

1. On your Group Policy management computer, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

2. In the **Group Policy Management Editor** go to **Computer configuration**.

3. Click **Policies** then **Administrative templates**.

4. Expand the tree to **Windows components > Windows Defender > Scan** and configure the following setting:  

    - Double-click **Specify the scan type to use for a scheduled scan** and set the option to **Enabled** and **Quick scan**. Click **OK**.

**Use Configuration Manager to specify the type of scheduled scan:**

See [How to create and deploy antimalware policies: Scheduled scans settings]( https://docs.microsoft.com/sccm/protect/deploy-use/endpoint-antimalware-policies#scheduled-scans-settings) for details on configuring System Center Configuration Manager (current branch).

See [Schedule scans](scheduled-catch-up-scans-windows-defender-antivirus.md) for other configuration options available for scheduled scans.

### Prevent notifications

Sometimes, Windows Defender Antivirus notifications may be sent to or persist across multiple sessions. In order to minimize this problem, you can use the lock down the Windows Defender Antivirus user interface.

**Use Group Policy to hide notifications:**

1. On your Group Policy management computer, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

2. In the **Group Policy Management Editor** go to **Computer configuration**.

3. Click **Policies** then **Administrative templates**.

4. Expand the tree to **Windows components > Windows Defender > Client Interface** and configure the following settings:

   - Double-click **Suppress all notifications** and set the option to **Enabled**. Click **OK**. This prevents notifications from Windows Defender AV appearing in the action center on Windows 10 when scans or remediation is performed.
   - Double-click **Enable headless UI mode** and set the option to **Enabled**. Click **OK**. This hides the entire Windows Defender AV user interface from users.

**Use Configuration Manager to hide notifications:**

1. On your System Center Configuration Manager console, open the antimalware policy you want to change (click **Assets and Compliance** in the navigation pane on the left, then expand the tree to **Overview** > **Endpoint Protection** > **Antimalware Policies**)

2. Go to the **Advanced** section and configure the following settings:

   1. Set **Disable the client user interface** to **Yes**. This hides the entire Windows Defender AV user interface.

   2. Set **Show notifications messages on the client computer...** to **Yes**. This hides notifications from appearing.

   3. Click **OK**.

3. [Deploy the updated policy as usual](https://docs.microsoft.com/sccm/protect/deploy-use/endpoint-antimalware-policies#deploy-an-antimalware-policy-to-client-computers).

### Disable scans after an update

This setting will prevent a scan from occurring after receiving an update. You can apply this when creating the base image if you have also run a quick scan. This prevents the newly updated VM from performing a scan again (as you've already scanned it when you created the base image).

>[!IMPORTANT]
>Running scans after an update will help ensure your VMs are protected with the latest Security intelligence updates. Disabling this option will reduce the protection level of your VMs and should only be used when first creating or deploying the base image.

**Use Group Policy to disable scans after an update:**

1. On your Group Policy management computer, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

2. In the **Group Policy Management Editor** go to **Computer configuration**.

3. Click **Policies** then **Administrative templates**.

4. Expand the tree to **Windows components > Windows Defender > Signature Updates** and configure the following setting:

   - Double-click **Turn on scan after signature update** and set the option to **Disabled**. Click **OK**. This prevents a scan from running immediately after an update.

**Use Configuration Manager to disable scans after an update:**

1. On your System Center Configuration Manager console, open the antimalware policy you want to change (click **Assets and Compliance** in the navigation pane on the left, then expand the tree to **Overview** > **Endpoint Protection** > **Antimalware Policies**)

2. Go to the **Scheduled scans** section and configure the following setting:

3. Set **Check for the latest Security intelligence updates before running a scan** to **No**. This prevents a scan after an update.

4. Click **OK**.

5. [Deploy the updated policy as usual](https://docs.microsoft.com/sccm/protect/deploy-use/endpoint-antimalware-policies#deploy-an-antimalware-policy-to-client-computers).

### Scan VMs that have been offline 

This setting will help ensure protection for a VM that has been offline for some time or has otherwise missed a scheduled scan.

**Use Group Policy to enable a catch-up scan:**

1. On your Group Policy management machine, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

2. In the **Group Policy Management Editor** go to **Computer configuration**.

3. Click **Policies** then **Administrative templates**.

4. Expand the tree to **Windows components > Windows Defender > Scan** and configure the following setting:

5. Double-click the **Turn on catch-up quick scan** setting and set the option to **Enabled**. Click **OK**. This forces a scan if the VM has missed two or more consecutive scheduled scans.

**Use Configuration Manager to disable scans after an update:**

1. On your System Center Configuration Manager console, open the antimalware policy you want to change (click **Assets and Compliance** in the navigation pane on the left, then expand the tree to **Overview** > **Endpoint Protection** > **Antimalware Policies**)

2. Go to the **Scheduled scans** section and configure the following setting:

3. Set **Force a scan of the selected scan type if client computer is offline during...** to **Yes**. This forces a scan if the VM has missed two or more consecutive scheduled scans.

4. Click **OK**.

5. [Deploy the updated policy as usual](https://docs.microsoft.com/sccm/protect/deploy-use/endpoint-antimalware-policies#deploy-an-antimalware-policy-to-client-computers).

### Exclusions
On Windows Server 2016, Windows Defender Antivirus will automatically deliver the right exclusions for servers running a VDI environment. However, if you are running an older Windows server version, you can refer to the exclusions that are applied on this page:
- [Configure Windows Defender Antivirus exclusions on Windows Server](https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-defender-antivirus/configure-server-exclusions-windows-defender-antivirus)

## Additional resources

- [Video: Microsoft Senior Program Manager Bryan Keller on how System Center Configuration Manger 2012 manages VDI and integrates with App-V]( http://channel9.msdn.com/Shows/Edge/Edge-Show-5-Manage-VDI-using-SCCM-2012#time=03m02s)
- [TechNet forums on Remote Desktop Services and VDI](https://social.technet.microsoft.com/Forums/windowsserver/en-US/home?forum=winserverTS)
- [SignatureDownloadCustomTask PowerShell script](https://www.powershellgallery.com/packages/SignatureDownloadCustomTask/1.4/DisplayScript)
