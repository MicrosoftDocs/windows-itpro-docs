---
title: Level 3 enterprise VIP security configuration
description: Describes the policies, controls, and organizational behaviors for Windows security configuration framework level 3 enterprise VIP security configuration.
keywords: virtualization, security, malware
ms.prod: w10
ms.mktglfcycl: deploy
ms.localizationpriority: medium
ms.author: appcompatguy
author: appcompatguy
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 04/05/2018
---

# Level 3 Enterprise High Security configuration

**Applies to**  

-   Windows 10

Level 3 is the security configuration recommended as a standard for organizations with large and sophisticated security organizations, or for specific users and groups who will be uniquely targeted by adversaries. Such organizations are typically targeted by well-funded and sophisticated adversaries, and as such merit the additional constraints and controls described here.
A level 3 configuration should include all the configurations from level 5 and level 4 and add the following security policies, controls, and organizational behaviors.

## Hardware

Devices targeting Level 3 should support all Level 5 and Level 4 features, and add the following hardware features:

- [System Guard](https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-defender-system-guard/system-guard-how-hardware-based-root-of-trust-helps-protect-windows)
- [Modern Standby](https://docs.microsoft.com/en-us/windows-hardware/design/device-experiences/modern-standby)

## Policies

The policies enforced in level 3 include all of the policies recommended for levels 5 and 4, and adds the below policies to
implement strict security configuration and controls. They can have a potentially significant impact to users or to applications, enforcing
a level of security commensurate with the risks facing targeted organizations. Microsoft recommends disciplined testing and deployment using
[the rings methodology](https://docs.microsoft.com/windows/deployment/update/waas-deployment-rings-windows-10-updates).

### Computer Policies

| Feature  | Policy Setting  | Policy Value  | Description  |
|----------|-----------------|---------------|--------------|
| Control Panel / Personalization | Prevent enabling lock screen slide show | Enabled | Disables the lock screen slide show settings in PC Settings and prevents a slide show from playing on the lock screen. By default, users can enable a slide show that will run after they lock the machine. if you enable this setting, users will no longer be able to modify slide show settings in PC Settings and no slide show will ever start. |
| System / Logon | Enumerate local users on domain-joined computers | Disabled | This policy setting allows local users to be enumerated on domain-joined computers. if you enable this policy setting, Logon UI will enumerate all local users on domain-joined computers. If you disable or do not configure this policy setting, the Logon UI will not enumerate local users on domain-joined computers. |
| System / Power Management / Sleep Settings  | Allow standby states (S1-S3) when sleeping (on battery) | Disabled | This policy setting manages whether Windows can use standby states when putting the computer in a sleep state. If you enable or do not configure this policy setting Windows uses standby states to put the computer in a sleep state. If you disable this policy setting standby states (S1-S3) are not allowed. |
| System / Power Management / Sleep Settings | Allow standby states (S1-S3) when sleeping (plugged in) | Disabled | This policy setting manages whether Windows can use standby states when putting the computer in a sleep state. If you enable or do not configure this policy setting Windows uses standby states to put the computer in a sleep state. If you disable this policy setting standby states (S1-S3) are not allowed. |
| Windows Components / Cloud Content | Turn off Microsoft consumer experiences | Enabled | This policy setting turns off experiences that help consumers make the most of their devices and Microsoft account. if you enable this policy setting, users will no longer see personalized recommendations from Microsoft and notifications about their Microsoft account. If you disable or do not configure this policy setting, users may see suggestions from Microsoft and notifications about their Microsoft account. Note: This setting only applies to Enterprise and Education SKUs. |
| Windows Components / Credential User Interface | Enumerate administrator accounts on elevation | Disabled | This policy setting controls whether administrator accounts are displayed when a user attempts to elevate a running application. By default, administrator accounts are not displayed when the user attempts to elevate a running application. if you enable this policy setting, all local administrator accounts on the PC will be displayed so the user can choose one and enter the correct password. If you disable this policy setting users will always be required to type a user name and password to elevate. |
| Windows Components / Internet Explorer / Internet Control Panel / Advanced Page | Do not allow ActiveX controls to run in Protected Mode when Enhanced Protected Mode is enabled | Enabled | This policy setting prevents ActiveX controls from running in Protected Mode when Enhanced Protected Mode is enabled. When a user has an ActiveX control installed that is not compatible with Enhanced Protected Mode and a website attempts to load the control, Internet Explorer notifies the user and gives the option to run the website in regular Protected Mode. This policy setting disables this notification and forces all websites to run in Enhanced Protected Mode. |
| Windows Components / Internet Explorer / Internet Control Panel / Advanced Page | Turn on 64-bit tab processes when running in Enhanced Protected Mode on 64-bit versions of Windows | Enabled | This policy setting determines whether Internet Explorer 11 uses 64-bit processes (for greater security) or 32-bit processes (for greater compatibility) when running in Enhanced Protected Mode on 64-bit versions of Windows. |
| Windows Components / Internet Explorer / Internet Control Panel / Advanced Page | Turn on Enhanced Protected Mode | Enabled | Enhanced Protected Mode provides additional protection against malicious websites by using 64-bit processes on 64-bit versions of Windows. For computers running at least Windows 8, Enhanced Protected Mode also limits the locations Internet Explorer can read from in the registry and the file system. |
| Windows Components / Internet Explorer / Internet Control Panel / Security Page | Intranet Sites: Include all network paths (UNCs) | Disabled | This policy setting controls whether URLs representing UNCs are mapped into the local Intranet security zone. |
| Windows Components / Microsoft Edge | Configure Password Manager | Disabled | This policy setting lets you decide whether employees can save their passwords locally using Password Manager. By default, Password Manager is turned on. if you enable this setting, employees can use Password Manager to save their passwords locally. If you disable this setting employees can't use Password Manager to save their passwords locally. If you don't configure this setting employees can choose whether to use Password Manager to save their passwords locally. |

## Controls

The controls enforced in level 3 implement complex security configuration and controls. 
They are likely to have a higher impact to users or to applications,
enforcing a level of security commensurate with the risks facing the most targeted organizations. 
Microsoft recommends using the Audit/Enforce methodology for controls with audit mode, and [the rings methodology](https://docs.microsoft.com/windows/deployment/update/waas-deployment-rings-windows-10-updates) for those that do
not.

| Feature Set  | Feature  | Description  |
|--------------|----------|--------------|
| Exploit protection  | Enable exploit protection | Exploit protection helps protect devices from malware that use exploits to spread and infect to other devices. It consists of several mitigations that can be applied at the individual app level.  |
| Windows Defender Application Control (WDAC) *or* AppLocker | Configure devices to use application whitelisting using one of the following approaches:<br>[AaronLocker](https://blogs.msdn.microsoft.com/aaron_margosis/2018/10/11/aaronlocker-update-v0-91-and-see-aaronlocker-in-action-on-channel-9/) (admin writeable areas) when software distribution is not always centralized<br>*or*<br>[Managed installer](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-application-control/use-windows-defender-application-control-with-managed-installer) when all software is pushed through software distribution<br>*or*<br>[Explicit control](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-application-control/create-initial-default-policy) when the software on a device is static and tightly controlled  | Application control is a crucial line of defense for protecting enterprises given today’s threat landscape, and it has an inherent advantage over traditional antivirus solutions. Specifically, application control moves away from the traditional application trust model where all applications are assumed trustworthy by default to one where applications must earn trust in order to run. Application Control can help mitigate these types of security threats by restricting the applications that users can run and the code that runs in the System Core (kernel). WDAC policies also block unsigned scripts and MSIs, and Windows PowerShell runs in [Constrained Language Mode](https://devblogs.microsoft.com/powershell/powershell-constrained-language-mode/). |

## Behaviors

The behaviors recommended in level 3 represent the most sophisticated security
configuration. Removing admin rights can be difficult, but it is essential to
achieve a level of security commensurate with the risks facing the most targeted
organizations.

| Feature Set  | Feature  | Description  |
|--------------|----------|--------------|
| Remove Admin Rights | Remove as many users as possible from the local Administrators group, targeting 0. Microsoft recommends removing admin rights role by role. Some roles are more challenging, including:<br>- Developers, who often install rapidly iterating software which is difficult to package using current software distribution systems<br>- Scientists/ Doctors, who often must install and operate specialized hardware devices<br>- Remote locations with slow web links, where administration is delegated<br>It is typically easier to address these roles later in the process.<br>Microsoft recommends identifying the dependencies on admin rights and systematically addressing them:<br>- Legitimate use of admin rights: crowdsourced admin, where a new process is needed to complete that workflow<br>- Illegitimate use of admin rights: app compat dependency, where app remediation is the best path. The [Desktop App Assure](https://techcommunity.microsoft.com/t5/Windows-IT-Pro-Blog/What-is-Desktop-App-Assure/ba-p/270232) program can assist with these app issues | Running as non-admin limits your exposure. When you are an admin, every program you run has unlimited access to your computer. If malicious code finds its way to one of those programs, it also gains unlimited access. When an exploit runs with admin privileges, its ability to compromise your system is much greater, its ability to do so without detection is much greater, and its ability to attack others on your network is greater than it would be with only User privileges. If you’re running as admin, an exploit can:<br>- install kernel-mode rootkits and/or keyloggers<br>- install and start services<br>- install ActiveX controls, including IE and shell add-ins<br>- access data belonging to other users<br>- cause code to run whenever anybody else logs on (including capturing passwords entered into the Ctrl-Alt-Del logon dialog)<br>- replace OS and other program files with trojan horses<br>- disable/uninstall anti-virus<br>- cover its tracks in the event log<br>- render your machine unbootable |





