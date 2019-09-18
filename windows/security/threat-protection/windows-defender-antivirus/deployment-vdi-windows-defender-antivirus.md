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

See the [Microsoft Desktop virtualization site](https://www.microsoft.com/server-cloud/products/virtual-desktop-infrastructure/) for more details on Microsoft Remote Desktop Services and VDI support.

For Azure-based virtual machines, you can also review the [Install Endpoint Protection in Azure Security Center](https://docs.microsoft.com/azure/security-center/security-center-install-endpoint-protection) topic.

With the ability to easily deploy updates to VMs running in VDIs, we've shortened this guide to focus on how you can get updates on your machines quickly and easily. You no longer need to create and seal golden images on a periodic basis, as updates are expanded into their component bits on the host server and then downloaded directly to the VM when it's turned on.

This guide will show you how to configure your VMs for optimal protection and performance, including how to:

- [Set up a dedicated VDI file share for security intelligence updates](#set-up-a-dedicated-vdi-file-share)
- [Randomize scheduled scans](#randomize-scheduled-scans)
- [Use quick scans](#use-quick-scans)
- [Prevent notifications](#prevent-notifications)
- [Disable scans from occurring after every update](#disable-scans-after-an-update)
- [Scan out-of-date machines or machines that have been offline for a while](#scan-vms-that-have-been-offline)
- [Apply exclusions](#exclusions)

You can also download the whitepaper [Windows Defender Antivirus on Virtual Desktop Infrastructure](https://demo.wd.microsoft.com/Content/wdav-testing-vdi-ssu.pdf) which looks at the new shared security intelligence update feature, alongside performance testing and guidance on how you can test antivirus performance on your own VDI.

>[!IMPORTANT]
> While the VDI can be hosted on Windows Server 2012 or Windows Server 2016, the virtual machines (VMs) should be running Windows 10, 1607 at a minimum, due to increased protection technologies and features that are unavailable in earlier versions of Windows.


>[!NOTE]
> There are performance and feature improvements to the way in which Windows Defender AV operates on virtual machines in Windows 10 Insider Preview, build 18323 (and later). We'll identify in this guide if you need to be using an Insider Preview build; if it isn't specified, then the minimum required version for the best protection and performance is Windows 10 1607.



### Set up a dedicated VDI file share

In Windows 10, version 1903, we introduced the shared security intelligence feature. This offloads the unpackaging of downloaded security intelligence updates onto a host machine - thus saving previous CPU, disk, and memory resources on individual machines.

You can set this feature with Intune, Group Policy, or PowerShell.

Open the Intune management portal either by searching for Intune on https://portal.azure.com or going to https://devicemanagement.microsoft.com and logging in.

1. To create a group with only the devices or users you specify:
1. Go to **Groups**. Click **New group**. Use the following values:
    1. Group type: **Security**
    2. Group name: **VDI test VMs**
    3. Group description: *Optional*
    4. Membership type: **Assigned**
    
1. Add the devices or users you want to be a part of this test and then click **Create** to save the group. It’s a good idea to create a couple of groups, one with VMs running the latest Insider Preview build and with the shared security intelligence update feature enabled, and another with VMs that are running Windows 10 1809 or earlier versions. This will help when you create dashboards to test the performance changes.

1. To create a group that will include any machine in your tenant that is a VM, even when they are newly created:

1. Go to **Groups**. Click **New group**. Use the following values:
    1. Group type: **Security**
    2. Group name: **VDI test VMs**
    3. Group description: *Optional*
    4. Membership type: **Dynamic Device**
1. Click **Simple rule**, and select **deviceModel**, **Equals**, and enter **Virtual Machine**. Click **Add query** and then **Create** to save the group.
1. Go to **Device configuration**, then **Profiles**. You can modify an existing custom profile or create a new one. In this demo I’m going to create a new one by clicking **Create profile**.
1. Name it, choose **Windows 10 and later** as the Platform and – most importantly – select **Custom** as the profile type.
1. The **Custom OMA-URI Settings** blade is opened automatically. Click **Add** then enter the following values:
    1. Name: **VDI shared sig location**
    1. Description: *Optional*
    1. OMA-URI: **./Vendor/MSFT/Defender/SharedSignatureRoot**
    1. Data type: **String**
    1. Value: **\\<sharedlocation\>\wdav-update\** (see the [Download and unpackage](#download-and-unpackage-the-latest-updates) section for what this will be)
1. Click **Ok** to close the details blade, then **OK** again to close the **Custom OMA-URI Settings** blade. Click **Create** to save the new profile. The profile details page now appears.
1. Click **Assignments**. The **Include** tab is automatically selected. In the drop-down menu, select **Selected Groups**, then click **Select groups to include**. Click the **VDI test VMs** group and then **Select**. 
1. Click **Evaluate** to see how many users/devices will be impacted. If the number makes sense, click **Save**. If the number doesn’t make sense, go back to the groups blade and confirm the group contains the right users or devices.
1. The profile will now be deployed to the impacted devices. Note that this may take some time.
    
#### Use Group Policy to enable the shared security intelligence feature:
1. On your Group Policy management computer, open the Group Policy Management Console, right-click the Group Policy Object you want to configure and click Edit.
1. In the **Group Policy Management Editor** go to **Computer configuration**.
1. Click **Administrative templates**.
1. Expand the tree to **Windows components > Windows Defender Antivirus > Security Intelligence Updates**
1. Double-click Define security intelligence location for VDI clients and set the option to Enabled. A field automatically appears, enter *\\<sharedlocation\>\wdav-update *(see the [Download and unpackage](#download-and-unpackage-the-latest-updates) section for what this will be). Click **OK**.
1. Deploy the GPO to the VMs you want to test.
    
#### Use PowerShell to enable the shared security intelligence feature:
Use the following cmdlet to enable the feature. You’ll need to then push this as you normally would push PowerShell-based configuration policies onto the VMs:
    
```PowerShell
Set-MpPreference -SharedSignaturesPath \\<shared location>\wdav-update
```

See the [Download and unpackage](#download-and-unpackage-the-latest-updates) section for what the \<shared location\> will be.
    
### Download and unpackage the latest updates
Now you can get started on downloading and installing new updates. We’ve created a sample PowerShell script for you below. This script is the easiest way to download new updates and get them ready for your VMs. You should then set the script to run at a certain time on the management machine by using a scheduled task (or, if you’re familiar with using PowerShell scripts in Azure, Intune, or SCCM, you could also use those).
    
```PowerShell
$vdmpathbase = 'c:\wdav-update\{00000000-0000-0000-0000-'
$vdmpathtime = Get-Date -format "yMMddHHmmss"
$vdmpath = $vdmpathbase + $vdmpathtime + '}'
$vdmpackage = $vdmpath + '\mpam-fe.exe'
$args = @("/x")

New-Item -ItemType Directory -Force -Path $vdmpath | Out-Null

Invoke-WebRequest -Uri 'https://go.microsoft.com/fwlink/?LinkID=121721&arch=x64' -OutFile $vdmpackage

cmd /c "cd $vdmpath & c: & mpam-fe.exe /x" 
```

You can set a scheduled task to run once a day so that whenever the package is downloaded and unpacked then the VMs will receive the new update. 
We suggest starting with once a day – but you should experiment with increasing or decreasing the frequency to understand the impact. 
Note that security intelligence packages are typically published once every three to four hours, so setting a frequency shorter than four hours isn’t advised as it will increase the network overhead on your management machine for no benefit.

#### Set a scheduled task to run the powershell script
1. On the management machine, open the Start menu and type **Task Scheduler**. Open it and select **Create task…** on the side panel.
1. Enter the name as **Security intelligence unpacker**. Go to the **Trigger** tab. Click **New…** Select **Daily** and click **OK**.
1. Go to the **Actions** tab. Click **New…** Enter **PowerShell** in the **Program/Script** field. Enter 

    *-ExecutionPolicy Bypass c:\wdav-update\vdmdlunpack.ps1* 

in the **Add arguments** field. Click **OK**. You can choose to configure additional settings if you wish. Click OK to save the scheduled task.
 

You can initiate the update manually by right-clicking on the task and clicking **Run**.

#### Download and unpackage manually
If you would prefer to do everything manually, this what you would need to do to replicate the script’s behavior:
1. Create a new folder on the system root called *wdav_update* to store intelligence updates, for example, create the folder *c:\wdav_update*
1. Create a subfolder under *wdav_update* with a GUID name, such as *{00000000-0000-0000-0000-000000000000}*; for example *c:\wdav_update\{00000000-0000-0000-0000-000000000000}* (note, in the script we set it so the last 12 digits of the GUID are the year, month, day, and time when the file was downloaded so that a new folder is created each time. You can change this so that the file is downloaded to the same folder each time)
1. Download a security intelligence package from https://www.microsoft.com/wdsi/definitions  into the GUID folder. The file should be named *mpam-fe.exe*.
1. Open a cmd prompt window and navigate to the GUID folder you created. Use the **/X** extraction command to extract the files, for example **mpam-fe.exe /X**.
Note: The VMs will pick up the updated package whenever a new GUID folder is created with an extracted update package or whenever an existing folder is updated with a new extracted package.

### Randomize scheduled scans

Scheduled scans run in addition to [real-time protection and scanning](configure-real-time-protection-windows-defender-antivirus.md).

The start time of the scan itself is still based on the scheduled scan policy – ScheduleDay, ScheduleTime, ScheduleQuickScanTime. Randomization will cause Windows Defender AV to start a scan on each machine within a 4 hour window from the time set for the scheduled scan.

See [Schedule scans](scheduled-catch-up-scans-windows-defender-antivirus.md) for other configuration options available for scheduled scans.

### Use quick scans

You can specify the type of scan that should be performed during a scheduled scan.
Quick scans are the preferred approach as they are designed to look in all places where malware needs to reside to be active.

1. Expand the tree to **Windows components > Windows Defender > Scan** and configure the following setting:  

    - Double-click **Specify the scan type to use for a scheduled scan** and set the option to **Enabled** and **Quick scan**. Click **OK**.

### Prevent notifications

Sometimes, Windows Defender Antivirus notifications may be sent to or persist across multiple sessions. In order to minimize this problem, you can use the lock down the Windows Defender Antivirus user interface.

1. Expand the tree to **Windows components > Windows Defender > Client Interface** and configure the following settings:

   - Double-click **Suppress all notifications** and set the option to **Enabled**. Click **OK**. This prevents notifications from Windows Defender AV appearing in the action center on Windows 10 when scans or remediation is performed.

### Disable scans after an update

This setting will prevent a scan from occurring after receiving an update. You can apply this when creating the base image if you have also run a quick scan. This prevents the newly updated VM from performing a scan again (as you've already scanned it when you created the base image).

>[!IMPORTANT]
>Running scans after an update will help ensure your VMs are protected with the latest Security intelligence updates. Disabling this option will reduce the protection level of your VMs and should only be used when first creating or deploying the base image.

1. Expand the tree to **Windows components > Windows Defender > Signature Updates** and configure the following setting:

   - Double-click **Turn on scan after signature update** and set the option to **Disabled**. Click **OK**. This prevents a scan from running immediately after an update.

### Scan VMs that have been offline 

1. Expand the tree to **Windows components > Windows Defender > Scan** and configure the following setting:

1. Double-click the **Turn on catch-up quick scan** setting and set the option to **Enabled**. Click **OK**. This forces a scan if the VM has missed two or more consecutive scheduled scans.


### Enable headless UI mode
- Double-click **Enable headless UI mode** and set the option to **Enabled**. Click **OK**. This hides the entire Windows Defender AV user interface from users.



### Exclusions
On Windows Server 2016, Windows Defender Antivirus will automatically deliver the right exclusions for servers running a VDI environment. However, if you are running an older Windows server version, you can refer to the exclusions that are applied on this page:
- [Configure Windows Defender Antivirus exclusions on Windows Server](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-antivirus/configure-server-exclusions-windows-defender-antivirus)


## Additional resources

- [Video: Microsoft Senior Program Manager Bryan Keller on how System Center Configuration Manger 2012 manages VDI and integrates with App-V]( http://channel9.msdn.com/Shows/Edge/Edge-Show-5-Manage-VDI-using-SCCM-2012#time=03m02s)
- [TechNet forums on Remote Desktop Services and VDI](https://social.technet.microsoft.com/Forums/windowsserver/en-US/home?forum=winserverTS)
- [SignatureDownloadCustomTask PowerShell script](https://www.powershellgallery.com/packages/SignatureDownloadCustomTask/1.4/DisplayScript)
