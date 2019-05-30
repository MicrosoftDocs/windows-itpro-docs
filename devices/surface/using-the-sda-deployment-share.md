---
title: Using the Microsoft Surface Deployment Accelerator deployment share (Surface)
description: Explore the scenarios where you can use SDA to meet the deployment needs of your organization including Proof of Concept, pilot deployment, as well as import additional drivers and applications.
keywords: deploy, install, automate, deployment solution
ms.prod: w10
ms.mktglfcycl: deploy
ms.pagetype: surface, devices
ms.sitesec: library
author: dansimp
ms.author: dansimp
ms.topic: article
ms.date: 10/16/2017
---

# Using the Microsoft Surface Deployment Accelerator deployment share

With Microsoft Surface Deployment Accelerator (SDA), you can quickly and easily set up a deployment solution that is ready to deploy Windows to Surface devices. The prepared environment is built on powerful deployment technologies available from Microsoft, such as the [Microsoft Deployment Toolkit (MDT)](https://technet.microsoft.com/windows/dn475741), and is capable of immediately performing a deployment after configuration. See [Step-by-Step: Surface Deployment Accelerator](https://technet.microsoft.com/itpro/surface/step-by-step-surface-deployment-accelerator) for a comprehensive walkthrough of using the SDA wizard to set up a deployment share and perform a deployment.

For more information about SDA and information on how to download SDA, see [Microsoft Surface Deployment Accelerator (SDA)](https://technet.microsoft.com/itpro/surface/microsoft-surface-deployment-accelerator).

Using SDA provides these primary benefits:

* With SDA, you can create a ready-to-deploy environment that can deploy to target devices as fast as your download speeds allow. The wizard experience enables you to check a few boxes and then the automated process builds your deployment environment for you.

* With SDA, you prepare a deployment environment built on the industry leading deployment solution of MDT. With MDT you can scale from a relatively basic deployment of a few Surface devices to a solution capable of deploying to thousands of devices including all of the different makes and models in your organization and all of the applications required by each device and user.

This article explores four scenarios where you can use SDA to meet the needs of your organization. See [Deploy Windows 10](https://technet.microsoft.com/itpro/windows/deploy/index) to explore the capabilities of MDT and the Windows deployment technologies available from Microsoft in greater detail. 

## Perform a Proof of Concept deployment

One of the primary scenarios for use of SDA is as a Proof of Concept. A *Proof of Concept* (PoC) enables you to test or evaluate the capabilities of a solution or technology. A PoC is often used to illustrate the benefits of the solution or technology to decision makers. For example, if you want to recommend Surface devices as a replacement of older point of sale (POS) systems, you could perform a PoC to demonstrate how Surface devices provide superior computing power, flexibility, and connectivity when compared to alternate options.

Using SDA to prepare a PoC of Surface devices enables you to very quickly prepare a demonstration of Surface device or devices, which gives you more time for customization or preparation. The flexibility of SDA even lets you import resources, like applications and drivers, from existing MDT deployment infrastructure. See the [Work with existing deployment shares](#work-with-existing-deployment-shares) section later in this article for more information.

SDA is also an excellent PoC of the capabilities of MDT. SDA demonstrates just how quickly an MDT deployment environment can be prepared and made ready for deployment to devices. It also shows just how flexible and customizable the MDT solution can be, with support for Windows 10 and Windows 8.1, for Microsoft Store and desktop applications, and several models of Surface devices.

Some recommendations for a successful PoC with SDA are:

* Keep your SDA deployment environment separate from your production network. This ensures optimal performance and reduces potential for conflicts during your PoC deployment.

* Use a fresh and updated instance of Windows Server to house your SDA deployment share to maintain the simplicity and performance of the demonstration environment.

* Test the deployment process before you demonstrate your PoC. This reduces the potential for unexpected situations and keeps the demonstration focused on the deployment process and Surface devices.

* Use offline files with SDA to further reduce installation times.

* For help with your PoC, contact [Surface Support](https://www.microsoft.com/surface/support/contact-us-business).

## Perform a pilot deployment

A pilot deployment differs from a PoC. Where a PoC is usually a closed demonstration that is performed prior to the deployment process in order to get approval for the use of certain technologies or solutions, a *pilot deployment* is performed during the deployment process as a limited scope deployment for testing and validation. The focus of a pilot deployment can be as narrow as only a handful of devices, or wide enough to include a significant portion of your organization.

>[!NOTE]
>A pilot deployment should not replace the testing process that should be performed regularly in the lab as the deployment environment is built and developed. A deployment solution should be tested in virtual and physical environments as new applications and drivers are added and when task sequences are modified and before a pilot deployment is performed. 

For example, you are tasked with deploying Surface devices to mobile workers and you want to test the organization’s MDT deployment process by providing a small number of devices to executives. You can use SDA to create an isolated Surface deployment environment and then copy the task sequence, applications, and drivers needed from the production deployment share. This not only enables you to quickly create a Surface deployment, but it also minimizes the risk to the production deployment process used for other types of devices.

For small organizations, the pilot deployment environment of SDA may suffice as a complete deployment solution. Even if you do not have an existing deployment environment, you can import drivers and applications (covered later in this article) to provide a complete deployment solution based on MDT. Even without previous knowledge of MDT or Windows deployment, you can follow the [Step-by-Step: Surface Deployment Accelerator](https://technet.microsoft.com/itpro/surface/step-by-step-surface-deployment-accelerator) article to get started with a deployment to Surface devices.

## Import additional drivers

The SDA deployment share includes all of the drivers needed for Surface devices. This includes the drivers for the components inside the Surface device, such as the wireless network adapter and the main chipset, as well as drivers for Surface accessories, such as the Surface Dock or Surface USB Ethernet adapters. The SDA deployment share does not, however, include drivers for third-party devices or peripherals.

For example, you may intend to use your Surface device with a thermal printer, credit card reader, and barcode scanner as a POS terminal. In this scenario, the thermal printer, credit card reader, and barcode scanner will very likely require installation of drivers to operate properly. You could potentially download and install these drivers from Windows Update when each peripheral is connected, or you could install the driver package from the manufacturer manually on each Surface device, but the ideal solution is to have these drivers already present in Windows so that when the peripheral is connected, it will just work.

Because SDA is built on MDT, adding the drivers to the SDA deployment share is easy and simple. 

>[!NOTE]
>The drivers must be in the Setup Information File (.inf) format. If the drivers for your device come as an executable file (.exe), they may need to be extracted or installed to procure the .inf file. Some device drivers come packaged with applications, for example an all-in-one printer bundled with scan software. These applications will need to be installed separately from the drivers.

To import drivers for a peripheral device:

1. Download the drivers for your device from the manufacturer web site.

2. Open the MDT Deployment Workbench.

3. Expand the **Deployment Shares** node and expand the SDA deployment share.

4. Expand the **Out-of-Box Drivers** folder.

5. Select the folder of the Surface model for which you would like to include this driver.

6. Click **Import Drivers** to start the Import Drivers Wizard, as shown in Figure 1.

  ![Provide the location of your driver files](images\using-sda-driverfiles-fig1.png "Provide the location of your driver files")
  
  *Figure 1. Provide the location of your driver files*

7. The Import Drivers Wizard presents a series of steps:

  - **Specify Directory** – Click **Browse** and navigate to the folder where you stored the drivers in Step 1.
  - **Summary** – Review the specified configuration on this page before you click **Next** to begin the import process.
  - **Progress** – While the drivers are imported, a progress bar is displayed on this page.
  - **Confirmation** – When the import process completes, the success of the process is displayed on this page. Click **Finish** to complete the Import Drivers Wizard.

8. Repeat Steps 5-7 for each Surface model on which you would like to include this driver.

9. Close the Deployment Workbench.

After the drivers are imported for the Surface model, the deployment task sequence will automatically select the drivers during the deployment process and include them in the Windows environment. When you connect your device, such as the barcode scanner in the example, Windows should automatically detect the device and you should be able to use it immediately.

>[!NOTE]
>You can even import drivers for other computer makes and models to support other devices. See **Step 5: Prepare the drivers repository** in [Deploy a Windows 10 image using MDT 2013 Update 2](https://technet.microsoft.com/itpro/windows/deploy/deploy-a-windows-10-image-using-mdt) for more information about how to import drivers for other makes and models.

## Import additional applications

As with drivers, the SDA deployment share can be pre-configured with apps like the Surface App and Microsoft Office 365. You can also add applications to the SDA deployment share and configure them to be installed on your Surface devices during deployment of Windows. In the ideal scenario, your Surface devices deployed with the SDA deployment share will include all of the applications needed to be ready for your end users.

In the previous example for including drivers for a POS system, you would also need to include POS software for processing transactions and recording the input from the barcode scanner and credit card reader. To import an application and prepare it for installation on your Surface devices during Windows deployment:

1.	Download the application installation files or locate the installation media for your application.

2.	Determine the command line instruction for silent installation, usually provided by the developer of the application. For Windows Installer files (.msi), see [Standard Installer Command-Line Options](https://msdn.microsoft.com/library/windows/desktop/aa372024) in the Windows Dev Center.

3.	Open the MDT Deployment Workbench.

4.	Expand the **Deployment Shares** node and expand the SDA deployment share.

5.	Expand the **Applications** folder.

6.	Click **New Application** to start the New Application Wizard, as shown in Figure 2.

  ![Provide the command to install your application](images\using-sda-installcommand-fig2.png "Provide the command to install your application")
  
  *Figure 2: Provide the command to install your application*

7.	Follow the steps of the New Application Wizard:

  - **Application Type** – Click **Application with Source Files**, and then click **Next**.
  - **Details** – Enter a name for the application in the **Application Name** field. Enter publisher, version, and language information in the **Publisher**, **Version**, and **Language** fields if desired. Click **Next**.
  - **Source** – Click **Browse** to navigate to and select the folder with the application installation files procured in Step 1, and then click **Next**.
  - **Destination** – Enter a name for the folder where the application files will be stored in the **Specify the Name of the Directory that Should Be Created** field or click **Next** to accept the default name.
  - **Command Details** – Enter the silent command-line instruction, for example `setup.msi /quiet /norestart`
  - **Summary** – Review the specified configuration on this page before you click **Next** to begin the import process.
  - **Progress** – While the installation files are imported, a progress bar is displayed on this page.
  - **Confirmation** – When the import process completes, the success of the process is displayed on this page. Click **Finish** to complete the New Application Wizard.

8.	Click the **Task Sequences** folder, right-click **1 - Deploy Microsoft Surface**, and then click **Properties**.

9.	Click the **Task Sequence** tab to view the steps that are included in the new task sequence.

10.	Select the **Windows Update (Pre-Application Installation)** step, and then click **Add**.

11.	Hover the mouse over **General** under the **Add** menu, and then click **Install Application**. This will add a new step after the selected step for the installation of a specific application as shown in Figure 3.

  ![A new Install Application step for Sample POS App](images\using-sda-newinstall-fig3.png "A new Install Application step for Sample POS App")
  
  *Figure 3. A new Install Application step for Sample POS App*

12.	On the **Properties** tab of the new **Install Application** step, enter **Install - Sample POS App** in the **Name** field, where *Sample POS App* is the name of your app.

13.	Click **Install a Single Application**, and then click **Browse** to view available applications that have been imported into the deployment share.

14.	Select your app from the list of applications, and then click **OK**.

15.	Click **OK** to close the task sequence properties.

16.	Close the Deployment Workbench.

## Work with existing deployment shares

One of the many benefits of an MDT deployment share is the simplicity of how deployment resources are stored. The MDT deployment share is, at its core, just a standard network file share. All deployment resources, such as Windows images, application installation files, and drivers, are stored in a share that can be browsed with File Explorer, copied and pasted, and moved just like any other file share, provided that you have the necessary permissions. This makes working with deployment resources extremely easy. MDT even allows you to make it easier by allowing you to open multiple deployment shares from the Deployment Workbench and to transfer or copy resources between them.

This ability gives SDA some extra capabilities when used in an environment with an existing MDT infrastructure. For example, if you install SDA on an isolated server to prepare a PoC and then log on to your production MDT deployment share from the Deployment Workbench on your SDA server, you can copy applications, drivers, task sequences, and other components into the SDA deployment share that is prepared with Surface apps and drivers. With this process, in a very short amount time, you can have a deployment environment ready to deploy your organization’s precise requirements to Surface devices.

You can also use this capability in reverse. For example, you can copy the Surface drivers, deployment task sequences, and apps directly into a lab or testing environment following a successful PoC. Using these resources, you can immediately begin to integrate Surface deployment into your existing deployment infrastructure.
