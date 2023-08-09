---
title: AppLocker architecture and components
description: This topic for IT professional describes AppLocker’s basic architecture and its major components.
ms.localizationpriority: medium
ms.topic: conceptual
ms.date: 09/21/2017
---

# AppLocker architecture and components

> [!NOTE]
> Some capabilities of Windows Defender Application Control are only available on specific Windows versions. Learn more about the [Windows Defender Application Control feature availability](/windows/security/threat-protection/windows-defender-application-control/feature-availability).

This topic for IT professional describes AppLocker's basic architecture and its major components.

AppLocker relies on the Application Identity service to provide attributes for a file and to evaluate the AppLocker policy for the file. AppLocker policies are conditional access control entries (ACEs), and policies are evaluated by using the attribute-based access control **SeAccessCheckWithSecurityAttributes** or **AuthzAccessCheck** functions.

AppLocker provides three ways to intercept and validate if a file is allowed to execute according to an AppLocker policy.

**A new process is created**

When a new process is created, such as an executable file or a Universal Windows app is run, AppLocker invokes the Application Identity component to calculate the attributes of the main executable file used to create a new process. It then updates the new process's token with these attributes and checks the AppLocker policy to verify that the executable file is allowed to run.

**A DLL is loaded**

When a new DLL loads, a notification is sent to AppLocker to verify that the DLL is allowed to load. AppLocker calls the Application Identity component to calculate the file attributes. It duplicates the existing process token and replaces those Application Identity attributes in the duplicated token with attributes of the loaded DLL. AppLocker then evaluates the policy for this DLL, and the duplicated token is discarded. Depending on the result of this check, the system either continues to load the DLL or stops the process.

**A script is run**

Before a script file is run, the script host (for example, for .ps1 files, the script host is PowerShell) invokes AppLocker to verify the script. AppLocker invokes the Application Identity component in user-mode with the file name or file handle to calculate the file properties. The script file then is evaluated against the AppLocker policy to verify that it's allowed to run. In each case, the actions taken by AppLocker are written to the event log.

## Related topics

- [AppLocker technical reference](applocker-technical-reference.md)
