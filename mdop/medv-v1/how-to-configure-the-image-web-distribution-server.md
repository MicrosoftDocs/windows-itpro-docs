---
title: How to Configure the Image Web Distribution Server
description: How to Configure the Image Web Distribution Server
author: dansimp
ms.assetid: 2d32ae79-dff5-4c05-a412-dd15452b6007
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# How to Configure the Image Web Distribution Server


An image repository is an optional server that is used for image distribution (where administrators upload new images and client computers check the server every 15 minutes and update their image if a new one is available).

## <a href="" id="bkmk-configuringanimagereporitoryusingiis"></a>


An image distribution server requires the following:

-   Internet Information Services (IIS)—For information, see [Internet Information Services](https://go.microsoft.com/fwlink/?LinkId=142995).

    During the IIS installation, when adding role services, select the following supported authentication methods:

    -   **Basic Authentication**

    -   **Windows Authentication**

    -   **Client Certificate Mapping Authentication**

    When configuring IIS, include the following:

    -   Add a virtual directory, with the alias named **MEDVImages**. The physical path should point to the location of the images.

    -   Enable BITS.

    -   Add the following MIME types:

        -   **.ckm (application/octet-stream)**

        -   **.index (application/octet-stream**)

    -   On the MED-V site, add read permissions to **Everyone**.

    -   Restart IIS.

-   BITS Server Extensions for IIS—For information, see [Install BITS Server Extensions](https://go.microsoft.com/fwlink/?LinkId=142996).

## Related topics


[Supported Configurations](supported-configurationsmedv-orientation.md)

[Design the MED-V Image Repositories](design-the-med-v-image-repositories.md)

 

 





