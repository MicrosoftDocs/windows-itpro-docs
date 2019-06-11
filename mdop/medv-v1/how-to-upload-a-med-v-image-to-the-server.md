---
title: How to Upload a MED-V Image to the Server
description: How to Upload a MED-V Image to the Server
author: dansimp
ms.assetid: 0e70dfdf-3e3a-4860-970c-535806caa907
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w7
ms.date: 06/16/2016
---


# How to Upload a MED-V Image to the Server


After a MED-V image has been tested, it can be packed and then uploaded to the server. For information on configuring an image Web distribution server, see [How to Configure the Image Web Distribution Server](how-to-configure-the-image-web-distribution-server.md).

Once a MED-V image is packed and uploaded to the server, it can be distributed to users by using an enterprise software distribution center, or it can be downloaded by users using a deployment package. For information on deployment using an enterprise software distribution center, see [Deploying a MED-V Workspace Using an Enterprise Software Distribution System](deploying-a-med-v-workspace-using-an-enterprise-software-distribution-system.md). For information on deployment using a package, see [Deploying a MED-V Workspace Using a Deployment Package](deploying-a-med-v-workspace-using-a-deployment-package.md).

**Note**  
Before uploading an image, verify that a Web proxy is not defined in your browser settings and that Windows Update is not currently running.



**To upload a MED-V image to the server**

1.  In the **Local Packed Images** pane, select the image you created.

2.  Click **Upload**.

    The image is uploaded to the server. This might take a considerable amount of time.

    Images on the server are defined with the properties listed in the following table.

**Packed Images on Server Properties**

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Property</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Image Name</p></td>
<td align="left"><p>The name of the packed image as it was defined when the administrator created the image.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Version</p></td>
<td align="left"><p>The version of the displayed image.</p>
<div class="alert">
<strong>Note</strong><br/><p>All previous versions are kept unless deleted.</p>
</div>
<div>

</div></td>
</tr>
<tr class="odd">
<td align="left"><p>File Size (compressed)</p></td>
<td align="left"><p>The physical compressed size of the image.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Image Size (uncompressed)</p></td>
<td align="left"><p>The physical uncompressed size of the image.</p></td>
</tr>
</tbody>
</table>



## Related topics


[How to Install MED-V Client and MED-V Management Console](how-to-install-med-v-client-and-med-v-management-console.md)

[Using the MED-V Management Console User Interface](using-the-med-v-management-console-user-interface.md)

[Creating a Virtual PC Image for MED-V](creating-a-virtual-pc-image-for-med-v.md)

[How to Pack a MED-V Image](how-to-pack-a-med-v-image.md)









