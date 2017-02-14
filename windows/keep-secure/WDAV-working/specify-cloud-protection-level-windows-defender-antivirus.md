---
title: Specify cloud protection level in Windows Defender Antivirus
description: Set the aggressiveness of cloud-delivered protection in Windows Defender Antivirus
keywords: windows defender antivirus, antimalware, security, defender, cloud, aggressiveness, protection level
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
localizationpriority: medium
author: iaanw
---

# Specify the cloud-delivered protection level



**Applies to:**

- Windows 10, version 1703

**Audience**

- Enterprise security administrators

You can specify the level of cloud-protection offered by Windows Defender Antivirus with Group Policy and System Center Configuration Manager.

>[!NOTE] 
>The Windows Defender Antivirus cloud service is a mechanism for delivering updated protection to your network and endpoints. Although it is called a cloud service, it is not simply protection for files stored in the cloud, rather it uses distributed resources and machine learning to deliver protection to your endpoints at a rate that is far faster than traditional signature updates.

See [How to create and deploy antimalware policies: Cloud-protection service](https://docs.microsoft.com/en-us/sccm/protect/deploy-use/endpoint-antimalware-policies#cloud-protection-service) for a comparison of the availble levels. 


>[!NOTE]
>This lists four settings, and the GP only has two settings, but not description (it says go to the documentation site).

**Use Group Policy to specify the level of cloud-delivered protection:**

1.  On your Group Policy management machine, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

3.  In the **Group Policy Management Editor** go to **Computer configuration**.

4.  Click **Policies** then **Administrative templates**.

5.  Expand the tree to **Windows components > Windows Defender Antivirus > MpEngine**.
    
1.  Double-click the **Select cloud protection level** setting and set it to **Enabled**. Select the level of protection:
    1.  **Default Windows Defender Antivirus blocking level**.
    2.  **High blocking level**.
    
1. Click **OK**.


**Use Configuration Manager to specify the level of cloud-delivered protection:**

See [How to create and deploy antimalware policies: Cloud-protection service](https://docs.microsoft.com/en-us/sccm/protect/deploy-use/endpoint-antimalware-policies#cloud-protection-service) for details on configuring System Center Configuration Manager (current branch).

>[!NOTE] I can't see options for 2012 [here](https://technet.microsoft.com/en-us/library/hh508785.aspx#BKMK_List), guessing it doesn't exist?



## Related topics

- [Windows Defender Antivirus in Windows 10](windows-defender-in-windows-10.md)
- [Enable cloud-delivered protection](enable-cloud-protection-windows-defender-antivirus.md)
-[How to create and deploy antimalware policies: Cloud-protection service](https://docs.microsoft.com/en-us/sccm/protect/deploy-use/endpoint-antimalware-policies#cloud-protection-service)


