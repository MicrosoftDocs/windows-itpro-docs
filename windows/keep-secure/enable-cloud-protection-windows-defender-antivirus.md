---
title: Enable cloud-delivered protection in Windows Defender Antivirus
description: Enable cloud-delivered protection to benefit from fast and advanced protection features.
keywords: windows defender antivirus, antimalware, security, cloud, block at first sight
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
localizationpriority: medium
author: iaanw
---

# Enable cloud-delivered protection in Windows Defender AV



**Applies to:**

- Windows 10, version 1703

**Audience**

- Enterprise security administrators

**Manageability available with**

- Group Policy
- System Center Configuration Manager
- PowerShell cmdlets
- Windows Management Instruction (WMI)
- Microsoft Intune
- Windows Defender Security Center app


>[!NOTE] 
>The Windows Defender Antivirus cloud service is a mechanism for delivering updated protection to your network and endpoints. Although it is called a cloud service, it is not simply protection for files stored in the cloud, rather it uses distributed resources and machine learning to deliver protection to your endpoints at a rate that is far faster than traditional signature updates.



You can enable or disable Windows Defender Antivirus cloud-delivered protection with Group Policy, System Center Configuration Manager, PowerShell cmdlets, Microsoft Intune, or on individual clients in the Windows Defender Security Center app.

See [Utilize Microsoft cloud-delivered protection in Windows Defender Antivirus](utilize-microsoft-cloud-protection-windows-defender-antivirus.md) for an overview of Windows Defender Antivirus cloud-based protection.

There are specific network-connectivity requirements to ensure your endpoints can connect to the cloud-delivered protection service. See [Configure and validate network connections for Windows Defender AV](configure-network-connections-windows-defender-antivirus.md) for more details.

