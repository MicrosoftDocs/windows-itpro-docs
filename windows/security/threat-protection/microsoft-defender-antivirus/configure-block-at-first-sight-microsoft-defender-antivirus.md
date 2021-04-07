---
title: Enable block at first sight to detect malware in seconds
description: Turn on the block at first sight feature to detect and block malware within seconds.
keywords: scan, BAFS, malware, first seen, first sight, cloud, defender
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.localizationpriority: high
author: denisebmsft
ms.author: deniseb
ms.reviewer: 
manager: dansimp
ms.custom: nextgen
ms.date: 10/22/2020
ms.technology: mde
---

# Turn on block at first sight

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**

- [Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/)

Block at first sight provides a way to detect and block new malware within seconds. This protection is enabled by default when certain prerequisite settings are enabled. These settings include cloud-delivered protection, a specified sample submission timeout (such as 50 seconds), and a file-blocking level of high. In most enterprise organizations, these settings are enabled by default with Microsoft Defender Antivirus deployments. 

You can [specify how long a file should be prevented from running](configure-cloud-block-timeout-period-microsoft-defender-antivirus.md) while the cloud-based protection service analyzes the file. And, you can [customize the message displayed on users' desktops](../windows-defender-security-center/wdsc-customize-contact-information.md) when a file is blocked. You can change the company name, contact information, and message URL.

>[!TIP]
>Visit the Microsoft Defender for Endpoint demo website at [demo.wd.microsoft.com](https://demo.wd.microsoft.com?ocid=cx-wddocs-testground) to confirm the features are working and see how they work.

## How it works

When Microsoft Defender Antivirus encounters a suspicious but undetected file, it queries our cloud protection backend. The cloud backend applies heuristics, machine learning, and automated analysis of the file to determine whether the files are malicious or not a threat.

Microsoft Defender Antivirus uses multiple detection and prevention technologies to deliver accurate, intelligent, and real-time protection. To learn more, see this blog: [Get to know the advanced technologies at the core of Microsoft Defender for Endpoint next-generation protection](https://www.microsoft.com/security/blog/2019/06/24/inside-out-get-to-know-the-advanced-technologies-at-the-core-of-microsoft-defender-atp-next-generation-protection/).
![List of Microsoft Defender AV engines](images/microsoft-defender-atp-next-generation-protection-engines.png)  

In Windows 10, version 1803 or later, block at first sight can block non-portable executable files (such as JS, VBS, or macros) as well as executable files.

Block at first sight only uses the cloud protection backend for executable files and non-portable executable files that are downloaded from the Internet, or that originate from the Internet zone. A hash value of the .exe file is checked via the cloud backend to determine if the file is a previously undetected file.

If the cloud backend is unable to make a determination, Microsoft Defender Antivirus locks the file and uploads a copy to the cloud. The cloud performs additional analysis to reach a determination before it either allows the file to run or blocks it in all future encounters, depending on whether it determines the file to be malicious or safe.

In many cases, this process can reduce the response time for new malware from hours to seconds.

## Turn on block at first sight with Microsoft Intune

> [!TIP]
> Microsoft Intune is now part of Microsoft Endpoint Manager.

1. In the Microsoft Endpoint Manager admin center ([https://endpoint.microsoft.com](https://endpoint.microsoft.com)), navigate to **Devices** > **Configuration profiles**.

2. Select or create a profile using the **Device restrictions** profile type.

3. In the **Configuration settings** for the Device restrictions profile, set or confirm the following settings under **Microsoft Defender Antivirus**:

   - **Cloud-delivered protection**: Enabled
   - **File Blocking Level**: High
   - **Time extension for file scanning by the cloud**: 50
   - **Prompt users before sample submission**: Send all data without prompting

   ![Intune config](images/defender/intune-block-at-first-sight.png)

4. Save your settings.

> [!TIP]
> - Setting the file blocking level to **High** applies a strong level of detection. In the unlikely event that file blocking causes a false positive detection of legitimate files, you can [restore quarantined files](./restore-quarantined-files-microsoft-defender-antivirus.md).
> - For more information about configuring Microsoft Defender Antivirus device restrictions in Intune, see [Configure device restriction settings in Microsoft Intune](/intune/device-restrictions-configure).
> - For a list of Microsoft Defender Antivirus device restrictions in Intune, see [Device restriction for Windows 10 (and newer) settings in Intune](/intune/device-restrictions-windows-10#microsoft-defender-antivirus).

## Turn on block at first sight with Microsoft Endpoint Manager

> [!TIP]
> If you're looking for Microsoft Endpoint Configuration Manager, it's now part of Microsoft Endpoint Manager.

1. In Microsoft Endpoint Manager ([https://endpoint.microsoft.com](https://endpoint.microsoft.com)), go to **Endpoint security** > **Antivirus**.

2. Select an existing policy, or create a new policy using the **Microsoft Defender Antivirus** profile type.

3. Set or confirm the following configuration settings:

   - **Turn on cloud-delivered protection**: Yes
   - **Cloud-delivered protection level**: High
   - **Defender Cloud Extended Timeout in Seconds**: 50

   :::image type="content" source="images/endpointmgr-antivirus-cloudprotection.png" alt-text="Block at first sight settings in Endpoint Manager":::

4. Apply the Microsoft Defender Antivirus profile to a group, such as **All users**, **All devices**, or **All users and devices**.

## Turn on block at first sight with Group Policy

> [!NOTE]
> We recommend using Intune or Microsoft Endpoint Manager to turn on block at first sight. 

1. On your Group Policy management computer, open the [Group Policy Management Console](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc731212(v=ws.11)), right-click the Group Policy Object you want to configure and select **Edit**. 

2. Using the **Group Policy Management Editor** go to **Computer configuration** > **Administrative templates** > **Windows Components** > **Microsoft Defender Antivirus** > **MAPS**. 

3. In the MAPS section, double-click **Configure the 'Block at First Sight' feature**, and set it to **Enabled**, and then select **OK**.

    > [!IMPORTANT]
    > Setting to **Always prompt (0)** will lower the protection state of the device. Setting to **Never send (2)** means block at first sight will not function.

4. In the MAPS section, double-click **Send file samples when further analysis is required**, and set it to **Enabled**. Under **Send file samples when further analysis is required**, select **Send all samples**, and then click **OK**.

5. If you changed any settings, redeploy the Group Policy Object across your network to ensure all endpoints are covered.

## Confirm block at first sight is enabled on individual clients

You can confirm that block at first sight is enabled on individual clients using Windows security settings.

Block at first sight is automatically enabled as long as **Cloud-delivered protection** and **Automatic sample submission** are both turned on.

1. Open the Windows Security app.

2. Select **Virus & threat protection**, and then, under **Virus & threat protection settings**, select **Manage Settings**.

   ![Screenshot of the Virus & threat protection settings label in the Windows Security app](images/defender/wdav-protection-settings-wdsc.png)

3. Confirm that **Cloud-delivered protection** and **Automatic sample submission** are both turned on.

> [!NOTE]
> - If the prerequisite settings are configured and deployed using Group Policy, the settings described in this section will be greyed-out and unavailable for use on individual endpoints. 
> - Changes made through a Group Policy Object must first be deployed to individual endpoints before the setting will be updated in Windows Settings.

## Validate block at first sight is working

To validate that the feature is working, follow the guidance in [Validate connections between your network and the cloud](configure-network-connections-microsoft-defender-antivirus.md#validate-connections-between-your-network-and-the-cloud).

## Turn off block at first sight

> [!CAUTION]
> Turning off block at first sight will lower the protection state of your device(s) and your network.

You might choose to disable block at first sight if you want to retain the prerequisite settings without actually using block at first sight protection. You might do temporarily turn block at first sight off if you are experiencing latency issues or you want to test the feature's impact on your network. However, we do not recommend disabling block at first sight protection permanently.

### Turn off block at first sight with Microsoft Endpoint Manager

1. Go to Microsoft Endpoint Manager admin center ([https://endpoint.microsoft.com](https://endpoint.microsoft.com)) and sign in.

2. Go to **Endpoint security** > **Antivirus**, and then select your Microsoft Defender Antivirus policy.

3. Under **Manage**, choose **Properties**.

4. Next to **Configuration settings**, choose **Edit**.

5. Change one or more of the following settings:

   - Set **Turn on cloud-delivered protection** to **No** or **Not configured**.
   - Set **Cloud-delivered protection level** to **Not configured**.
   - Clear the **Defender Cloud Extended Timeout In Seconds** box.

6. Review and save your settings.

### Turn off block at first sight with Group Policy

1. On your Group Policy management computer, open the [Group Policy Management Console](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc731212(v=ws.11)), right-click the Group Policy Object you want to configure, and then click **Edit**.

2. Using the **Group Policy Management Editor** go to **Computer configuration** and click **Administrative templates**.

3. Expand the tree through **Windows components** > **Microsoft Defender Antivirus** > **MAPS**.

4. Double-click **Configure the 'Block at First Sight' feature** and set the option to **Disabled**.

    > [!NOTE]
    > Disabling block at first sight does not disable or alter the prerequisite group policies.

## See also

- [Microsoft Defender Antivirus in Windows 10](microsoft-defender-antivirus-in-windows-10.md)

- [Enable cloud-delivered protection](enable-cloud-protection-microsoft-defender-antivirus.md)