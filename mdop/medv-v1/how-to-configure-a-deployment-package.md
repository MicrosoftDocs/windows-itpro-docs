---
title: How to Configure a Deployment Package
description: How to Configure a Deployment Package
author: dansimp
ms.assetid: 748272a1-6af2-476e-a3f1-87435b8e94b1
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w7
ms.date: 06/16/2016
---


# How to Configure a Deployment Package


The Packaging wizard walks you through the creation of a package by creating a folder on your local computer and transferring all the required installation files to the single folder. The contents of the folder can then be moved to multiple removable media drives for distribution.

**Note**  
A single package cannot contain installation files for both x86 and x64 systems.

 

## How to Create a Deployment Package


**To create a deployment package**

1.  Verify in the **Images** module that you have created at least one local packed image.

2.  On the **Tools** menu, select **Packaging wizard**.

3.  On the **Packaging wizard** welcome page, click **Next**.

4.  On the **Workspace Image** page, select the **Include image in the package** check box to include an image in the package.

    The **Image** field is enabled.

    **Note**  
    An image is not required in a MED-V package; the package can be created without an image. In such a case, the image should be uploaded to the server so that it can later be downloaded over the network to the client, or pushed to an image pre-stage folder.

     

5.  Click the **Image** list to view all available images. Select the image to be copied to the package. Click **Refresh** to refresh the list of available images.

6.  Click **Next**.

7.  On the **MED-V Installation Settings** page, select the MED-V installation file by doing one of the following:

    -   In the **MED-V installation file** field, type the full path to the directory where the installation file is located.

    -   Click **...** to browse to the directory where the installation file is located.

    **Note**  
    This field is mandatory, and the wizard will not continue without a valid file name.

     

8.  In the **Server address** field, type the server name or IP address.

9.  In the **Server port** field, type the server port.

10. Select the **Server is accessed using https** check box to require an https connection to connect to the server.

11. Do one of the following:

    -   Click **Default installation settings**, and then click **Next** to continue and leave the default settings.

    -   Click **Custom installation settings**, and then click **Next** to customize the installation settings.

        1.  On the **MED-V Installation Custom Settings** page, in the **Installation folder** field, type the path of the folder where the MED-V files will be installed on the host computer.

            **Note**  
            It is recommended to use variables in the path rather than constants, which might vary from computer to computer.

            For example, use *%ProgramFiles%\\MED-V* instead of *c:\\MED-V*.

             

        2.  In the **Virtual machines images folder** field, type the path of the folder where the virtual images files will be installed on the host computer.

            **Note**  
            If you are using image pre-staging, this is the image pre-stage folder where the image is located.

             

        3.  In the **Minimal required RAM** field, enter the RAM required to install a MED-V package. If the user installing the MED-V package does not have the minimal required RAM, the installation will fail.

        4.  Select the **Install the MED-V management application** check box to include the MED-V management console application in the installation.

        5.  Select the **Create a shortcut to MED-V on the desktop** check box to create a shortcut to MED-V on the host's desktop.

        6.  Select the **Start automatically on computer startup** check box to start MED-V automatically on startup.

        7.  Click **Next**.

12. On the **Additional Installations** page, select the **Include installation of virtualization software** check box to include the Virtual PC installation in the package.

    The **Installation file** field is enabled. Type the full path of the virtualization software installation file, or click **...** to browse to the directory.

13. Select the **Include installation of Virtual PC QFE** check box to include Virtual PC update installation in the package.

    The **Installation file** field is enabled. Type the full path of the Virtual PC update installation file, or click **...** to browse to the directory.

14. Select the **Include installation of Microsoft .NET Framework 2.0** check box to include the Microsoft .NET Framework 2.0 installation in the package.

    The **Installation file** field is enabled. Type the full path of the Microsoft .NET Framework 2.0 installation file, or click **...** to browse to the directory.

15. Click **Next**.

16. On the **Finalize** page, select the location where the package should be saved by doing one of the following:

    -   In the **Package destination** field, type the full path to the directory where the package should be saved.

    -   Click **...** to browse to the directory where the installation files should be saved.

    **Note**  
    Building the package might consume more space than the actual package size. It is therefore recommended to build the package on the hard drive. After the package is created, it can then be copied to the USB.

     

17. In the **Package name** field, enter a name for the package.

18. Click **Finish** to create the package.

    The package is created. This might take several minutes.

    After the package is created, a message appears notifying you that it has been completed successfully.

**Note**  
If you saved all the files locally, and not directly on the removable media, ensure that you copy only the contents of the folder and not the folder itself to the removable media.

 

**Note**  
The removable media must be large enough so that the package contents consume a maximum of only three-quarters of the removable media's memory.

 

**Note**  
When creating the package, up to double the size of the actual package size might be required when the build is complete.

 

## Related topics


[Creating a MED-V Image](creating-a-med-v-image.md)

 

 





