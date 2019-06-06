---
title: Deploying a MED-V Workspace Using an Enterprise Software Distribution System
description: Deploying a MED-V Workspace Using an Enterprise Software Distribution System
author: dansimp
ms.assetid: 867faed6-74ce-4573-84be-8bf26e66c08c
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w7
ms.date: 06/16/2016
---


# Deploying a MED-V Workspace Using an Enterprise Software Distribution System


MED-V client can be distributed using an enterprise software distribution system, such as Microsoft System Center Configuration Manager.

**Note**  
If MED-V is installed by using Microsoft System Center Configuration Manager, when creating a package for MED-V, set the run mode to administrative rights.

 

Before deploying MED-V using an enterprise software distribution system, ensure that you have created a MED-V image ready for deployment. For more information on creating a MED-V image, see [Creating a MED-V Image](creating-a-med-v-image.md).

After the MED-V image is prepared, consider the best method for distributing the image in your environment. The image can be distributed in one of the following ways:

-   Uploaded to the Web and distributed via Web download, optionally utilizing Trim Transfer technology.

-   Distributed using image pre-staging.

## Deploying the Image via the Web


If you are deploying the image via the Web, upload the MED-V image to an image Web distribution server. For information on configuring an image Web distribution server, see [How to Configure the Image Web Distribution Server](how-to-configure-the-image-web-distribution-server.md). For information on uploading an image to the server, see [How to Upload a MED-V Image to the Server](how-to-upload-a-med-v-image-to-the-server.md).

## Deploying the Image via Pre-staging


If you are deploying the image via image pre-staging, configure the pre-stage folder, and push the MED-V image to the folder. For more information on configuring image pre-staging, see [How to Configure Image Pre-staging](how-to-configure-image-pre-staging.md).

**Note**  
If you are using image pre-staging, it is important to configure the image pre-stage folder prior to pushing the client .msi package. The folder path needs to be included in the client .msi package.

 

Finally, push the client .msi package using your enterprise software distribution center. MED-V can then be installed and the image deployed. For more information on installing MED-V client, see [How to Install MED-V Client](how-to-install-med-v-clientesds.md). For more information on deploying the image, see [How to Deploy a Workspace Image](how-to-deploy-a-workspace-imageesds.md).

 

 





