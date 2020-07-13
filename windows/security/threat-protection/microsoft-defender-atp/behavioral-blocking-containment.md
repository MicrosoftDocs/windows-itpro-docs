---
title: Behavioral blocking and containment
description: Learn about behavioral blocking and containment capabilities in Microsoft Defender ATP
keywords: Microsoft Defender ATP, EDR in block mode, passive mode blocking
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
author: denisebmsft
ms.author: deniseb
manager: dansimp
ms.reviewer: shwetaj
audience: ITPro 
ms.topic: article 
ms.prod: w10 
ms.localizationpriority: medium
ms.custom: 
- next-gen
- edr
ms.collection: 
---

# Behavioral blocking and containment

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

## Overview

Today’s threat landscape is overrun by [fileless malware](https://docs.microsoft.com/windows/security/threat-protection/intelligence/fileless-threats) and that lives off the land, highly polymorphic threats that mutate faster than traditional solutions can keep up with, and human-operated attacks that adapt to what adversaries find on compromised devices. Traditional security solutions are not sufficient to stop such attacks; you need artificial intelligence (AI) and device learning (ML) backed capabilities, such as behavioral blocking and containment, included in [Microsoft Defender ATP](https://docs.microsoft.com/windows/security). 

Behavioral blocking and containment capabilities can help identify and stop threats, based on their behaviors and process trees even when the threat has started execution. Next-generation protection, EDR, and Microsoft Defender ATP components and features work together in behavioral blocking and containment capabilities. 

:::image type="content" source="images/mdatp-next-gen-EDR-behavblockcontain.png" alt-text="Behavioral blocking and containment":::

Behavioral blocking and containment capabilities work with multiple components and features of Microsoft Defender ATP to stop attacks immediately and prevent attacks from progressing.

- [Next-generation protection](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/microsoft-defender-antivirus-in-windows-10) (which includes Microsoft Defender Antivirus) can detect threats by analyzing behaviors, and stop threats that have started running.

- [Endpoint detection and response](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/overview-endpoint-detection-response) (EDR) receives security signals across your network, devices, and kernel behavior. As threats are detected, alerts are created. Multiple alerts of the same type are aggregated into incidents, which makes it easier for your security operations team to investigate and respond.

- [Microsoft Defender ATP](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/overview-endpoint-detection-response) has a wide range of optics across identities, email, data, and apps, in addition to the network, endpoint, and kernel behavior signals received through EDR. A component of [Microsoft Threat Protection](https://docs.microsoft.com/microsoft-365/security/mtp/microsoft-threat-protection), Microsoft Defender ATP processes and correlates these signals, raises detection alerts, and connects related alerts in incidents. 

With these capabilities, more threats can be prevented or blocked, even if they start running. Whenever suspicious behavior is detected, the threat is contained, alerts are created, and threats are stopped in their tracks. 

The following image shows an example of an alert that was triggered by behavioral blocking and containment capabilities:

:::image type="content" source="images/blocked-behav-alert.png" alt-text="Example of an alert through behavioral blocking and containment":::

## Components of behavioral blocking and containment

- **On-client, policy-driven [attack surface reduction rules](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/attack-surface-reduction)** Predefined common attack behaviors are prevented from executing, according to your attack surface reduction rules. When such behaviors attempt to execute, they can be seen in the Microsoft Defender Security Center [https://securitycenter.windows.com](https://securitycenter.windows.com) as informational alerts. (Attack surface reduction rules are not enabled by default; you configure your policies in the Microsoft Defender Security Center.)

- **[Client behavioral blocking](client-behavioral-blocking.md)** Threats on endpoints are detected through machine learning, and then are blocked and remediated automatically. (Client behavioral blocking is enabled by default.) 

- **[Feedback-loop blocking](feedback-loop-blocking.md)** (also referred to as rapid protection) Threat detections are observed through behavioral intelligence. Threats are stopped and prevented from running on other endpoints. (Feedback-loop blocking is enabled by default.) 

- **[Endpoint detection and response (EDR) in block mode](edr-in-block-mode.md)** Malicious artifacts or behaviors that are observed through post-breach protection are blocked and contained. EDR in block mode works even if Microsoft Defender Antivirus is not the primary antivirus solution. (EDR in block mode, currently in preview, is not enabled by default; you turn it on in the Microsoft Defender Security Center.) 

Expect more to come in the area of behavioral blocking and containment, as Microsoft continues to improve threat protection features and capabilities. To see what's planned and rolling out now, visit the [Microsoft 365 roadmap](https://www.microsoft.com/microsoft-365/roadmap).

## Examples of behavioral blocking and containment in action

Behavioral blocking and containment capabilities have blocked attacker techniques such as the following:

- Credential dumping from LSASS
- Cross-process injection
- Process hollowing
- User Account Control bypass
- Tampering with antivirus (such as disabling it or adding the malware as exclusion)
- Contacting Command and Control (C&C) to download payloads
- Coin mining
- Boot record modification
- Pass-the-hash attacks
- Installation of root certificate
- Exploitation attempt for various vulnerabilities

Below are two real-life examples of behavioral blocking and containment in action.

### Example 1: Credential theft attack against 100 organizations

As described in [In hot pursuit of elusive threats: AI-driven behavior-based blocking stops attacks in their tracks](https://www.microsoft.com/security/blog/2019/10/08/in-hot-pursuit-of-elusive-threats-ai-driven-behavior-based-blocking-stops-attacks-in-their-tracks), a credential theft attack against 100 organizations around the world was stopped by behavioral blocking and containment capabilities. Spear-phishing email messages that contained a lure document were sent to the targeted organizations. If a recipient opened the attachment, a related remote document was able to execute code on the user’s device and load Lokibot malware, which stole credentials, exfiltrated stolen data, and waited for further instructions from a command-and-control server. 

Behavior-based device learning models in Microsoft Defender ATP caught and stopped the attacker’s techniques at two points in the attack chain:
- The first protection layer detected the exploit behavior. Device learning classifiers in the cloud correctly identified the threat as and immediately instructed the client device to block the attack.
- The second protection layer, which helped stop cases where the attack got past the first layer, detected process hollowing, stopped that process, and removed the corresponding files (such as Lokibot). 

While the attack was detected and stopped, alerts, such as an "initial access alert," were triggered and appeared in the Microsoft Defender Security Center ([https://securitycenter.windows.com](https://securitycenter.windows.com)):

:::image type="content" source="images/behavblockcontain-initialaccessalert.png" alt-text="Initial access alert in the Microsoft Defender Security Center":::

This example shows how behavior-based device learning models in the cloud add new layers of protection against attacks, even after they have started running.

### Example 2: NTML relay - Juicy Potato malware variant

As described in the recent blog post, [Behavioral blocking and containment: Transforming optics into protection](https://www.microsoft.com/security/blog/2020/03/09/behavioral-blocking-and-containment-transforming-optics-into-protection), in January 2020, Microsoft Defender ATP detected a privilege escalation activity on a device in an organization. An alert called “Possible privilege escalation using NTLM relay” was triggered.

:::image type="content" source="images/NTLMalertjuicypotato.png" alt-text="NTLM alert for Juicy Potato malware":::

The threat turned out to be malware; it was a new, not-seen-before variant of a notorious hacking tool called Juicy Potato, which is used by attackers to get privilege escalation on a device. 

Minutes after the alert was triggered, the file was analyzed, and confirmed to be malicious. Its process was stopped and blocked, as shown in the following image:

:::image type="content" source="images/Artifactblockedjuicypotato.png" alt-text="Artifact blocked":::

A few minutes after the artifact was blocked, multiple instances of the same file were blocked on the same device, preventing additional attackers or other malware from deploying on the device. 

This example shows that with behavioral blocking and containment capabilities, threats are detected, contained, and blocked automatically. 

## Next steps

- [Learn more about Microsoft Defender ATP](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/overview-endpoint-detection-response)

- [Configure your attack surface reduction rules](attack-surface-reduction.md)

- [Enable EDR in block mode](edr-in-block-mode.md)

- [See recent global threat activity](https://www.microsoft.com/wdsi/threats)

- [Get an overview of Microsoft Threat Protection](https://docs.microsoft.com/microsoft-365/security/mtp/microsoft-threat-protection)
