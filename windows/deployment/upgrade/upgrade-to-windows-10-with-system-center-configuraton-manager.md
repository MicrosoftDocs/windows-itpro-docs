---
title: Perform an in-place upgrade to Windows 10 using Configuration Manager (Windows 10)
description: The simplest path to upgrade PCs currently running Windows 7, Windows 8, or Windows 8.1 to Windows 10 is through an in-place upgrade. Use a System Center Configuration Manager task sequence to completely automate the process.
ms.assetid: F8DF6191-0DB0-4EF5-A9B1-6A11D5DE4878
ms.reviewer: 
manager: laurawi
ms.author: greglin
keywords: upgrade, update, task sequence, deploy
ms.prod: w10
ms.localizationpriority: medium
ms.mktglfcycl: deploy
author: greg-lindsay
ms.topic: article
---

# Perform an in-place upgrade to Windows 10 using Configuration Manager


**Applies to**

-   Windows 10

The simplest path to upgrade PCs currently running Windows 7, Windows 8, or Windows 8.1 to Windows 10 is through an in-place upgrade. You can use a System Center Configuration Manager task sequence to completely automate the process.

## Proof-of-concept environment


For the purposes of this topic, we will use three machines: DC01, CM01, and PC0001. DC01 is a domain controller and CM01 is a Windows Server 2012 R2 standard machine, fully patched with the latest security updates, and configured as a member server in the fictional contoso.com domain. PC0001 is a machine with Windows 7 SP1, targeted for the Windows 10 upgrade. For more details on the setup for this topic, please see [Deploy Windows 10 with the Microsoft Deployment Toolkit](../deploy-windows-mdt/deploy-windows-10-with-the-microsoft-deployment-toolkit.md).

![figure 1](../images/upgrademdt-fig1-machines.png)

Figure 1. The machines used in this topic.

## Upgrade to Windows 10 with System Center 2012 R2 Configuration Manager


System Center 2012 R2 Configuration Manager SP1 adds support to manage and deploy Windows 10. Although it does not include built-in support to perform an in-place upgrade from Windows 7, Windows 8, or Windows 8.1 to Windows 10, you can build a custom task sequence to perform the necessary tasks.

## Create the task sequence


