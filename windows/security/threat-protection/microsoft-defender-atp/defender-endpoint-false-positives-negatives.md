---
title: Address false positives/negatives in Microsoft Defender for Endpoint
description: Learn how to handle false positives or false negatives in Microsoft Defender for Endpoint.
keywords: alert, exclusion, defender atp, false positive, false negative
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.technology: windows
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: deniseb
author: denisebmsft
ms.date: 01/15/2021
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security-compliance 
- m365initiative-defender-endpoint 
ms.topic: conceptual
ms.reviewer: ramarom, evaldm, isco, mabraitm, chriggs, yonghree
ms.custom: FPFN
---

# Address false positives/negatives in Microsoft Defender for Endpoint

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to**

- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2146806)

In Microsoft Defender for Endpoint, a false positive is an entity, such as a file or process, that was detected and identified as malicious, when, in fact, the entity does not pose a threat. A false negative is an entity that was not detected as a threat even though it is, in fact, malicious. If you’re seeing false positives or negatives in your Microsoft Defender Security Center, use this article as a guide to take action. 

## Review your threat protection settings

Microsoft Defender for Endpoint offers a wide variety of options, including the ability to fine tune settings for various features and capabilities. If you’re getting a lot of false positives, review your organization’s threat protection settings. You might need to make some adjustments to the following settings in particular:

- Cloud-delivered protection
- Remediation for potentially unwanted apps (PUA)

### Cloud-delivered protection

Check your cloud-delivered protection level for Microsoft Defender Antivirus. By default, this is set to **Not configured**, which corresponds to a normal level of protection for most organizations. If your cloud-delivered protection is set to **High**, **High +**, or **Zero tolerance**, you might experience a higher number of false positives.

See [Specify the cloud-delivered protection level](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/specify-cloud-protection-level-microsoft-defender-antivirus)

### Remediation for potentially unwanted applications (PUA)

Potentially unwanted applications (PUA) are a category of software that can cause devices to run slowly, display unexpected ads, or install other software that might be unexpected or unwanted. Examples of PUA include advertising software, bundling software, and evasion software that behaves differently with security products. Although PUA is not considered malware, some kinds of software are PUA based on their behavior and reputation.
 
Depending on the apps your organization is using, you might be getting false positives as a result of your PUA protection settings. If this is happening, consider running PUA protection in audit mode for a while, or apply PUA protection to a subset of devices in your organization. PUA protection can be configured for the Microsoft Edge browser and for Microsoft Defender Antivirus. 

> [!TIP]
> To learn more about PUA, see [Detect and block potentially unwanted applications](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/detect-block-potentially-unwanted-apps-microsoft-defender-antivirus).

#### Use Microsoft Endpoint Manager to edit PUA protection for existing configuration profiles

