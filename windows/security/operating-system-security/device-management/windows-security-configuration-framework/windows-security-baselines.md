---
title: Security baselines guide
description: Learn how to use security baselines in your organization.
ms.topic: conceptual
ms.date: 07/10/2024
---

# Security baselines

## Using security baselines in your organization

Microsoft is dedicated to providing its customers with secure operating systems, such as Windows and Windows Server, and secure apps, such as Microsoft 365 apps for enterprise and Microsoft Edge. In addition to the security assurance of its products, Microsoft also enables you to have fine control over your environments by providing various configuration capabilities.

Even though Windows and Windows Server are designed to be secure out-of-the-box, many organizations still want more granular control over their security configurations. To navigate the large number of controls, organizations need guidance on configuring various security features. Microsoft provides this guidance in the form of security baselines.

We recommend that you implement an industry-standard configuration that is broadly known and well-tested, such as Microsoft security baselines, as opposed to creating a baseline yourself. This industry-standard configuration helps increase flexibility and reduce costs.

For more information, see the following blog post: [Sticking with well-known and proven solutions](/archive/blogs/fdcc/sticking-with-well-known-and-proven-solutions).

## What are security baselines?

Every organization faces security threats. However, the types of security threats that are of most concern to one organization can be different from another organization. For example, an e-commerce company might focus on protecting its internet-facing web apps, while a hospital might focus on protecting confidential patient information. The one thing that all organizations have in common is a need to keep their apps and devices secure. These devices must be compliant with the security standards (or security baselines) defined by the organization.

A security baseline is a group of Microsoft-recommended configuration settings that explains their security implication. These settings are based on feedback from Microsoft security engineering teams, product groups, partners, and customers.

## Why are security baselines needed?

Security baselines are an essential benefit to customers because they bring together expert knowledge from Microsoft, partners, and customers.

For example, there are over 3,000 group policy settings for Windows 10, which doesn't include over 1,800 Internet Explorer 11 settings. Of these 4,800 settings, only some are security-related. Although Microsoft provides extensive guidance on different security features, exploring each one can take a long time. You would have to determine the security implication of each setting on your own. Then, you would still need to determine  the appropriate value for each setting.

In modern organizations, the security threat landscape is constantly evolving, and IT pros and policy-makers must keep up with security threats and make required changes to security settings to help mitigate these threats. To enable faster deployments and make managing Microsoft products easier, Microsoft provides customers with security baselines that are available in consumable formats, such as group policy object backups.

[!INCLUDE [security-baselines](../../../../../includes/licensing/security-baselines.md)]

## Baseline principles

Our recommendations follow a streamlined and efficient approach to baseline definitions. The foundation of that approach is essentially:

- The baselines are designed for well-managed, security-conscious organizations in which standard end users don't have administrative rights.
- A baseline enforces a setting only if it mitigates a contemporary security threat and doesn't cause operational issues that are worse than the risks they mitigate.
- A baseline enforces a default only if it's otherwise likely to be set to an insecure state by an authorized user:
  - If a non-administrator can set an insecure state, enforce the default.
  - If setting an insecure state requires administrative rights, enforce the default only if it's likely that a misinformed administrator will otherwise choose poorly.

## How can you use security baselines?

You can use security baselines to:

- Ensure that user and device configuration settings are compliant with the baseline.
- Set configuration settings. For example, you can use group policy, Microsoft Configuration Manager, or Microsoft Intune to configure a device with the setting values specified in the baseline.

## Where can I get the security baselines?

There are several ways to get and use security baselines:

1. You can download the security baselines from the [Microsoft Download Center](https://www.microsoft.com/download/details.aspx?id=55319). This download page is for the [Security Compliance Toolkit (SCT)](security-compliance-toolkit-10.md), which comprises tools that can assist admins in managing baselines in addition to the security baselines. The SCT also includes tools to help you manage the security baselines. You can also [get support for the security baselines](get-support-for-security-baselines.md)

2. [Mobile device management (MDM) security baselines](/windows/client-management/mdm/#mdm-security-baseline) function like the Microsoft group policy-based security baselines and can easily integrate these baselines into an existing MDM management tool.

3. MDM security baselines can easily be configured in Microsoft Intune on devices that run Windows 10 and Windows 11. For more information, see [List of the settings in the Windows 10/11 MDM security baseline in Intune](/mem/intune/protect/security-baseline-settings-mdm-all).

## Related articles

- [Microsoft Security Baselines Blog](https://techcommunity.microsoft.com/t5/microsoft-security-baselines/bg-p/Microsoft-Security-Baselines)
- [Microsoft Security Compliance Toolkit](https://www.microsoft.com/download/details.aspx?id=55319)
- [Security Baseline Policy Analyzer](https://learn-video.azurefd.net/vod/player?show=defrag-tools&ep=174-security-baseline-policy-analyzer-lgpo)
