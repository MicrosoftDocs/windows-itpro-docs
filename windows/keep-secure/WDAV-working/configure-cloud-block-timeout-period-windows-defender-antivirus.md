---
title: Configure the cloud block timeout period
description: You can configure how long Windows Defender Antivirus will block a file from running while waiting for a cloud determination
keywords: windows defender antivirus, antimalware, security, defender, cloud, timeout, block, period, seconds
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
localizationpriority: medium
author: 
---

# Configure the cloud block timeout period



**Applies to:**

- Windows 10, version 1703

**Audience**

- Enterprise security administrators

When Windows Defender Antivirus is suspicious of a file, it can prevent the file from running while it queries the [Windows Defender Antivirus cloud-protection service](utilize-microsoft-cloud-protection-windows-defender-antivirus.md).

The default period that the file will be blocked for is 10 seconds. You can specify an additional period of time to wait before the file is allowed to run. This can help ensure there is enough time to receive a proper determination from the Windows Defendre Antivirus cloud.

## Prerequisites to use the extended cloud block timeout

The [Block at First Sight](configure-block-at-first-sight-windows-defender-antivirus.md) feature and its prerequisites must be enabled before you can specifiy an extended timeout period. 
    
## Specify the extended timeout period

You can use System Center Configuration Manager or Group Policy to specify an extended timeout for cloud checks.

**Use Configuration Manager to specify an extended timeout period**

>[!NOTE]
>Not sure if this is being doc'd on SCCM side. Will check with Nathan. What about PowerShell cmdlets? Are there any that cover this?

**Use Group Policy to specify an extended timeout period:**

1.  On your Group Policy management machine, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

3.  In the **Group Policy Management Editor** go to **Computer configuration**.

4.  Click **Policies** then **Administrative templates**.

5.  Expand the tree to **Windows components > Windows Defender Antivirus > MpEngine**
    
1.  Double-click the **Configure extended cloud check** setting and ensure the option is enabled. Specify the additional amount of time to prevent the file from running while waiting for a cloud determination.  You can specify the additional time, in seconds, from 1 second to 60 seconds. 
    
1. Click **OK**.


>[!IMPORTANT]
>The [Block at First Sight](configure-block-at-first-sight-windows-defender-antivirus.md) feature and its prerequisites must be enabled before you can specifiy an extended timeout period. 


## Related topics

- [Windows Defender in Windows 10](windows-defender-in-windows-10.md)
- [Utilize Microsoft cloud-provided protection in Windows Defender Antivirus](utilize-microsoft-cloud-protection-windows-defender-antivirus.md)
- [Configure the Block at First Sight feature](configure-block-at-first-sight-windows-defender-antivirus.md)
- [Enable cloud-delivered protection](enable-cloud-protection-windows-defender-antivirus.md)




