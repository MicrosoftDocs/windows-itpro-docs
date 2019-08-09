---
title: How to Configure Image Pre-staging
description: How to Configure Image Pre-staging
author: dansimp
ms.assetid: 92781b5a-208f-45a4-a078-ee90cf9efd9d
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Configure Image Pre-staging


**Note**  
Image pre-staging is useful only for the initial image download. It is not supported for image update.

 

## How to Configure Image Pre-staging


**To configure image pre-staging**

1.  On the client computer, under the image store directory, create a folder for the pre-staging image, and name it *MED-V Images*.

    **Note**  
    This folder must be called *MED-V Images*.

     

2.  Inside the MED-V Images folder, create a subfolder and name it *PrestagedImages*.

    **Note**  
    This folder must be called *PrestagedImages*.

     

3.  To apply Access Control Lists (ACL) security to the *MED-V Images* folder, set the following ACL:

    **NT AUTHORITY\\Authenticated Users:(OI)(CI)(special access:)**

                                             **READ\_CONTROL**

                                    **SYNCHRONIZE**

                                    **FILE\_GENERIC\_READ**

                                    **FILE\_READ\_DATA**

    **                                 FILE\_APPEND\_DATA**

                                    **FILE\_READ\_EA**

                                    **FILE\_READ\_ATTRIBUTES**

    **NT AUTHORITY\\SYSTEM:(OI)(CI)F**

    **BUILTIN\\Administrators:(OI)(CI)F**

    **Note**  
    It is recommended to apply ACL security to the *MED-V Images* folder.

     

4.  To apply ACL security to the *PrestagedImages* folder, set the following ACL:

    **NT AUTHORITY\\Authenticated Users:(OI)(CI)(special access:)**

    **                                READ\_CONTROL**

    **                                                                                SYNCHRONIZE**

    **                                                                                FILE\_GENERIC\_READ**

    **                                                                                                FILE\_READ\_DATA**

    **                                                                                FILE\_READ\_EA**

    **                                                                                FILE\_READ\_ATTRIBUTES**

    **NT AUTHORITY\\SYSTEM:(OI)(CI)F**

    **BUILTIN\\Administrators:(OI)(CI)F**

    **Note**  
    It is recommended to apply ACL security to the *PrestagedImages* folder.

     

5.  Push the image files (CKM and INDEX files) to the *PrestagedImages* folder.

    **Note**  
    After the image files have been pushed to the pre-stage folder, it is recommended to run a data integrity check and to mark the files as read-only.

     

6.  Include the following parameter in the MED-V client installation: *Client.MSI VMSFOLDER=”C:\\MED-V Images”*.

## How to Update the Pre-stage Location


**To update the pre-stage location**

1.  The registry key, *PrestagedImagesPath*, points to the default image location. It is located in the following directory:

    -   On an x86 - `KEY_LOCAL_MACHINE\SOFTWARE\Kidaro`

    -   On an x64 - `HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432node`

2.  If the image is in a different location, change the path.

 

 





