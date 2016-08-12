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
localizationpriority: medium
author: iaanw
---

# Block at First Sight

**Applies to**

- Windows 10, version 1607

**Audience**

- Network administrators

Block at First Sight is a feature of Windows Defender cloud protection that provides a way to detect and block new malware within seconds. 

It is enabled by default when certain pre-requisite settings are also enabled. In most cases, these pre-requisite settings are also enabled by default, so the feature is running without any intervention.

## How it works

When a Windows Defender client encounters a suspicious but previously undetected file, it queries our cloud protection backend. The cloud backend will apply heuristics, machine learning, and automated analysis of the file to determine the files as malicious or clean.

If the cloud backend is unable to make a determination, the file will be locked by Windows Defender while a copy is uploaded to the cloud. Only after the cloud has received the file will Windows Defender release the lock and let the file run. The cloud will perform additional analysis to reach a determination, blocking all future encounters of that file. 

In many cases this process can reduce the response time to new malware from hours to seconds.

> [!NOTE]
> Suspicious file downloads requiring additional backend processing to reach a determination will be locked by Windows Defender on the first machine where the file is encountered, until it is finished uploading to the backend. Users will see a longer "Running security scan" message in the browser while the file is being uploaded. This might result in what appear to be slower download times for some files.


## Confirm Block at First Sight is enabled

Block at First Sight requires a number of Group Policy settings to be configured correctly or it will not work. Usually, these settings are already enabled in most default Windows Defender deployments in enterprise networks.

> [!IMPORTANT]
> There is no specific individual setting in System Center Configuration Manager to enable Block at First Sight. It is enabled by default when the pre-requisite settings are configured correctly.

### Confirm Block at First Sight is enabled with Group Policy

1.  On your Group Policy management machine, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

3.  In the **Group Policy Management Editor** go to **Computer configuration**.

4.  Click **Policies** then **Administrative templates**.

5.  Expand the tree to **Windows components > Windows Defender > MAPS** and configure the following Group Policies:
    
    1.  Double-click the **Join Microsoft MAPS** setting and ensure the option is set to **Enabled**. Click **OK**.
    
    1.  Double-click the **Send file samples when further analysis is required** setting and ensure the option is set to **Enabled** and the additional options are either of the following:
    
        1. Send safe samples (1)
        
        1. Send all samples (3)

        > [!WARNING]
        > Setting to 0 (Always Prompt) will lower the protection state of the device. Setting to 2 (Never send) means the "Block at First Sight" feature will not function.

    1. Click **OK**.

1.  In the **Group Policy Management Editor**, expand the tree to **Windows components > Windows Defender > Real-time Protection**:
    
    1.  Double-click the **Scan all downloaded files and attachments** setting and ensure the option is set to **Enabled**. Click **OK**.
    
    1.  Double-click the **Turn off real-time protection** setting and ensure the option is set to **Disabled**. Click **OK**.

If you had to change any of the settings, you should re-deploy the Group Policy Object across your network to ensure all endpoints are covered.


### Confirm Block at First Sight is enabled with Windows Settings

> [!NOTE]
> If the pre-requisite settings are configured and deployed using Group Policy, the settings described in this section will be greyed-out and unavailable for use on individual endpoints. Changes made through a Group Policy Object must first be deployed to individual endpoints before the setting will be updated in Windows Settings.

You can confirm that Block at First Sight is enabled in Windows Settings. The feature is automatically enabled, as long as **Cloud-based protection** and **Automatic sample submission** are both turned on.

**Confirm Block at First Sight is enabled on individual clients**

1. Open Windows Defender settings:

    a. Open the Windows Defender app and click **Settings**.
    
    b. On the main Windows Settings page, click **Update & Security** and then **Windows Defender**.

2.	Confirm that **Cloud-based Protection** and **Automatic sample submission** are switched to **On**.

## Disable Block at First Sight

> [!WARNING]
> Disabling the Block at First Sight feature will lower the protection state of the endpoint and your network.

> [!NOTE]
> You cannot disable Block at First Sight with System Center Configuration Manager

You may choose to disable the Block at First Sight feature if you want to retain the pre-requisite settings without using Block at First Sight protection. You might wish to do this if you are experiencing latency issues or you want to test the feature's impact on your network.

**Disable Block at First Sight with Group Policy**

1.  On your Group Policy management machine, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

3.  In the **Group Policy Management Editor** go to **Computer configuration**.

4.  Click **Policies** then **Administrative templates**.

5.  Expand the tree through **Windows components > Windows Defender > MAPS**.

1.  Double-click the **Configure the ‘Block at First Sight’ feature** setting and set the option to **Disabled**.

    > [!NOTE]
    > Disabling the Block at First Sight feature will not disable or alter the pre-requisite group policies.


## Related topics

- [Windows Defender in Windows 10](windows-defender-in-windows-10.md)


