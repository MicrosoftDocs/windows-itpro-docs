---
title: How to Deploy a Workspace Image
description: How to Deploy a Workspace Image
author: dansimp
ms.assetid: ccc8e89b-1625-4b58-837e-4c6d93d46070
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w7
ms.date: 06/16/2016
---


# How to Deploy a Workspace Image


When using an enterprise software distribution system, a new image can be deployed onto client computers in one of the following ways:

-   [Web download](#bkmk-howtodeployaworkspaceimageviatheweb)

-   [Image pre-staging](#bkmk-howtodeployaworkspaceimageusingimageprestaging)

## <a href="" id="bkmk-howtodeployaworkspaceimageviatheweb"></a>How to Deploy a Workspace Image via the Web


**To deploy a workspace image via the Web**

1.  Upload the MED-V image to the server.

    For information on uploading the image, see [How to Upload a MED-V Image to the Server](how-to-upload-a-med-v-image-to-the-server.md).

2.  Using your enterprise software distribution system, install the MED-V client .msi package on users’ computers.

    For information on installing the MED-V client .msi package, see [How to Install MED-V Client](how-to-install-med-v-clientesds.md).

    MED-V client is installed and started for the first time. On first-time startup, the client downloads the image from the server address specified in the client installation.

## <a href="" id="bkmk-howtodeployaworkspaceimageusingimageprestaging"></a>How to Deploy a Workspace Image Using Image Pre-staging


**To deploy a workspace image using image pre-staging**

1.  Create an image pre-stage folder, and push the image to the folder.

    For information on configuring image pre-staging, see [How to Configure Image Pre-staging](how-to-configure-image-pre-staging.md).

2.  Using your enterprise software distribution system, install the MED-V client .msi package on users’ computers.

    For information on installing the MED-V client .msi package, see [How to Install MED-V Client](how-to-install-med-v-clientesds.md).

    MED-V client is installed and started for the first time. On first-time startup, the client fetches the image from the pre-stage folder specified in the client installation.

## Related topics


[How to Configure the Image Web Distribution Server](how-to-configure-the-image-web-distribution-server.md)

 

 





