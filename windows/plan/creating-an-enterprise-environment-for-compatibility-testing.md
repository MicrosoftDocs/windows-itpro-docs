---
title: Creating an Enterprise Environment for Compatibility Testing (Windows 10)
description: The goal of the test environment is to model the operating system that you want to deploy and assess compatibility before deploying the operating system to your production environment.
MSHAttr: PreferredLib /library
ms.assetid: cbf6d8b6-7ebc-4faa-bbbd-e02653ed4adb
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: library
author: TrudyHa
---

# Creating an Enterprise Environment for Compatibility Testing


**Applies to**

-   Windows 10
-   Windows 8.1
-   Windows 8
-   Windows 7
-   Windows Server 2012
-   Windows Server 2008 R2

**In this article**

-   [Modeling the Production Environment](#modeling-the-production-environment)
-   [Configuring the Test Environment for Automated Testing](#configuring-the-test-environment-for-automated-testing)
-   [Determining When Virtualization Is Appropriate](#determining-when-virtualization-is-appropriate)
-   [Testing Methodology](#testing-methodology)
-   [Related topics](#related-topics)

The goal of the test environment is to model the operating system that you want to deploy and assess compatibility before deploying the operating system to your production environment. Your test environment is composed of computers on which the new operating system is installed. Your test environment can be a long-term investment. Consider retaining the test environment after deployment to assist in future deployment projects.

## Modeling the Production Environment


We recommend the following practices for setting up your test environment:

-   Physically separate your test environment from your production environment. Physical separation helps ensure that activity in the test environment does not affect the production environment.

-   On the computers in your test environment, install the new operating system.

-   Perform all of your tests by using accounts that have similar permissions to the accounts in your production environment. This approach helps to ensure that you can determine potential security issues.

## Configuring the Test Environment for Automated Testing


Typically, tests are run more than once, which requires being able to revert your test environment to a previous state. We recommend the following practices to ensure consistency in testing and consistency in restoring the state of your test environment:

-   Use disk-imaging software to create physical disk images.

-   Use software virtualization features to reverse changes to virtualized hard disks.

## Determining When Virtualization Is Appropriate


The following table shows some of the advantages and disadvantages of virtualization.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Advantages</th>
<th align="left">Disadvantages</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><ul>
<li><p>Supports a large number of servers in a limited amount of physical space. You can run as many virtual servers as the physical computer’s resources allow.</p></li>
<li><p>Easily shares your test environment between teams. For example, your test team can create a virtualized test environment and then provide a copy to your development team for use in its development processes.</p></li>
<li><p>Supports multiple users performing simultaneous testing, mimicking the ability for each user to have a dedicated test environment.</p></li>
<li><p>Easily restores your environment to a previous state. For example, you can revert to a previous state by using the <strong>Undo Disks</strong> option.</p></li>
</ul></td>
<td align="left"><ul>
<li><p>May reduce performance. Virtualized servers may be slower than their physical counterparts. The performance of virtualized servers is reduced because physical resources such as disks are virtualized.</p></li>
<li><p>May not support all applications and device drivers. Some hardware-specific device drivers and applications are not supported in virtualized servers.</p></li>
</ul></td>
</tr>
</tbody>
</table>

 

## Testing Methodology


When testing an application in a new operating system, we recommend the following methods:

-   Retain the default security-feature selections.

-   Use test automation tools to run your test cases in a consistent, reproducible way.

-   Use your application in the same way that you use it in your production environment.

-   Use the Compatibility Monitor tool in the runtime-analysis package to gather compatibility feedback.

-   Send and receive compatibility data to obtain data and solutions through the Microsoft Compatibility Exchange.

-   When testing a website or a web application, include both intranet and extranet sites, prioritizing the list based on how critical the site or the application is to your organization.

## Related topics


[Deciding Which Applications to Test](deciding-which-applications-to-test.md)

[Creating a Runtime-Analysis Package](creating-a-runtime-analysis-package.md)

[Deploying a Runtime-Analysis Package](deploying-a-runtime-analysis-package.md)

[Compatibility Monitor User's Guide](compatibility-monitor-users-guide.md)

 

 





