---
title: View the Security Analytics dashboard
description: Use the Security Analytics dashboard to assess and improve the security state of your organization by analyzing various security control tiles. Use the recommended improvement actions based on the list of machines that need remediation.
keywords: security analytics, dashboard, antivirus recommendations, security control state, security score, score improvement
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: mjcaparas
localizationpriority: high
---

# View the Security analytics dashboard

**Applies to:**

- Windows 10 Enterprise
- Windows 10 Education
- Windows 10 Pro
- Windows 10 Pro Education
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

The Security Analytics dashboard expands your visibility into the overall security posture of your organization. From this dashboard, you'll be able to quickly assess the security posture of your organization, see machines that require attention, as well as recommendations for actions to further reduce the attack surface in your organization - all in one place. From there you can take action based on the recommended configuration baselines.

The **Security analytics dashboard** displays a snapshot of:
- Organizational security score
- Security coverage
- Improvement opportunities

![Security analytics dashboard](images/atp-security-analytics-dashboard.png)

## Organizational security score
The organization security score is reflective of the average score of all the Windows Defender security control properties that are configured according to the recommended baseline. You can improve this score by taking the steps in configuring each of the security controls in the optimal settings.

![Organizational security score](images/atp-org-sec-score.png)


The numerator in the fraction is representative of the sum of points from the **Improvement opportunities** tile, while the denominator is reflective of the total score from each pillar on the **Security coverage** tile. 

Each security control from the **Security coverage** tile contributes 100 points to the organizational security score and the total potential is based on the number of security controls multiplied by 100 accordingly.


In the example image, the total points from the Improvement opportunities tile add up to 280 points for the three pillars from the **Security coverage** tile.

## Security coverage
The security coverage tile shows a bar graph where each bar represents a Windows Defender security control. Each bar contributes 100 points to the overall organizational security score. It also represents the various security products with an indicator of the total number of machines that are well configured and those that require attention. Hovering on top of the individual bars will show exact numbers for each category.


![Security coverage](images/atp-security-coverage.png)

## Improvement opportunities 
Improve your organizational security score by taking the recommended improvement actions listed on this tile. 

Click on each segment to see the recommended optimizations.

![Improvement oppportunities](images/atp-security-improvements.png)

The numbers beside the green triangle icon on each recommended action represents the number of points you can gain by taking the action. When added together, the total number makes up the nominator in the fraction for each segment in the Improvement opportunities tile.

### Endpoint detection and response (EDR) optimization
This tile provides a specific list of actions you can take on Windows Defender ATP to improve how endpoints provide sensor data to the Windows Defender ATP service.

You can take the following actions to increase the overall security score of your organization:
- Turn on EDR sensor
- Fix sensor data collection
- Fix impaired communication

For more  information, see [Fix unhealthy sensors](fix-unhealhty-sensors-windows-defender-advanced-threat-protection.md). 

### Windows Defender Antivirus optimization
This tile provides a list of specific list of actions you can impliment on endpoints with Windows Defender Antivirus to improve the security in your organization. Each action shows the exact number of endpoints where you can apply the action on.

You can take the following actions to increase the overall security score of your organization:
- Fix antivirus reporting
- Turn on antivirus
- Update antivirus definitions
- Turn on cloud-based protection
- Turn on real-time protection
- Turn on PUA protection
- Check partial reporting

For more information, see [Configure Windows Defender Antivirus](../windows-defender-antivirus/configure-windows-defender-antivirus-features.md).


### OS security updates optimization
This tile shows you the exact number of machines that require the latest security updates and ones that can use the latest Windows Insider preview builds.
 
You can take the following actions to increase the overall security score of your organization:
- Install the latest security updates
- Use the latest Windows Insider preview builds


### Exploit guard optimization
This tile provides a specific list of actions you can take on endpoints to gain more control on restricting how code runs on endpoints to increase security in your organization.

You can take the following actions to increase the overall security score of your organization:
- Turn on all system-level Exploit Protection settings
- Set all ASR rules to enabled or audit mode
- Turn on Controlled Folder Access
- Turn on Windows Defender Antivirus
- Consider updgrading to HVCI-compatible hardware
- Fix HVCI driver compatibility issues

For more information, see PUT IAAN'S TOPIC HERE

### Application guard optimization
This tile provides a specific list of actions you can take to block attacks targeting browsers on endpoints. 

You can take the following actions to increase the overall security score of your organization:
- Consider upgrading to compatible hardware
- Turn on Application Guard on compatible machines
- Turn on managed mode


For more information, see [Windows Defender Application Guard overview](../windows-defender-application-guard/wd-app-guard-overview.md).


### SmartScreen optimization
This tile provides a specific list of actions you can take on endpoints to protect users from malicious websites and web applications.

You can take the following actions to increase the overall security score of your organization:
- Set app and file checking to block or warn
- Set website and download checking to block or warn
- Set Windows Store app content checking to block or warn

For more information see [Windows Defender SmartScreen](../windows-defender-smartscreen/windows-defender-smartscreen-overview.md).
