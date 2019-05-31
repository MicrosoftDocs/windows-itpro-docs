---
title: How to Pack a MED-V Image
description: How to Pack a MED-V Image
author: dansimp
ms.assetid: e1ce2307-0f1b-4bf8-b146-e4012dc138d2
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w7
ms.date: 06/16/2016
---


# How to Pack a MED-V Image


A MED-V image must be packed before it can be added to a deployment package or uploaded to the server.

**To create a packed MED-V image**

1.  Click the **Images** management button.

2.  In the **Images** module, in the **Local Packed Images** pane, click **New**.

3.  In the **Packed Image Creation** dialog box, select the virtual machine image by doing one of the following:

    -   In the **Base image file** field, type the full path to the directory where the Microsoft Virtual PC image prepared for MED-V is located.

    -   Click **Browse** to browse to the directory where the Microsoft Virtual PC image prepared for MED-V is located.

4.  Specify the name of the new image by doing one of the following:

    -   In the **Image name** field, type the desired name.

        **Note**  
        The following characters cannot be included in the image name: space " &lt; &gt; | \\ / : \* ?

         

        A new packed image will be created.

    -   From the drop-down list, select an existing name.

        A new version of the existing image will be created.

5.  Click **OK**.

    A new MED-V packed image is created on your host computer with the properties defined in the following table.

**Note**  
In the **Local Packed Images** and **Packed Images on Server** panes, the most recent version of each image is displayed as the parent node. Click the parent node to view all other existing versions of the image.

 

**Local Packed Images Properties**

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
<strong>Note</strong>  
<p>All previous versions are kept unless deleted.</p>
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

 

 





