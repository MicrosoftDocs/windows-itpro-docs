---
title: Updating a MED-V Workspace Image
description: Updating a MED-V Workspace Image
author: dansimp
ms.assetid: 1b9c4a73-3487-43d2-98e3-43dbc79e10e3
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w7
ms.date: 06/16/2016
---


# Updating a MED-V Workspace Image


An image can be updated in one of the following ways:

-   The update can be pushed to the guest operating system using your enterprise software distribution system.

-   The update can be uploaded to the image Web distribution server, and then downloaded by the client and applied to the MED-V image.

-   The MED-V base image can be updated and redeployed.

## <a href="" id="bkmk-howtoupdateamedvimageusinganesd"></a>How to Update a MED-V Image Using an Enterprise Software Distribution System


**To update a MED-V image using an enterprise software distribution system**

-   Refer to the documentation of the system you are using.

## <a href="" id="bkmk-howtoupdateamedvimageusingwebdownload"></a>How to Update a MED-V Image Using Web Download


**To update a MED-V image using Web download**

1.  In MED-V management, on the **Virtual Machine** tab, ensure that the following settings are applied to the MED-V workspace policies that are associated with the MED-V image being updated:

    -   The **Suggest update when a new version is available** check box is selected.

    -   Optionally, the **Clients should use Trim Transfer when downloading images for this Workspace** check box is selected.

    For more information, see [How to Apply Virtual Machine Settings to a MED-V Workspace](how-to-apply-virtual-machine-settings-to-a-med-v-workspace.md).

2.  Upload the image update to the image Web distribution server.

    All clients with images that need to be updated automatically download the update and apply it to the image.

## <a href="" id="bkmk-howtoupdateamedvbaseimage"></a>How to Update a MED-V Base Image


**To update a MED-V base image**

1.  Open the existing image in Virtual PC 2007.

2.  Make the required changes to the image, updating the image (such as installing new software).

3.  Close Virtual PC 2007.

4.  Test the image.

5.  After the image is tested, pack it to the local repository, using the same name as the existing image.

    **Note**  
    If you name the image a different name than the existing version, a new image will be created rather than a new version of the existing image.

     

6.  Upload the new version to the server, push it to the image pre-stage folder, or distribute it via a deployment package.

## Related topics


[Creating a MED-V Image](creating-a-med-v-image.md)

[How to Update a MED-V Image](how-to-update-a-med-v-image.md)

[Configuring MED-V Workspace Policies](configuring-med-v-workspace-policies.md)

[How to Configure the Image Web Distribution Server](how-to-configure-the-image-web-distribution-server.md)

 

 





