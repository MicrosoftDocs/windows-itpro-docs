---
title: Specify the cloud-delivered protection level for Microsoft Defender Antivirus
description: Set your level of cloud-delivered protection for Microsoft Defender Antivirus.
keywords: Microsoft Defender Antivirus, antimalware, security, defender, cloud, aggressiveness, protection level
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: m365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.localizationpriority: medium
author: denisebmsft
ms.author: deniseb
ms.date: 10/26/2020
ms.reviewer: 
manager: dansimp
ms.custom: nextgen
ms.technology: mde
---

# Specify the cloud-delivered protection level

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**

- [Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/)

You can specify your level of cloud-delivered protection offered by Microsoft Defender Antivirus by using Microsoft Endpoint Manager (recommended) or Group Policy.

> [!TIP]
> Cloud protection is not simply protection for files that are stored in the cloud. The Microsoft Defender Antivirus cloud service is a mechanism for delivering updated protection to your network and devices (also called endpoints). Cloud protection with Microsoft Defender Antivirus uses distributed resources and machine learning to deliver protection to your endpoints at a rate that is far faster than traditional security intelligence updates. 
> Microsoft Intune and Microsoft Endpoint Manager are now part of [Microsoft Endpoint Manager](/mem/endpoint-manager-overview). 


## Use Microsoft Endpoint Manager to specify the level of cloud-delivered protection

1. Go to the Microsoft Endpoint Manager admin center ([https://endpoint.microsoft.com](https://endpoint.microsoft.com)) and sign in.

2. Choose **Endpoint security** > **Antivirus**.

3. Select an antivirus profile. (If you don't have one yet, or if you want to create a new profile, see [Configure device restriction settings in Microsoft Intune](/intune/device-restrictions-configure).

4. Select **Properties**. Then, next to **Configuration settings**, choose **Edit**.

5. Expand **Cloud protection**, and then in the **Cloud-delivered protection level** list, select one of the following:

    1. **High**: Applies a strong level of detection.
    2. **High plus**: Uses the **High** level and applies additional protection measures (may impact client performance).
    3. **Zero tolerance**: Blocks all unknown executables.

6. Choose **Review + save**, and then choose **Save**. 

> [!TIP]
> Need some help? See the following resources:
> - [Configure Endpoint Protection](/mem/configmgr/protect/deploy-use/endpoint-protection-configure)
> - [Add endpoint protection settings in Intune](/mem/intune/protect/endpoint-protection-configure)
  

## Use Group Policy to specify the level of cloud-delivered protection

1.  On your Group Policy management machine, open the [Group Policy Management Console](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc731212(v=ws.11)).

2. Right-click the Group Policy Object you want to configure, and then click **Edit**.

3.  In the **Group Policy Management Editor** go to **Computer Configuration** > **Administrative templates**.

4.  Expand the tree to **Windows Components** > **Microsoft Defender Antivirus** > **MpEngine**.

5.  Double-click the **Select cloud protection level** setting and set it to **Enabled**. Select the level of protection:
    - **Default blocking level** provides strong detection without increasing the risk of detecting legitimate files.
    - **Moderate blocking level** provides moderate only for high confidence detections
    - **High blocking level** applies a strong level of detection while optimizing client performance (but can also give you a greater chance of false positives).
    - **High + blocking level** applies additional protection measures (might impact client performance and increase your chance of false positives).
    - **Zero tolerance blocking level** blocks all unknown executables.
    
    > [!WARNING]
    > While unlikely, setting this switch to **High** or **High +** may cause some legitimate files to be detected (although you will have the option to unblock or dispute that detection).

6. Click **OK**.

7. Deploy your updated Group Policy Object. See [Group Policy Management Console](/windows/win32/srvnodes/group-policy)

> [!TIP]
> Are you using Group Policy Objects on premises? See how they translate in the cloud. [Analyze your on-premises group policy objects using Group Policy analytics in Microsoft Endpoint Manager - Preview](/mem/intune/configuration/group-policy-analytics). 
  
## Related articles

- [Microsoft Defender Antivirus in Windows 10](microsoft-defender-antivirus-in-windows-10.md)
- [Enable cloud-delivered protection](enable-cloud-protection-microsoft-defender-antivirus.md)
- [How to create and deploy antimalware policies: Cloud-protection service](/configmgr/protect/deploy-use/endpoint-antimalware-policies#cloud-protection-service)