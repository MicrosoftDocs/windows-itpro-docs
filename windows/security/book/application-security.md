---
title: Application security
description: Windows 11 security book - Application security chapter.
ms.topic: overview
ms.date: 04/09/2024
---

# Application security

:::image type="content" source="images\application-security-on.png" alt-text="Diagram of containng a list of security features." lightbox="images\application-security.png" border="false":::

Cybercriminals can take advantage of poorly secured applications to access valuable resources. With Windows 11, IT admins can combat common application attacks from the moment a device is provisioned. For example, IT can remove local admin rights from user accounts so that PCs run with the least amount of privileges to prevent malicious applications from accessing sensitive resources.

In addition, organizations can control which applications run on their devices with App Control for Business (previously called Windows Defender Application Control - WDAC).

## Application and driver control

:::image type="icon" source="images/go-to-section.svg" border="false"::: **Go to section:**

- [Smart App Control](#smart-app-control)
- [App Control for Business](#app-control-for-business)
- [User Account Control](#user-account-control)
- [Microsoft vulnerable driver blocklist](#microsoft-vulnerable-driver-blocklist)

Windows 11 offers a rich application platform with layers of security like isolation and code integrity that help protect your valuable data. Developers can also take advantage of these
capabilities to build in security from the ground up to protect against breaches and malware.

### Smart App Control

Smart App Control prevents users from running malicious applications on Windows devices by blocking untrusted or unsigned applications. Smart App Control goes beyond previous built-in browser protections by adding another layer of security that is woven directly into the core of the OS at the process level. Using AI, our new Smart App Control only allows processes to run if they are predicted to be safe based on existing and new intelligence updated daily.

Smart App Control builds on top of the same cloud-based AI used in App Control for Business to predict the safety of an application so that users can be confident that their applications are safe and reliable on their new Windows devices. Additionally, Smart App Control blocks unknown script files and macros from the web are blocked, greatly improving security for everyday users.
Smart App Control will ship with new devices with Windows 11, version 22H2 installed.

Devices running previous versions of Windows 11 will have to be reset with a clean installation of Windows 11, version 22H2 to take advantage of this feature. Smart App Control will be disabled on devices enrolled in enterprise management. We suggest enterprises running line-of-business applications continue to leverage App Control for Business.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Smart App Control](/windows/apps/develop/smart-app-control/overview)

### App Control for Business

Your organization is only as secure as the applications that run on your devices. With application control, apps must earn trust to run, in contrast to an application trust model where all code is assumed trustworthy. By helping prevent unwanted or malicious code from running, application control is an important part of an effective security strategy. Many organizations cite application control as one of the most effective means of defending against executable file-based malware.

Windows 10 and above include App Control for Business (previously called Windows Defender Application Control) as well as AppLocker. App Control for Business is the next-generation app control solution for Windows and provides powerful control over what runs in your environment. Customers who were using AppLocker on previous versions of Windows can continue to use the feature as they consider whether to switch to App Control for Business for stronger protection.

Customers using Microsoft Intune<sup>[\[9\]](conclusion.md#footnote9)</sup>> to manage their devices are now able to configure App Control for Business in the admin console, including setting up Intune as a managed installer.

Customers can use some built-in options for App Control for Business or upload their own policy as an XML file for Intune to package and deploy.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Application Control for Windows](/windows/security/application-security/application-control/windows-defender-application-control/wdac)

### User Account Control

User Account Control (UAC) helps prevent malware from damaging a PC and enables organizations to deploy a better-managed desktop. With UAC, apps and tasks always run in the security context of a non-administrator account unless an administrator specifically authorizes administrator-level access to the system. UAC can block the automatic installation of unauthorized apps and prevent inadvertent changes to system settings.

Organizations can use a modern device management (MDM) solution like Microsoft Intune<sup>[\[9\]](conclusion.md#footnote9)</sup>> to remotely configure UAC settings. Organizations without MDM can change settings directly
on the device.

Enabling UAC helps prevent malware from altering PC settings and potentially gaining access to networks and sensitive data. UAC can also block the automatic installation of unauthorized
apps and prevent inadvertent changes to system settings.

Users with standard accounts, or those using administrative accounts with UAC enabled, run most programs with limited access rights. This includes the Windows shell and any apps started from the shell, such as Windows Explorer, a web browser, productivity suite, graphics programs, or games.

Some apps require additional permissions and will not work properly (or at all) when running with limited permissions. When an app needs to run with more than standard user rights, UAC allows users to run apps with a "full" administrator token (with administrative groups and privileges) instead of their default user access token. Users continue to operate in the standard user security context while enabling certain executables to run with elevated privileges if needed.

:::image type="content" source="images/uac-settings.png" alt-text="Screenshot of the UAC settings.":::

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [How User Account Control works](/windows/security/identity-protection/user-account-control/how-user-account-control-works)

### Microsoft vulnerable driver blocklist

The Windows kernel is the most privileged software and is therefore a compelling target for malware authors. Since Windows has strict requirements for code running in the kernel, cybercriminals commonly exploit vulnerabilities in kernel drivers to get access. Microsoft works with ecosystem partners to constantly identify and respond to potentially vulnerable kernel drivers. Prior to the Windows 11 2022 Update, Windows enforced a block policy when hypervisor-protected code integrity (HVCI) was enabled to prevent vulnerable versions of drivers from running. Beginning with the Windows 11 2022 Update, the block policy is now on by default for all new Windows PCs, and users can opt in to enforce the policy from the Windows Security app.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Microsoft recommended driver block rules](/windows/security/threat-protection/windows-defender-application-control/microsoft-recommended-driver-block-rules)

## Application Isolation

:::image type="icon" source="images/go-to-section.svg" border="false"::: **Go to section:**

- [Win32 app isolation](#win32-app-isolation)
- [Windows Sandbox](#windows-sandbox)
- [App containers](#app-containers)

### Win32 app isolation

Win32 app isolation is a new security feature in public preview designed to be the default isolation standard on Windows clients. It is built on [AppContainer](/windows/win32/secauthz/implementing-an-appcontainer), and offers several added security features to help the Windows platform defend against attacks that leverage vulnerabilities in applications or third-party libraries. To isolate their apps, developers can update their applications using the tools provided by Microsoft.

Win32 app isolation follows a two-step process. In the first step, the Win32 application is launched as a low-integrity process using AppContainer, which is recognized as a security boundary by Microsoft. Consequently, the process is limited to a specific set of Windows APIs by default and is unable to inject code into any process operating at a higher integrity level.

In the second step, least privilege is enforced by granting authorized access to Windows securable objects. This access is determined by capabilities that are added to the application manifest through MSIX packaging. Securable objects in this context refer to Windows resources whose access is safeguarded by capabilities. These capabilities enable the implantation of a[Discretionary Access Control List](/windows/win32/secauthz/access-control-lists) on Windows.

To help ensure that isolated applications run smoothly, developers must define the access requirements for the application via access capability declarations in the application package manifest. The Application Capability Profiler (ACP) simplifies the entire process by allowing the application to run in "learn mode" with low privileges. Instead of denying access if the capability is not present, ACP allows access and logs additional capabilities required for access if the application were to run isolated. For more information on ACP, please refer to the [GitHub documentation page](https://github.com/microsoft/win32-app-isolation/blob/main/docs/profiler/application-capability-profiler.md#stack-tracing---acp-stacktracewpaprofile).

To create a smooth user experience that aligns with non-isolated, native Win32 applications, two key factors should be taken into consideration:

- Approaches for accessing data and privacy information
- Integrating Win32 apps for compatibility with other Windows interfaces

The first factor relates to implementing methods to manage access to files and privacy information within and outside the isolation boundary ([AppContainer](/windows/win32/secauthz/implementing-an-appcontainer)). The second factor involves integrating Win32 apps with other Windows interfaces in a way that helps enable seamless functionality without causing perplexing user consent prompts.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Win32 app isolation](https://github.com/microsoft/win32-app-isolation)

### Windows Sandbox

Windows Sandbox provides a lightweight desktop environment to safely run untrusted Win32 applications in isolation using the same hardware-based Hyper-V virtualization technology without fear of lasting impact to the PC. Any untrusted Win32 app installed in Windows Sandbox stays only in the sandbox and cannot affect the host.

Once Windows Sandbox is closed, nothing persists on the device. All the software with all its files and state are permanently deleted after the untrusted Win32 application is closed.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Windows Sandbox](/windows/security/threat-protection/windows-sandbox/windows-sandbox-overview)
- [Windows Sandbox is a new lightweight desktop environment tailored for safely
running applications in isolation](https://techcommunity.microsoft.com/t5/windows-os-platform-blog/windows-sandbox/ba-p/301849)

### App containers

In addition to Windows Sandbox for Win32 apps, Universal Windows Platform (UWP) applications run in Windows containers known as *app containers*. App containers act as process and resource isolation boundaries, but unlike Docker containers, these are special containers designed to run Windows applications.

Processes that run in app containers operate at a low integrity level, meaning they have limited access to resources they do not own. Because the default integrity level of most resources is medium integrity level, the UWP app can access only a subset of the file system, registry, and other resources. The app container also enforces restrictions on network connectivity. For example, access to a local host is not allowed. As a result, malware or infected apps have limited footprint for escape.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Windows and app container](https://learn.microsoft.com/windows/apps/windows-app-sdk/migrate-to-windows-app-sdk/feature-mapping-table?source=recommendations)

> [!div class="nextstepaction"]
> [Chapter 4: Identity protection >](identity-protection.md)
