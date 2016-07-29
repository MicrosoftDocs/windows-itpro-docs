---
title: Planning for the App-V Sequencer and Client Deployment (Windows 10)
description: Planning for the App-V Sequencer and Client Deployment
author: MaggiePucciEvans
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
---


# Planning for the App-V Sequencer and Client Deployment


Before you can start to use Microsoft Application Virtualization (App-V), you must install the App-V sequencer, the App-V client, and optionally the App-V shared content store. The following sections address planning for these installations.

## Planning for App-V sequencer deployment


App-V uses a process called sequencing to create virtualized applications and application packages. Sequencing requires the use of a computer that runs the App-V sequencer.

**Note**  
For information about the new functionality of App-V sequencer, see the **Sequencer Improvements** section of [About App-V](appv-about-appv.md).

 

The computer that runs the App-V sequencer must meet the minimum system requirements. For a list of these requirements, see [App-V Supported Configurations](appv-supported-configurations.md).

Ideally, you should install the sequencer on a computer running as a virtual machine. This enables you to more easily revert the computer running the sequencer to a “clean” state before sequencing another application. When you install the sequencer using a virtual machine, you should perform the following steps:

1.  Install all associated sequencer prerequisites.

2.  Install the sequencer.

3.  Take a “snapshot” of the environment.

**Important**  
You should have your corporate security team review and approve the sequencing process plan. For security reasons, you should keep the sequencer operations in a lab that is separate from the production environment. The separation arrangement can be as simple or as comprehensive as necessary, based on your business requirements. The sequencing computers must be able to connect to the corporate network to copy finished packages to the production servers. However, because the sequencing computers are typically operated without antivirus protection, they must not be on the corporate network unprotected. For example, you might be able to operate behind a firewall or on an isolated network segment. You might also be able to use virtual machines that are configured to share an isolated virtual network. Follow your corporate security policies to safely address these concerns.

 

## Planning for App-V client deployment


To run virtualized packages on target computers, you must install the App-V client on the target computers. The App-V client is the component that runs a virtualized application on a target computer. The client enables users to interact with icons and specific file types to start virtualized applications. The client also helps obtain application content from the management server and caches the content before the client starts the application. There are two different client types: the client for Remote Desktop Services, which is used on Remote Desktop Session Host (RD Session Host) server systems and the App-V client, which is used for all other computers.

The App-V client should be configured by using either the installer command line or by using a PowerShell script after the installation has been completed.

The settings must be defined carefully in advance in order to expedite the deployment of the App-V client software. This is especially important when you have computers in different offices where the clients must be configured to use different source locations.

You must also determine how you will deploy the client software. Although it is possible to deploy the client manually on each computer, most organizations prefer to deploy the client through an automated process. A larger organization might have an operational Electronic Software Distribution (ESD) system, which is an ideal client deployment system. If no ESD system exists, you can use your organization’s standard method of installing software. Possible methods include Group Policy or various scripting techniques. Depending on the quantity and disparate locations of your client computers, this deployment process can be complex. You must use a structured approach to ensure that all computers get the client installed with the correct configuration.

For a list of the client minimum requirements see [App-V Prerequisites](appv-prerequisites.md).

## <a href="" id="bkmk-client-coexist"></a>Planning for App-V client coexistence


You can deploy the App-V client side by side with the App-V 4.6 client. Client coexistence requires that you add or publish virtualized applications by using either a deployment configuration file or a user configuration file, because there are certain settings in these configuration files that must be configured in order for App-V to function with App-V 4.6 clients. When a package is upgraded by using either the client or the server, the package must resubmit the configuration file. This is true for any package that has a corresponding configuration file, so it is not specific to client coexistence. However, if you do not submit the configuration file during the package upgrade, then the package state will not function as expected in coexistence scenarios.

App-V dynamic configuration files customize a package for a specific user. You must create the dynamic user configuration (.xml) file or the dynamic deployment configuration file before you can use them. To create the file it requires an advanced manual operation.

When a dynamic user configuration file is used, none of the App-V information for the extension in the manifest file is used. This means that the dynamic user configuration file must include everything for the extension that is specific to App-V in the manifest file, as well as the changes that you want to make, such as, deletions and updates. For more information about how to create a custom configuration file, see [How to Create a Custom Configuration File by Using the App-V Management Console](appv-create-a-custom-configuration-file-with-the-management-console.md).

## <a href="" id="bkmk-plan-for-scs"></a>Planning for the App-V Shared Content Store (SCS)


The App-V shared content store mode allows the computer running the App-V client to run virtualized applications and none of the package contents is saved on the computer running the App-V client. Virtual applications are streamed to target computers only when requested by the client.

The following list displays some of the benefits of using the App-V shared content store:

-   Reduced app-to-app and multi-user application conflicts and hence a reduced need for regression testing

-   Accelerated application deployment by reduction of deployment risk

-   Simplified profile management

## Have a suggestion for App-V?


Add or vote on suggestions [here](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization). For App-V issues, use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/en-US/home?forum=mdopappv).

## <a href="" id="other-resources-for-the-app-v-5-1-deployment-"></a>Other resources for the App-V deployment


[Planning to Deploy App-V](appv-planning-to-deploy-appv.md)

## Related topics


[How to Install the Sequencer](appv-install-the-sequencer.md)

[How to Deploy the App-V Client](appv-deploy-the-appv-client.md)

[How to Deploy the App-V 4.6.x and the App-V Client on the Same Computer](appv-deploy-the-appv-46x-and-the-appv--51-client-on-the-same-computer.md)

[How to Install the App-V Client for Shared Content Store Mode](appv-install-the-appv-client-for-shared-content-store-mode.md)

 

 





