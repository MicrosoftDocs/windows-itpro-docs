---
title: How to Update a MED-V Image
description: How to Update a MED-V Image
author: dansimp
ms.assetid: 61eacf50-3a00-4bb8-b2f3-7350a6467fa1
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w7
ms.date: 06/16/2016
---


# How to Update a MED-V Image


## How to Update a MED-V Image


An existing MED-V image can be updated, thereby creating a new version of the image. The new version can then be deployed on client computers, replacing the existing image.

**Note**  
When a new version is deployed on the client, it overwrites the existing image. When updating an image, ensure that no data on the client needs to be saved.

 

**To update a MED-V image**

1.  Open the existing image in Virtual PC 2007.

2.  Make the required changes to the image, updating the image (such as installing new software).

3.  Close Virtual PC 2007.

4.  Test the image.

5.  After the image is tested, pack it to the local repository, using the same name as the existing image.

    **Note**  
    If you name the image a different name than the existing version, a new image will be created rather than a new version of the existing image.

     

6.  Upload the new version to the server or distribute it via a deployment package.

## Related topics


[Creating a Virtual PC Image for MED-V](creating-a-virtual-pc-image-for-med-v.md)

[How to Create and Test a MED-V Image](how-to-create-and-test-a-med-v-image.md)

[How to Pack a MED-V Image](how-to-pack-a-med-v-image.md)

[How to Upload a MED-V Image to the Server](how-to-upload-a-med-v-image-to-the-server.md)

[Updating a MED-V Workspace Image](updating-a-med-v-workspace-image.md)

 

 





