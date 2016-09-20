---
title: Upgrade Analytics - Resolve application and driver issues (Windows 10)
description: Describes how to resolve application and driver issues that can occur during an upgrade with Upgrade Analytics.
ms.prod: w10
author: MaggiePucciEvans
---

# Upgrade Analytics - Resolve application and driver issues

This section of the Upgrade Analytics workflow reports application and driver inventory and shows you which applications have known issues, which applications have no known issues, and which drivers have issues. We identify applications and drivers that need attention and suggest fixes when we know about them.

You can change an application’s upgrade decision and a driver’s upgrade decision from the blades in this section. To change an application’s or a driver’s importance level, select **User changes**. Select the item you want to change and then select the appropriate option from the **Select upgrade decision** list.

Upgrade decisions include:

| Upgrade decision   | When to use it    | Guidance    |
|--------------------|-------------------|-------------|
| Not reviewed       | When you start to investigate an application or a driver to determine upgrade readiness, change their upgrade decision to **Review in progress.** <br><br> <br>                                                                                                                                                                                      | Some applications are automatically assigned upgrade decisions based on information known to Microsoft. <br><br>All drivers are marked not reviewed by default.<br><br>                                                                                                                                                                                           |
| Review in progress | When you start to investigate an application or a driver to determine upgrade readiness, change their upgrade decision to **Review in progress**.<br><br>Until you’ve determined that applications and drivers will migrate successfully or you’ve resolved blocking issues, leave the upgrade decision status as **Review in progress**. <br><br> | Once you’ve fixed any issues and validated that the application or driver will migrate successfully, change the upgrade decision to **Ready to upgrade**. <br>                                                                                                                                                                                                          |
| Ready to upgrade   | Mark applications and drivers **Ready to upgrade** once you’ve resolved all blocking issues and you’re confident that they will upgrade successfully, or if you’ve decided to upgrade them as-is.                                                                                                                                                          | Applications with no known issues or with low installation rates are marked **Ready to upgrade** by default.<br><br>Be sure to review low install count applications for any business critical or important applications that are not yet upgrade-ready, despite their low installation rates. <br><br>All drivers are marked **Not reviewed** by default. <br> |
| Won’t upgrade      | By default, no applications or drivers are marked **Won’t upgrade** because only you can make that determination. <br><br>Use **Won’t upgrade** for computers you don’t want to upgrade. <br>                                                                                                                                                        | If, during your investigation into an application or driver, you determine that they should not be upgraded, mark them **Won’t upgrade**. <br><br>                                                                                                                                                                                                                    |

The blades in the **Resolve issues** section are:

- Review applications with known issues
- Review applications with no known issues
- Review drivers with known issues

