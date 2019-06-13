---
title: Deploying a MED-V Workspace Using a Deployment Package
description: Deploying a MED-V Workspace Using a Deployment Package
author: dansimp
ms.assetid: e07fa70a-1a9f-486f-9a86-b33593b234da
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w7
ms.date: 06/16/2016
---


# Deploying a MED-V Workspace Using a Deployment Package


The deployment package installation provides a method of installing MED-V client together with all its required prerequisites as well as any settings predefined by the administrator.

When using a deployment package, the package is distributed via a shared network or removable media. The image can be included in the package or can be distributed separately.

Before creating a deployment package, ensure that you have created a MED-V image ready for deployment. For more information on creating a MED-V image, see [Creating a MED-V Image](creating-a-med-v-image.md).

After the MED-V image is prepared, consider the best method for distributing the image in your environment. The image can be distributed in one of the following ways:

-   Uploaded to the Web and distributed via Web download, optionally using Trim Transfer technology.

-   Distributed using image pre-staging.

-   Included in the deployment package and distributed together with all the other MED-V components.

If the image will be included in the package, no other configurations are necessary for the image. If the image will not be included in the deployment package, do one of the following:

-   If you are deploying the image via the Web, upload the MED-V image to the image Web distribution server. For information on configuring an image Web distribution server, see [How to Configure the Image Web Distribution Server](how-to-configure-the-image-web-distribution-server.md). For information on uploading an image to the server, see [How to Upload a MED-V Image to the Server](how-to-upload-a-med-v-image-to-the-server.md).

-   If you are deploying the image via image pre-staging, configure the pre-stage folder, and push the MED-V image to the folder. For more information on configuring the image pre-staging, see [How to Configure Image Pre-staging](how-to-configure-image-pre-staging.md).

**Note**  
If you are using image pre-staging, it is important to configure the image pre-stage folder prior to creating the deployment package. The folder path needs to be included in the deployment package.

 

Finally, create the deployment package. For more information on creating a deployment package, see [How to Configure a Deployment Package](how-to-configure-a-deployment-package.md). After the package is complete, distribute it for deployment.

After the deployment package is distributed, MED-V client can be installed and the image deployed. For more information on installing MED-V client, see [How to Install MED-V Client](how-to-install-med-v-clientdeployment-package.md). For more information on deploying the image, see [How to Deploy a Workspace Image](how-to-deploy-a-workspace-imagedeployment-package.md).

 

 