>[!NOTE]
>In Windows 10, there is no difference between the **Basic** and **Advanced** options described in this topic. This is a legacy distinction and choosing either setting will result in the same level of cloud-delivered protection. There is no difference in the type or amount of information that is shared. See the [Microsoft Privacy Statement](https://go.microsoft.com/fwlink/?linkid=521839) for more information on what we collect.


**Use Group Policy to enable cloud-delivered protection:**

1.  On your Group Policy management machine, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

3.  In the **Group Policy Management Editor** go to **Computer configuration**.

4.  Click **Policies** then **Administrative templates**.

5.  Expand the tree to **Windows components > Windows Defender Antivirus > MAPS**
    
1.  Double-click the **Join Microsoft MAPS** setting and ensure the option is enabled and set to **Basic MAPS** or **Advanced MAPS**. Click **OK**.

1.  Double-click the **Send file samples when further analysis is required** setting and ensure the option is set to **Enabled** and the additional options are either of the following:
    
    1. **Send safe samples** (1)
    1. **Send all samples** (3)

        > [!WARNING]
        > Setting to 0 (Always Prompt) will lower the protection state of the device. Setting to 2 (Never send) means the [Block at First Sight](configure-block-at-first-sight-windows-defender-antivirus.md) feature will not function.

1. Click **OK**.



**Use Configuration Manager to enable cloud-delivered protection:**

See [How to create and deploy antimalware policies: Cloud-protection service](https://docs.microsoft.com/en-us/sccm/protect/deploy-use/endpoint-antimalware-policies#cloud-protection-service) for details on configuring System Center Configuration Manager (current branch).


**Use PowerShell cmdlets to enable cloud-delivered protection:**

Use the following cmdlets to enable cloud-delivered protection:

```PowerShell
Set-MpPreference -MAPSReporting Advanced
Set-MpPreference -SubmitSamplesConsent 3
```
>[!NOTE]
>You can also set -SubmitSamplesConsent to 1. Setting it to 0 will lower the protection state of the device, and setting it to 2 means the [Block at First Sight](configure-block-at-first-sight-windows-defender-antivirus.md) feature will not function.


See [Use PowerShell cmdlets to configure and run Windows Defender Antivirus](use-powershell-cmdlets-windows-defender-antivirus.md)  and [Defender cmdlets](https://technet.microsoft.com/en-us/library/dn433280.aspx) for more information on how to use PowerShell with Windows Defender Antivirus.

**Use Windows Management Instruction (WMI) to enable cloud-delivered protection:**

Use the [**Set** method of the **MSFT_MpPreference**](https://msdn.microsoft.com/en-us/library/dn439474(v=vs.85).aspx) class for the following properties:

```WMI
MAPSReporting 
SubmitSamplesConsent
```

See the following for more information and allowed parameters:
- [Windows Defender WMIv2 APIs](https://msdn.microsoft.com/en-us/library/dn439477(v=vs.85).aspx)

**Use Intune to enable cloud-delivered protection**

1.  Open the [Microsoft Intune administration console](https://manage.microsoft.com/), and navigate to the associated policy you want to configure.
2.  Under the **Endpoint Protection** setting, scroll down to the **Endpoint Protection Service** section set the **Submit files automatically when further analysis is required** setting to either of the following:
    1. **Send samples automatically**
    1. **Send all samples automatically**

        > [!WARNING]
        > Setting to **Always Prompt** will lower the protection state of the device. Setting to **Never send** means the [Block at First Sight](configure-block-at-first-sight-windows-defender-antivirus.md) feature will not function.
5. Scoll down to the **Microsoft Active Protection Service** section and set the following settings:
    
   Setting | Set to
    --|--
    Join Microsoft Active Protection Service | Yes
    Membership level | Advanced
    Receive dynamic definitions based on Microsoft Active Protection Service reports | Yes
  
3.  Save and [deploy the policy as usual](https://docs.microsoft.com/en-us/intune/deploy-use/common-windows-pc-management-tasks-with-the-microsoft-intune-computer-client).

See [Help secure Windows PCs with Endpoint Protection for Microsoft Intune](https://docs.microsoft.com/en-us/intune/deploy-use/help-secure-windows-pcs-with-endpoint-protection-for-microsoft-intune) for more details.

**Enable cloud-delivered protection on individual clients with the Windows Defender Security Center app**
> [!NOTE]
> If the **Configure local setting override for reporting Microsoft MAPS** Group Policy setting is set to **Disabled**, then the **Cloud-based protection** setting in Windows Settings will be greyed-out and unavailable. Changes made through a Group Policy Object must first be deployed to individual endpoints before the setting will be updated in Windows Settings.


1. Open the Windows Defender Security Center app by clicking the shield icon in the task bar or searching the start menu for **Defender**.

2. Click the **Virus & threat protection** tile (or the shield icon on the left menu bar) and then the **Virus & threat protection settings** label:

![Screenshot of the Virus & threat protection settings label in the Windows Defender Security Center app](images/defender/wdav-protection-settings-wdsc.png)
    
3.	Confirm that **Cloud-based Protection** and **Automatic sample submission** are switched to **On**.

>[!NOTE]
>If automatic sample submission has been configured with Group Policy then the setting will be greyed-out and unavailble.

## Related topics

- [Configure the cloud block timeout period](configure-cloud-block-timeout-period-windows-defender-antivirus.md)
- [Configure the block at first sight feature](configure-block-at-first-sight-windows-defender-antivirus.md)
- [Use PowerShell cmdlets to configure and run Windows Defender Antivirus](use-powershell-cmdlets-windows-defender-antivirus.md)
- [Help secure Windows PCs with Endpoint Protection for Microsoft Intune](https://docs.microsoft.com/en-us/intune/deploy-use/help-secure-windows-pcs-with-endpoint-protection-for-microsoft-intune)]
- [Defender cmdlets](https://technet.microsoft.com/en-us/library/dn433280.aspx)
- [Utilize Microsoft cloud-delivered protection in Windows Defender Antivirus](utilize-microsoft-cloud-protection-windows-defender-antivirus.md)
- [How to create and deploy antimalware policies: Cloud-protection service](https://docs.microsoft.com/en-us/sccm/protect/deploy-use/endpoint-antimalware-policies#cloud-protection-service)
- - [Windows Defender Antivirus in Windows 10](windows-defender-antivirus-in-windows-10.md)