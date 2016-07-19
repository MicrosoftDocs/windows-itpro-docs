---
title: Use PowerShell cmdlets to configure and run Windows Defender in Windows 10
description: In Windows 10, you can use PowerShell cmdlets to run scans, update definitions, and change settings in Windows Defender.
keywords: scan, command line, mpcmdrun, defender
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
author: iaanw
---

# BLOCK AT FIRST SIGHT

Block at First Seen (BAFS) is a feature of Windows Defender cloud protection that provides a way to detect and block new malware within seconds. 

When a Windows Defender client encounters a suspicious but previously undetected file, it queries our cloud protection backend. The cloud backend will apply heuristics, machine learning, and automated analysis of the file to determine the files as malicious or clean.

If the cloud backend is unable to make a determination, a copy of the file is requested for additional processing and analysis in the cloud. 

If the BAFS feature is enabled on the client, the file will be locked by Windows Defender while a copy is uploaded to the cloud, processed, and a verdict returned to the client. Only after a determination is returned from the cloud will Windows Defender release the lock and let the file run.
 
The file-based determination typically takes 1 to 4 seconds.

The following video describes how this feature works:
<iframe src="https://osgwiki.com/images/d/de/Windows_Defender_-_Fast_Learning.mp4" width="640" height="360" allowFullScreen="true" frameBorder="0" scrolling="no"></iframe> 


> **Note:**&nbsp;&nbsp;Suspicious file downloads requiring additional back-end processing to reach a determination will be locked by Windows Defender on the first machine where the file is encountered, until it is finished uploading to the back-end. Users will see a longer “Running security scan” message in the browser while the file is being uploaded, leading to slower download times for these files.


## ENABLE BLOCK AT FIRST SIGHT

### USE GROUP POLICY TO CONFIGURE BAFS

You can use Group Policy to control whether Windows Defender will continue to lock a suspicious file until it is uploaded to the back-end.

This feature ensures the device checks in real time with the Microsoft Active Protection Service (MAPS) before allowing certain content to be run or accessed. If this feature is disabled, the check will not occur, which will lower the protection state of the device.

BAFS requires a number of Group Policy settings to be configured correctly or it will not work.

** Configure pre-requisite cloud protection Group Policy settings:**

1.  On your GP management machine, Open the [Group Policy Management Console](https://technet.microsoft.com/en-us/library/cc731212.aspx), right-click the GPO you want to configure and click **Edit**.

3.  In the **Group Policy Management Editor**, go to **Computer configuration**.

4.  Click **Policies**, then **Administrative templates**.

5.  Expand the tree to **Windows components > Windows Defender > MAPS** and configure the follow GPs:
    
    1.  Double-click the **Join Microsoft MAPS** GP and set the option to **Enabled**. Click **OK**.
    1.  Double-click the **Send file samples when further analysis is required** GP and set the option as **Enabled** and the additional options as either of the following:
    
        1. Send safe samples (1)
        1. Send all samples (3)

        > **Note:**&nbsp;&nbsp;Setting to 0 (Always Prompt) will lower the protection state of the device. Setting to 2 (Never send) means the "Block at First Sight" feature will not function.

    1. Click OK after both GPs have been set.

1.  In the **Group Policy Management Editor**, expand the tree to **Windows components > Windows Defender > Real-time Protection**
    
    1.  Double-click the **Scan all downloaded files and attachments** GP and set the option to **Enabled**. Click **OK**.
    1.  Double-click the **Turn off real-time protection** GP and set the option to **Disabled**. Click **OK**.



** Enable Block at First Sight with Group Policy **

1.  On your GP management machine, Open the [Group Policy Management Console](https://technet.microsoft.com/en-us/library/cc731212.aspx), right-click the GPO you want to configure and click **Edit**.

3.  In the **Group Policy Management Editor**, go to **Computer configuration**.

4.  Click **Policies**, then **Administrative templates**.

5.  Expand the tree through **Windows components > Windows Defender > MAPS**.

1.  Double-click the **Configure the ‘Block at First Sight’ feature** and set the option to **Enabled**. Click Next Setting.

    > **Note:**&nbsp;&nbsp;The Block at First Sight feature will not function if the pre-requisite group policies have not been correctly set.

### Manually enable BAFS on Individual clients

To configure un-managed clients that are running Windows 10 Anniversary Update, BAFS is automatically enabled as long as Cloud-based protection and Automatic sample submission are both turned on.

**Enable BAFS on invididual clients**

1. Open Windows Defender settings:

    a. Open the Windows Defender app and click Settings
    
    b. On the main Windows Setting page, click Update & Security and then Windows Defender.

2.	Switch **Cloud-based Protection** and **Automatic sample submission** to **On**.

> **Note:**&nbsp;&nbsp;These settings will be overridden if the network administrator has configured their associated Group Policies. The settings will appear grayed out and you will not be able to modify them if they are being managed by GP.

 