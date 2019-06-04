---
title: Audit Shut down system immediately if unable to log security audits (Windows 10)
description: Describes the best practices, location, values, management practices, and security considerations for the Audit Shut down system immediately if unable to log security audits security policy setting.
ms.assetid: 2cd23cd9-0e44-4d0b-a1f1-39fc29303826
ms.reviewer: 
ms.author: dansimp
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 04/19/2017
---

# Audit: Shut down system immediately if unable to log security audits

**Applies to**
-   Windows 10

Describes the best practices, location, values, management practices, and security considerations for the **Audit: Shut down system immediately if unable to log security audits** security policy setting.

## Reference

The **Audit: Shut down system immediately if unable to log security audits** policy setting determines whether the system shuts down if it is unable to log security events. This policy setting is a requirement for Trusted Computer System Evaluation Criteria (TCSEC)-C2 and Common Criteria certification to prevent auditable events from occurring if the audit system is unable to log those events. Microsoft has chosen to meet this requirement by halting the system and displaying a Stop message in the case of a failure of the auditing system. Enabling this policy setting stops the system if a security audit cannot be logged for any reason. Typically, an event fails to be logged when the security audit log is full and the value of **Retention method for security log** is **Do not overwrite events (clear log manually)** or **Overwrite events by days**.

With **Audit: Shut down system immediately if unable to log security audits** set to **Enabled**, if the security log is full and an existing entry cannot be overwritten, the following Stop message appears:
<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td align="left"><p>STOP: C0000244 {Audit Failed}</p>
<p>An attempt to generate a security audit failed.</p></td>
</tr>
</tbody>
</table>
 
To recover, you must log on, archive the log (optional), clear the log, and reset this option as desired.

If the computer is unable to record events to the security log, critical evidence or important troubleshooting information might not be available for review after a security incident.

### Possible values

-   Enabled
-   Disabled
-   Not defined

### Best practices

-   Depending on your security audit requirements, you can enable the **Audit: Shut down system immediately if unable to log security audits** setting to ensure that security auditing information is captured for review. However, enabling this setting will increase the number of events logged.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Security Options

### Default values

The following table lists the actual and effective default values for this policy. Default values are also listed on the policy’s property page.

| Server type or GPO | Default value |
| - | - |
| Default Domain Policy | Not defined 
| Default Domain Controller Policy | Not defined 
| Stand-Alone Server Default Settings | Disabled 
| DC Effective Default Settings | Disabled 
| Member Server Effective Default Settings | Disabled 
| Client Computer Effective Default Settings | Disabled 
 
## Policy management

This section describes features and tools that are available to help you manage this policy.
The administrative burden of enabling this policy setting can be very high, especially if you also set the **Retention method for security log** to **Do not overwrite events (clear log manually)**. This setting turns a repudiation threat (a backup operator could deny that they backed up or restored data) into a denial-of-service threat, because a server can be forced to shut down if it is overwhelmed with logon events and other security events that are written to the security log. Additionally, because the shutdown is not graceful, it is possible that irreparable damage to the operating system, applications, or data could result. Although the NTFS file system will guarantee that the file system's integrity will be maintained during a sudden system shutdown, it cannot guarantee that every data file for every application will still be in a usable form when the system is restarted.

### Restart requirement

None. Changes to this policy become effective without a computer restart when they are saved locally or distributed through Group Policy.

### Group Policy

Modifying this setting may affect compatibility with clients, services, and applications.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

If the computer is unable to record events to the security event log, critical evidence or important troubleshooting information may not be available for review after a security incident. Also, an attacker could potentially generate a large volume of security event log events to purposely force a shutdown.

### Countermeasure

Enable the **Audit: Shut down system immediately if unable to log security audits** setting to ensure that security auditing information is captured for review.

### Potential impact

If you enable this policy setting, the administrative burden can be significant, especially if you also configure the **Retention method for the Security log** to **Do not overwrite events** (clear log manually). This configuration causes a repudiation threat (a backup operator could deny that they backed up or restored data) to become a denial of service (DoS) vulnerability because a server could be forced to shut down if it is overwhelmed with logon events and other security events that are written to the security event log. Also, because the shutdown is abrupt, it is possible that irreparable damage to the operating system, applications, or data could result. Although the NTFS file system maintains its integrity when this type of computer shutdown occurs, there is no guarantee that every data file for every application will still be in a usable form when the device restarts.

## Related topics

- [Security Options](security-options.md)
 
 
