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

In endpoint protection, a false positive is an entity, such as a file or a process, that was detected and identified as malicious, even though the entity isn't actually a threat. A false negative is an entity that was not detected as a threat, even though it actually is malicious. The process of addressing false positives/negatives can include:
- [Reviewing your threat protection settings and making adjustments where needed](#review-your-threat-protection-settings);
- [Defining exclusions, such as for antivirus and other endpoint protection features](#review-or-define-exclusions-for-microsoft-defender-for-endpoint);
- [Classifying false positives in your endpoint protection solution](#classify-a-false-positive-or-false-negative);
- [Submitting files for further analysis](#submit-a-file-for-analysis); and
- [Verifying that the applications your organization is using are properly signed](#confirm-your-software-uses-ev-code-signing).

If you’re using [Microsoft Defender for Endpoint](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/microsoft-defender-advanced-threat-protection), and you're seeing false positives/negatives in your [Microsoft Defender Security Center](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/use), use this article as a guide to take action. This article also includes information about [what to do if you still need help](#still-need-help) after taking the recommended steps to address false positives/negatives in your environment.

## Review your threat protection settings

Microsoft Defender for Endpoint offers a wide variety of options, including the ability to fine-tune settings for various features and capabilities. If you’re getting numerous false positives, make sure to review your organization’s threat protection settings. You might need to make some adjustments to the following settings in particular:

- [Cloud-delivered protection](#cloud-delivered-protection)
- [Remediation for potentially unwanted apps](#remediation-for-potentially-unwanted-applications-pua) (PUA)

### Cloud-delivered protection

Check your cloud-delivered protection level for Microsoft Defender Antivirus. By default, this is set to **Not configured**, which corresponds to a normal level of protection for most organizations. If your cloud-delivered protection is set to **High**, **High +**, or **Zero tolerance**, you might experience a higher number of false positives.

> [!TIP]
> To learn more about configuring your cloud-delivered protection, see [Specify the cloud-delivered protection level](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/specify-cloud-protection-level-microsoft-defender-antivirus)

We recommend using Microsoft Endpoint Manager to edit or set your cloud-delivered protection settings.

#### Use Microsoft Endpoint Manager to review and edit cloud-delivered protection settings (for existing policies)

1. Go to the Microsoft Endpoint Manager admin center ([https://endpoint.microsoft.com](https://endpoint.microsoft.com)) and sign in.
2. Choose **Endpoint security** > **Antivirus** and then select an existing policy. (If you don’t have an existing policy, or you want to create a new policy, skip to [the next procedure](#use-microsoft-endpoint-manager-to-set-cloud-delivered-protection-settings-for-a-new-policy)).
3. Under **Manage**, select **Properties**. Then, next to **Configuration settings**, choose **Edit**.
4. Expand **Cloud protection**, and review your current setting in the **Cloud-delivered protection level** row. We recommend setting this to **Not configured**, which provides strong protection while reducing the chances of getting false positives.
5. Choose **Review + save**, and then **Save**.

#### Use Microsoft Endpoint Manager to set cloud-delivered protection settings (for a new policy)

1. Go to the Microsoft Endpoint Manager admin center ([https://endpoint.microsoft.com](https://endpoint.microsoft.com)) and sign in.
2. Choose **Endpoint security** > **Antivirus** > **+ Create policy**.
3. For **Platform**, select an option, and then for **Profile**, select **Antivirus** or **Microsoft Defender Antivirus** (the specific option depends on what you selected for **Platform**.) Then choose **Create**.
4. On the **Basics** tab, specify a name and description for the policy. Then choose **Next**.
5. On the **Configuration settings** tab, expand **Cloud protection**, and specify the following settings:
   - Set **Turn on cloud-delivered protection** to **Yes**.
   - Set **Cloud-delivered protection level** to **Not configured**. (This level provides a strong level of protection by default while reducing the chances of getting false positives.)
6. On the **Scope tags** tab, if you are using scope tags in your organization, specify scope tags for the policy. (See [Scope tags](https://docs.microsoft.com/mem/intune/fundamentals/scope-tags).)
8. On the **Assignments** tab, specify the users and groups to whom your policy should be applied, and then choose **Next**. (If you need help with assignments, see [Assign user and device profiles in Microsoft Intune](https://docs.microsoft.com/mem/intune/configuration/device-profile-assign).)
9. On the **Review + create** tab, review the settings, and then choose **Create**.  

### Remediation for potentially unwanted applications

Potentially unwanted applications (PUA) are a category of software that can cause devices to run slowly, display unexpected ads, or install other software that might be unexpected or unwanted. Examples of PUA include advertising software, bundling software, and evasion software that behaves differently with security products. Although PUA is not considered malware, some kinds of software are PUA based on their behavior and reputation.
 
Depending on the apps your organization is using, you might be getting false positives as a result of your PUA protection settings. If this is happening, consider running PUA protection in audit mode for a while, or apply PUA protection to a subset of devices in your organization. PUA protection can be configured for the Microsoft Edge browser and for Microsoft Defender Antivirus. 

We recommend using Microsoft Endpoint Manager to edit or set PUA protection settings. 

> [!TIP]
> To learn more about PUA, see [Detect and block potentially unwanted applications](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/detect-block-potentially-unwanted-apps-microsoft-defender-antivirus).

#### Use Microsoft Endpoint Manager to edit PUA protection (for existing configuration profiles)

1. Go to the Microsoft Endpoint Manager admin center ([https://endpoint.microsoft.com](https://endpoint.microsoft.com)) and sign in.
2. Choose **Devices** > **Configuration profiles**, and then select an existing policy. (If you don’t have an existing policy, or you want to create a new policy, skip to [the next procedure](#use-microsoft-endpoint-manager-to-set-pua-protection-for-a-new-configuration-profile).)
3. Under **Manage**, choose **Properties**, and then, next to **Configuration settings**, choose **Edit**.
4. On the **Configuration settings** tab, scroll down and expand **Microsoft Defender Antivirus**.
5. Set **Detect potentially unwanted applications** to **Audit**. (You can turn it off, but by using audit mode, you will be able to see detections.)
6. Choose **Review + save**, and then choose **Save**.

#### Use Microsoft Endpoint Manager to set PUA protection (for a new configuration profile)

1. Go to the Microsoft Endpoint Manager admin center ([https://endpoint.microsoft.com](https://endpoint.microsoft.com)) and sign in.
2. Choose **Devices** > **Configuration profiles** > **+ Create profile**.
3. For the **Platform**, choose **Windows 10 and later**, and for **Profile**, select **Device restrictions**.
4. On the **Basics** tab, specify a name and description for your policy. Then choose **Next**.
5. On the **Configuration settings** tab, scroll down and expand **Microsoft Defender Antivirus**.
6. Set **Detect potentially unwanted applications** to **Audit**, and then choose **Next**. (You can turn off PUA protection, but by using audit mode, you will be able to see detections.)
7. On the **Assignments** tab, specify the users and groups to whom your policy should be applied, and then choose **Next**. (If you need help with assignments, see [Assign user and device profiles in Microsoft Intune](https://docs.microsoft.com/mem/intune/configuration/device-profile-assign).)
8. On the **Applicability Rules** tab, specify the OS editions or versions to include or exclude from the policy. For example, you can set the policy to be applied to all devices certain editions of Windows 10. Then choose **Next**.
9. On the **Review + create** tab, review your settings, and, and then choose **Create**.

## Review or define exclusions for Microsoft Defender for Endpoint

An exclusion is an entity that you specify as an exception to remediation actions. The excluded entity might still get detected, but no remediation actions are taken on that entity. That is, the detected file or process won’t be stopped, sent to quarantine, removed, or otherwise changed by Microsoft Defender for Endpoint. 

To define exclusions across Microsoft Defender for Endpoint, perform the following tasks:
- [Define exclusions for Microsoft Defender Antivirus](#exclusions-for-microsoft-defender-antivirus)
- [Create “allow” indicators for Microsoft Defender for Endpoint](#indicators-for-microsoft-defender-for-endpoint)

Microsoft Defender Antivirus exclusions don't apply to other Microsoft Defender for Endpoint capabilities, including [endpoint detection and response](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/overview-endpoint-detection-response), [attack surface reduction rules](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/attack-surface-reduction), and [controlled folder access](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/controlled-folders). Files that you exclude using the methods described in this article can still trigger alerts and other detections. To exclude files broadly, use [custom indicators](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/manage-indicators), such as "allow" indicators for Microsoft Defender for Endpoint.

The procedures in this section describe how to define exclusions and indicators.

### Exclusions for Microsoft Defender Antivirus

In general, you should not need to define exclusions for Microsoft Defender Antivirus. Make sure that you define exclusions sparingly, and that you only include the files, folders, processes, and process-opened files that are resulting in false positives. In addition, make sure to review your defined exclusions regularly. We recommend using Microsoft Endpoint Manager to define or edit your antivirus exclusions; however, you can use other methods, such as Group Policy as well.

> [!TIP]
> Need help with antivirus exclusions? See [Configure and validate exclusions for Microsoft Defender Antivirus scans](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/configure-exclusions-microsoft-defender-antivirus).

#### Use Microsoft Endpoint Manager to manage antivirus exclusions (for existing policies)

1. Go to the Microsoft Endpoint Manager admin center ([https://endpoint.microsoft.com](https://endpoint.microsoft.com)) and sign in.
2. Choose **Endpoint security** > **Antivirus**, and then select an existing policy. (If you don’t have an existing policy, or you want to create a new policy, skip to [the next procedure](#use-microsoft-endpoint-manager-to-create-a-new-antivirus-policy-with-exclusions)).
3. Choose **Properties**, and next to **Configuration settings**, choose **Edit**.
4. Expand **Microsoft Defender Antivirus Exclusions** and then specify your exclusions.
5. Choose **Review + save**, and then choose **Save**.

#### Use Microsoft Endpoint Manager to create a new antivirus policy with exclusions

1. Go to the Microsoft Endpoint Manager admin center ([https://endpoint.microsoft.com](https://endpoint.microsoft.com)) and sign in.
2. Choose **Endpoint security** > **Antivirus** > **+ Create Policy**. 
3. Select a platform (such as **Windows 10 and later**, **macOS**, or **Windows 10 and Windows Server**).
4. For **Profile**, select **Microsoft Defender Antivirus exclusions**, and then choose **Create**.
5. Specify a name and description for the profile, and then choose **Next**.
6. On the **Configuration settings** tab, specify your antivirus exclusions, and then choose **Next**.
7. On the **Scope tags** tab, if you are using scope tags in your organization, specify scope tags for the policy you are creating. (See [Scope tags](https://docs.microsoft.com/mem/intune/fundamentals/scope-tags).)
8. On the **Assignments** tab, specify the users and groups to whom your policy should be applied, and then choose **Next**. (If you need help with assignments, see [Assign user and device profiles in Microsoft Intune](https://docs.microsoft.com/mem/intune/configuration/device-profile-assign).)
9. On the **Review + create** tab, review the settings, and then choose **Create**.

### Indicators for Microsoft Defender for Endpoint

[Indicators](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/manage-indicators) enable your security operations team to define the detection, prevention, and exclusion of entities. For example, your security operations team can specify certain files to be omitted from scans and remediation actions in Microsoft Defender for Endpoint. Or, indicators can be used to generate alerts for certain IP addresses or URLs.

To specify entities as exclusions for Microsoft Defender for Endpoint, your security team can create "allow" indicators. Such "allow" indicators apply to the following capabilities in Microsoft Defender for Endpoint:

- [Next-generation protection](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/microsoft-defender-antivirus-in-windows-10)
- [Endpoint detection and response](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/overview-endpoint-detection-response)
- [Automated investigation & remediation](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/automated-investigations)

Your security team can create indicators for files, IP addresses, URLs, domains, and certificates. Use the following resources to create or manage indicators in the Microsoft Defender Security Center ([https://securitycenter.windows.com](https://securitycenter.windows.com)): 

- [Learn more about indicators](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/manage-indicators)
- [Create an indicator for a file, such as an executable](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/indicator-file)
- [Create an indicator for an IP address, URL, or domain](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/indicator-ip-domain)
- [Create an indicator for an application certificate](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/indicator-certificates)

> [!TIP]
> When you create indicators, you can define them one by one or import multiple items at once. Keep in mind there's a limit of 15,000 indicators you can have in a single tenant. And, you might need to gather certain details first, such as file hash information. Make sure to review the information, including prerequisites, 

## Classify a false positive or false negative

As alerts are triggered, if you see something that was detected as malicious or suspicious that should not be, you can suppress alerts for that entity and classify alerts as false positives. Managing your alerts and classifying false positives helps to train your threat protection solution. Taking these steps also helps reduce noise in your security operations dashboard so that your security team can focus on higher priority work items.

### Suppress an alert

You can suppress an alert in the Microsoft Defender Security Center.

1. Go to the Microsoft Defender Security Center ([https://securitycenter.windows.com](https://securitycenter.windows.com)) and sign in.
2. In the navigation pane, select **Alerts queue**. 
3. Select an alert that you want to suppress to open its **Details** pane.
4. In the **Details** pane, choose the ellipsis (`...`), and then choose **Create a suppression rule**.
5. Specify all the settings for your suppression rule, and then choose **Save**. 

> [!TIP]
> Need help with suppression rules? See [Suppress an alert and create a new suppression rule](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/manage-alerts#suppress-an-alert-and-create-a-new-suppression-rule).

### Classify an alert as a false positive

Your security team can classify an alert as a false positive in the Microsoft Defender Security Center, in the Alerts queue. 

1. Go to the Microsoft Defender Security Center ([https://securitycenter.windows.com](https://securitycenter.windows.com)) and sign in.
2. Select **Alerts queue**, and then select an alert that is a false positive.
3. For the selected alert, select **Actions** > **Manage alert**. A flyout pane opens.
4. In the **Manage alert** section, select **True alert** or **False alert**. Use **False alert** to classify a false positive.

> [!TIP]
> - For more information about suppressing alerts, see [Manage Microsoft Defender for Endpoint alerts](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/manage-alerts).
> - If your organization is using a security information and event management (SIEM) server, make sure to define a suppression rule there, too. 

## Submit a file for analysis

You can submit files, such as false positives or false negatives, to Microsoft for analysis. Microsoft security researchers analyze all submissions. After you sign in at the submission site, you can track your submissions.

1. Review the guidelines here: [Submit files for analysis](https://docs.microsoft.com/windows/security/threat-protection/intelligence/submission-guide).

2. Visit the Microsoft Security Intelligence submission site at [https://www.microsoft.com/wdsi/filesubmission](https://www.microsoft.com/wdsi/filesubmission), and submit your file(s).

## Confirm your software uses EV code signing

As explained in the blog, [Partnering with the industry to minimize false positives](https://www.microsoft.com/security/blog/2018/08/16/partnering-with-the-industry-to-minimize-false-positives), digital signatures help to ensure the software integrity. The reputation of digital certificates also plays a role in whether software is considered suspicious or not a threat. By using a reputable certificate, developers can reduce the chances of their software being detected as malware. Extended validation (EV) code signing is a more advanced version of digital certificates and requires a more rigorous vetting and authentication process.

*Some info is available here: https://docs.microsoft.com/windows-hardware/drivers/dashboard/get-a-code-signing-certificate*

## Still need help?