---
title: Deployment guide for Windows Defender Antivirus in VDI
description: This guides identifies the process and settings to use Windows Defender Antivirus in a VDI environment.
keywords: vdi, hyper-v, vm, virtual machine, windows defender, antivirus, av, virtual desktop, rds, remote desktop
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
localizationpriority: medium
author: iaanw
---

# Deployment guide for Windows Defender Antivirus in a virtual desktop infrastructure (VDI) environment

**Applies to:**

- Windows 10

**Audience**

- IT professionals

**Manageability available with**

- System Center Configuration Manager (current branch)
- Group Policy



In addition to standard on-premises or hardware configurations, you can also use Windows Defender Antivirus (Windows Defender AV) in a remote desktop (RDS) or virtual desktop infrastructure (VDI) environment.

See the [Microsoft Desktop virtualization site](https://www.microsoft.com/en-us/server-cloud/products/virtual-desktop-infrastructure/) for more details on Microsoft Remote Desktop Services and VDI support.

This guide provides instructions and help on the following within the context of using Windows Defender Antivirus on Windows 10 virtual machines (VMs):

There are four steps in this guide to roll out Windows Defender AV protection across your VDI:

1.	Create and deploy the base image (for example, as a virtual hard disk (VHD)) that your virtual machines (VMs) will use
2.	Manage the base image and updates for your VMs
3.	Configure the VMs for optimal protection and performance

>[!IMPORTANT]
> While the VDI can be hosted on Windows Server 2012 or Windows Server 2016, the virtual machines (VMs) should be running Windows 10, 1607 at a minimum, due to increased protection technologies and features that are unavailable in earlier versions of Windows.

>[!NOTE] 
>When you manage Windows with System Center Configuration Manager, Windows Defender AV protection will be referred to as Endpoint Protection or System Center Endpoint Protection. See the [Endpoint Protection section at the Configuration Manager library]( https://docs.microsoft.com/en-us/sccm/protect/deploy-use/endpoint-protection) for more information.



## Create and deploy the base image 

The main steps in this section include:
1.	Create your standard base image according to your requirements
2.	Apply Windows Defender AV protection updates to your base image
3.	Seal or “lock” the image to create a “known-good” image
4.	Deploying your image to your VMs

First, you should create your base image according to your business needs, applying or installing the relevant line of business (LOB) apps and settings as you normally would. Typically, this would involve creating a VHD or customized .iso, depending on how you will deploy the image to your VMs.

After creating the image, you should ensure it is fully updated. See [Configure Windows Defender in Windows 10]( https://technet.microsoft.com/en-us/itpro/windows/keep-secure/configure-windows-defender-in-windows-10) for instructions on how to update Windows Defender AV protection via WSUS, Microsoft Update, the MMPC site, or UNC file shares. You should ensure that your initial base image is also fully patched with Microsoft and Windows updates and patches.

When the base image is fully updated, you should run a quick scan on the image. This “sealing” or “locking” of the image helps Windows Defender AV build a cache of known-good files and avoid scanning them again on your VMs. In turn, this can help ensure performance on the VM is not impacted.

**Run a quick scan from the command line:**

1. Click **Start**, type **cmd**, and press **Enter**.
2. Navigate to _%ProgramFiles%\Windows Defender_ and enter the following command, and press **Enter**:

```
C:\Program Files\Windows Defender\mpcmdrun.exe -scan -scantype 1
```
The quick scan will start. When the scan completes, you'll see a message indicating that the scan is finished. 

See [Run a Windows Defender scan from the command line](run-scan-command-line-windows-defender-antivirus.md) for additional parameters you can use.

>[!NOTE] ### Quick scan versus full scan
>Quick scan looks at all the locations where there could be malware registered to start with the system, such as registry keys and known Windows startup folders. Combined with our always on real-time protection capability - which reviews files when they are opened and closed, and whenever a user navigates to a folder – quick scan helps provide strong coverage both for malware that starts with the system and kernel-level malware.  
>Therefore, when considering performance – especially for creating a new or updated image in preparation for deployment – it makes sense to use a quick scan only. 
>A full scan, however, can be useful on a VM that has encountered a malware threat to identify if there are any inactive components lying around and help perform a thorough clean-up.



You’ll then need to deploy the base image across your VDI. For example, you can create or clone a VHD from your base image, and then use that VHD when you create or start your VMs. 

The following references provide ways you can create and deploy the base image across your VDI:

- [Single image management for Virtual Desktop Collections](https://blogs.technet.microsoft.com/enterprisemobility/2012/10/29/single-image-management-for-virtual-desktop-collections-in-windows-server-2012/)
- [Using Hyper-V to create a Base OS image that can be used for VMs and VHDs](https://blogs.technet.microsoft.com/haroldwong/2011/06/12/using-hyper-v-to-create-a-base-os-image-that-can-be-used-for-vms-and-boot-to-vhd/)
- [Plan for Hyper-V security in Windows Server 2016]( https://technet.microsoft.com/en-us/windows-server-docs/compute/hyper-v/plan/plan-for-hyper-v-security-in-windows-server-2016)
- [Create a virtual machine in Hyper-V (with a VHD)](https://technet.microsoft.com/en-us/windows-server-docs/compute/hyper-v/get-started/create-a-virtual-machine-in-hyper-v)
- [Build Virtual Desktop templates]( https://technet.microsoft.com/en-us/library/dn645526(v=ws.11).aspx)





## Manage VMs and base image
Using Windows Defender AV within a VDI environment poses unique opportunities for configuration and management.
This is especially apparent when considering how updates are delivered for Windows Defender AV. 

Windows Defender AV uses both cloud-delivered protection (also called the Microsoft Advanced Protection Service) and periodically downloaded updates (also known as “definitions”) to provide protection. The cloud-based protection is “always-on” and requires an active connection to the Internet to function, while the protection updates generally occur once a day (although this can be configured). Additionally, there are monthly updates for the engine that powers Microsoft antivirus protection, along with the usual product updates that are distributed alongside main Windows updates.

Depending on the deployment configuration of your VDI, it may not always be feasible or appropriate to follow a traditional continuous update schedule in a VDI environment.
Instead, you may prefer to receive and apply updates on a daily (or nightly) schedule, or align to a single update point, such as just after the usual monthly Microsoft Update.


You can reduce network overhead by using a persistent VDI environment, so that your VMs will only need to download small delta updates. 

Therefore, the first step you’ll need to take is to determine when to create the base image that you’ll use on your VMs. This should align with the persistence of your VMs.

For example, if you are using a non-persistent VDI, it may make sense to update and deploy your base image daily. This way, you’ll ensure your VMs receive the most up-to-date protection each day, without having to individually download updates when they are each started.
Alternatively, if you have a persistent or semi-persistent VDI, you could update your base image monthly, in conjunction with the monthly “Patch Tuesday” Microsoft Updates to reduce the network bandwidth across your VDI.
In both of these scenarios, the VMs will only need to download “delta” updates – the differences between an existing definition set and the next one. Delta updates are typically much smaller (a few kilobytes) than a full definition download (which can average around 150 mb).

Another benefit to aligning your image update to the monthly Microsoft Update is that you ensure your VMs will have the latest Windows security patches and other important Microsoft updates without each VM needing to individually download them. 

If you are aligning your base image to the monthly Microsoft Update schedule, you should ensure that all operating system and other patches and updates have been applied. The monthly Microsoft Update occurs on the second Tuesday of each month. 
This means you may need to disconnect your VMs, apply the updated base image, and then deploy the image during that time – otherwise the individual VMs may download the update and you will lose the benefit of reducing your network overhead.

On non-persistent or pooled VDIs, you can update the base image nightly with the latest definitions. This allows the VMs to have the latest definitions without need to pull down the latest definitions each morning. In this case, it may make sense to obtain updates via the MMPC website or Microsoft Update channel.

You may be able to automate this by following the instructions in [Orchestrated offline VM Patching using Service Management Automation](https://blogs.technet.microsoft.com/privatecloud/2013/12/06/orchestrated-offline-vm-patching-using-service-management-automation/)

In both scenarios, it’s important to run a quick scan on the updated image before you deploy it to your VMs.


## Configure endpoints for optimal performance
There are a number of settings that can help ensure optimal performance on your VMs and VDI without affecting the level of protection.

These settings can be configured as part of creating your base image, or as a day-to-day management function of your VDI infrastructure or network.


### Randomize scheduled scans

Windows Defender AV supports the randomization of scheduled scans and signature updates; such randomization might be useful to avoid having all machines perform the scheduled scans and signature updates at the same time. 

Scheduled scans run in addition to [real-time protection and scanning](windows-defender-antivirus-in-windows-10.md#always-on-real-time-protection).

The start time of the scan itself is still based on the scheduled scan policy – ScheduleDay, ScheduleTime, ScheduleQuickScanTime.  
 
<!-- individual instructions will be removed and linked to RS2 content when it’s live, for now I’ll put them inline-->

**Use Group Policy to randomize scheduled scan start times:**

1.  On your Group Policy management machine, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

3.  In the **Group Policy Management Editor** go to **Computer configuration**.

4.  Click **Policies** then **Administrative templates**.

5.  Expand the tree to **Windows components > Windows Defender** and configure the following setting:
    
1.  Double-click the **Randomize scheduled task times** setting and set the option to **Enabled**. Click **OK**. This adds a true randomization (it is still random if the disk image is replicated) of +/- 30 minutes to the start of the scheduled scan and also the signature update.

**Use Configuration Manager to randomize schedule scans:**

1.  See [How to create and deploy antimalware policies: Advanced settings]( https://docs.microsoft.com/en-us/sccm/protect/deploy-use/endpoint-antimalware-policies#advanced-settings) for details on configuring System Center Configuration Manager (current branch).

See [Schedule scans](schedule-scans-windows-defender-antivirus.md) for other configuration options available for scheduled scans.

### Use quick scans

You can specify the type of scan that should be performed during a scheduled scan.
Quick scans are the preferred approach as they are designed to look in all places where malware needs to reside to be active. 

**Use Group Policy to specify the type of scheduled scan:**

1.  On your Group Policy management machine, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

3.  In the **Group Policy Management Editor** go to **Computer configuration**.

4.  Click **Policies** then **Administrative templates**.

5.  Expand the tree to **Windows components > Windows Defender > Scan** and configure the following setting:
    
1.  Double-click the **Specify the scan type to use for a scheduled scan** setting and set the option to **Enabled** and **Quick scan**. Click **OK**. 

**Use Configuration Manager to specify the type of scheduled scan:**

1.  See [How to create and deploy antimalware policies: Scheduled scans settings]( https://docs.microsoft.com/en-us/sccm/protect/deploy-use/endpoint-antimalware-policies#scheduled-scans-settings) for details on configuring System Center Configuration Manager (current branch).

<!--
See [Schedule scans](schedule-scans-windows-defender-antivirus.md) for other configuration options available for scheduled scans.
-->

### Prevent notifications

Sometimes, Windows Defender AV notifications may be sent to or persist across multiple sessions. In order to minimize this problem, you can use the lock down the user interface for Windows Defender AV.

**Use Group Policy to hide notifications:**

1.  On your Group Policy management machine, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

3.  In the **Group Policy Management Editor** go to **Computer configuration**.

4.  Click **Policies** then **Administrative templates**.

5.  Expand the tree to **Windows components > Windows Defender > Client Interface** and configure the following settings:
    
1.	Double-click the **Suppress all notifications** setting and set the option to **Enabled**. Click **OK**. This prevents notifications from Windows Defender AV appearing in the action center on Windows 10 when scans or remediation is performed.
2.	Double-click the **Enable headless UI mode** setting and set the option to **Enabled**. Click **OK**. This hides the entire Windows Defender AV user interface from users.


**Use Configuration Manager to hide notifications:**

1.  On your System Center Configuration Manager console, open the antimalware policy you want to change (click **Assets and Compliance** in the navigation pane on the left, then expand the tree to **Overview** > **Endpoint Protection** > **Antimalware Policies**)

2.  Go to the **Advanced** section and configure the following settings:

1.	Set **Disable the client user interface** to **Yes**. This hides the entire Windows Defender AV user interface.
2.	Set **Show notifications messages on the client computer...** to **Yes**. This hides notifications from appearing.

3. Click **OK**.

3.	[Deploy the updated policy as usual](https://docs.microsoft.com/en-us/sccm/protect/deploy-use/endpoint-antimalware-policies#deploy-an-antimalware-policy-to-client-computers).

### Disable scans after an update

This setting will prevent a scan from occurring after receiving an update. You can apply this when creating the base image if you have also run a quick scan. This prevents the newly updated VM from performing a scan again (as you’ve already scanned it when you created the base image).

>[!IMPORTANT]
>Running scans after an update will help ensure your VMs are protected with the latest definition updates. Disabling this option will reduce the protection level of your VMs and should only be used when first creating or deploying the base image.

**Use Group Policy to disable scans after an update:**

1.  On your Group Policy management machine, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

3.  In the **Group Policy Management Editor** go to **Computer configuration**.

4.  Click **Policies** then **Administrative templates**.

5.  Expand the tree to **Windows components > Windows Defender > Signature Updates** and configure the following setting:
    
1.  Double-click the **Turn on scan after signature update** setting and set the option to **Disabled**. Click **OK**. This prevents a scan from running immediately after an update.


**Use Configuration Manager to disable scans after an update:**

1.  On your System Center Configuration Manager console, open the antimalware policy you want to change (click **Assets and Compliance** in the navigation pane on the left, then expand the tree to **Overview** > **Endpoint Protection** > **Antimalware Policies**)

2.  Go to the **Scheduled scans** section and configure the following setting:

1.	Set **Check for the latest definition updates before running a scan** to **No**. This prevents a scan after an update.

3. Click **OK**.

2.	[Deploy the updated policy as usual](https://docs.microsoft.com/en-us/sccm/protect/deploy-use/endpoint-antimalware-policies#deploy-an-antimalware-policy-to-client-computers).





### Scan VMs that have been offline 

This setting will help ensure protection for a VM that has been offline for some time or has otherwise missed a scheduled scan. 

DisableCatchupQuickScan, is the setting that I use (set to OFF) to ensure that a quick scan is performed on a VM which has been offline and has missed a schedule scan. 


**Use Group Policy to enable a catch-up scan:**

1.  On your Group Policy management machine, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

3.  In the **Group Policy Management Editor** go to **Computer configuration**.

4.  Click **Policies** then **Administrative templates**.

5.  Expand the tree to **Windows components > Windows Defender > Scan** and configure the following setting:
    
1.  Double-click the **Turn on catch-up quick scan** setting and set the option to **Enabled**. Click **OK**. This forces a scan if the VM has missed two or more consecutive scheduled scans.


**Use Configuration Manager to disable scans after an update:**

1.  On your System Center Configuration Manager console, open the antimalware policy you want to change (click **Assets and Compliance** in the navigation pane on the left, then expand the tree to **Overview** > **Endpoint Protection** > **Antimalware Policies**)

2.  Go to the **Scheduled scans** section and configure the following setting:

1.	Set **Force a scan of the selected scan type if client computer is offline during...** to **Yes**. This forces a scan if the VM has missed two or more consecutive scheduled scans.

3. Click **OK**.

2.	[Deploy the updated policy as usual](https://docs.microsoft.com/en-us/sccm/protect/deploy-use/endpoint-antimalware-policies#deploy-an-antimalware-policy-to-client-computers).



### Exclusions
Windows Server 2016 contains Windows Defender Antivirus and will automatically deliver the right exclusions for servers running a VDI environment. However, if you are running an older Windows server version, you can refer to the exclusions that are applied on this page:
•         Automatic exclusions for Windows Server Antimalware 

## Additional resources

-	[Video: Microsoft Senior Program Manager Bryan Keller on how System Center Configuration Manger 2012 manages VDI and integrates with App-V]( http://channel9.msdn.com/Shows/Edge/Edge-Show-5-Manage-VDI-using-SCCM-2012#time=03m02s)
-	[Project VRC: Antivirus impact and best practices on VDI](https://blogs.technet.microsoft.com/privatecloud/2013/12/06/orchestrated-offline-vm-patching-using-service-management-automation/)
-	[TechNet forums on Remote Desktop Services and VDI](https://social.technet.microsoft.com/Forums/windowsserver/en-US/home?forum=winserverTS)

