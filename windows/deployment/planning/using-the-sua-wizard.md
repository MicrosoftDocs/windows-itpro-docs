---
title: Using the SUA Wizard (Windows 10)
description: The Standard User Analyzer (SUA) Wizard works much like the SUA tool to evaluate User Account Control (UAC) issues. However, the SUA Wizard does not offer detailed analysis, and it cannot disable virtualization or elevate your permissions.
ms.assetid: 29d07074-3de7-4ace-9a54-678af7255d6c
ms.reviewer: 
manager: laurawi
ms.author: greglin
ms.prod: w10
ms.mktglfcycl: plan
ms.pagetype: appcompat
ms.sitesec: library
audience: itproauthor: greg-lindsay
ms.date: 04/19/2017
ms.topic: article
---

# Using the SUA Wizard


**Applies to**

-   Windows 10
-   Windows 8.1
-   Windows 8
-   Windows 7
-   Windows Server 2012
-   Windows Server 2008 R2

The Standard User Analyzer (SUA) Wizard works much like the SUA tool to evaluate User Account Control (UAC) issues. However, the SUA Wizard does not offer detailed analysis, and it cannot disable virtualization or elevate your permissions.

For information about the SUA tool, see [Using the SUA Tool](using-the-sua-tool.md).

## Testing an Application by Using the SUA Wizard


You must install Application Verifier before you can use the SUA Wizard. If Application Verifier is not installed on the computer that is running the SUA Wizard, the SUA Wizard notifies you. You must also install the Microsoft® .NET Framework 3.5 or later before you can use the SUA Wizard.

The following flowchart shows the process of using the SUA Wizard.

![act sua wizard flowchart](images/dep-win8-l-act-suawizardflowchart.jpg)

**To test an application by using the SUA Wizard**

1.  On the computer where the SUA Wizard is installed, log on by using a non-administrator account.

2.  Run the Standard User Analyzer Wizard.

3.  Click **Browse for Application**, browse to the folder that contains the application that you want to test, and then double-click the executable file for the application.

4.  Click **Launch**.

    If you are prompted, elevate your permissions. The SUA Wizard may require elevation of permissions to correctly diagnose the application.

    If a **Permission denied** dialog box appears, click **OK**. The application starts, despite the warning.

5.  In the application, exercise the functionality that you want to test.

6.  After you finish testing, exit the application.

    The SUA Wizard displays a message that asks whether the application ran without any issues.

7.  Click **No**.

    The SUA Wizard shows a list of potential remedies that you might use to fix the application.

8.  Select the fixes that you want to apply, and then click **Launch**.

    The application appears again, with the fixes applied.

9.  Test the application again, and after you finish testing, exit the application.

    The SUA Wizard displays a message that asks whether the application ran without any issues.

10. If the application ran correctly, click **Yes**.

    The SUA Wizard closes the issue as resolved on the local computer.

    If the remedies do not fix the issue with the application, click **No** again, and the wizard may offer additional remedies. If the additional remedies do not fix the issue, the wizard informs you that there are no more remedies available. For information about how to run the SUA tool for additional investigation, see [Using the SUA Tool](using-the-sua-tool.md).

## Related topics
[SUA User's Guide](sua-users-guide.md)

 

 





