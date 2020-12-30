---
title: Tips and best practices for attack surface reduction rules
description: Prevent issues from arising with your attack surface reduction rules by following these best practices
keywords: Microsoft Defender ATP, attack surface reduction, best practices
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
author: denisebmsft
ms.author: deniseb
manager: dansimp
ms.reviewer: jcedola
audience: ITPro 
ms.topic: article 
ms.prod: w10 
ms.localizationpriority: medium
ms.custom: 
- asr
ms.collection: 
- m365-security-compliance 
- m365initiative-defender-endpoint 
---

# Tips and best practices for attack surface reduction rules

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2146631)

<!--ASR guidance for deploying rules (links to Antonio’s blog, recommendations for deploying rules to small set of devices first, code signing, link to ASR Power BI template, and link to M365 security center reports) and 8.	Policy conflict (details about what happens with conflicting policies, what happens when settings from different policies are merged)
-->

Whether you're about to enable or have already deployed attack surface reduction rules for your organization, see the information in this article. By using the tips and best practices in this article, you can employ attack surface reduction rules successfully and avoid potential issues.

## Use a phased approach

Before you roll out attack surface reduction rules in your organization, select a small set of managed devices to start. This approach enables you to see how attack surface reduction rules work in your environment and gives you flexibility in applying exclusions. You can do this with dynamic membership rules.

<!--Siddarth, we need to find the info about how to set up dynamic membership rules and add a procedure here.-->

## Use code signing for applications

As a best practice, use code signing for all the applications and scripts that your organization is using. This includes internally developed applications. Using code signing helps avoid false positives with attack surface reduction rules. It can also help avoid issues with attack surface reduction rules for developers and other users within your organization. 

## View reports in the Microsoft 365 security center

In the Microsoft 365 security center ([https://security.microsoft.com](https://security.microsoft.com)), go to **Reports** > **Devices** > **Attack surface reduction**. (MORE TO COME!)

## Get the Power BI report template

<!--The Power BI report templates are here: https://github.com/microsoft/MDATP-PowerBI-Templates-->

## Avoid policy conflicts

If a conflicting policy is applied via Mobile Device Management (MDM, using Intune) and Group Policy, the setting applied from MDM will take precedence. See [Attack surface reduction rules](https://docs.microsoft.com/mem/intune/protect/endpoint-protection-windows-10#attack-surface-reduction-rules).

Attack surface reduction rules for MEM managed devices now support new behavior for merger of settings from different policies, to create a superset of policy for each device. Only the settings that are not in conflict are merged, while those that are in conflict are not added to the superset of rules. Previously, if two policies included conflicts for a single setting, both policies were flagged as being in conflict, and no settings from either profile would be deployed. Attack surface reduction rule merge behavior is as follows:   
- Attack surface reduction rules from the following profiles are evaluated for each device the rules apply to:  
    - Devices > Configuration policy > Endpoint protection profile > Microsoft Defender Exploit Guard > [Attack Surface Reduction](https://docs.microsoft.com/mem/intune/protect/endpoint-protection-windows-10#attack-surface-reduction).
    - Endpoint security > Attack surface reduction policy > Attack surface reduction rules.
    - Endpoint security > Security baselines > Microsoft Defender ATP Baseline > Attack Surface Reduction Rules.
- Settings that do not have conflicts are added to a superset of policy for the device.
- When two or more policies have conflicting settings, the conflicting settings are not added to the combined policy, while settings that don’t conflict are added to the superset policy that applies to a device.
- Only the configurations for conflicting settings are held back.



## See the demystifying blogs

The following table lists several blog posts that you might find helpful. All of these blogs are hosted on the [Microsoft Tech Community site](https://techcommunity.microsoft.com), under [Microsoft Defender for Endpoint](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/bg-p/MicrosoftDefenderATPBlog).

|Blog  |Description  |
|---------|---------|
|[Demystifying attack surface reduction rules - Part 1: Why and What](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/demystifying-attack-surface-reduction-rules-part-1/ba-p/1306420)     | Get a quick overview of the Why and the What through eight questions and answers.          |
|[Demystifying attack surface reduction rules - Part 2: How](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/demystifying-attack-surface-reduction-rules-part-2/ba-p/1326565)     | See how to configure attack surface reduction rules, how exclusions work, and how to define exclusions.         |
|[Demystifying attack surface reduction rules - Part 3: Reports and Troubleshooting](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/demystifying-attack-surface-reduction-rules-part-3/ba-p/1360968)     | Learn how to view reports and information about attack surface reduction rules and their status, and how to troubleshoot issues with rule impact and operations.         |
|[Demystifying attack surface reduction rules - Part 4: Migrating](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/demystifying-attack-surface-reduction-rules-part-4/ba-p/1384425)     | If you're currently using a non-Microsoft host intrusion prevention system (HIPS) and are evaluating or migrating to attack surface reduction capabilities in Microsoft Defender for Endpoint, see this blog. You'll see how custom rules you were using with your HIPS solution can map to attack surface reduction rules in Microsoft Defender for Endpoint.         |