As you review applications with known issues, you can also see ISV support of applications for [Ready for Windows](https://www.readyforwindows.com/).

## Review applications with known issues

Applications with issues known to Microsoft are listed, grouped by upgrade assessment into **Attention needed** or **Fix available**.

<!-- PRESERVING ORIGINAL IMAGE CODING JUST IN CASE
<img src="media/image6.png" width="192" height="321" />
-->

![Review applications with known issues](images/upgrade-analytics-apps-known-issues.png)

To change an application's upgrade decision:

1. Select **Decide upgrade readiness** to view applications with issues. 

2. In the table view, sort on **UpgradeAssessment** to group applications into **Attention needed** and **Fix available**. 

3. Select **User changes** to change the upgrade decision for each application.

4. Select the applications you want to change to a specific upgrade decision and then then select the appropriate option from the **Select upgrade decision** list.

5. Click **Save** when finished.  

IMORTANT: Ensure that you have the most recent versions of the compatibility update and related KBs installed to get the most up-to-date compatibility information.

For applications assessed as **Attention needed**, review the table below for details about known issues and for guidance about how to resolve them, when possible.

| Upgrade Assessment | Action required prior to upgrade? | Issue     | What it means   | Guidance   |
|--------------------|-----------------------------------|-----------|-----------------|------------|
| Attention needed   | No                                | Application is removed during upgrade              | Compatibility issues were detected and the application will not migrate to the new operating system. <br>                                                                                                                                             | No action is required for the upgrade to proceed.                                                                                                                                                                                                                                                                                                                                         |
| Attention needed   | Yes                               | Blocking upgrade                                   | Blocking issues were detected and Upgrade Analytics is not able to remove the application during upgrade. <br><br>The application may work on the new operating system.<br>                                                                       | Remove the application before upgrading, and reinstall and test on new operating system.                                                                                                                                                                                                                                                                                                  |
| Attention needed   | No                                | Evaluate application on new OS                     | The application will migrate, but issues were detected that may impact its performance on the new operating system.                                                                                                                                     | No action is required for the upgrade to proceed, but be sure to test the application on the new operating system.<br>                                                                                                                                                                                                                                                                  |
| Attention needed   | No                                | Does not work with new OS, but won’t block upgrade | The application is not compatible with the new operating system, but won’t block the upgrade.                                                                                                                                                           | No action is required for the upgrade to proceed, however, you’ll have to install a compatible version of the application on the new operating system.<br>                                                                                                                                                                                                                              |
| Attention needed   | Yes                               | Does not work with new OS, and will block upgrade  | The application is not compatible with the new operating system and will block the upgrade.                                                                                                                                                             | Remove the application before upgrading. <br><br>A compatible version of the application may be available.<br>                                                                                                                                                                                                                                                                      |
| Attention needed   | Yes                               | May block upgrade, test application                | Issues were detected that may interfere with the upgrade, but need to be investigated further.<br>                                                                                                                                                    | Test the application’s behavior during upgrade. If it blocks the upgrade, remove it before upgrading and reinstall and test it on the new operating system.<br>                                                                                                                                                                                                                         |
| Attention needed   | Maybe                             | Multiple                                           | Multiple issues are affecting the application. See detailed view for more information.| When you see Multiple in the query detailed view, click **Query** to see details about what issues were detected with the different versions of the application. |

For applications assessed as **Fix available**, review the table below for details about known issues and ways to fix them that are known to Microsoft.

| Upgrade Assessment | Action required prior to upgrade? | Issue    | What it means   | Guidance    |
|--------------------|-----------------------------------|----------|-----------------|-------------|
| Fix available      | Yes                               | Blocking upgrade, update application to newest version   | The existing version of the application is not compatible with the new operating system and won’t migrate. A compatible version of the application is available.   | Update the application before upgrading.                                                             |
| Fix available      | No                                | Reinstall application after upgrading                    | The application is compatible with the new operating system, but must be reinstalled after upgrading. The application is removed during the upgrade process.<br> | No action is required for the upgrade to proceed. Reinstall application on the new operating system. |
| Fix available      | Yes                               | Blocking upgrade, but can be reinstalled after upgrading | The application is compatible with the new operating system, but won’t migrate.                                                                                    | Remove the application before upgrading and reinstall on the new operating system.<br>             |
| Fix available      | Yes                               | Disk encryption blocking upgrade                         | The application’s encryption features are blocking the upgrade.                                                                                                    | Disable the encryption feature before upgrading and enable it again after upgrading.<br>           |

### ISV support for applications with Ready for Windows

The [Ready for Windows website](https://www.readyforwindows.com/) lists software solutions that are supported and in use for Windows 10. This site leverages data about application adoption from commercial Windows 10 installations and helps IT managers upgrade to Windows 10 with confidence. For more information, see [Ready for Windows Frequently Asked Questions](https://developer.microsoft.com/windows/ready-for-windows/#/faq/). 

Click **Review Applications With Known Issues** to see the status of applications for Ready for Windows and corresponding guidance. For example:

![Upgrade analytics Ready for Windows status](images/upgrade-analytics-ready-for-windows-status.png)

If there are known issues with an application, the specific guidance for that known issue takes precedence over the Ready for Windows guidance.

![Upgrade analytics Ready for Windows status guidance precedence](images/upgrade-analytics-ready-for-windows-status-guidance-precedence.png)

If you query with RollupLevel="NamePublisher", each version of the application can have a different status for Ready for Windows. In this case, different values appear for Ready for Windows. 

![Name publisher rollup](images/upgrade-analytics-namepub-rollup.png)

The following table lists possible values for **ReadyForWindows** and what they mean. For more information, see [What does the Adoption Status mean?](https://developer.microsoft.com/en-us/windows/ready-for-windows#/faq/?scrollTo=faqStatuses)

| Ready for Windows Status | Query rollup level | What this means | Guidance |
|-------------------|--------------------------|-----------------|----------|
|Supported version available    | Granular | The software provider has declared support for one or more versions of this application on Windows 10. | The ISV has declared support for a version of this application on Windows 10. |
|  Highly adopted | Granular | This version of this application has been highly adopted within the Windows 10 Enterprise ecosystem. | This application has been installed on at least 100,000 commercial Windows 10 devices. | 
| Adopted   | Granular | This version of this application has been adopted within the Windows 10 Enterprise ecosystem. | This application has been installed on at least 10,000 commercial Windows 10 devices. |
| Insufficient Data | Granular | Too few commercial Windows 10 devices are sharing information about this version of this application for Microsoft to categorize its adoption. | N/A |
| Contact developer | Granular | There may be compatibility issues with this version of the application, so Microsoft recommends contacting the software provider to learn more. | Check the Ready for Windows site for additional information.|
|Supported version available | NamePublisher | The software provider has declared support for this application on Windows 10. | The ISV has declared support for a version of this application on Windows 10.|
|Adoption status available | NamePublisher | A Ready for Windows adoption status is available for one or more versions of this application. Please check the Ready for Windows site to learn more. |Check the Ready for Windows site for adoption information for this application.|
| Unknown | Any | There is no Ready for Windows information available for this version of this application. Information may be available on the Ready for Windows site for other versions of the application. | N/A |

## Review applications with no known issues

Applications with no issues known to Microsoft are listed, grouped by upgrade decision.

![Review applications with no known issues](images/upgrade-analytics-apps-no-known-issues.png)

Applications with no known issues that are installed on 2% or less of your total computer inventory \[number of computers application is installed on/total number of computers in your inventory\] are automatically marked **Ready to upgrade** and included in the applications reviewed count. Applications with no known issues that are installed on more than 2% of your total computer inventory are automatically marked **Not reviewed**.

Be sure to review low install count applications for any business critical or important applications that may not yet be upgrade-ready, despite their low installation rates. 

To change an application's upgrade decision:

1. Select **Decide upgrade readiness** to view applications with issues. Select **Table** to view the list in a table. 

2. Select **User changes** to change the upgrade decision for each application.

3. Select the applications you want to change to a specific upgrade decision and then then select the appropriate option from the **Select upgrade decision** list.

4. Click **Save** when finished.  

## Review drivers with known issues

Drivers that won’t migrate to the new operating system are listed, grouped by availability.

![Review drivers with known issues](images/upgrade-analytics-drivers-known.png)

Availability categories are explained in the table below.

| Driver availability   | Action required before or after upgrade? | What it means  | Guidance     |
|-----------------------|------------------------------------------|----------------|--------------|
| Available in-box                         | No, for awareness only                   | The currently installed version of an application or driver won’t migrate to the new operating system; however, a compatible version is installed with the new operating system.<br>                         | No action is required for the upgrade to proceed.                                                                                                                     |
| Import from Windows Update               | Yes                                      | The currently installed version of a driver won’t migrate to the new operating system; however, a compatible version is available from Windows Update.<br>                                                   | If the computer automatically receives updates from Windows Update, no action is required. Otherwise, import a new driver from Windows Update after upgrading. <br> |
| Available in-box and from Windows Update | Yes                                      | The currently installed version of a driver won’t migrate to the new operating system. <br><br>Although a new driver is installed during upgrade, a newer version is available from Windows Update. <br> | If the computer automatically receives updates from Windows Update, no action is required. Otherwise, import a new driver from Windows Update after upgrading. <br> |
| Check with vendor                        | Yes                                      | The driver won’t migrate to the new operating system and we are unable to locate a compatible version. <br>                                                                                                  | Check with the independent hardware vendor (IHV) who manufactures the driver for a solution.                                                                          |

To change a driver’s upgrade decision:

1.  Select **Decide upgrade readiness** and then select the group of drivers you want to review. Select **Table** to view the list in a table.

2.  Select **User changes** to enable user input.

3.  Select the drivers you want to change to a specific upgrade decision and then select the appropriate option from the **Select upgrade decision** list.

4.  Click **Save** when finished.

