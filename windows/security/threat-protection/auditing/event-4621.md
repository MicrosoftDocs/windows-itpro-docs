---
title: 4621(S) Administrator recovered system from CrashOnAuditFail. 
description: Describes security event 4621(S) Administrator recovered system from CrashOnAuditFail.
ms.pagetype: security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: low
author: vinaypamnani-msft
ms.date: 09/07/2021
ms.reviewer: 
manager: aaroncz
ms.author: vinpa
ms.topic: reference
---

# 4621(S): Administrator recovered system from CrashOnAuditFail.



This event is logged after a system reboots following [CrashOnAuditFail](/previous-versions/windows/it-pro/windows-2000-server/cc963220(v=technet.10)?f=255&MSPPError=-2147217396). It generates when CrashOnAuditFail = 2.

There is no example of this event in this document.

***Subcategory:***&nbsp;[Audit Security State Change](audit-security-state-change.md)

***Event Schema:***

*Administrator recovered system from CrashOnAuditFail. Users who are not administrators will now be allowed to log on. Some auditable activity might not have been recorded.*

*Value of CrashOnAuditFail:%1*

*This event is logged after a system reboots following CrashOnAuditFail.*

***Required Server Roles:*** None.

***Minimum OS Version:*** Windows Server 2008, Windows Vista.

***Event Versions:*** 0.

## Security Monitoring Recommendations

-   We recommend triggering an alert for any occurrence of this event. The event shows that the system halted because it could not record an auditable event in the Security Log, as described in [CrashOnAuditFail](/previous-versions/windows/it-pro/windows-2000-server/cc963220(v=technet.10)?f=255&MSPPError=-2147217396).

-   If your computers don’t have the [CrashOnAuditFail](/previous-versions/windows/it-pro/windows-2000-server/cc963220(v=technet.10)?f=255&MSPPError=-2147217396) flag enabled, then this event will be a sign that some settings are not set to baseline settings or were changed.