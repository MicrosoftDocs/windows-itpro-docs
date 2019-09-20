---
title: How to Install MED-V Client
description: How to Install MED-V Client
author: dansimp
ms.assetid: bfac6de7-d96d-4b3e-bd8b-183e051e53c8
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Install MED-V Client


In a deployment package-based scenario, the MED-V client installation is included in the deployment package and installed directly from the package.

**Important**  
When using a deployment package that does not include an image, ensure that the image is uploaded to the Web or pushed to the pre-stage folder prior to installing the deployment package.



**To install a deployment package**

1.  Do one of the following:

    -   Download the MED-V package from the Web.

    -   Insert the deployment USB or DVD into the host drive.

2.  If MED-V does not launch automatically, double-click MED-VAutoInstaller.exe.

    A dialog box appears listing the components that are already installed and those that are currently being installed.

    **Note**  
    If a version of the Microsoft Virtual PC that is not supported exists on the host computer, a message will appear telling you to uninstall the existing version and run the installer again.



~~~
**Note**  
If an older version of the MED-V client exists, it will prompt you asking whether you want to upgrade.



Depending on the components that have been installed, you might need to reboot. If rebooting is necessary, a message appears notifying you that you must reboot.
~~~

3. If necessary, reboot the computer.

   When the installation is complete, MED-V starts and a message appears notifying you that the installation is complete.

4. Log in to MED-V using the following user name and password:

   -   Type in the domain name and user name followed by the password of the domain user who is permitted to work with MED-V.

       Example: "domain\_name\\user\_name", "password"

## Related topics


[How to Configure a Deployment Package](how-to-configure-a-deployment-package.md)

[How to Upload a MED-V Image to the Server](how-to-upload-a-med-v-image-to-the-server.md)

[Client Installation Command Line Reference](client-installation-command-line-reference.md)









