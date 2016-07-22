---
title: Upgrade Analytics: Resolve application and driver issues (Windows 10)
description: Describes how to resolve application and driver issues that can occur during an upgrade with Upgrade Analytics.
ms.prod: w10
author: MaggiePucciEvans
---

# Upgrade Analytics: Resolve application and driver issues

This section of the Upgrade Analytics workflow reports application and driver inventory and shows you which applications have known issues, which applications have no known issues, and which drivers have issues. We identify applications and drivers that need attention and suggest fixes when we know about them.

You can change an application’s upgrade decision and a driver’s upgrade decision from the blades in this section. Select **Decide upgrade readiness** at the bottom of each blade to change available values.

To change an application’s or a driver’s importance level, select **User changes**. Select the item you want to change and then select the appropriate option from the **Select upgrade decision** list.

Upgrade decisions include:

| Upgrade decision   | When to use it    | Guidance    |
|--------------------|-------------------|-------------|
| Not reviewed       | When you start to investigate an application or a driver to determine upgrade readiness, change their upgrade decision to **Review in progress.** <br><br> <br>                                                                                                                                                                                      | Some applications are automatically assigned upgrade decisions based on information known to Microsoft. <br><br>All drivers are marked not reviewed by default.<br><br>                                                                                                                                                                                           |
| Review in progress | When you start to investigate an application or a driver to determine upgrade readiness, change their upgrade decision to **Review in progress**.<br><br>Until you’ve determined that applications and drivers will migrate successfully or you’ve resolved blocking issues, leave the upgrade decision status as **Review in progress**. <br><br> | Once you’ve fixed any issues and validated that the application or driver will migrate successfully, change the upgrade decision to **Ready to upgrade**. <br>                                                                                                                                                                                                          |
| Ready to upgrade   | Mark applications and drivers **Ready to upgrade** once you’ve resolved all blocking issues and you’re confident that they will upgrade successfully, or if you’ve decided to upgrade them as-is.                                                                                                                                                          | Applications with no known issues or with low installation rates are marked **Ready to upgrade** by default.<br><br>Be sure to review low install count applications for any business critical or important applications that are not yet upgrade-ready, despite their low installation rates. <br><br>All drivers are marked **Not reviewed** by default. <br> |
| Won’t upgrade      | By default, no applications or drivers are marked **Won’t upgrade** because only you can make that determination. <br><br>Use **Won’t upgrade** for computers you don’t want to upgrade. <br>                                                                                                                                                        | If, during your investigation into an application or driver, you determine that they should not be upgraded, mark them **Won’t upgrade**. <br><br>                                                                                                                                                                                                                    |

The blades in the **Resolve issues** section are:

## Review applications with known issues

Applications with issues known to Microsoft are listed, grouped by upgrade assessment into **Attention needed** or **Fix available**.

<!-- PRESERVING ORIGINAL IMAGE CODING JUST IN CASE
<img src="media/image6.png" width="192" height="321" />
-->

![Review applications with known issues](images/upgrade-analytics-apps-known-issues.png)

Select **Decide upgrade readiness** to view all applications with issues. In the table view, sort on **UpgradeAssessment** to group applications into **Attention needed** and **Fix available**. Select **User changes** to change the upgrade decision for each application.

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
| Attention needed   | Maybe                             | Multiple                                           | <br><br>Different versions of the application have different issues <br><br>\[Make a note here about making sure the inventory scanner is up to date\] or a version of the application has more than one issue affecting its upgrade-readiness. | When you see Multiple in the query detailed view, click **Query** to see details about what issues were detected with the different versions of the application.<br><br>Can also be because data hasn’t been refreshed yet and is still showing computers with old KB installed.<br><br>Think about how to or whether to include more details about why there would be “multiple” |

For applications assessed as **Fix available**, review the table below for details about known issues and ways to fix them that are known to Microsoft.

| Upgrade Assessment | Action required prior to upgrade? | Issue    | What it means   | Guidance    |
|--------------------|-----------------------------------|----------|-----------------|-------------|
| Fix available      | Yes                               | Blocking upgrade, update application to newest version   | The existing version of the application is not compatible with the new operating system and won’t migrate. A compatible version of the application is available.   | Update the application before upgrading.                                                             |
| Fix available      | No                                | Reinstall application after upgrading                    | The application is compatible with the new operating system, but must be reinstalled after upgrading. The application is removed during the upgrade process.<br> | No action is required for the upgrade to proceed. Reinstall application on the new operating system. |
| Fix available      | Yes                               | Blocking upgrade, but can be reinstalled after upgrading | The application is compatible with the new operating system, but won’t migrate.                                                                                    | Remove the application before upgrading and reinstall on the new operating system.<br>             |
| Fix available      | Yes                               | Disk encryption blocking upgrade                         | The application’s encryption features are blocking the upgrade.                                                                                                    | Disable the encryption feature before upgrading and enable it again after upgrading.<br>           |

## Review applications with no known issues

Applications with no issues known to Microsoft are listed, grouped by upgrade decision.

<!-- PRESERVING ORIGINAL IMAGE CODING JUST IN CASE
<img src="media/image7.png" width="197" height="336" />
-->

![Review applications with no known issues](images/upgrade-analytics-apps-no-known-issues.png)

Applications with no known issues that are installed on 2% or less of your total computer inventory \[number of computers application is installed on/total number of computers in your inventory\] are automatically marked **Ready to upgrade** and included in the applications reviewed count. Applications with no known issues that are installed on more than 2% of your total computer inventory are automatically marked **Not reviewed**.

Be sure to review low install count applications for any business critical or important applications that may not yet be upgrade-ready, despite their low installation rates. Change the importance level and upgrade decision by selecting **User input**. Select the applications you want to change to a specific importance level and then select the appropriate option from the **Select importance level** list. Select the applications you want to change to a specific upgrade readiness status and then select the appropriate option from the **Select upgrade decision** list.

## Review drivers with known issues

Drivers that won’t migrate to the new operating system are listed, grouped by availability.

<!-- PRESERVING ORIGINAL IMAGE CODING JUST IN CASE
<img src="media/image8.png" width="197" height="316" />
-->

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

