---
title: Set up and test Cortana in Windows 10, version 2004 and later
ms.reviewer: 
manager: dansimp
description: Cortana includes powerful configuration options specifically to optimize for unique small to medium-sized business and enterprise environments.
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
author: greg-lindsay
ms.localizationpriority: medium
ms.author: greglin
---

# Set up and test Cortana in Windows 10, version 2004 and later

## Before you begin

- If your enterprise had previously disabled Cortana for your employees using the **Computer Configuration\Administrative Templates\Windows Components\Search\Allow Cortana** Group Policy or the **Experience\AllowCortana** MDM setting but want to enable it now that Cortana is part of Microsoft 365, you will need to re-enable it at least for Windows 10, version 2004 and later.
- **Cortana is regularly updated through the Microsoft Store.** Beginning with Windows 10, version 2004, Cortana is an appx preinstalled with Windows and is regularly updated through the Microsoft Store. To receive the latest updates to Cortana, you will need to [enable updates through the Microsoft Store](../stop-employees-from-using-microsoft-store.md).

## Set up and configure the Bing Answers feature
Bing Answers provides fast, authoritative results to search queries based on search terms. When the Bing Answers feature is enabled, users will be able to ask Cortana web-related questions in the Cortana in Windows app, such as &quot;What&#39;s the current weather?&quot; or &quot;Who is the president of the U.S.?,&quot; and get a response, based on public results from Bing.com.

The above experience is powered by Microsoft Bing, and Cortana sends the user queries to Bing. The use of Microsoft Bing is governed by the [Microsoft Services Agreement](https://www.microsoft.com/servicesagreement) and [Privacy Statement](https://privacy.microsoft.com/en-US/privacystatement).

## Configure the Bing Answers feature

Admins can configure the Cortana in Windows Bing Answers feature for their organizations. As the admin, use the following steps to change the setting for Bing Answers at the tenant/security group level. This setting is enabled by default, so that all users who have Cortana enabled will be able to receive Bing Answers. By default, the Bing Answer feature will be available to your users.

Users cannot enable or disable the Bing Answer feature individually. So, if you disable this feature at the tenant/security group level, no users in your organization or specific security group will be able to use Bing Answers in Cortana in Windows.

Sign in to the [Office Configuration Admin tool](https://config.office.com/).

Follow the steps [here](/deployoffice/overview-office-cloud-policy-service#steps-for-creating-a-policy-configuration) to create this policy configuration. Once completed, the policy will look as shown below:

:::image type="content" source="../screenshot3.png" alt-text="Screenshot: Bing policy example":::

## How does Microsoft handle customer data for Bing Answers?

When a user enters a search query (by speech or text), Cortana evaluates if the request is for any of our first-party compliant skills if enabled in a specific market, and does the following:

1. If it is for any of the first-party compliant skills, the query is sent to that skill, and results/action are returned.

2. If it is not for any of the first-party compliant skills, the query is sent to Bing for a search of public results from Bing.com. Because enterprise searches might be sensitive, similar to [Microsoft Search in Bing](/MicrosoftSearch/security-for-search#microsoft-search-in-bing-protects-workplace-searches), Bing Answers in Cortana has implemented a set of trust measures, described below, that govern how the separate search of public results from Bing.com is handled. The Bing Answers in Cortana trust measures are consistent with the enhanced privacy and security measures described in [Microsoft Search in Bing](/MicrosoftSearch/security-for-search). All Bing.com search logs that pertain to Cortana traffic are disassociated from users&#39; workplace identity. All Cortana queries issued via a work or school account are stored separately from public, non-Cortana traffic.

Bing Answers is enabled by default for all users. However, admins can configure and change this for specific users and user groups in their organization.

## How the Bing Answer policy configuration is applied
Before a query is sent to Bing for a search of public results from Bing.com, the Bing Answers service checks with the Office Cloud Policy Service to see if there are any policy configurations that pertain to the user for allowing Bing Answers to respond to questions users ask Cortana. If the user is a member of an AAD group that is assigned that policy configuration, then the appropriate policy settings are applied and a check is made again in 10 minutes.