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
author: andreabichsel
ms.author: v-anbic
ms.date: 09/03/2018
---

# Deployment guide for Windows Defender Antivirus in a virtual desktop infrastructure (VDI) environment

**Applies to:**

- [Windows Defender Advanced Threat Protection (Windows Defender ATP)](https://wincom.blob.core.windows.net/documents/Windows10_Commercial_Comparison.pdf)

In addition to standard on-premises or hardware configurations, you can also use Windows Defender Antivirus in a remote desktop (RDS) or virtual desktop infrastructure (VDI) environment.


See the [Microsoft Desktop virtualization site](https://www.microsoft.com/en-us/server-cloud/products/virtual-desktop-infrastructure/) for more details on Microsoft Remote Desktop Services and VDI support.

For Azure-based virtual machines, you can also review the [Install Endpoint Protection in Azure Security Center](https://docs.microsoft.com/azure/security-center/security-center-install-endpoint-protection) topic.

With the ability to easily deploy updates to VMs running in VDIs, we've shortened this guide to focus on how you can get updates on your machines quickly and easily. You no longer need to create and seal golden images on a periodic basis, as updates are expanded into their component bits on the host server and then downloaded directly to the VM when it's turned on.

This guide will show you how to configure your VMs for optimal protection and performance, including how to:

- [Set up a dedicated VDI file share for security intelligence updates](#set-up-a-dedicated-vdi-file-share)
- [Randomize scheduled scans](#randomize-scheduled-scans)
- [Use quick scans](#use-quick-scans)
- [Prevent notifications](#prevent-notifications)
- [Disable scans from occurring after every update](#disable-scans-after-an-update)
- [Scan out-of-date machines or machines that have been offline for a while](#scan-vms-that-have-been-offline)

>[!IMPORTANT]
> While the VDI can be hosted on Windows Server 2012 or Windows Server 2016, the virtual machines (VMs) should be running Windows 10, 1607 at a minimum, due to increased protection technologies and features that are unavailable in earlier versions of Windows.

>[!NOTE]
> There are performance and feature improvements to the way in which Windows Defender AV operates on virtual machines in Windows 10 Insider Preview, build 18323 (and later). We'll identify in this guide if you need to be using an Insider Preview build; if it isn't specified, then the minimum required version for the best protection and performance is Windows 10 1607.

This guide focuses on how to configure settings with Group Policy or Intune. See [How to create and deploy antimalware policies: Advanced settings]( https://docs.microsoft.com/sccm/protect/deploy-use/endpoint-antimalware-policies#advanced-settings) for details on configuring System Center Configuration Manager (current branch).

You can also [deploy a prebuilt PowerShell script that automatically sets these options](#customize-a-powershell-script-for-vm-protection). Note there are some customizations that you must apply to the script before you can deploy it.



<!--> We recommend setting the following when deploying Windows Defender Antivirus in a VDI environment:

Location | Setting | Suggested configuration
---|---|---
Security Intelligence Updates | Define security intelligence location for VDI clients | Enabled - *Enter a file share that contains the latest definition packages*
Security Intelligence Updates | Turn on scan after signature update | Enabled
Client interface | Enable headless UI mode | Enabled
Client interface | Suppress all notifications | Enabled
Scan | Specify the scan type to use for a scheduled scan | Enabled - Quick
Scan | Turn on catch up quick scan | Enabled
Root | Randomize scheduled task times | Enabled


For more details on the best configuration options to ensure a good balance between performance and protection, including detailed instructions for System Center Configuration Manager and Group Policy, see the [Configure endpoints for optimal performance](#configure-endpoints-for-optimal-performance) section.

-->

<!-->

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

Following the guidelines in this means the VMs will only need to download “delta” updates, which are the differences between an existing definition set and the next one. Delta updates are typically much smaller (a few kilobytes) than a full definition download (which can average around 150 mb).

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

-->

## Configure endpoints for optimal performance in VDI environments

There are a number of settings that can help ensure optimal performance on your VMs and VDI without affecting the level of protection. In this section, we describe how you can configure these settings with PowerShell, Intune, and Group Policy. See [How to create and deploy antimalware policies: Advanced settings]( https://docs.microsoft.com/sccm/protect/deploy-use/endpoint-antimalware-policies#advanced-settings) for details on configuring System Center Configuration Manager (current branch).


### Customize a PowerShell script for VM protection

You can use the following script to easily configure all of the above settings in one script. 

The script configures the settings described in the following table. Note the settings that require customization. To customize the script:

1. Open PowerShell IDE by searching for it from the Start menu.
1. Paste the script code below.
1. Make changes as described in the table. Note that the examples may not work if you copy them without customizing for your environment (for example, the exclusions and the shared security intelligence location will be different for your deployment)

You can then deploy this script in whichever way you usually deploy PowerShell scripts. You can do this with Intune:

1. Create configuration for PowerShell
2. Deploy
3. Profit

The following table lists each setting that is referenced in the script, along with a description and example.


### Use Intune to create and deploy an endpoint protection profile

You can create an endpoint protection profile in Intune and then deploy it to groups you specify.

First, create the profile:

1. blah

Now deploy it to groups or individual users:



### Use Group Policy configuration for VM protection

You can also use Group Policy to configure the settings if you don't want to use PowerShell and Intune.

For quick reference, the following are the Group Policy settings and locations that are described in this section:


Location | Setting | Suggested configuration
---|---|---
Security Intelligence Updates | Define security intelligence location for VDI clients | Enabled - *Enter a file share that contains the latest definition packages*
Security Intelligence Updates | Turn on scan after signature update | Enabled
Client interface | Enable headless UI mode | Enabled
Client interface | Suppress all notifications | Enabled
Scan | Specify the scan type to use for a scheduled scan | Enabled - Quick
Scan | Turn on catch up quick scan | Enabled
Root | Randomize scheduled task times | Enabled

You should create a deploy a GPO policy as you normally would.

You can find these settings under **Policies** then **Administrative templates**. Expand the tree to **Windows components > Windows Defender Antivirus**

### Set up a dedicated VDI file share

Use this:

    - [Set up a dedicated VDI file share for security intelligence updates](#set-up-a-dedicated-vdi-file-share)


Then some more instructions on how to set up the share, and test it, and make sure it's working, link to blog/whitepaper that talk about the technology involved.

### Randomize scheduled scans

Windows Defender Antivirus supports the randomization of scheduled scans and signature updates. This can be extremely helpful in reducing boot storms (especially when used in conjunction with [Disable scans from occurring after every update](#disable-scans-after-an-update) and [Scan out-of-date machines or machines that have been offline for a while](#scan-vms-that-have-been-offline).

Scheduled scans run in addition to [real-time protection and scanning](configure-real-time-protection-windows-defender-antivirus.md).

The start time of the scan itself is still based on the scheduled scan policy – ScheduleDay, ScheduleTime, ScheduleQuickScanTime. Randomization will cause Windows Defender AV to start a scan on each machine within a 4 hour window from the time set for the scheduled scan.
 


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

**Use Intune to specify the type of scheduled scan:**




### Prevent notifications

Sometimes, Windows Defender Antivirus notifications may be sent to or persist across multiple sessions. In order to minimize this problem, you can use the lock down the Windows Defender Antivirus user interface.

**Use Group Policy to hide notifications:**

1. On your Group Policy management computer, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

2. In the **Group Policy Management Editor** go to **Computer configuration**.

3. Click **Policies** then **Administrative templates**.

4. Expand the tree to **Windows components > Windows Defender > Client Interface** and configure the following settings:

   - Double-click **Suppress all notifications** and set the option to **Enabled**. Click **OK**. This prevents notifications from Windows Defender AV appearing in the action center on Windows 10 when scans or remediation is performed.
   - Double-click **Enable headless UI mode** and set the option to **Enabled**. Click **OK**. This hides the entire Windows Defender AV user interface from users.

**Use Intune to hide notifications:**



### Disable scans after an update

This setting will prevent a scan from occurring after receiving an update. You can apply this when creating the base image if you have also run a quick scan. This prevents the newly updated VM from performing a scan again (as you've already scanned it when you created the base image).

>[!IMPORTANT]
>Running scans after an update will help ensure your VMs are protected with the latest definition updates. Disabling this option will reduce the protection level of your VMs and should only be used when first creating or deploying the base image.

**Use Group Policy to disable scans after an update:**

1. On your Group Policy management computer, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

2. In the **Group Policy Management Editor** go to **Computer configuration**.

3. Click **Policies** then **Administrative templates**.

4. Expand the tree to **Windows components > Windows Defender > Signature Updates** and configure the following setting:

   - Double-click **Turn on scan after signature update** and set the option to **Disabled**. Click **OK**. This prevents a scan from running immediately after an update.

**Use Intune to disable scans after an update:**



### Scan VMs that have been offline 

This setting will help ensure protection for a VM that has been offline for some time or has otherwise missed a scheduled scan.

**Use Group Policy to enable a catch-up scan:**

1. On your Group Policy management machine, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

2. In the **Group Policy Management Editor** go to **Computer configuration**.

3. Click **Policies** then **Administrative templates**.

4. Expand the tree to **Windows components > Windows Defender > Scan** and configure the following setting:

5. Double-click the **Turn on catch-up quick scan** setting and set the option to **Enabled**. Click **OK**. This forces a scan if the VM has missed two or more consecutive scheduled scans.

**Use Intune to disable scans after an update:**



### Exclusions
On Windows Server 2016, Windows Defender Antivirus will automatically deliver the right exclusions for servers running a VDI environment. However, if you are running an older Windows server version, you can refer to the exclusions that are applied on this page:
- [Configure Windows Defender Antivirus exclusions on Windows Server](https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-defender-antivirus/configure-server-exclusions-windows-defender-antivirus)


## Customize a PowerShell script for VM protection

You can use the following script to easily configure all of the above settings in one script. You can then deploy this script in whichever way you usually deploy PowerShell scripts. You can do this with Intune:

1. Create configuration for PowerShell
2. Deploy
3. Profit

## Additional resources

- [Video: Microsoft Senior Program Manager Bryan Keller on how System Center Configuration Manger 2012 manages VDI and integrates with App-V]( http://channel9.msdn.com/Shows/Edge/Edge-Show-5-Manage-VDI-using-SCCM-2012#time=03m02s)
- [TechNet forums on Remote Desktop Services and VDI](https://social.technet.microsoft.com/Forums/windowsserver/en-US/home?forum=winserverTS)
- [SignatureDownloadCustomTask PowerShell script](https://www.powershellgallery.com/packages/SignatureDownloadCustomTask/1.4/DisplayScript)
