---
title: Manage automation exclusion lists
description: Add automation exclusions so that you can control what items are automatically blocked or allowed during an automatic investigation.
keywords: manage, automation, exclusion, whitelist, blacklist, block, clean, malicious
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: high
ms.date: 04/16/2018
---

# Manage automation exclusions 

**Applies to:**

- Windows 10 Enterprise
- Windows 10 Education
- Windows 10 Pro
- Windows 10 Pro Education
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

[!include[Prerelease information](prerelease.md)]

>Want to experience Windows Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-automationexclusionlist-abovefoldlink)

Automation exclusions allow you to create exclusion lists that dictate whether the automated investigation will proceed with an action or not. You can define the conditions for when attributes are marked as malicious or clean. 

When you configure the exclusion list to identify specific attributes as malicious, the automated investigation automatically blocks it. Alternatively, if an exclusion list identifies specific attributes to be clean, then it's considered safe and is not analyzed. 


## Add an exclusion
1. In the navigation pane, select **Settings** > **Rules**  > **Automation allowed/blocked list**.  

2. Select the attribute tab you'd like to create an exclusion for.  

3. Create an exclusion rule by selecting the attribute and specifying the exclusion type. For each attribute you'll need to specify details and the following required values:

    - **Files** -  Hash value
    - **Certificate** - PEM certificate file
    - **IP address** - IP address
    - **DNS** - **DNS**
    - **Email address** - Email address

4. Click **Update rule**.

## Edit an exclusion 
1. In the navigation pane, select **Settings** > **Rules**  > **Automation allowed/blocked list**.  

2. Select the attribute tab you'd like to edit the exclusion for.  

3. Update the details of the rule and click **Update rule**.

## Delete an exclusion 
1. In the navigation pane, select **Settings** > **Rules**  > **Automation allowed/blocked list**.  

2. Select the attribute tab that you'd like to delete a rule for.

3. Select the list type by clicking the check-box beside the list type.

4. Click **Delete**.


## Related topics
- Automation file uploads
- Automation folder exclusions