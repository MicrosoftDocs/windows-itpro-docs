---
title: Specify cloud-delivered protection level in Microsoft Defender Antivirus
description: Set the aggressiveness of cloud-delivered protection in Microsoft Defender Antivirus.
keywords: Microsoft Defender Antivirus, antimalware, security, defender, cloud, aggressiveness, protection level
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.localizationpriority: medium
author: denisebmsft
ms.author: deniseb
ms.date: 08/12/2020
ms.reviewer: 
manager: dansimp
ms.custom: nextgen
---

# Specify the cloud-delivered protection level

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

You can specify the level of cloud-protection offered by Microsoft Defender Antivirus with Group Policy and Microsoft Endpoint Configuration Manager.

>[!NOTE]
>The Microsoft Defender Antivirus cloud service is a mechanism for delivering updated protection to your network and endpoints. Although it is called a cloud service, it is not simply protection for files stored in the cloud, rather it uses distributed resources and machine learning to deliver protection to your endpoints at a rate that is far faster than traditional Security intelligence updates.

## Use Intune to specify the level of cloud-delivered protection

1. Sign in to the [Azure portal](https://portal.azure.com).
2. Select **All services > Intune**.
3. In the **Intune** pane, select **Device configuration > Profiles**, and then select the **Device restrictions** profile type you want to configure. If you haven't yet created a **Device restrictions** profile type, or if you want to create a new one, see [Configure device restriction settings in Microsoft Intune](https://docs.microsoft.com/intune/device-restrictions-configure).
4. Select **Properties**, select **Settings: Configure**, and then select **Microsoft Defender Antivirus**.
5. On the **File Blocking Level** switch, select one of the following:

    1. **High**: Applies a strong level of detection.
    2. **High +**: Uses the **High** level and applies additional protection measures (may impact client performance).
    3. **Zero tolerance**: Blocks all unknown executables.

8. Click **OK** to exit the **Microsoft Defender Antivirus** settings pane, click **OK** to exit the **Device restrictions** pane, and then click **Save** to save the changes to your **Device restrictions** profile.

For more information about Intune device profiles, including how to create and configure their settings, see [What are Microsoft Intune device profiles?](https://docs.microsoft.com/intune/device-profiles)
  

## Use Configuration Manager to specify the level of cloud-delivered protection

See [How to create and deploy antimalware policies: Cloud-protection service](https://docs.microsoft.com/configmgr/protect/deploy-use/endpoint-antimalware-policies#cloud-protection-service) for details on configuring Microsoft Endpoint Configuration Manager (current branch).

## Use Group Policy to specify the level of cloud-delivered protection

1.  On your Group Policy management machine, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx).

2. Right-click the Group Policy Object you want to configure, and then click **Edit**.

3.  In the **Group Policy Management Editor** go to **Computer configuration**. 

4.  Click **Administrative templates**.

5.  Expand the tree to **Windows components > Microsoft Defender Antivirus > MpEngine**.

6.  Double-click the **Select cloud protection level** setting and set it to **Enabled**. Select the level of protection:
    - **Default blocking level** provides strong detection without increasing the risk of detecting legitimate files.
    - **Moderate blocking level** provides moderate only for high confidence detections
    - **High blocking level** applies a strong level of detection while optimizing client performance (greater chance of false positives).
    - **High + blocking level** applies additional protection measures (may impact client performance and increase risk of false positives).
    - **Zero tolerance blocking level** blocks all unknown executables.
    
    > [!WARNING]
    > While unlikely, setting this switch to **High** or **High +** may cause some legitimate files to be detected (although you will have the option to unblock or dispute that detection).

7. Click **OK**.

  
## Related articles

- [Microsoft Defender Antivirus in Windows 10](microsoft-defender-antivirus-in-windows-10.md)
- [Enable cloud-delivered protection](enable-cloud-protection-microsoft-defender-antivirus.md)
- [How to create and deploy antimalware policies: Cloud-protection service](https://docs.microsoft.com/configmgr/protect/deploy-use/endpoint-antimalware-policies#cloud-protection-service)