To help with this process, the Configuration Manager team has published [a blog](https://go.microsoft.com/fwlink/p/?LinkId=620179) that provides a sample task sequence, as well as the [original blog that includes the instructions for setting up the task sequence](https://go.microsoft.com/fwlink/p/?LinkId=620180). To summarize, here are the tasks you need to perform:

1.  Download the [Windows10Upgrade1506.zip](https://go.microsoft.com/fwlink/p/?LinkId=620182) file that contains the sample task sequence and related scripts. Extract the contents onto a network share.
2.  Copy the Windows 10 Enterprise RTM x64 media into the extracted but empty **Windows vNext Upgrade Media** folder.
3.  Using the Configuration Manager Console, right-click the **Task Sequences** node, and then choose **Import Task Sequence**. Select the **Windows-vNextUpgradeExport.zip** file that you extracted in Step 1.
4.  Distribute the two created packages (one contains the Windows 10 Enterprise x64 media, the other contains the related scripts) to the Configuration Manager distribution point.

For full details and an explanation of the task sequence steps, review the full details of the two blogs that are referenced above.

## Create a device collection


After you create the upgrade task sequence, you can create a collection to test a deployment. In this section, we assume you have the PC0001 machine running Windows 7 SP1, with the Configuration Manager client installed.

1.  On CM01, using the Configuration Manager console, in the Asset and Compliance workspace, right-click **Device Collections**, and then select **Create Device Collection**. Use the following settings:
    -   General

        -   Name: Windows 10 Enterprise x64 Upgrade

        -   Limited Collection: All Systems

    -   Membership rules:

        -   Direct rule

            -   Resource Class: System Resource

            -   Attribute Name: Name

            -   Value: PC0001

        -   Select Resources

        -   Select PC0001

2.  Review the Windows 10 Enterprise x64 Upgrade collection. Do not continue until you see the PC0001 machine in the collection.

## Deploy the Windows 10 upgrade


In this section, you create a deployment for the Windows 10 Enterprise x64 Update application.

1.  On CM01, using the Configuration Manager console, in the Software Library workspace, right-click the **Windows vNext Upgrade** task sequence, and then select **Deploy**.
2.  On the **General** page, select the **Windows 10 Enterprise x64 Upgrade** collection, and then click **Next**.
3.  On the **Content** page, click **Next**.
4.  On the **Deployment Settings** page, select the following settings, and then click **Next**:
    -   Action: Install

    -   Purpose: Available

5.  On the **Scheduling** page, accept the default settings, and then click **Next**.
6.  On the **User Experience** page, accept the default settings, and then click **Next**.
7.  On the **Alerts** page, accept the default settings, and then click **Next**.
8.  On the **Summary** page, click **Next**, and then click **Close**.

## Start the Windows 10 upgrade


In this section, you start the Windows 10 Upgrade task sequence on PC0001 (currently running Windows 7 SP1).

1.  On PC0001, start the **Software Center**.
2.  Select the **Windows vNext Upgrade** task sequence, and then click **Install**.

When the task sequence begins, it will automatically initiate the in-place upgrade process by invoking the Windows setup program (Setup.exe) with the necessary command-line parameters to perform an automated upgrade, which preserves all data, settings, apps, and drivers.

![figure 2](../images/upgradecfg-fig2-upgrading.png)

Figure 2. Upgrade from Windows 7 to Windows 10 Enterprise x64 with a task sequence.

After the task sequence finishes, the computer will be fully upgraded to Windows 10.

## Upgrade to Windows 10 with System Center Configuration Manager Current Branch


With System Center Configuration Manager Current Branch, new built-in functionality makes it easier to upgrade to Windows 10.

**Note**  
For more details about Configuration Manager Current Branch, see the [Configuration Manager Team blog](https://go.microsoft.com/fwlink/p/?LinkId=620205). An [evaluation version is currently available](https://go.microsoft.com/fwlink/p/?LinkId=620206) for you to try. The instructions below are specific to the Technical Preview 2 release and may change after the next version of Configuration Manager is released.

 

### Create the OS upgrade package

First, you need to create an operating system upgrade package that contains the full Windows 10 Enterprise x64 installation media.

1.  On CM01, using the Configuration Manager console, in the Software Library workspace, right-click the **Operating System Upgrade Packages** node, then select **Add Operating System Upgrade Package**.
2.  On the **Data Source** page, specify the UNC path to the Windows 10 Enterprise x64 media, and then click **Next**.
3.  On the **General** page, specify Windows 10 Enterprise x64 Upgrade, and then click **Next**.
4.  On the **Summary** page, click **Next**, and then click **Close**.
5.  Right-click the created **Windows 10 Enterprise x64 Update** package, and then select **Distribute Content**. Choose the CM01 distribution point.

### Create the task sequence

To create an upgrade task sequence, perform the following steps:

1.  On CM01, using the Configuration Manager console, in the Software Library workspace, right-click the **Task Sequences** node, and then select **Create Task Sequence**.
2.  On the **Create a new task sequence** page, select **Upgrade an operating system from upgrade package**, and then click **Next**.
3.  On the **Task Sequence Information** page, specify **Windows 10 Enterprise x64 Upgrade**, and then click **Next**.
4.  On the **Upgrade the Windows operating system** page, select the **Windows 10 Enterprise x64 Upgrade operating system upgrade** package, and then click **Next**.
5.  Click **Next** through the remaining wizard pages, and then click **Close**.

![figure 3](../images/upgradecfg-fig3-upgrade.png)

Figure 3. The Configuration Manager upgrade task sequence.

### Create a device collection

After you create the upgrade task sequence, you can create a collection to test a deployment. In this section, we assume you have the PC0001 machine running Windows 7 SP1, with the next version of System Center Configuration Manager client installed.

1.  On CM01, using the Configuration Manager console, in the Asset and Compliance workspace, right-click **Device Collections**, and then select **Create Device Collection**. Use the following settings:
    -   General

        -   Name: Windows 10 Enterprise x64 Upgrade

        -   Limited Collection: All Systems

    -   Membership rules:

        -   Direct rule

            -   Resource Class: System Resource

            -   Attribute Name: Name

            -   Value: PC0001

        -   Select Resources

        -   Select PC0001

2.  Review the Windows 10 Enterprise x64 Upgrade collection. Do not continue until you see the PC0001 machine in the collection.

### Deploy the Windows 10 upgrade

In this section, you create a deployment for the Windows 10 Enterprise x64 Update application.

1.  On CM01, using the Configuration Manager console, in the Software Library workspace, right-click the **Windows vNext Upgrade** task sequence, and then select **Deploy**.
2.  On the **General** page, select the **Windows 10 Enterprise x64 Upgrade** collection, and then click **Next**.
3.  On the **Content** page, click **Next**.
4.  On the **Deployment Settings** page, select the following settings and click **Next**:
    -   Action: Install

    -   Purpose: Available

5.  On the **Scheduling** page, accept the default settings, and then click **Next**.
6.  On the **User Experience** page, accept the default settings, and then click **Next**.
7.  On the **Alerts** page, accept the default settings, and then click **Next**.
8.  On the **Summary** page, click **Next**, and then click **Close**.

### Start the Windows 10 upgrade

In this section, you start the Windows 10 Upgrade task sequence on PC0001 (currently running Windows 7 SP1).

1.  On PC0001, start the **Software Center**.
2.  Select the **Windows 10 Enterprise x64 Upgrade** task sequence, and then click **Install.**

When the task sequence begins, it automatically initiates the in-place upgrade process by invoking the Windows setup program (Setup.exe) with the necessary command-line parameters to perform an automated upgrade, which preserves all data, settings, apps, and drivers.

After the task sequence completes, the computer will be fully upgraded to Windows 10.

## Related topics


[Windows 10 deployment scenarios](../windows-10-deployment-scenarios.md)

[Configuration Manager Team blog](https://go.microsoft.com/fwlink/p/?LinkId=620109)

 

 





