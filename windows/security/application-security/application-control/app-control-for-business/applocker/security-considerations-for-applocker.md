---
title: Security considerations for AppLocker
description: This article for the IT professional describes the security considerations you need to address when implementing AppLocker.
ms.localizationpriority: medium
ms.topic: conceptual
ms.date: 09/11/2024
---

# Security considerations for AppLocker

This article for the IT professional describes the security considerations you need to address when implementing AppLocker.

AppLocker helps restrict access to software for specific users or groups of users. The following are security considerations for AppLocker:

AppLocker is deployed within an enterprise and administered centrally by those resources in IT with trusted credentials. This system makes its policy creation and deployment conform to similar policy deployment processes and security restrictions.

AppLocker policies are distributed through known processes and by known means within the domain through Group Policy. But AppLocker policies can also be set on individual computers if the person has administrator privileges, and those policies might be contrary to the organization's written security policy. The enforcement mode settings from AppLocker policies distributed through Group Policy Objects (GPO) take precedence over local policies. However, because AppLocker rules are additive, a local policy's rules are merged with rules from any GPOs applied to the computer.

Microsoft doesn't provide a way to develop any extensions to AppLocker. The interfaces aren't public. A user with administrator credentials can automate some AppLocker processes by using Windows PowerShell cmdlets. For info about the Windows PowerShell cmdlets for AppLocker, see the [AppLocker Cmdlets in Windows PowerShell](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/ee460962(v=technet.10)).

AppLocker runs in the context of Administrator or LocalSystem, which is the highest privilege set. This security context has the potential of misuse. Because AppLocker rules are additive, any local policy rules are applied to that computer along with any GPOs. If the local computer isn't joined to a domain or controlled by Group Policy, a person with administrative credentials can fully control the AppLocker policy.

AppLocker path rules don't replace access control lists (ACLs). You should continue to use ACLs to restrict access to files according to your security policy.

You can't use AppLocker to prevent code from running outside the Win32 subsystem. For example, it can't control code running in the Windows Subsystem for Linux. If it's a requirement to prevent applications from running in the Linux subsystem, you must disable the subsystem. Or, you can block the Windows Subsystem for Linux by blocking LxssManager.dll.

AppLocker can only control VBScript, JScript, .bat files, .cmd files, and Windows PowerShell scripts. It doesn't control all interpreted code that runs within a host process, for example, Perl scripts and macros. Interpreted code is a form of executable code that runs within a host process. For example, Windows batch files (\*.bat) run within the context of the Windows Command Host (cmd.exe). To control interpreted code by using AppLocker, the host process must call AppLocker before it runs the interpreted code, and then enforce the decision returned by AppLocker. Not all host processes call into AppLocker and, therefore, AppLocker can't control every kind of interpreted code, such as Microsoft Office macros.

> [!IMPORTANT]
> You should configure the appropriate security settings of these host processes if you must allow them to run. For example, configure the security settings in Microsoft Office to ensure that only signed and trusted macros are loaded.

AppLocker rules either allow or block application file from running. AppLocker doesn't control the behavior of applications after they're launched. Applications could contain flags passed to functions that signal AppLocker to circumvent the rules and allow another .exe or .dll to be loaded. In practice, an allowed application could use these flags to bypass AppLocker rules and launch child processes. You must thoroughly examine each application before allowing them to run by using AppLocker rules.

> [!NOTE]
> Two flags that illustrate this condition are `SANDBOX_INERT`, which can be passed to `CreateRestrictedToken`, and `LOAD_IGNORE_CODE_AUTHZ_LEVEL`, which can be passed to `LoadLibraryEx`. Both of these flags signal AppLocker to circumvent the rules and allow a child .exe or .dll to be loaded.

## Related articles

- [AppLocker technical reference](applocker-technical-reference.md)
