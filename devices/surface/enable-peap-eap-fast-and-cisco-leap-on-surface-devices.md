---
title: Enable PEAP, EAP-FAST, and Cisco LEAP on Surface devices (Surface)
description: Find out how to enable support for PEAP, EAP-FAST, or Cisco LEAP protocols on your Surface device.
ms.assetid: A281EFA3-1552-467D-8A21-EB151E58856D
ms.reviewer: 
manager: dansimp
keywords: network, wireless, device, deploy, authentication, protocol
ms.localizationpriority: medium
ms.prod: w10
ms.mktglfcycl: deploy
ms.pagetype: surface, devices
ms.sitesec: library
author: dansimp
ms.author: dansimp
ms.topic: article
ms.date: 07/27/2017
---

# Enable PEAP, EAP-FAST, and Cisco LEAP on Surface devices


Find out how to enable support for PEAP, EAP-FAST, or Cisco LEAP protocols on your Surface device.

If you use PEAP, EAP-FAST, or Cisco LEAP in your enterprise network, you probably already know that these three wireless authentication protocols are not supported by Surface devices out of the box. Some users may discover this when they attempt to connect to your wireless network; others may discover it when they are unable to gain access to resources inside the network, like file shares and internal sites. For more information, see [Extensible Authentication Protocol](https://technet.microsoft.com/network/bb643147).

You can add support for each protocol by executing a small MSI package from a USB stick or from a file share. For organizations that want to enable EAP support on their Surface devices, the MSI package format supports deployment with many management and deployment tools, like the Microsoft Deployment Toolkit (MDT) and System Center Configuration Manager.

## <a href="" id="download-peap--eap-fast--or-cisco-leap-installation-files--"></a>Download PEAP, EAP-FAST, or Cisco LEAP installation files


You can download the MSI installation files for PEAP, EAP-FAST, or Cisco LEAP in a single zip archive file from the Microsoft Download Center. To download this file, go to the [Surface Tools for IT](https://www.microsoft.com/download/details.aspx?id=46703) page on the Microsoft Download Center, click **Download**, and then select the **Cisco EAP-Supplicant Installer.zip** file.

## Deploy PEAP, EAP-FAST, or Cisco LEAP with MDT


If you are already performing a Windows deployment to Surface devices in your organization, it is quick and easy to add the installation files for each protocol to your deployment share and configure automatic installation during deployment. You can even configure a task sequence that updates previously deployed Surface devices to provide support for these protocols using the same process.

To enable support for PEAP, EAP-FAST, or Cisco LEAP on newly deployed Surface devices, follow these steps:

1.  Download and extract the installation files for each protocol to separate folders in an easily accessible location.

2.  Open the MDT Deployment Workbench and expand your deployment share to the **Applications** folder.

3.  Select **New Application** from the **Action** pane.

4.  Choose **Application with source files** to copy the MSI files into the Deployment Share.

5.  Select the folder you created in step 1 for the desired protocol.

6.  Name the folder in the deployment share where the installation files will be stored.

7.  Specify the command line to deploy the application:

    -   For PEAP use **EAP-PEAP.msi /qn /norestart**.

    -   For LEAP use **EAP-LEAP.msi /qn /norestart**.

    -   For EAP-FAST use **EAP-FAST.msi /qn /norestart**.

8.  Use the default options to complete the New Application Wizard.

9.  Repeat steps 3 through 8 for each desired protocol.

After you’ve performed these steps to import the three MSI packages as applications into MDT, they will be available for selection in the Applications page of the Windows Deployment Wizard. Although in some simple deployment scenarios it might be sufficient to have technicians select each package at the time of deployment, it is not recommended. This practice introduces the possibility that a technician could attempt to apply these packages to computers other than Surface devices, or that a Surface device could be deployed without EAP support due to human error.

To hide these applications from the Install Applications page, select the **Hide this application in the Deployment Wizard** checkbox in the properties of each application. After the applications are hidden, they will not be displayed as optional applications during deployment. To deploy them in your Surface deployment task sequence, they must be explicitly defined for installation through a separate step in the task sequence.

To specify the protocol(s) explicitly, follow these steps:

1.  Open your Surface deployment task sequence properties from the MDT Deployment Workbench.

2.  On the **Task Sequence** tab, select the **Install Applications** step under **State Restore**. This is typically found between the pre-application and post-application Windows Update steps.

3.  Use the **Add** button to create a new **Install Application** step from the **General** category.

4.  Select **Install a single application** in the step **Properties** tab.

5.  Select the desired EAP protocol from the list.

6.  Repeat steps 2 through 5 for each desired protocol.

## Deploy PEAP, EAP-FAST, or Cisco LEAP with Configuration Manager


For organizations that manage Surface devices with Configuration Manager, it is even easier to deploy PEAP, EAP-FAST, or Cisco LEAP support to Surface devices. Simply import each MSI file as an application from the Software Library and configure a deployment to your Surface device collection.

For more information on how to deploy applications with Configuration Manager see [How to Create Applications in Configuration Manager](https://technet.microsoft.com/library/gg682159.aspx) and [How to Deploy Applications in Configuration Manager](https://technet.microsoft.com/library/gg682082.aspx).

 

 