1. Go to the Microsoft Endpoint Manager admin center ([https://endpoint.microsoft.com](https://endpoint.microsoft.com)) and sign in.
2. Choose **Devices** > **Configuration profiles**, and then select an existing policy. (If you don’t have an existing policy, or you want to create a new policy, skip to [the next procedure](#use-microsoft-endpoint-manager-to-set-pua-protection-for-a-new-configuration-profile)).
3. Under **Manage**, choose **Properties**, and then, next to **Configuration settings**, choose **Edit**.
4. On the **Configuration settings** tab, scroll down and expand **Microsoft Defender Antivirus**.
5. Set **Detect potentially unwanted applications** to **Audit**. (You can turn it off, but by using audit mode, you will be able to see detections.)
6. Choose **Review + save**, and then choose **Save**.

#### Use Microsoft Endpoint Manager to set PUA protection for a new configuration profile

1. Go to the Microsoft Endpoint Manager admin center ([https://endpoint.microsoft.com](https://endpoint.microsoft.com)) and sign in.
2. Choose **Devices** > **Configuration profiles** > **+ Create profile**.
3. For the **Platform**, choose **Windows 10 and later**, and for **Profile**, select **Device restrictions**.
4. On the **Basics** tab, specify a name and description for your policy. Then choose **Next**.
5. On the **Configuration settings** tab, scroll down and expand **Microsoft Defender Antivirus**.
6. Set **Detect potentially unwanted applications** to **Audit**, and then choose **Next**. (You can turn PUA protection off, but by using audit mode, you will be able to see detections.)
7. On the **Assignments** tab, specify the users and groups to whom your policy should be applied, and then choose **Next**. (If you need help with assignments, see [Assign user and device profiles in Microsoft Intune](Assign device profiles in Microsoft Intune - Azure | Microsoft Docs).)
8. On the **Applicability Rules** tab, specify the OS editions or versions to include or exclude from the policy. For example, you can set the policy to be applied to all devices certain editions of Windows 10. Then choose **Next**.
9. On the **Review + create** tab, review your settings, and, and then choose **Create**.

## Review or define exclusions for Microsoft Defender for Endpoint

An exclusion is an entity that you specify as an exception to remediation. The excluded entity might still get detected, but no remediation actions are taken on that entity. That is, the detected file or process won’t be stopped, sent to quarantine, removed, or otherwise changed by Microsoft Defender for Endpoint. 

To define exclusions across Microsoft Defender for Endpoint, you perform these two tasks:
- Define exclusions for Microsoft Defender Antivirus
- Create “allow” indicators for Microsoft Defender for Endpoint

Microsoft Defender Antivirus exclusions don't apply to other Microsoft Defender for Endpoint capabilities, including [endpoint detection and response](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/overview-endpoint-detection-response) (EDR), [attack surface reduction (ASR) rules](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/attack-surface-reduction), and [controlled folder access](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/controlled-folders). Files that you exclude using the methods described in this article can still trigger EDR alerts and other detections. To exclude files broadly, use [custom indicators](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/manage-indicators), such as "allow" indcators for Microsoft Defender for Endpoint.

The procedures in this section describe how to define exclusions and indicators.

### Exclusions for Microsoft Defender Antivirus

In general, you should not need to define exclusions for Microsoft Defender Antivirus. Make sure that you define exclusions sparingly, and that you only include the files, folders, processes, and process-opened files that are resulting in false positives. In addition, make sure to review your defined exclusions regularly. We recommend using Microsoft Endpoint Manager to define or edit your antivirus exclusions; however, you can use other methods, such as Group Policy as well.

> [!TIP]
> Need help with antivirus exclusions? See [Configure and validate exclusions for Microsoft Defender Antivirus scans](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/configure-exclusions-microsoft-defender-antivirus).

#### Use Microsoft Endpoint Manager to manage antivirus exclusions for existing policies

1. Go to the Microsoft Endpoint Manager admin center ([https://endpoint.microsoft.com](https://endpoint.microsoft.com)) and sign in.
2. Choose **Endpoint security** > **Antivirus**, and then select an existing policy. (If you don’t have an existing policy, or you want to create a new policy, skip to [the next procedure](#use-microsoft-endpoint-manager-to-create-an-antivirus-policy-with-exclusions)).
3. Choose **Properties**, and next to **Configuration settings**, choose **Edit**.
4. Expand **Microsoft Defender Antivirus Exclusions** and then specify your exclusions.
5. Choose **Review + save**, and then choose **Save**.

#### Use Microsoft Endpoint Manager to create an antivirus policy with exclusions

1. Go to the Microsoft Endpoint Manager admin center ([https://endpoint.microsoft.com](https://endpoint.microsoft.com)) and sign in.
2. Choose **Endpoint security** > **Antivirus** > **+ Create Policy**. 
3. Select a platform (such as Windows 10 and later, macOS, or Windows 10 and Windows Server).
4. For **Profile**, select **Microsoft Defender Antivirus exclusions**, and then choose **Create**.
5. Specify a name and description for the profile, and then choose **Next**.
6. On the **Configuration settings** tab, specify your antivirus exclusions, and then choose **Next**.
7. On the **Scope tags** tab, if you are using scope tags in your organization, specify scope tags for the policy you are creating. (See [Scope tags](https://docs.microsoft.com/mem/intune/fundamentals/scope-tags).)
8. On the **Assignments** tab, specify the users and groups to whom your policy should be applied, and then choose **Next**. (If you need help with assignments, see [Assign user and device profiles in Microsoft Intune](Assign device profiles in Microsoft Intune - Azure | Microsoft Docs).)
9. On the **Review + create** tab, review the settings, and then choose **Create**.

### Indicators for Microsoft Defender for Endpoint

Indicators enable your security operations team to define the detection, prevention, and exclusion of entities. For example, your security operations team can specify certain files to be omitted from scans and remediation actions in Microsoft Defender for Endpoint. Or, indicators can be used to generate alerts for certain IP addresses or URLs.

To specify entities as exclusions for Microsoft Defender for Endpoint, you can create "allow" indicators. Such "allow" indicators apply to the following capabilities in Microsoft Defender for Endpoint:

- [Next-generation protection](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/microsoft-defender-antivirus-in-windows-10)
- [Endpoint detection and response](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/overview-endpoint-detection-response)
- [Automated investigation & remediation](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/automated-investigations)

You can create indicators for files, IP addresses, URLs, domains, and certificates. Use the following resources to create or manage indicators in the Microsoft Defender Security Center([https://securitycenter.windows.com](https://securitycenter.windows.com)): 

- [Learn more about indicators](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/manage-indicators)
- [Create an indicator for a file, such as an executable](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/indicator-file)
- [Create an indicator for an IP address, URL, or domain](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/indicator-ip-domain)
- [Create an indicator for an application certificate](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/indicator-certificates)

## Submit a file for analysis

*https://www.microsoft.com/wdsi/filesubmission/*

## Confirm your software uses EV code signing

*Some info is available here: https://docs.microsoft.com/windows-hardware/drivers/dashboard/get-a-code-signing-certificate*