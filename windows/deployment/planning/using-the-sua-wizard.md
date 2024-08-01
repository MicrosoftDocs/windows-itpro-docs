---
title: Using the SUA wizard (Windows 10)
description: The Standard User Analyzer (SUA) wizard, although it doesn't offer deep analysis, works much like the SUA tool to test for User Account Control (UAC) issues.
manager: aaroncz
ms.author: frankroj
ms.service: windows-client
author: frankroj
ms.date: 10/28/2022
ms.topic: conceptual
ms.subservice: itpro-deploy
---

# Using the SUA wizard

**Applies to**

-   Windows 10
-   Windows 8.1
-   Windows 8
-   Windows 7
-   Windows Server 2012
-   Windows Server 2008 R2

The Standard User Analyzer (SUA) wizard works much like the SUA tool to evaluate User Account Control (UAC) issues. However, the SUA wizard doesn't offer detailed analysis, and it can't disable virtualization or elevate your permissions.

For information about the SUA tool, see [Using the SUA Tool](using-the-sua-tool.md).

## Testing an Application by Using the SUA wizard

Install Application Verifier before you can use the SUA wizard. If Application Verifier isn't installed on the computer that is running the SUA wizard, the SUA wizard notifies you. In addition, install the Microsoft® .NET Framework 3.5 or later before you can use the SUA wizard.

The following flowchart shows the process of using the SUA wizard.

![act sua wizard flowchart.](images/dep-win8-l-act-suawizardflowchart.jpg)

**To test an application by using the SUA wizard**

1.  On the computer where the SUA wizard is installed, sign in by using a non-administrator account.

2.  Run the Standard User Analyzer wizard.

3.  Click **Browse for Application**, browse to the folder that contains the application that you want to test, and then double-click the executable file for the application.

4.  Click **Launch**.

    If you're prompted, elevate your permissions. The SUA wizard may require elevation of permissions to correctly diagnose the application.

    If a **Permission denied** dialog box appears, click **OK**. The application starts, despite the warning.

5.  In the application, exercise the functionality that you want to test.

6.  After you finish testing, exit the application.

    The SUA wizard displays a message that asks whether the application ran without any issues.

7.  Click **No**.

    The SUA wizard shows a list of potential remedies that you might use to fix the application.

8.  Select the fixes that you want to apply, and then click **Launch**.

    The application appears again, with the fixes applied.

9.  Test the application again, and after you finish testing, exit the application.

    The SUA wizard displays a message that asks whether the application ran without any issues.

10. If the application ran correctly, click **Yes**.

    The SUA wizard closes the issue as resolved on the local computer.

    If the remedies don't fix the issue with the application, click **No** again, and the wizard may offer another remedies. If the other remedies don't fix the issue, the wizard informs you that there are no more remedies available. For information about how to run the SUA tool for more investigation, see [Using the SUA Tool](using-the-sua-tool.md).

## Related articles
[SUA User's Guide](sua-users-guide.md)