---
title: Windows Defender ATP alert API fields
description: Understand how the alert API fields map to the values in the Windows Defender ATP portal.
keywords: alerts, alert fields, fields, api, fields, pull alerts, rest api, request, response
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: mjcaparas
localizationpriority: high
---

# Windows Defender ATP alert API fields

**Applies to:**

- Windows 10 Enterprise
- Windows 10 Education
- Windows 10 Pro
- Windows 10 Pro Education
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

Understand what data fields are exposed as part of the alerts API and how they map to the Windows Defender ATP portal.


##	Alert API fields and portal mapping
Field numbers match the numbers in the images below.

| Portal label | SIEM field name  | ArcSight field| Example value |Description                                                                                                                                   |
|--------------|---------------------------|---------------------|------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------|
| 1            | AlertTitle                | name                | A dll was unexpectedly loaded into a high integrity   process without a UAC prompt |                                                                                                                                               |
| 2            | Severity                  | deviceSeverity      | Medium                                                                             |                                                                                                                                               |
| 3            | Category                  | deviceEventCategory | Privilege Escalation                                                               |                                                                                                                                               |
| 4            | Source                    | sourceServiceName   | WindowsDefenderATP                                                                 | WindowsDefenderAV/WindowsDefenderATP                                                                                                          |
| 5            | MachineName               | sourceHostName      | liz-bean                                                                           |                                                                                                                                               |
| 6            | FileName                  | fileName            | Robocopy.exe                                                                       | Available for alerts associated with a file/process                                                                                           |
| 7            | FilePath                  | filePath            | C:\Windows\System32\Robocopy.exe                                                   | Available for alerts associated with a file/process                                                                                           |
| 8            | UserDomain                | sourceNtDomain      | contoso                                                                            | The domain of the user context executing the   activity, available for Windows Defender ATP behavioral beased alerts                          |
| 9            | UserName                  | sourceUserName      | liz-bean                                                                           | The user context executing the activity, available   for Windows Defender ATP behavioral based alerts                                         |
| 10           | Sha1                      | fileHash            | 5b4b3985339529be3151d331395f667e1d5b7f35                                           | Available for alerts associated with a file/process                                                                                           |
| 11           | Md5                       | deviceCustomString5 | 55394b85cb5edddff551f6f3faa9d8eb                                                   | Available for Windows Defender AV alerts,                                                                                                     |
| 12           | Sha256                    | deviceCustomString6 | 9987474deb9f457ece2a9533a08ec173a0986fa3aa6ac355eeba5b622e4a43f5                   | Available for Windows Defender AV alerts                                                                                                      |
| 13           | ThreatName                | eviceCustomString1  | Trojan:Win32/Skeeyah.A!bit                                                         | Available for Windows Defender AV alerts                                                                                                      |
| 14           | IpAddress                 | sourceAddress       | 218.90.204.141                                                                     | Availabe for alerts associated to network events.   E.g. 'Communication to a malicious network destination'                                   |
| 15           | Url                       | requestUrl          | down.esales360.cn                                                                  | Availabe for alerts associated to network events.   E.g. 'Communication to a malicious network destination'                                   |
| 16           | RemediationIsSuccess      | deviceCustomNumber2 | TRUE                                                                               | Available for Windows Defender AV   alerts, ArcSight value is 1 when TRUE, 0 when FALSE                                                       |
| 17           | WasExecutingWhileDetected | deviceCustomNumber1 | FALSE                                                                              | Available for Windows Defender AV alerts, ArcSight   value is 1 when TRUE, 0 when FALSE                                                       |
| 18           | AlertId                   | externalId          | 636210704265059241_673569822                                                       |                                                                                                                                               |
| 19           | LinkToWDATP               | flexString1         | https://securitycenter.windows.com/alert/636210704265059241_673569822              |                                                                                                                                               |
| 20           | AlertTime                 | deviceReceiptTime   | 2017-05-07T01:56:59.3191352Z                                                       | The time the activity relevant to the alert occurred                                                                                          |
| 21           | MachineDomain             | sourceDnsDomain     | contoso.com                                                                        | Domain name not relevant for AAD join machines                                                                                                |
| 22           | Actor                     | deviceCustomString4 |                                                                                    | Available for alerts related to a known actor group                                                                                           |
| *            | LogOnUsers                | sourceUserId        | contoso\liz-bean; contoso\jay-hardee                                               | The domain + user of the interactive logon user/s at   the time of the event. Note: for Redstone 1 machines, domain would not be   available. |
| 21+5         | ComputerDnsName           | No mapping          | liz-bean.contoso.com                                                               | The machine fully qualified domain   name                                                                                                     |

![Image of actor profile with numbers](images/atp-actor.png)

![Image of alert timeline with numbers](images/atp-alert-timeline-numbered.png)

![Image of new alerts with numbers](images/atp-alert-source.png)

![Image of machine timeline with numbers](images/atp-remediated-alert.png)

![Image of file details](images/atp-file-details.png)


## Related topics
- [Enable SIEM integration in Windows Defender ATP](enable-siem-integration-windows-defender-advanced-threat-protection.md)
- [Configure Splunk to pull Windows Defender ATP alerts](configure-splunk-windows-defender-advanced-threat-protection.md)
- [Configure ArcSight to pull Windows Defender ATP alerts](configure-arcsight-windows-defender-advanced-threat-protection.md)
- [Pull Windows Defender ATP alerts using REST API](pull-alerts-using-rest-api-windows-defender-advanced-threat-protection.md)
- [Troubleshoot SIEM tool integration issues](troubleshoot-siem-windows-defender-advanced-threat-protection.md)
