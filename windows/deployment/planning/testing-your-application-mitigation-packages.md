---
title: Testing Your Application Mitigation Packages (Windows 10)
description: This topic provides details about testing your application-mitigation packages, including recommendations about how to report your information and how to resolve any outstanding issues.
ms.assetid: ae946f27-d377-4db9-b179-e8875d454ccf
ms.reviewer: 
manager: laurawi
ms.author: greglin
ms.prod: w10
ms.mktglfcycl: plan
ms.pagetype: appcompat
ms.sitesec: library
audience: itpro
author: greg-lindsay
ms.date: 04/19/2017
ms.topic: article
---

# Testing Your Application Mitigation Packages


**Applies to**

-   Windows 10
-   Windows 8.1
-   Windows 8
-   Windows 7
-   Windows Server 2012
-   Windows Server 2008 R2

This topic provides details about testing your application-mitigation packages, including recommendations about how to report your information and how to resolve any outstanding issues.

## Testing Your Application Mitigation Packages


Testing your application mitigation package strategies is an iterative process, whereby the mitigation strategies that prove unsuccessful will need to be revised and retested. The testing process includes a series of tests in the test environment and one or more pilot deployments in the production environment.

**To test your mitigation strategies**

1.  Perform the following steps for each of the applications for which you have developed mitigations.

    1.  Test the mitigation strategy in your test environment.

    2.  If the mitigation strategy is unsuccessful, revise the mitigation strategy and perform step 1 again.

    At the end of this step, you will have successfully tested all of your mitigation strategies in your test environment and can move to your pilot deployment environment.

2.  Perform the following steps in the pilot deployments for each of the applications for which you have developed mitigations.

    1.  Test the mitigation strategy in your pilot deployment.

    2.  If the mitigation strategy is unsuccessful, revise the mitigation strategy and perform Step 2 again.

    At the end of this step, you will have successfully tested all of your mitigation strategies in your pilot environment.

## Reporting the Compatibility Mitigation Status to Stakeholders


After testing your application mitigation package, you must communicate your status to the appropriate stakeholders before deployment begins. We recommend that you perform this communication by using the following status ratings.

-   **Resolved application compatibility issues**. This status indicates that the application compatibility issues are resolved and that these applications represent no risk to your environment.

-   **Unresolved application compatibility issues**. This status indicates that there are unresolved issues for the specifically defined applications. Because these applications are a risk to your environment, more discussion is required before you can resolve the compatibility issues.

-   **Changes to user experience**. This status indicates that the fix will change the user experience for the defined applications, possibly requiring your staff to receive further training. More investigation is required before you can resolve the compatibility issues.

-   **Changes in help desk procedures and processes**. This status indicates that the fix will require changes to your help desk's procedures and processes, possibly requiring your support staff to receive further training. More investigation is required before you can resolve the compatibility issues.

## Resolving Outstanding Compatibility Issues


At this point, you probably cannot resolve any unresolved application compatibility issues by automated mitigation methods or by modifying the application. Resolve any outstanding application compatibility issues by using one of the following methods.

-   Apply specific compatibility modes, or run the program as an Administrator, by using the Compatibility Administrator tool.

    > [!NOTE]
    > For more information about using Compatibility Administrator to apply compatibility fixes and compatibility modes, see [Using the Compatibility Administrator Tool](using-the-compatibility-administrator-tool.md).

     

-   Run the application in a virtual environment.

    Run the application in a version of Windows supported by the application in a virtualized environment. This method ensures application compatibility, because the application is running on a supported operating system.

-   Resolve application compatibility by using non-Microsoft tools.

    If the application was developed in an environment other than Microsoft Visual Studio®, you must use non-Microsoft debugging and analysis tools to help resolve the remaining application compatibility issues.

-   Outsource the application compatibility mitigation.

    If your developers have insufficient resources to resolve the application compatibility issues, outsource the mitigation effort to another organization within your company.

## Related topics
[Managing Application-Compatibility Fixes and Custom Fix Databases](managing-application-compatibility-fixes-and-custom-fix-databases.md)
