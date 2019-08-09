---
title: How to Deploy a Workspace Image
description: How to Deploy a Workspace Image
author: dansimp
ms.assetid: b2c77e0d-101d-4956-a27c-8beb0e4f262e
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Deploy a Workspace Image


When using a deployment package, a new image can be deployed onto client computers in one of the following ways:

-   [Web download](#bkmk-howtodeployaworkspaceimageviatheweb)

-   [Image pre-staging](#bkmk-howtodeployaworkspaceimageusingimageprestaging)

-   [Deploying the image inside the deployment package](#bkmk-howtodeployaworkspaceimageusingadeploymentapackage)

## <a href="" id="bkmk-howtodeployaworkspaceimageviatheweb"></a>How to Deploy a Workspace Image via the Web


**To deploy a workspace image via the Web**

1.  Upload the MED-V image to the server.

    For information on uploading the image, see [How to Upload a MED-V Image to the Server](how-to-upload-a-med-v-image-to-the-server.md).

2.  Create a deployment package, and include the server path to the location of the image.

    For information on creating a deployment package, see [How to Configure a Deployment Package](how-to-configure-a-deployment-package.md).

3.  Deploy the package to end users.

    For information on deploying the package, see [How to Install MED-V Client](how-to-install-med-v-clientdeployment-package.md).

    MED-V client is installed and started for the first time. On first-time startup, the client downloads the image from the server address specified in the client installation.

## <a href="" id="bkmk-howtodeployaworkspaceimageusingimageprestaging"></a>How to Deploy a Workspace Image Using Image Pre-staging


**To deploy a workspace image using image pre-staging**

1.  Create an image pre-stage folder, and push the image to the folder.

    For information on configuring image pre-staging, see [How to Configure Image Pre-staging](how-to-configure-image-pre-staging.md).

2.  Create a deployment package, and include the path to the image pre-stage folder.

    For information on creating a deployment package, see [How to Configure a Deployment Package](how-to-configure-a-deployment-package.md).

3.  Deploy the package to end users.

    For information on deploying the package, see [How to Install MED-V Client](how-to-install-med-v-clientdeployment-package.md).

    MED-V client is installed and started for the first time. On first-time startup, the client fetches the image from the pre-stage folder specified in the client installation.

## <a href="" id="bkmk-howtodeployaworkspaceimageusingadeploymentapackage"></a>How to Deploy a Workspace Image Using a Deployment Package


**To deploy a workspace image using a deployment package**

1.  Create a deployment package, and include the image in the package.

    For information on creating a deployment package, see [How to Configure a Deployment Package](how-to-configure-a-deployment-package.md).

2.  Deploy the package to end users.

    For information on deploying the package, see [How to Install MED-V Client](how-to-install-med-v-clientdeployment-package.md).

    The image is imported to the host as part of the package installation.

## Related topics


[How to Configure the Image Web Distribution Server](how-to-configure-the-image-web-distribution-server.md)

[How to Configure a Deployment Package](how-to-configure-a-deployment-package.md)

 

 





