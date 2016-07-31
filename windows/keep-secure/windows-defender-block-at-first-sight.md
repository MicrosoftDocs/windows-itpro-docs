---
title: Enable the Block at First Sight feature to detect malware within seconds
description: In Windows 10 the Block at First Sight feature determines and blocks new malware variants in seconds. You can enable the feature with Group Policy.
keywords: scan, BAFS, malware, first seen, first sight, cloud, MAPS, defender
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
author: iaanw
---

# Enable the Block at First Sight feature in Windows 10

**Applies to**

- Windows 10, version 1607

Block at First Sight is a feature of Windows Defender cloud protection that provides a way to detect and block new malware within seconds. 

You can enable Block at First Sight with Group Policy or individually on endpoints.

## Backend procesing and near-instant determinations

When a Windows Defender client encounters a suspicious but previously undetected file, it queries our cloud protection backend. The cloud backend will apply heuristics, machine learning, and automated analysis of the file to determine the files as malicious or clean.

If the cloud backend is unable to make a determination, a copy of the file is requested for additional processing and analysis in the cloud. 

If the Block at First Sight feature is enabled on the client, the file will be locked by Windows Defender while a copy is uploaded to the cloud, processed, and a verdict returned to the client. Only after a determination is returned from the cloud will Windows Defender release the lock and let the file run.
 
The file-based determination typically takes 1 to 4 seconds.

>[!NOTE]Suspicious file downloads requiring additional backend processing to reach a determination will be locked by Windows Defender on the first machine where the file is encountered, until it is finished uploading to the backend. Users will see a longer "Running security scan" message in the browser while the file is being uploaded. This might result in what appear to be slower download times for some files.


## Enable Block at First Sight

### Use Group Policy to configure Block at First Sight

You can use Group Policy to control whether Windows Defender will continue to lock a suspicious file until it is uploaded to the backend.

This feature ensures the device checks in real time with the Microsoft Active Protection Service (MAPS) before allowing certain content to be run or accessed. If this feature is disabled, the check will not occur, which will lower the protection state of the device.

Block at First Sight requires a number of Group Policy settings to be configured correctly or it will not work.

**Configure pre-requisite cloud protection Group Policy settings:**

1.  On your Group Policy management machine, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

3.  In the **Group Policy Management Editor** go to **Computer configuration**.

4.  Click **Policies** then **Administrative templates**.

5.  Expand the tree to **Windows components > Windows Defender > MAPS** and configure the following Group Policies:
    
    1.  Double-click the **Join Microsoft MAPS** setting and set the option to **Enabled**. Click **OK**.
    
    1.  Double-click the **Send file samples when further analysis is required** setting and set the option as **Enabled** and the additional options as either of the following:
    
        1. Send safe samples (1)
        
        1. Send all samples (3)

        >[!NOTE]Setting to 0 (Always Prompt) will lower the protection state of the device. Setting to 2 (Never send) means the "Block at First Sight" feature will not function.

    1. Click OK after both Group Policies have been set.

1.  In the **Group Policy Management Editor**, expand the tree to **Windows components > Windows Defender > Real-time Protection**:
    
    1.  Double-click the **Scan all downloaded files and attachments** setting and set the option to **Enabled**. Click **OK**.
    
    1.  Double-click the **Turn off real-time protection** setting and set the option to **Disabled**. Click **OK**.



**Enable Block at First Sight with Group Policy**

1.  On your Group Policy management machine, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

3.  In the **Group Policy Management Editor** go to **Computer configuration**.

4.  Click **Policies** then **Administrative templates**.

5.  Expand the tree through **Windows components > Windows Defender > MAPS**.

1.  Double-click the **Configure the ‘Block at First Sight’ feature** setting and set the option to **Enabled**.

    >[!NOTE]The Block at First Sight feature will not function if the pre-requisite group policies have not been correctly set.

### Manually enable Block at First Sight on Individual clients

To configure un-managed clients that are running Windows 10, Block at First Sight is automatically enabled as long as **Cloud-based protection** and **Automatic sample submission** are both turned on.

**Enable Block at First Sight on invididual clients**

1. Open Windows Defender settings:

    a. Open the Windows Defender app and click **Settings**.
    
    b. On the main Windows Settings page, click **Update & Security** and then **Windows Defender**.

2.	Switch **Cloud-based Protection** and **Automatic sample submission** to **On**.

>[!NOTE]These settings will be overridden if the network administrator has configured their associated Group Policies. The settings will appear grayed out and you will not be able to modify them if they are being managed by Group Policy.

## Related topics

- [Windows Defender in Windows 10](windows-defender-in-windows-10.md)